void std::__split_buffer<REEntity **>::emplace_back<REEntity **>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<REEntity **>>(a1[4], v11);
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

void std::__split_buffer<REEntity **>::emplace_front<REEntity **&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<REEntity **>>(a1[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<REEntity **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(uint64_t a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 72));
  realityio::WrappedRERef<REScene *>::~WrappedRERef((a1 + 64));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData::~DeferredChildData(uint64_t a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 72));
  realityio::WrappedRERef<REScene *>::~WrappedRERef((a1 + 64));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<REScene *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void *std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285950268;
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v3 = a1[5];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 3);
  return a1;
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285950268;
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v3 = a1[5];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 3);

  JUMPOUT(0x24C1A91B0);
}

_DWORD *std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285950268;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    RERetain();
  }

  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 48), (a1 + 48));
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 52), (a1 + 52));
  v7 = *(a1 + 56);
  *(a2 + 56) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 56) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 64) = *(a1 + 64);
  return result;
}

uint64_t *std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy(uint64_t *a1)
{
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v3 = a1[5];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 3);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t *a1)
{
  v2 = a1[7];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
  v3 = a1[5];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 3);

  operator delete(a1);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(void *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  if (REEntityGetChildCount())
  {
    ChildCount = REEntityGetChildCount();
    std::vector<REEntity *>::vector[abi:ne200100](v44, ChildCount);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1[8] + 16) - *a1[8]) >> 4) < ChildCount)
    {
      if (ChildCount <= 0x333333333333333)
      {
        *(&v46 + 1) = a1[8];
        std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>(ChildCount);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    REEntityGetChildren();
    if (ChildCount)
    {
      for (i = 0; i != ChildCount; ++i)
      {
        v5 = *(v44[0] + i);
        Name = REEntityGetName();
        MEMORY[0x24C1A5DE0](&v45, Name);
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetChild(&v42, (a1 + 4), &v45);
        if ((v45.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v45.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v42) || !realityio::isScene(&v42, v7))
        {
          goto LABEL_73;
        }

        LOWORD(v45.__r_.__value_.__l.__data_) = 0;
        *&v45.__r_.__value_.__r.__words[1] = 0u;
        v46 = 0u;
        v47 = 0u;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v50 = 0;
        v51 = 0;
        v45.__r_.__value_.__s.__data_[0] = 1;
        realityio::getSceneName(&v42, &v55);
        if (SBYTE7(v46) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__size_);
        }

        *&v45.__r_.__value_.__r.__words[1] = v55;
        *&v46 = v56;
        size = v42.__r_.__value_.__l.__size_;
        if (!v42.__r_.__value_.__l.__size_ || (v10 = *(v42.__r_.__value_.__l.__size_ + 56), (v10 & 0x800) != 0))
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v42.__r_.__value_.__l.__size_, v8);
          v10 = *(size + 56);
        }

        v45.__r_.__value_.__s.__data_[1] = (v10 & 0x40) != 0;
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v55, &v42);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v48, &v55);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v49, &v55 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        v11 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
        std::string::basic_string[abi:ne200100]<0>(v11, "memory:");
        std::string::basic_string[abi:ne200100]<0>(v53, ".rescene");
        v12 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v42);
        if ((*v12 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v12 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
        }

        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v55, EmptyString, &v52);
        if ((v54 & 0x80u) == 0)
        {
          v14 = v53;
        }

        else
        {
          v14 = v53[0];
        }

        if ((v54 & 0x80u) == 0)
        {
          v15 = v54;
        }

        else
        {
          v15 = v53[1];
        }

        v16 = std::string::append(&v52, v14, v15);
        v17 = v16->__r_.__value_.__r.__words[0];
        *v58 = v16->__r_.__value_.__l.__size_;
        *&v58[7] = *(&v16->__r_.__value_.__r.__words[1] + 7);
        v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (v54 < 0)
        {
          operator delete(v53[0]);
        }

        if (SBYTE7(v56) < 0)
        {
          operator delete(v55);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(*(&v46 + 1));
        }

        *(&v46 + 1) = v17;
        *&v47 = *v58;
        *(&v47 + 7) = *&v58[7];
        HIBYTE(v47) = v18;
        *&v55 = v5;
        if (v5)
        {
          RERetain();
          v19 = v55;
        }

        else
        {
          v19 = 0;
        }

        v20 = v51;
        if (v51 != v19)
        {
          v51 = v19;
          *&v55 = v20;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v55);
        if (SBYTE7(v46) < 0)
        {
          if (v45.__r_.__value_.__r.__words[2])
          {
LABEL_42:
            v21 = RESceneCreate();
            if (v50)
            {
              RERelease();
            }

            v50 = v21;
            if (v21)
            {
              v53[0] = v5;
              v56 = 0u;
              v57 = 0u;
              v55 = 0u;
              std::deque<REEntity *>::push_back(&v55, v53);
              while (*(&v57 + 1))
              {
                v22 = *(*(*(&v55 + 1) + ((v57 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v57 & 0x1FF));
                *&v57 = v57 + 1;
                --*(&v57 + 1);
                if (v57 >= 0x400)
                {
                  operator delete(**(&v55 + 1));
                  *(&v55 + 1) += 8;
                  *&v57 = v57 - 512;
                }

                MEMORY[0x24C1A36E0](v22, 1);
                v23 = REEntityGetChildCount();
                if (v23)
                {
                  for (j = 0; j != v23; ++j)
                  {
                    v52.__r_.__value_.__r.__words[0] = REEntityGetChild();
                    std::deque<REEntity *>::push_back(&v55, &v52);
                  }
                }
              }

              std::deque<unsigned long>::~deque[abi:ne200100](&v55);
              RESceneAddEntity();
              v21 = v50;
            }

            v25 = *(a1[2] + 40);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v40, &v48);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v41, &v49);
            v26 = *(v25 + 16);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v58, &v40);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v58[4], &v41);
            if (*(v26 + 96))
            {
              Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v58);
              v28 = *(v26 + 96);
              *&v55 = v21;
              v53[0] = Text;
              v52.__r_.__value_.__r.__words[0] = v5;
              if (!v28)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              (*(*v28 + 48))(v28, &v55, v53, &v52);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v58);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
          }
        }

        else if (BYTE7(v46))
        {
          goto LABEL_42;
        }

        v29 = a1[8];
        v31 = v29[1];
        v30 = v29[2];
        if (v31 >= v30)
        {
          v33 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - *v29) >> 4);
          v34 = v33 + 1;
          if (v33 + 1 > 0x333333333333333)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v35 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - *v29) >> 4);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0x199999999999999)
          {
            v36 = 0x333333333333333;
          }

          else
          {
            v36 = v34;
          }

          *&v57 = a1[8];
          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>(v36);
          }

          v37 = 80 * v33;
          *&v55 = 0;
          *(&v55 + 1) = v37;
          *(&v56 + 1) = 0;
          std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::construct[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v37, &v45);
          *&v56 = v37 + 80;
          std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__swap_out_circular_buffer(v29, &v55);
          v32 = v29[1];
          std::__split_buffer<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData> &>::~__split_buffer(&v55);
        }

        else
        {
          std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::construct[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v29[1], &v45);
          v32 = v31 + 80;
          v29[1] = v32;
        }

        v29[1] = v32;
        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v51);
        realityio::WrappedRERef<REScene *>::~WrappedRERef(&v50);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(*(&v46 + 1));
        }

        if (SBYTE7(v46) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__size_);
        }

LABEL_73:
        if ((v43 & 7) != 0)
        {
          atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42.__r_.__value_.__r.__words[2]);
        if (v42.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42.__r_.__value_.__l.__size_);
        }
      }
    }

    if (v44[0])
    {
      v44[1] = v44[0];
      operator delete(v44[0]);
    }
  }

  else
  {
    std::mutex::lock((v2 + 304));
    std::vector<realityio::ImportedScene>::__base_destruct_at_end[abi:ne200100]((v2 + 280), *(v2 + 280));
    v38 = a1[3];
    v39 = REEntityGetName();
    std::string::basic_string[abi:ne200100]<0>(&v55, v39);
    realityio::getSceneName((a1 + 4), &v42);
    realityio::ImportedScene::ImportedScene(&v45, 0, v38, 0, &v55, &v42, 1);
    std::vector<realityio::ImportedScene>::push_back[abi:ne200100]((v2 + 280), &v45);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(*(&v47 + 1));
    }

    if (SBYTE7(v47) < 0)
    {
      operator delete(v46);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v45.__r_.__value_.__r.__words[2]);
    realityio::WrappedRERef<void *>::~WrappedRERef(&v45.__r_.__value_.__l.__size_);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v56) < 0)
    {
      operator delete(v55);
    }

    std::mutex::unlock((v2 + 304));
  }
}

void sub_247596E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::__split_buffer<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData> &>::~__split_buffer(&a20);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *std::vector<realityio::ImportedScene>::push_back[abi:ne200100](std::string **a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<realityio::ImportedScene>::__emplace_back_slow_path<realityio::ImportedScene>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0u;
    v4 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0u;
    v5 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v5;
    *(a2 + 56) = 0u;
    *(a2 + 48) = 0;
    *(v3 + 72) = *(a2 + 72);
    result = (v3 + 80);
  }

  a1[1] = result;
  return result;
}

void realityio::getSceneName(realityio *this@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = MEMORY[0x277D86540];
  v5 = atomic_load(MEMORY[0x277D86540]);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(this, (v5 + 368), &v11) & 1) == 0)
  {
    v6 = atomic_load(v4);
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(&v9, this, (v6 + 368));
    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(__p, &v11);
      v12 = v10;
      if ((~v10 & 3) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&v9, &v11);
      }

      else
      {
        v11 = v9;
      }

      v10 = 0;
      if (__p[1])
      {
        (*(__p[1] + 4))(__p);
      }
    }

    else
    {
      if (v12 && (v12 & 3) != 3)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 32))(&v11);
      }

      v12 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v9);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  pxrInternal__aapl__pxrReserved__::VtValue::GetWithDefault<std::string>(&v11, __p, a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v11);
}

void sub_247597254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::isScene(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this);
  if (!IsValid)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomXformable::_GetStaticTfType(IsValid);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    return 0;
  }

  realityio::getSceneName(this, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v8, this);
    isSceneLibrary = realityio::isSceneLibrary(&v8, v5);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    if (v9)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isSceneLibrary = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_15:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return isSceneLibrary;
}

void sub_247597388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *realityio::ImportedScene::ImportedScene(std::string *a1, uint64_t a2, std::string::size_type a3, std::string::size_type a4, __int128 *a5, __int128 *a6, std::string::value_type a7)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1->__r_.__value_.__l.__size_ = a3;
  if (a3)
  {
    RERetain();
  }

  a1->__r_.__value_.__r.__words[2] = a4;
  if (a4)
  {
    RERetain();
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    a1[1].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v12;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    a1[2].__r_.__value_.__r.__words[2] = *(a6 + 2);
    *&a1[2].__r_.__value_.__l.__data_ = v13;
  }

  a1[3].__r_.__value_.__s.__data_[0] = a7;
  return a1;
}

void sub_247597480(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3);
  realityio::WrappedRERef<void *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::GetWithDefault<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *this@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(this + 1);
  if (v5)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
    {
      if ((v5 & 4) == 0)
      {
LABEL_4:
        a2 = *this;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    {
      v5 = *(this + 1);
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      a2 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }
  }

LABEL_9:
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
    v9 = *(a2 + 1);

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    v7 = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = 0;
    v9 = *a1;
    v10 = v4 + *a1 - v6;
    do
    {
      realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData::DeferredChildData(v10, v9);
      v9 += 80;
      v10 += 80;
      v8 -= 80;
    }

    while (v9 != v6);
    do
    {
      std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v5);
      v5 += 80;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void sub_247597650(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(v4);
      v4 -= 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::destroy[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData::DeferredChildData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 56), (a2 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 60), (a2 + 60));
  v6 = *(a2 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    RERetain();
  }

  v7 = *(a2 + 72);
  *(a1 + 72) = v7;
  if (v7)
  {
    RERetain();
  }

  return a1;
}

void sub_2475977E8(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::construct[abi:ne200100]<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 56), (a2 + 56));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 60), (a2 + 60));
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2859502E8;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 40));
  v3 = (a1 + 8);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2859502E8;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 40));
  v2 = (a1 + 8);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x24C1A91B0);
}

void sub_247597A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::__clone(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_2859502E8;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::vector[abi:ne200100](&a2->n128_i64[1], &a1->n128_i64[1]);
  v4 = a1[2].n128_u64[1];
  a2[2].n128_u64[0] = a1[2].n128_u64[0];
  a2[2].n128_u64[1] = v4;
  if (v4)
  {
    RERetain();
  }

  result = a1[3];
  a2[3] = result;
  return result;
}

void sub_247597AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = (a1 + 8);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 40));
  v2 = v1;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::destroy_deallocate(uint64_t *a1)
{
  v2 = (a1 + 1);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 5);
  v3 = v2;
  std::vector<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::DeferredChildData>>::__destroy_vector::operator()[abi:ne200100](&v3);

  operator delete(a1);
}

void std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[4];
  v4 = a1[1];
  v3 = a1[2];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4);
  v51 = 0uLL;
  v52 = 0;
  v49 = 0;
  v50 = 0uLL;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<realityio::WrappedRERef<REAsset *>>::reserve(&v46, v5);
  if (v5 > (*(&v50 + 1) - v49) >> 3)
  {
    if (!(v5 >> 61))
    {
      v41 = &v49;
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v5);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (v3 != v4)
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4);
    }

    v7 = -1;
    v8 = 55;
    v9 = v6;
    while (1)
    {
      v55[0] = *(a1[1] + v8 + 17);
      if (v55[0])
      {
        RERetain();
      }

      Name = REEntityGetName();
      v11 = a1[1];
      if (*(v11 + v8 - 55) != 1)
      {
        goto LABEL_48;
      }

      v12 = Name;
      if ((*(v11 + v8 - 24) & 0x8000000000000000) != 0)
      {
        if (!*(v11 + v8 - 39))
        {
LABEL_22:
          v19 = *(realityio::logObjects(Name) + 24);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_247485000, v19, OS_LOG_TYPE_DEFAULT, "Invalid empty scene name, skipping.", buf, 2u);
          }

          goto LABEL_48;
        }
      }

      else if (!*(v11 + v8 - 24))
      {
        goto LABEL_22;
      }

      v13 = REAssetManagerSceneAssetCreate();
      v54 = v13;
      if (v13)
      {
        v45 = v13;
        RERetain();
        realityio::Builder::addAsset(v2, &v45, 0);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v45);
        v14 = a1[1] + v8;
        v15 = v50;
        v16 = (v50 - v49) >> 3;
        if (*(v14 - 54))
        {
          v7 = (v50 - v49) >> 3;
        }

        if (v50 >= *(&v50 + 1))
        {
          if ((v16 + 1) >> 61)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v20 = (*(&v50 + 1) - v49) >> 2;
          if (v20 <= v16 + 1)
          {
            v20 = v16 + 1;
          }

          if (*(&v50 + 1) - v49 >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          v41 = &v49;
          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v21);
          }

          v22 = (8 * v16);
          *buf = 0;
          v39 = v22;
          v40[0] = (8 * v16);
          v40[1] = 0;
          v23 = *(v14 + 9);
          *v22 = v23;
          if (v23)
          {
            RERetain();
            v22 = v39;
            v24 = v40[0];
          }

          else
          {
            v24 = (8 * v16);
          }

          v40[0] = v24 + 8;
          v25 = (v49 + v22 - v50);
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REScene *>>,realityio::WrappedRERef<REScene *>*>(v49, v50, v25);
          v26 = v49;
          v27 = *(&v50 + 1);
          v49 = v25;
          v35 = v40[0];
          v50 = *v40;
          v40[0] = v26;
          v40[1] = v27;
          *buf = v26;
          v39 = v26;
          std::__split_buffer<realityio::WrappedRERef<REScene *>>::~__split_buffer(buf);
          v18 = v35;
        }

        else
        {
          v17 = *(v14 + 9);
          *v50 = v17;
          if (v17)
          {
            RERetain();
          }

          v18 = (v15 + 8);
        }

        *&v50 = v18;
        v28 = v47;
        if (v47 >= v48)
        {
          v30 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(&v46, &v54);
        }

        else
        {
          v29 = v54;
          *v47 = v54;
          if (v29)
          {
            RERetain();
          }

          v30 = (v28 + 1);
        }

        v47 = v30;
        v31 = *(a1[1] + v8 + 9);
        v32 = v54;
        std::string::basic_string[abi:ne200100]<0>(v36, v12);
        realityio::ImportedScene::ImportedScene(buf, 1, v31, v32, v36, (a1[1] + v8 - 23), *(a1[1] + v8 - 54));
        std::vector<realityio::ImportedScene>::push_back[abi:ne200100](&v51, buf);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        if (v42 < 0)
        {
          operator delete(v40[1]);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(v40);
        realityio::WrappedRERef<void *>::~WrappedRERef(&v39);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v54);
LABEL_48:
      realityio::WrappedRERef<REEntity *>::~WrappedRERef(v55);
      v8 += 80;
      if (!--v9)
      {
        if (v7 < (v50 - v49) >> 3)
        {
          v33 = *(*(a1[6] + 16) + 128);
          if (v33)
          {
            *buf = a1[5];
            v36[0] = v49;
            v54 = (v50 - v49) >> 3;
            v55[0] = v46;
            v53 = v7;
            (*(*v33 + 48))(v33, buf, v36, v55, &v54, &v53);
          }
        }

        v34 = 72;
        do
        {
          REEntitySetParent();
          v34 += 80;
          --v6;
        }

        while (v6);
        break;
      }
    }
  }

  std::mutex::lock((v2 + 304));
  std::vector<realityio::ImportedScene>::__vdeallocate((v2 + 280));
  *(v2 + 280) = v51;
  *(v2 + 296) = v52;
  v52 = 0;
  v51 = 0uLL;
  std::mutex::unlock((v2 + 304));
  *buf = &v46;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v49;
  std::vector<realityio::WrappedRERef<REScene *>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v51;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_247598058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::__split_buffer<realityio::WrappedRERef<REScene *>>::~__split_buffer(&a18);
  *(v34 - 128) = &a30;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v34 - 128));
  a30 = &a33;
  std::vector<realityio::WrappedRERef<REScene *>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a33 = v34 - 160;
  std::vector<realityio::ImportedScene>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SceneAssetBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<realityio::WrappedRERef<REAsset *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(result, a2);
    }

    std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_247598234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::WrappedRERef<REScene *>>,realityio::WrappedRERef<REScene *>*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    v6 = a3 - 8;
    v7 = result;
    do
    {
      v8 = *v7;
      *(v6 + 8) = *v7;
      if (v8)
      {
        RERetain();
      }

      ++v7;
      v5 -= 8;
      v6 += 8;
    }

    while (v7 != a2);
    do
    {
      result = realityio::WrappedRERef<REScene *>::~WrappedRERef(v4++);
    }

    while (v4 != a2);
  }

  return result;
}

void sub_2475982C8(_Unwind_Exception *exception_object)
{
  for (; v2; v2 += 8)
  {
    realityio::WrappedRERef<REScene *>::~WrappedRERef(v1--);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::WrappedRERef<REScene *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    realityio::WrappedRERef<REScene *>::~WrappedRERef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<realityio::WrappedRERef<REScene *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = realityio::WrappedRERef<REScene *>::~WrappedRERef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::SceneAssetBuilder::run(realityio::Inputs *)::Dummy *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285950368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::DetailedError::makeFromCFError(uint64_t err@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = err;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 8));
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *a2;
    if (!err)
    {
      goto LABEL_17;
    }
  }

  v7 = CFErrorCopyDescription(v5);
  realityio::CFStringCopyUTF8String(v13, v7);
  if (LOBYTE(v13[0]) == 1)
  {
    std::operator+<char>();
    v8 = (v12 & 0x80u) == 0 ? __p : __p[0];
    v9 = (v12 & 0x80u) == 0 ? v12 : __p[1];
    std::string::append(&v15, v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  Code = CFErrorGetCode(v5);
  CFRelease(v5);
  v5 = Code;
  if (LOBYTE(v13[0]) == 1 && v14 < 0)
  {
    operator delete(v13[1]);
  }

LABEL_17:
  realityio::DetailedError::DetailedError(a4, v5, a3, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_247598570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::MeshComponentBuilder::MeshComponentBuilder(realityio::MeshComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "MeshComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kMeshComponentBuilderIdentifier);
  realityio::generateMeshAssetBuilderDirtyStageSubscription(&v4);
  v8[0] = &unk_285950460;
  v8[3] = v8;
  v7[0] = &unk_285950570;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_247598714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::MeshComponentBuilder::run(realityio::MeshComponentBuilder *this, realityio::Inputs *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v51, v5, v4);
  v48 = 0;
  memset(v46, 0, sizeof(v46));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v51))
  {
    v6 = *a2;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v43, &v51);
    v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6 + 64, &v43);
    v8 = v6 + 72 == v7 || *(*(v6 + 40) + 104 * *(v7 + 40) + 24) != v43;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
    if (!v8)
    {
      EntityGeneratingDataForPrim = realityio::internal::PrimToEntityMap::getEntityGeneratingDataForPrim((*a2 + 16), &v51);
      v11 = EntityGeneratingDataForPrim;
      if (EntityGeneratingDataForPrim)
      {
        if (*(EntityGeneratingDataForPrim + 72) + *(EntityGeneratingDataForPrim + 96))
        {
          isGuide = realityio::isGuide(&v51, v10);
          if (!isGuide)
          {
            v13 = realityio::EntityBuilder::kInputName(isGuide);
            realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v13, &v43);
            if (v43)
            {
              *&buf = v44;
              if (v44)
              {
                RERetain();
                v14 = buf;
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 0;
              *&buf = 0;
            }

            v15 = v46[0];
            if (v46[0] != v14)
            {
              v46[0] = v14;
              *&buf = v15;
            }

            realityio::WrappedRERef<REEntity *>::~WrappedRERef(&buf);
            if (v46[0])
            {
              realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v42, 2034, this, 0, 0, 0);
              if (*(v11 + 96) == 1 && !*(v11 + 72) && (*(*(*(a2 + 5) + 16) + 272) & 1) == 0 && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCone>(&v51) & 1) == 0 && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCapsule>(&v51) & 1) == 0)
              {
                pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCylinder>(&v51);
              }

              v45 = realityio::Inputs::assetManager(a2);
              v16 = realityio::MeshAssetBuilder::kOutputName(v45);
              MEMORY[0x24C1A5E00](&v39, v16);
              buf = 0uLL;
              v17 = *(a2 + 3);
              if (v17)
              {
                *(&buf + 1) = std::__shared_weak_count::lock(v17);
                if (*(&buf + 1))
                {
                  *&buf = *(a2 + 2);
                }
              }

              v57 = v39;
              if ((v39 & 7) != 0)
              {
                v18 = v39 & 0xFFFFFFFFFFFFFFF8;
                if ((atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v57 = v18;
                }
              }

              v21 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 1), &buf);
              v22 = v19;
              if ((v57 & 7) != 0)
              {
                atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v23 = *(&buf + 1);
              if (*(&buf + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
              }

              if ((v39 & 7) != 0)
              {
                atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v21 != v22)
              {
                v24 = realityio::MeshAssetBuilder::kOutputName(v23);
                realityio::Inputs::_getValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(a2, v24, &buf);
                if (buf == 1)
                {
                  v25 = **(&buf + 1);
                  v26 = *(*(&buf + 1) + 8);
                  if (v26)
                  {
                    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
                  }
                }

                else
                {
                  v26 = 0;
                  v25 = 0;
                }

                v29 = v46[2];
                v46[1] = v25;
                v46[2] = v26;
                if (v29)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
                  v25 = v46[1];
                }

                if (v25)
                {
                  v47 = *(*(&buf + 1) + 192);
                  *&v39 = *(*(&buf + 1) + 200);
                  if (v39)
                  {
                    RERetain();
                    v30 = v39;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v32 = v48;
                  if (v48 != v30)
                  {
                    v48 = v30;
                    *&v39 = v32;
                  }

                  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v39);
                  v49 = *(*(&buf + 1) + 104) != 0;
                  v39 = 0uLL;
                  v40 = 0;
                  std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(&v39, *(*(&buf + 1) + 16), *(*(&buf + 1) + 24), (*(*(&buf + 1) + 24) - *(*(&buf + 1) + 16)) >> 3);
                  std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(&v46[3]);
                  *&v46[3] = v39;
                  v46[5] = v40;
                  v40 = 0;
                  v39 = 0uLL;
                  v55[0] = &v39;
                  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](v55);
                  v50 = *(*(&buf + 1) + 208);
                  *&v39 = REMeshComponentGetComponentType();
                  std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v39, &v39);
                  if ((v47 & 1) != 0 || v49 || v50 == 1)
                  {
                    *&v39 = REMeshDeformationComponentGetComponentType();
                    std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v39, &v39);
                    if (v47 == 1)
                    {
                      *&v39 = REBlendShapeWeightsComponentGetComponentType();
                      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v39, &v39);
                    }

                    if (v49)
                    {
                      *&v39 = RESkeletalPoseComponentGetComponentType();
                      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v39, &v39);
                      *&v39 = RERigComponentGetComponentType();
                      std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &v39, &v39);
                    }
                  }

                  v33 = v46[0];
                  v41 = v46[0];
                  if (v46[0])
                  {
                    v33 = RERetain();
                  }

                  v35 = *(this + 2);
                  v34 = *(this + 3);
                  if (v34)
                  {
                    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v36 = realityio::MeshComponentBuilder::kOutputName(v33);
                  realityio::Outputs::getValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(&v39, v35, v36);
                  if (v34)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
                  }

                  v55[3] = 0;
                  operator new();
                }

                v31 = *(realityio::logObjects(v29) + 24);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(v39) = 0;
                  _os_log_error_impl(&dword_247485000, v31, OS_LOG_TYPE_ERROR, "Stopping operation to set mesh component because mesh asset does not exist", &v39, 2u);
                }

                realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&buf);
              }

              realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v42, v19, v20);
            }

            else
            {
              PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v51);
              v28 = *(realityio::logObjects(PrimPath) + 24);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
                LODWORD(buf) = 136315138;
                *(&buf + 4) = Text;
                _os_log_error_impl(&dword_247485000, v28, OS_LOG_TYPE_ERROR, "Unable to create mesh entity at path (%s) because the entity does not exist.\n", &buf, 0xCu);
              }
            }

            realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v43);
          }
        }
      }
    }
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v48);
  v43 = &v46[3];
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v43);
  if (v46[2])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46[2]);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v46);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v53);
  result = v52;
  if (v52)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v52);
  }

  return result;
}

void sub_247598EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v34 - 144);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a17, v36, v37);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a19);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::internal::PrimToEntityMap::getEntityGeneratingDataForPrim(realityio::internal::PrimToEntityMap *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v7, a2);
  v4 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 48, &v7);
  if ((this + 56) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 3) + 104 * v4[5];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  return v5;
}

void sub_2475990D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::isGuide(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v11 = MEMORY[0x277D86740] + 16;
  if (!v12 || (*(v12 + 57) & 8) != 0 || !(*(MEMORY[0x277D86740] + 48))(&v11))
  {
    v4 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomImageable::GetPurposeAttr(&v7, &v11);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v7, v13);
  if (v13[0] != 1)
  {
    v3 = 0;
    goto LABEL_14;
  }

  v2 = v14;
  if ((v14 & 7) != 0)
  {
    if (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v13[0])
    {
      v2 = v14;
      goto LABEL_17;
    }

LABEL_14:
    if (v16 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_19;
  }

  v3 = v14;
LABEL_17:
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_19:
  v6 = atomic_load(MEMORY[0x277D86550]);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
  }

  v4 = (v3 ^ *(v6 + 392)) < 8;
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

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

LABEL_12:
  MEMORY[0x24C1A54A0](&v11);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCone>(pxrInternal__aapl__pxrReserved__::UsdGeomCone *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCapsule>(pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();

  return pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
}

uint64_t realityio::Outputs::getValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(uint64_t a1, std::mutex *a2, const void **a3)
{
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(v8, a2, a3);
  if (v8[0])
  {
    v4 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
      *a1 = 1;
      *(a1 + 8) = v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }

    else
    {
      *a1 = 1;
      *(a1 + 8) = v4;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v6 = v9;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = v10;
    }

    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 24) = v7;
  }

  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v8);
}

void sub_24759941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::MeshComponentBuilder::kOutputName(realityio::MeshComponentBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE52FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52FE8))
  {
    operator new();
  }

  return _MergedGlobals_16;
}

void sub_2475994B0(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE52FE8);
  _Unwind_Resume(a1);
}

void anonymous namespace::MaterialsDataForMesh::~MaterialsDataForMesh(_anonymous_namespace_::MaterialsDataForMesh *this)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 8);
  v3 = (this + 32);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 1);
}

void realityio::MeshComponentBuilder::clear(realityio::MeshComponentBuilder *this, realityio::Inputs *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  v8 = a2;
  v9[0] = &unk_2859508C0;
  v9[1] = &v8;
  v9[2] = this;
  v9[3] = v9;
  (*(*v3 + 16))(v3, v9);
  v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = realityio::MeshComponentBuilder::kOutputName(v4);
  std::mutex::lock((v6 + 64));
  if (v6 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v6 + 40, v7))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v6 + 40), v7);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v6, v7);
  std::mutex::unlock((v6 + 64));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_2475997B8(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2 + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void realityio::MeshComponentBuilder::~MeshComponentBuilder(realityio::MeshComponentBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t *std::vector<realityio::WrappedRERef<REAsset *>>::__init_with_size[abi:ne200100]<realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475999A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, a2);
  }

  std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*,realityio::WrappedRERef<REAsset *>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = *v6;
      *a4 = *v6;
      if (v8)
      {
        RERetain();
      }

      ++v6;
      ++a4;
      v7 -= 8;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_247599A60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_247599E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality,std::allocator<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2859504D0;
  std::allocator<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::construct[abi:ne200100]<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(&v6, a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859504D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor>::construct[abi:ne200100]<realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor(a2, &__p, a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24759A258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285950520;
  return a1;
}

void sub_24759A31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::~ConnectionOnEntityGeneratingPrimOnlyInputDescriptor(realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

char *realityio::ConnectionOnEntityGeneratingPrimOnlyInputDescriptor::resolvedPrimPaths@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
  if ((a2 + 56) != result && *(*(a2 + 24) + 104 * *(result + 5) + 24) == *a1)
  {
    return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, a1);
  }

  return result;
}

void *std::__shared_ptr_emplace<realityio::ChildPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken,realityio::InputDescriptor::Optionality,std::allocator<realityio::ChildPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285947DB0;
  std::allocator<realityio::ChildPrimInputDescriptor>::construct[abi:ne200100]<realityio::ChildPrimInputDescriptor,std::string,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken,realityio::InputDescriptor::Optionality>(&v7, a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::allocator<realityio::ChildPrimInputDescriptor>::construct[abi:ne200100]<realityio::ChildPrimInputDescriptor,std::string,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = *a5;
  *a5 = 0;
  realityio::ChildPrimInputDescriptor::ChildPrimInputDescriptor(a2, __p, a4, &v6, *a6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24759A5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24759A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::MeshComponentBuilder::MeshComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::_getValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = 0;
  v44 = 0;
  v6 = a1[3];
  if (v6)
  {
    v44 = std::__shared_weak_count::lock(v6);
    if (v44)
    {
      v43 = a1[2];
    }
  }

  MEMORY[0x24C1A5E00](&v45, a2);
  v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a1[1], &v43);
  if (v7 == v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v41, ") at prim path (");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 4));
    v12 = *(String + 23);
    if (v12 >= 0)
    {
      v13 = String;
    }

    else
    {
      v13 = *String;
    }

    if (v12 >= 0)
    {
      v14 = *(String + 23);
    }

    else
    {
      v14 = *(String + 8);
    }

    v15 = std::string::append(&v42, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v46[0].__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v46[0].__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(v46, ")");
LABEL_22:
    v28 = *&v17->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v17->__r_.__value_.__l + 2);
    *__p = v28;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v47, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v47;
    v29 = *&v47[24];
    *(a3 + 24) = *&v47[16];
    *(a3 + 32) = v29;
    *(a3 + 39) = *&v47[31];
    LOBYTE(v29) = v47[39];
    memset(&v47[16], 0, 24);
    *a3 = 0;
    *(a3 + 47) = v29;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    goto LABEL_52;
  }

  v18 = 1;
  v19 = v7;
  do
  {
    v19 = *v19;
    --v18;
  }

  while (v19 != v8);
  if (v18)
  {
    std::operator+<char>();
    v20 = std::string::append(&v41, ") at prim path (");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 4));
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v22;
    }

    if (v23 >= 0)
    {
      v25 = *(v22 + 23);
    }

    else
    {
      v25 = *(v22 + 8);
    }

    v26 = std::string::append(&v42, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v46[0].__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v46[0].__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(v46, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v30 = v7[5];
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v7[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v7[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(v32, EmptyString, v47);
  v34 = v47[0];
  if (v47[0])
  {
    v36 = *&v47[8];
    v35 = *&v47[16];
    if (*&v47[16])
    {
      atomic_fetch_add_explicit((*&v47[16] + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      __p[0] = 1;
      *&__p[8] = v36;
      *&__p[16] = v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      __p[0] = 1;
      *&__p[8] = *&v47[8];
      *&__p[16] = 0;
    }
  }

  else
  {
    *&v46[0].__r_.__value_.__l.__data_ = *&v47[8];
    if (SHIBYTE(v48) < 0)
    {
      std::string::__init_copy_ctor_external(&v46[0].__r_.__value_.__r.__words[2], *&v47[24], *&v47[32]);
    }

    else
    {
      *&v46[0].__r_.__value_.__r.__words[2] = *&v47[24];
      v46[1].__r_.__value_.__l.__size_ = v48;
    }

    __p[0] = 0;
    *&__p[8] = *&v46[0].__r_.__value_.__l.__data_;
    v39 = *&v46[0].__r_.__value_.__r.__words[2];
    size = v46[1].__r_.__value_.__l.__size_;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v47);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v34)
  {
    v37 = *&__p[8];
    *&__p[8] = 0;
    *&__p[16] = 0;
    *a3 = 1;
    *(a3 + 8) = v37;
  }

  else
  {
    *v47 = *&__p[8];
    if (SHIBYTE(size) < 0)
    {
      std::string::__init_copy_ctor_external(&v47[16], v39, *(&v39 + 1));
    }

    else
    {
      *&v47[16] = v39;
      *&v47[32] = size;
    }

    *a3 = 0;
    *(a3 + 8) = *v47;
    *(a3 + 24) = *&v47[16];
    *(a3 + 40) = *&v47[32];
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
LABEL_52:
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }
}

void sub_24759ABE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a9);
  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(a1);
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v16, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v16;
    v12 = v18;
    *(a3 + 24) = v17;
    *(a3 + 32) = v12;
    *(a3 + 39) = *(&v18 + 7);
    LOBYTE(v12) = HIBYTE(v18);
    v18 = 0uLL;
    v17 = 0;
    *a3 = 0;
    *(a3 + 47) = v12;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = 1;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_24759ADD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3 - 1);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(uint64_t a1, std::mutex *a2, const void **a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  std::mutex::lock(a2 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a2->__m_.__opaque[32], a3);
  if (&a2->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v10 = std::string::append(&v15, " does not exist in the builder outputs");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v18, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = v18;
    v12 = v19;
    v21[0] = v20;
    *(v21 + 7) = *(&v20 + 7);
    v13 = HIBYTE(v20);
    v20 = 0uLL;
    v19 = 0;
    *a1 = 0;
    *(a1 + 39) = *(v21 + 7);
    v14 = v21[0];
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
    *(a1 + 47) = v13;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(v6 + 56);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *a1 = 1;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
  }

  std::mutex::unlock(a2 + 1);
}

void sub_24759AFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859505F0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t *a1)
{
  v45[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) == 1)
  {
    v27 = a1[2];
    ChildCount = REEntityGetChildCount();
    v3 = ChildCount;
    v30 = 0;
    v4 = a1[8];
    if (*v4 == 1 && (v5 = *(v4 + 8)) != 0 && (*(v5 + 1) & 1) != 0)
    {
      realityio::WrappedRERef<REAsset *>::operator=(a1[7], (v5 + 8));
      __p[0] = *a1[7];
      realityio::WrappedRERef<REAsset *>::operator=(&v30, __p);
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v34 = &v35;
      if (ChildCount)
      {
        v6 = 0;
        do
        {
          REEntityGetChild();
          Name = REEntityGetName();
          std::string::basic_string[abi:ne200100]<0>(__p, Name);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v34, __p, __p);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          ++v6;
        }

        while (v3 != v6);
      }

      std::string::basic_string[abi:ne200100]<0>(v31, "usdPrimitiveAxis");
      v8 = 0;
      v9 = *MEMORY[0x277D82818];
      v10 = *(MEMORY[0x277D82818] + 64);
      v11 = *(MEMORY[0x277D82818] + 72);
      while (&v35 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v34, v31))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "usdPrimitiveAxis_", 17);
        MEMORY[0x24C1A8F10](v12, v8);
        std::stringbuf::str();
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31[0]);
        }

        *v31 = v38;
        v32 = v39;
        __p[0] = v9;
        *(__p + *(v9 - 3)) = v10;
        v41 = v11;
        v42 = (MEMORY[0x277D82878] + 16);
        if (v44 < 0)
        {
          operator delete(v43[7].__locale_);
        }

        v42 = (MEMORY[0x277D82868] + 16);
        std::locale::~locale(v43);
        std::iostream::~basic_iostream();
        MEMORY[0x24C1A9110](v45);
        v8 = (v8 + 1);
      }

      v13 = REEntityCreate();
      if (v30)
      {
        RERelease();
      }

      v30 = v13;
      if (v13)
      {
        REEntitySetName();
        REEntitySetParent();
        __p[0] = v30;
        RERetain();
        v14 = a1[7];
        v15 = *v14;
        if (*v14 != __p[0])
        {
          *v14 = __p[0];
          __p[0] = v15;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(__p);
        RENetworkComponentGetComponentType();
        __p[0] = &unk_285950660;
        v42 = __p;
        v16 = REEntityGetOrAddComponentByClass();
        std::function<void ()(REComponent *)>::operator()(__p, v16);
        RENetworkMarkComponentDirty();
        std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](__p);
        *&v38 = REGroundingShadowComponentGetComponentType();
        v17 = 0;
        *(&v38 + 1) = REMeshSortingComponentGetComponentType();
        do
        {
          ComponentByClass = REEntityGetComponentByClass();
          if (ComponentByClass)
          {
            RERetain();
            if (ComponentByClass)
            {
              REEntityRemoveComponentByClass();
              REEntityAddExistingComponent();
            }
          }

          realityio::WrappedRERef<REComponent *>::~WrappedRERef(&ComponentByClass);
          v17 += 8;
        }

        while (v17 != 16);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      std::__tree<std::string>::destroy(&v34, v35);
    }

    if (v30)
    {
      v18 = *(a1[6] + 80);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38, (v18 + 28));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38 + 1, (v18 + 32));
      v31[0] = 0;
      v31[1] = 0;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a1[5] + 8));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v34, v19, &v38);
      *v31 = realityio::getGeomPrimitiveOrientation(&v34, v20);
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
      if (v35)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
      }

      RETransformComponentGetComponentType();
      v34 = &unk_2859506E0;
      v35 = v31;
      v37 = &v34;
      v21 = REEntityGetOrAddComponentByClass();
      std::function<void ()(REComponent *)>::operator()(&v34, v21);
      RENetworkMarkComponentDirty();
      std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&v34);
      if (REComponentClassFromName())
      {
        v22 = REEntityGetOrAddComponentByClass();
        realityio::Builder::addComponent(v27, v22);
        Object = RECustomComponentGetObject();
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&ComponentByClass, a1[9]);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&ComponentByClass);
        if (*Object)
        {
          RECIntrospectionFree();
          *Object = 0;
        }

        if (Text)
        {
          strlen(Text);
          v25 = RECIntrospectionAlloc();
          *Object = v25;
          strcpy(v25, Text);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&ComponentByClass);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v30);
  }

  REMeshComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v26 = *(a1[1] + 24);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = 0;
  operator new();
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20MeshComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859506E0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, void *a2)
{
  RETransformComponentSetLocalOrientation();

  JUMPOUT(0x24C1A3400);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio20MeshComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio20MeshComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285950760;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_285950760;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285950760;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<realityio::MeshComponentBuilder::run(realityio::Inputs *)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::MeshComponentBuilder::BuildResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859507F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285950840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285950890;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859508C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  v3 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v3, v15);
  if (v15[0])
  {
    v14 = v16;
    if (v16)
    {
      RERetain();
      REMeshComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REMeshComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      REMeshDeformationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REMeshDeformationComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      REBlendShapeWeightsComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REBlendShapeWeightsComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      RESkeletalPoseComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        RESkeletalPoseComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      RERigComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        RERigComponentGetComponentType();
        ComponentByClass = REEntityRemoveComponentByClass();
      }

      v6 = *(v1 + 16);
      v5 = *(v1 + 24);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = realityio::MeshComponentBuilder::kOutputName(ComponentByClass);
      realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshComponentBuilder::BuildResult>>(v19, v6, v7);
      v8 = v19[0];
      if (v19[0])
      {
        v9 = v20;
        if (*(&v20 + 1))
        {
          atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
          v11[0] = 1;
          v12 = v9;
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
        }

        else
        {
          v11[0] = 1;
          v12 = v20;
        }
      }

      else
      {
        v17 = v20;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = v21;
        }

        v11[0] = 0;
        v12 = v17;
        v13 = v18;
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v19);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v8 && v12 && *(v12 + 1) == 1)
      {
        MEMORY[0x24C1A36B0](*(v12 + 8));
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v11);
    }
  }

  else
  {
    v14 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v14);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v15);
}

void sub_24759C2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(va);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va1);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::MeshComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::internal::enableSignposts(realityio::internal *this, char a2)
{
  v3 = this;
  {
    realityio::Defaults::intValue("enableSignposts", v5, v6);
    realityio::internal::enableSignposts(BOOL,BOOL)::value = v6[0] ^ 1 | (v7 != 0);
  }

  if (v3)
  {
    realityio::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    a2 = realityio::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void realityio::MeshDescriptorAction::getMaterialGroupInfo(void **a1, _DWORD *a2, void *a3)
{
  v3 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(&realityio::tokens::EcsTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EcsTokens);
  }

  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a3, (v5 + 280));
  v7 = v3 + 1;
  if (v3 + 1 == v6)
  {
    v55 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v54, (v6 + 5));
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v54))
  {
    if ((v55 & 4) != 0)
    {
      v8 = (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(v54);
    }

    else
    {
      v8 = v54;
    }

    *a2 = *v8;
  }

  v9 = *v3;
  if (*v3 != v7)
  {
    v39 = v3 + 1;
    v40 = v3;
    do
    {
      std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v51, v9 + 4);
      v10 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&v52);
      if (v10)
      {
        v48 = 0;
        v47 = 0u;
        v46 = 0u;
        if ((v51 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v51 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
        }

        if (*(EmptyString + 23) >= 0)
        {
          v13 = *(EmptyString + 23);
        }

        else
        {
          v13 = *(EmptyString + 8);
        }

        std::string::basic_string[abi:ne200100](__p, v13 + 15);
        if (v43 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if (v13)
        {
          if (*(EmptyString + 23) >= 0)
          {
            v15 = EmptyString;
          }

          else
          {
            v15 = *EmptyString;
          }

          memmove(v14, v15, v13);
        }

        strcpy(v14 + v13, "_materialOffset");
        MEMORY[0x24C1A5E00](&v44, __p);
        v16 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v3, &v44);
        if (v7 == v16)
        {
          v50 = 0;
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v49, (v16 + 5));
        }

        if ((v44 & 7) != 0)
        {
          atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v49))
        {
          if ((v50 & 4) != 0)
          {
            v17 = (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(v49);
          }

          else
          {
            v17 = v49;
          }

          v45 = *v17;
        }

        if ((v53 & 4) != 0)
        {
          v18 = (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(&v52);
        }

        else
        {
          v18 = v52;
        }

        pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(&v46, v18);
        v20 = a1[1];
        v19 = a1[2];
        if (v20 >= v19)
        {
          v23 = *a1;
          v24 = v20 - *a1;
          v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 4) + 1;
          if (v25 > 0x555555555555555)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v23) >> 4);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x2AAAAAAAAAAAAAALL)
          {
            v27 = 0x555555555555555;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            if (v27 <= 0x555555555555555)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v28 = 16 * (v24 >> 4);
          *v28 = v45;
          *(v28 + 8) = v46;
          *(v28 + 24) = v47;
          v46 = 0u;
          v47 = 0u;
          *(v28 + 40) = v48;
          v48 = 0;
          v29 = v28 - v24;
          if (v23 != v20)
          {
            v30 = 32;
            v31 = v29;
            v32 = v23;
            do
            {
              *(v30 - 32) = *v32;
              v33 = *(v32 + 8);
              *(v31 + 24) = *(v32 + 24);
              *(v31 + 8) = v33;
              v34 = *(v32 + 5);
              *(v31 + 40) = v34;
              if (v34)
              {
                v35 = (v34 - 16);
                if (*v30)
                {
                  v35 = *v30;
                }

                atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
              }

              v32 += 48;
              v31 += 48;
              v30 += 48;
            }

            while (v32 != v20);
            do
            {
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef((v23 + 8));
              v23 += 48;
            }

            while (v23 != v20);
            v23 = *a1;
          }

          v22 = v28 + 48;
          *a1 = v29;
          a1[1] = (v28 + 48);
          a1[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }

          v7 = v39;
          v3 = v40;
        }

        else
        {
          *v20 = v45;
          v21 = v46;
          *(v20 + 24) = v47;
          *(v20 + 8) = v21;
          v47 = 0u;
          v46 = 0u;
          *(v20 + 40) = v48;
          v48 = 0;
          v22 = v20 + 48;
        }

        a1[1] = v22;
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v49);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v46);
      }

      else if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(&v52))
      {
        v12 = &v52;
        if ((v53 & 4) != 0)
        {
          v12 = (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(&v52);
        }

        *a2 = *v12;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v52);
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v9[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v9[2];
          v38 = *v37 == v9;
          v9 = v37;
        }

        while (!v38);
      }

      v9 = v37;
    }

    while (v37 != v7);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v54);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__13mapIN32pxrInternal__aapl__pxrReserved__7TfTokenENS1_7VtValueENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void realityio::MeshDescriptorAction::setupModelDescriptor(uint64_t a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  REGeomModelDescriptorSetName();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = -1;
  v6 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v28, (*a4 + v8));
      v10 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v6 + v7));
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v6 + v7));
      v12 = atomic_load(&realityio::tokens::EcsTokens);
      if (!v12)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EcsTokens);
      }

      if ((*(v12 + 224) ^ *NameToken) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(&v28))
      {
        if ((v29 & 4) != 0)
        {
          v13 = (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(&v28);
        }

        else
        {
          v13 = v28;
        }

        std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&__p, v13);
        realityio::MeshDescriptorAction::getMaterialGroupInfo(&v22, &v25, &__p);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&__p, v27);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v28);
      ++v9;
      v6 = *a3;
      v8 += 16;
      v7 += 8;
    }

    while (v9 < (a3[1] - *a3) >> 3);
  }

  REGeomModelDescriptorClearMaterialAssignments();
  if (v22 == v23)
  {
    REGeomModelDescriptorSetMaterialAssignmentForModel();
  }

  else
  {
    FaceCount = REGeomModelDescriptorGetFaceCount();
    LODWORD(v28) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&__p, FaceCount, &v28);
    v15 = v22;
    v16 = v23;
    while (v15 != v16)
    {
      v17 = v15[1];
      if (v17)
      {
        v18 = v15[5];
        v19 = __p;
        v20 = 4 * v17;
        do
        {
          v21 = *v18;
          if (v21 < FaceCount)
          {
            v19[v21] = *v15;
          }

          ++v18;
          v20 -= 4;
        }

        while (v20);
      }

      v15 += 6;
    }

    REGeomModelDescriptorSetMaterialAssignmentsPerFace();
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  __p = &v22;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_24759CD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  a14 = &a11;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void realityio::MeshDescriptorAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v294 = *MEMORY[0x277D85DE8];
  v283[1] = 0;
  v6 = *(a1 + 16);
  if (v6 && *(v6 + 200))
  {
    *v246 = *(*(*(*(v6 + 192) + 16) + 8) + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v246);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v246);
    v8 = v7;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v284, a2);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v288, v8, v284);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v284);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v246);
    *v246 = 0;
    a5[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy(a5, v246);
  }

  memset(&v243, 0, sizeof(v243));
  std::vector<std::string>::reserve(&v243, (a3[1] - *a3) >> 3);
  v10 = *v5;
  v9 = v5[1];
  v217 = v5;
  if (*v5 != v9)
  {
    do
    {
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v10);
      if (*(Name + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v246, *Name, *(Name + 8));
      }

      else
      {
        v12 = *Name;
        *&v246[16] = *(Name + 16);
        *v246 = v12;
      }

      end = v243.__end_;
      if (v243.__end_ >= v243.__end_cap_.__value_)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v243.__end_ - v243.__begin_) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v243.__end_cap_.__value_ - v243.__begin_) >> 3) > v16)
        {
          v16 = 0x5555555555555556 * ((v243.__end_cap_.__value_ - v243.__begin_) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v243.__end_cap_.__value_ - v243.__begin_) >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        *&v288[32] = &v243;
        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v243, v17);
        }

        v18 = 8 * ((v243.__end_ - v243.__begin_) >> 3);
        v19 = *v246;
        *(v18 + 16) = *&v246[16];
        *v18 = v19;
        memset(v246, 0, 24);
        v20 = (24 * v15 + 24);
        v21 = (24 * v15 - (v243.__end_ - v243.__begin_));
        memcpy((v18 - (v243.__end_ - v243.__begin_)), v243.__begin_, v243.__end_ - v243.__begin_);
        begin = v243.__begin_;
        value = v243.__end_cap_.__value_;
        v243.__begin_ = v21;
        v243.__end_ = v20;
        v243.__end_cap_.__value_ = 0;
        *&v288[16] = begin;
        *&v288[24] = value;
        *v288 = begin;
        *&v288[8] = begin;
        std::__split_buffer<std::string>::~__split_buffer(v288);
        v243.__end_ = v20;
        v5 = v217;
        if ((v246[23] & 0x80000000) != 0)
        {
          operator delete(*v246);
        }
      }

      else
      {
        v14 = *v246;
        v243.__end_->__r_.__value_.__r.__words[2] = *&v246[16];
        *&end->__r_.__value_.__l.__data_ = v14;
        v243.__end_ = end + 1;
      }

      v10 = (v10 + 8);
    }

    while (v10 != v9);
  }

  v282 = 0;
  v280 = 0;
  v278 = 0;
  MEMORY[0x24C1A5DE0](&v242, "primvars:normals");
  MEMORY[0x24C1A5DE0](&v241, "primvars:normals:indices");
  v276 = 0;
  v274 = 0;
  v272 = 0;
  v270 = 0;
  v268 = 0;
  v240[0] = 0;
  v240[1] = 0;
  v238 = 0;
  v239 = v240;
  v235 = 0;
  v236 = 0;
  v237 = 0;
  v234 = 0;
  v266 = 0;
  v264 = 0;
  v262 = 0;
  v260 = 0;
  memset(v233, 0, sizeof(v233));
  v232 = -1;
  v24 = *v5;
  if (v5[1] != *v5)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = MEMORY[0x277D86550];
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v284, (*a4 + v26));
      v30 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
      if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v30 &= 0xFFFFFFFFFFFFFFF8;
      }

      v31 = atomic_load(v29);
      if (!v31)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
      }

      if ((v30 ^ *(v31 + 816)) >= 8)
      {
        v33 = atomic_load(v29);
        if (!v33)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
        }

        if ((v30 ^ *(v33 + 704)) >= 8)
        {
          v34 = atomic_load(v29);
          if (!v34)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
          }

          if ((v30 ^ *(v34 + 344)) >= 8)
          {
            v35 = atomic_load(v29);
            if (!v35)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
            }

            if ((v30 ^ *(v35 + 336)) >= 8)
            {
              NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
              MEMORY[0x24C1A5DE0](v288, "__materialIndexInfo");
              if ((*v288 ^ *NameToken) > 7)
              {
                if ((v288[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                v37 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(v284);
                if ((v288[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v37)
                {
                  if ((v284[1] & 4) != 0)
                  {
                    v38 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
                  }

                  else
                  {
                    v38 = v284[0];
                  }

                  if (&v239 != v38)
                  {
                    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>(&v239, *v38, v38 + 1);
                  }

                  realityio::MeshDescriptorAction::getMaterialGroupInfo(v233, &v232, &v239);
                  goto LABEL_39;
                }
              }

              v39 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
              MEMORY[0x24C1A5DE0](v288, "__defaultUV");
              if ((*v288 ^ *v39) > 7)
              {
                if ((v288[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                v40 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v284);
                if ((v288[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v40)
                {
                  if ((v284[1] & 4) != 0)
                  {
                    v41 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
                  }

                  else
                  {
                    v41 = v284;
                  }

                  pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v234, v41);
                  goto LABEL_39;
                }
              }

              v42 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
              MEMORY[0x24C1A5DE0](v288, "orientation");
              if ((*v288 ^ *v42) > 7)
              {
                if ((v288[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }

              else
              {
                v43 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v284);
                if ((v288[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v43)
                {
                  if ((v284[1] & 4) != 0)
                  {
                    v44 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
                  }

                  else
                  {
                    v44 = v284;
                  }

                  v45 = *v44;
                  if ((*v44 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v45 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  MEMORY[0x24C1A5DE0](v288, "leftHanded");
                  v46 = *v288;
                  if ((v288[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v288 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v45 ^ v46) < 8)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = v28;
                  }

                  if ((v45 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  goto LABEL_39;
                }
              }

              v47 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v24 + v25));
              v48 = *(v47 + 23);
              v49 = v48;
              if ((v48 & 0x80u) != 0)
              {
                v48 = *(v47 + 8);
              }

              if (v48 < 8)
              {
                goto LABEL_87;
              }

              if (v49 < 0)
              {
                v47 = *v47;
              }

              if (!strncmp(v47, "primvars", 8uLL))
              {
                v69 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v24 + v25));
                v70 = *(v69 + 23);
                v71 = v70;
                if ((v70 & 0x80u) != 0)
                {
                  v70 = *(v69 + 8);
                }

                if (v70 < 8 || (v71 >= 0 ? (v72 = v69) : (v72 = *v69), strcmp((v72 + v70 - 8), ":indices")))
                {
                  v73 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                  v74 = v236;
                  if (v236 >= v237)
                  {
                    v76 = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v235, v73);
                  }

                  else
                  {
                    v75 = *v73;
                    *v236 = *v73;
                    if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      *v74 &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v76 = (v74 + 1);
                  }

                  v236 = v76;
                }

                pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v24 + v25));
                v92 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
                pxrInternal__aapl__pxrReserved__::VtValue::operator=(v92, v284);
                v93 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                v94 = atomic_load(v29);
                if (!v94)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                }

                if ((*(v94 + 848) ^ *v93) >= 8)
                {
                  v95 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                  v96 = atomic_load(v29);
                  if (!v96)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                  }

                  if ((*(v96 + 106) & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    EmptyString = (*(v96 + 106) & 0xFFFFFFFFFFFFFFF8) + 16;
                  }

                  else
                  {
                    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v96);
                  }

                  if (*(EmptyString + 23) >= 0)
                  {
                    v98 = *(EmptyString + 23);
                  }

                  else
                  {
                    v98 = *(EmptyString + 8);
                  }

                  std::string::basic_string[abi:ne200100](v288, v98 + 8);
                  v212 = v28;
                  if (v288[23] >= 0)
                  {
                    v99 = v288;
                  }

                  else
                  {
                    v99 = *v288;
                  }

                  if (v98)
                  {
                    if (*(EmptyString + 23) >= 0)
                    {
                      v100 = EmptyString;
                    }

                    else
                    {
                      v100 = *EmptyString;
                    }

                    memmove(v99, v100, v98);
                  }

                  strcpy(&v99[v98], ":indices");
                  MEMORY[0x24C1A5E00](v246, v288);
                  v101 = *v95;
                  v102 = *v246;
                  if ((v246[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v288[23] & 0x80000000) != 0)
                  {
                    operator delete(*v288);
                  }

                  if ((v102 ^ v101) < 8)
                  {
                    v32 = v263;
LABEL_165:
                    v28 = v212;
                    goto LABEL_38;
                  }

                  v28 = v212;
                  v103 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                  v104 = atomic_load(v29);
                  if (!v104)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                  }

                  if ((*(v104 + 856) ^ *v103) < 8)
                  {
                    v32 = v261;
                    goto LABEL_38;
                  }

                  v105 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                  v106 = atomic_load(v29);
                  if (!v106)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                  }

                  if ((*(v106 + 107) & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v107 = ((*(v106 + 107) & 0xFFFFFFFFFFFFFFF8) + 16);
                  }

                  else
                  {
                    v107 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v106);
                  }

                  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(":indices", v107, v288);
                  MEMORY[0x24C1A5E00](v246, v288);
                  v108 = *v105;
                  v109 = *v246;
                  if ((v246[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((v288[23] & 0x80000000) != 0)
                  {
                    operator delete(*v288);
                  }

                  if ((v109 ^ v108) < 8)
                  {
                    v32 = v259;
                    goto LABEL_165;
                  }

                  v110 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                  v28 = v212;
                  if ((v242 ^ *v110) >= 8)
                  {
                    v111 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v24 + v25));
                    if ((v241 ^ *v111) >= 8)
                    {
                      goto LABEL_39;
                    }

                    v32 = v273;
                  }

                  else
                  {
                    v32 = v275;
                  }
                }

                else
                {
                  v32 = v265;
                }
              }

              else
              {
LABEL_87:
                IsMapperPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath((v24 + v25));
                if (v284[1])
                {
                  v51 = IsMapperPath;
                }

                else
                {
                  v51 = 0;
                }

                if (v51 != 1)
                {
                  goto LABEL_39;
                }

                pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v288, (v24 + v25));
                v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v288);
                v53 = atomic_load(v29);
                if (!v53)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                }

                if ((*(v53 + 704) ^ *v52) > 7)
                {
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v288);
LABEL_97:
                  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v288, (v24 + v25));
                  v61 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v288);
                  if ((v242 ^ *v61) > 7)
                  {
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v288);
LABEL_114:
                    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v257, (v24 + v25));
                    v77 = v28;
                    v78 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v257);
                    v79 = v78;
                    if (*(v78 + 23) >= 0)
                    {
                      v80 = *(v78 + 23);
                    }

                    else
                    {
                      v80 = *(v78 + 8);
                    }

                    std::string::basic_string[abi:ne200100](v246, v80 + 3);
                    if (v246[23] >= 0)
                    {
                      v81 = v246;
                    }

                    else
                    {
                      v81 = *v246;
                    }

                    if (v80)
                    {
                      if (v79[23] >= 0)
                      {
                        v82 = v79;
                      }

                      else
                      {
                        v82 = *v79;
                      }

                      memmove(v81, v82, v80);
                    }

                    *&v81[v80] = 6250298;
                    TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v24 + v25));
                    v28 = v77;
                    v84 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(TargetPath);
                    if ((*v84 & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v85 = (*v84 & 0xFFFFFFFFFFFFFFF8) + 16;
                    }

                    else
                    {
                      v85 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v84);
                    }

                    v86 = *(v85 + 23);
                    if (v86 >= 0)
                    {
                      v87 = v85;
                    }

                    else
                    {
                      v87 = *v85;
                    }

                    if (v86 >= 0)
                    {
                      v88 = *(v85 + 23);
                    }

                    else
                    {
                      v88 = *(v85 + 8);
                    }

                    v89 = std::string::append(v246, v87, v88);
                    v90 = *&v89->__r_.__value_.__l.__data_;
                    *&v288[16] = *(&v89->__r_.__value_.__l + 2);
                    *v288 = v90;
                    v89->__r_.__value_.__l.__size_ = 0;
                    v89->__r_.__value_.__r.__words[2] = 0;
                    v89->__r_.__value_.__r.__words[0] = 0;
                    v91 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
                    pxrInternal__aapl__pxrReserved__::VtValue::operator=(v91, v284);
                    if ((v288[23] & 0x80000000) != 0)
                    {
                      operator delete(*v288);
                    }

                    if ((v246[23] & 0x80000000) != 0)
                    {
                      operator delete(*v246);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v257);
                    goto LABEL_39;
                  }

                  v62 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v24 + v25));
                  v63 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v62);
                  v64 = v28;
                  v65 = atomic_load(v29);
                  if (!v65)
                  {
                    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                  }

                  v66 = *v63;
                  v67 = *(v65 + 488);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  v68 = v67 ^ v66;
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v288);
                  v28 = v64;
                  if (v68 > 7)
                  {
                    goto LABEL_114;
                  }

                  v32 = v271;
                  goto LABEL_38;
                }

                v54 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v24 + v25));
                v55 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v54);
                v56 = v28;
                v57 = atomic_load(v29);
                if (!v57)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(v29);
                }

                v58 = *v55;
                v59 = *(v57 + 488);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                v60 = v59 ^ v58;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v288);
                v28 = v56;
                if (v60 >= 8)
                {
                  goto LABEL_97;
                }

                v32 = v277;
              }
            }

            else
            {
              v32 = v267;
            }
          }

          else
          {
            v32 = v269;
          }
        }

        else
        {
          v32 = v279;
        }
      }

      else
      {
        v32 = v281;
      }

LABEL_38:
      pxrInternal__aapl__pxrReserved__::VtValue::operator=(v32, v284);
LABEL_39:
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v284);
      ++v27;
      v24 = *v217;
      v26 += 16;
      v25 += 8;
    }

    while (v27 < (v217[1] - *v217) >> 3);
  }

  if (!v282)
  {
    std::string::basic_string[abi:ne200100]<0>(v288, "No points found");
    ExecFault::stringValue(1, v288, a5);
  }

  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v228 = 0;
  memset(v227, 0, sizeof(v227));
  __src = 0;
  memset(v225, 0, sizeof(v225));
  v112 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(v281);
  if (&v229 != v112)
  {
    v113 = *(v112 + 16);
    *v288 = *v112;
    *&v288[16] = v113;
    v114 = *(v112 + 32);
    *&v288[32] = v114;
    if (v114)
    {
      v115 = (v114 - 16);
      if (*&v288[24])
      {
        v115 = *&v288[24];
      }

      atomic_fetch_add_explicit(v115, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v229);
    v229 = *v288;
    v230 = *&v288[16];
    memset(v288, 0, 40);
    v231 = *&v288[32];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v288);
  }

  v116 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v269);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(v227, v116);
  v117 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v267);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(v225, v117);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(v224, v229);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v229);
  v118 = v231;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v229);
  v120 = v231 + 12 * v229;
  if (v118 != v120)
  {
    v121 = v224[0];
    do
    {
      *&v119 = *v118;
      DWORD2(v119) = *(v118 + 8);
      *v121++ = v119;
      v118 += 12;
    }

    while (v118 != v120);
  }

  std::vector<unsigned int>::vector[abi:ne200100](__dst, *&v225[0]);
  if (*&v225[0])
  {
    memmove(__dst[0], __src, 4 * *&v225[0]);
  }

  std::vector<unsigned int>::vector[abi:ne200100](v222, *&v227[0]);
  if (*&v227[0])
  {
    memmove(v222[0], v228, 4 * *&v227[0]);
  }

  v221 = 0;
  HighVertexPerPolygon = REGeomModelDescriptorCreateHighVertexPerPolygon();
  if (HighVertexPerPolygon)
  {
    REGeomModelDescriptorSetWindingOrder();
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v288, a2);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v288);
    REGeomModelDescriptorSetName();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v288);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v220, v229);
    if (v229)
    {
      v124 = v231;
      v125 = v220;
      v126 = 12 * v229;
      do
      {
        *&v123 = *v124;
        DWORD2(v123) = *(v124 + 8);
        *v125++ = v123;
        v124 += 12;
        v126 -= 12;
      }

      while (v126);
    }

    VertexCount = REGeomModelDescriptorGetVertexCount();
    MEMORY[0x24C1A3800](HighVertexPerPolygon, "vertexPosition", 1, VertexCount, v220);
    REGeomModelDescriptorAddAttributeAlias();
    if (v280)
    {
      handleNormals(HighVertexPerPolygon, v279, v277, 0);
      REGeomModelDescriptorAddAttributeAlias();
    }

    v219[0] = 0;
    v219[1] = 0;
    v218 = v219;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v288, 1.0);
    v258 = 0;
    memset(v257, 0, sizeof(v257));
    v255 = 0;
    *__sz = 0u;
    v254 = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v250 = 0;
    v249 = 0;
    v128 = *v217;
    if (v217[1] == *v217)
    {
      v211 = 1;
      v213 = 1;
LABEL_307:
      if (v211 == v213)
      {
        v178 = v211;
      }

      else
      {
        v178 = 1;
      }

      v179 = *(MEMORY[0x277D860B8] + 16);
      *v246 = *MEMORY[0x277D860B8];
      *&v246[16] = v179;
      v180 = *(MEMORY[0x277D860B8] + 48);
      v247 = *(MEMORY[0x277D860B8] + 32);
      v248 = v180;
      memset(&v256, 0, sizeof(v256));
      memset(&v245, 0, sizeof(v245));
      memset(__p, 0, sizeof(__p));
      MEMORY[0x24C1A4BE0](v284, v288);
      *v246 = *v284;
      *&v246[16] = v285;
      v247 = v286;
      v248 = v287;
      v181 = REGeomModelDescriptorGetVertexCount();
      std::vector<int>::resize(&v256, v181);
      if (v256.__begin_ != v256.__end_)
      {
        v182 = 0;
        v183 = (v256.__end_ - v256.__begin_ - 4) >> 2;
        v184 = vdupq_n_s32(v178);
        v185 = vdupq_n_s32(4 * v178);
        v186 = vdupq_n_s64(v183);
        v187 = vmulq_s32(v184, xmmword_247757A20);
        v188 = v256.__begin_ + 2;
        do
        {
          v189 = vdupq_n_s64(v182);
          v190 = vmovn_s64(vcgeq_u64(v186, vorrq_s8(v189, xmmword_247758360)));
          v191 = vaddq_s32(v187, v184);
          if (vuzp1_s16(v190, *v184.i8).u8[0])
          {
            *(v188 - 2) = v191.i32[0];
          }

          if (vuzp1_s16(v190, *&v184).i8[2])
          {
            *(v188 - 1) = v191.u32[1];
          }

          if (vuzp1_s16(*&v184, vmovn_s64(vcgeq_u64(v186, vorrq_s8(v189, xmmword_247758350)))).i32[1])
          {
            *v188 = v191.i64[1];
          }

          v182 += 4;
          v187 = vaddq_s32(v187, v185);
          v188 += 4;
        }

        while (((v183 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v182);
      }

      MEMORY[0x24C1A5DE0](v284, "constant");
      v192 = v284[0] ^ v250;
      if ((v284[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v284[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v192 > 7)
      {
        std::vector<int>::resize(&v245, __sz[0]);
        if (__sz[0])
        {
          v198 = v255;
          v199 = v245.__begin_;
          v200 = 4 * __sz[0];
          do
          {
            v201 = *v198++;
            *v199++ = v201;
            v200 -= 4;
          }

          while (v200);
        }
      }

      else
      {
        v193 = v181 * v211;
        std::vector<int>::resize(&v245, v193);
        if (v193)
        {
          v194 = 0;
          v195 = 0;
          v196 = 4 * v211;
          do
          {
            v197 = v245.__begin_;
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
            memcpy(v197 + v194, v255, v196);
            v195 += v211;
            v194 += v196;
          }

          while (v195 < v193);
        }
      }

      MEMORY[0x24C1A5DE0](v284, "constant");
      v202 = v284[0] ^ v249;
      if ((v284[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v284[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v202 > 7)
      {
        std::vector<float>::resize(__p, *&v257[0]);
        if (*&v257[0])
        {
          memmove(__p[0], v258, 4 * *&v257[0]);
        }
      }

      else
      {
        v203 = v181 * v213;
        std::vector<float>::resize(__p, v203);
        if (v203)
        {
          v204 = 0;
          v205 = 0;
          do
          {
            v206 = __p[0];
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v257);
            memcpy(&v206[v204], v258, 4 * v213);
            v205 += v213;
            v204 += 4 * v213;
          }

          while (v205 < v203);
        }
      }

      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v251);
      if (*(String + 23) >= 0)
      {
        v208 = String;
      }

      else
      {
        v208 = *String;
      }

      if (v208)
      {
        v209 = v208;
      }

      else
      {
        v209 = "";
      }

      if (((strlen(v209) >> 1) + 1) >= 0)
      {
        operator new();
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = "primvars:skel:geomBindTransform";
    v133 = "primvars:skel:jointWeights";
    v134 = "primvars:skel:jointIndices";
    v135 = "skel:skeleton";
    v213 = 1;
    v211 = 1;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v284, (*a4 + v130));
      v136 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
      MEMORY[0x24C1A5DE0](v246, v132);
      v137 = *v246;
      if ((*v246 ^ *v136) > 7)
      {
        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_234;
      }

      if (!v284[1])
      {
        goto LABEL_226;
      }

      if (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
      {
        IsImpl = 1;
        goto LABEL_228;
      }

      if ((v284[1] & 4) != 0)
      {
        v137 = *v246;
      }

      else
      {
LABEL_226:
        IsImpl = 0;
      }

LABEL_228:
      if ((v137 & 7) != 0)
      {
        atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (IsImpl)
      {
        if ((v284[1] & 4) != 0)
        {
          v139 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
        }

        else
        {
          v139 = v284[0];
        }

        v140 = *v139;
        v141 = v139[1];
        v142 = v139[3];
        *&v288[32] = v139[2];
        v289 = v142;
        *v288 = v140;
        *&v288[16] = v141;
        v143 = v139[4];
        v144 = v139[5];
        v145 = v139[7];
        v292 = v139[6];
        v293 = v145;
        v290 = v143;
        v291 = v144;
LABEL_297:
        v177 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v218, v177, v177);
        goto LABEL_298;
      }

LABEL_234:
      v146 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
      MEMORY[0x24C1A5DE0](v246, v133);
      if ((*v246 ^ *v146) > 7)
      {
        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v147 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v284);
        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v147)
        {
          if ((v284[1] & 4) != 0)
          {
            v148 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
          }

          else
          {
            v148 = v284[0];
          }

          if (v257 != v148)
          {
            v149 = v148[1];
            *v246 = *v148;
            *&v246[16] = v149;
            v150 = *(v148 + 4);
            *&v247 = v150;
            if (v150)
            {
              v151 = (v150 - 16);
              if (*&v246[24])
              {
                v151 = *&v246[24];
              }

              atomic_fetch_add_explicit(v151, 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v257);
            v257[0] = *v246;
            v257[1] = *&v246[16];
            memset(v246, 0, sizeof(v246));
            v258 = v247;
            *&v247 = 0;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v246);
          }

          goto LABEL_297;
        }
      }

      v152 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
      MEMORY[0x24C1A5DE0](v246, v134);
      if ((*v246 ^ *v152) > 7)
      {
        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v153 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v284);
        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v153)
        {
          if ((v284[1] & 4) != 0)
          {
            v154 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
          }

          else
          {
            v154 = v284[0];
          }

          pxrInternal__aapl__pxrReserved__::VtArray<int>::operator=(__sz, v154);
          goto LABEL_297;
        }
      }

      v155 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
      MEMORY[0x24C1A5DE0](v246, v135);
      v156 = *v155;
      v157 = *v246;
      if ((*v246 ^ v156) > 7)
      {
        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_272;
      }

      v158 = v135;
      v159 = v134;
      v160 = v133;
      v161 = v132;
      v162 = v284[1];
      if (!v284[1])
      {
LABEL_261:
        v163 = 0;
        goto LABEL_266;
      }

      if (!strcmp((*(*(v284[1] & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v163 = 1;
      }

      else
      {
        if ((v162 & 4) == 0)
        {
          goto LABEL_261;
        }

        v157 = *v246;
      }

LABEL_266:
      v132 = v161;
      v133 = v160;
      if ((v157 & 7) != 0)
      {
        atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v134 = v159;
      v135 = v158;
      if (v163)
      {
        if ((v284[1] & 4) != 0)
        {
          v164 = (*((v284[1] & 0xFFFFFFFFFFFFFFF8) + 168))(v284);
        }

        else
        {
          v164 = v284;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v251, v164);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v252, v164 + 1);
        goto LABEL_297;
      }

LABEL_272:
      MEMORY[0x24C1A5DE0](v246, v133);
      MEMORY[0x24C1A5DE0](&v256, "elementSize");
      isMetaData = realityio::isMetaData((v128 + v129), v246, &v256, v165);
      if ((v256.__begin_ & 7) != 0)
      {
        atomic_fetch_add_explicit((v256.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v246[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (isMetaData)
      {
        v213 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v284);
        v167 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v218, v167, v167);
      }

      else
      {
        MEMORY[0x24C1A5DE0](v246, v134);
        MEMORY[0x24C1A5DE0](&v256, "elementSize");
        v169 = realityio::isMetaData((v128 + v129), v246, &v256, v168);
        if ((v256.__begin_ & 7) != 0)
        {
          atomic_fetch_add_explicit((v256.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v246[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (!v169)
        {
          MEMORY[0x24C1A5DE0](v246, v134);
          MEMORY[0x24C1A5DE0](&v256, "interpolation");
          v172 = realityio::isMetaData((v128 + v129), v246, &v256, v171);
          if ((v256.__begin_ & 7) != 0)
          {
            atomic_fetch_add_explicit((v256.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v246[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v172)
          {
            v173 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v284);
            v174 = &v250;
          }

          else
          {
            MEMORY[0x24C1A5DE0](v246, v133);
            MEMORY[0x24C1A5DE0](&v256, "interpolation");
            v176 = realityio::isMetaData((v128 + v129), v246, &v256, v175);
            if ((v256.__begin_ & 7) != 0)
            {
              atomic_fetch_add_explicit((v256.__begin_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v246[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*v246 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (!v176)
            {
              goto LABEL_298;
            }

            v173 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(v284);
            v174 = &v249;
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(v174, v173);
          goto LABEL_297;
        }

        v211 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v284);
        v170 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v128 + v129));
        std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v218, v170, v170);
      }

LABEL_298:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v284);
      ++v131;
      v128 = *v217;
      v130 += 16;
      v129 += 8;
      if (v131 >= (v217[1] - *v217) >> 3)
      {
        goto LABEL_307;
      }
    }
  }

  a5[1] = 0;
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v221);
  if (v222[0])
  {
    v222[1] = v222[0];
    operator delete(v222[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v224[0])
  {
    v224[1] = v224[0];
    operator delete(v224[0]);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v225);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v227);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v229);
  *v288 = v233;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](v288);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v259);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v261);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v263);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v265);
  if ((v234 & 7) != 0)
  {
    atomic_fetch_add_explicit((v234 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v288 = &v235;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v288);
  v210 = v238;
  v238 = 0;
  if (v210)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v210, *(v210 + 8));
    MEMORY[0x24C1A91B0](v210, 0x1020C4062D53EE8);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v239, v240[0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v267);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v269);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v271);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v273);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v275);
  if ((v241 & 7) != 0)
  {
    atomic_fetch_add_explicit((v241 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v242 & 7) != 0)
  {
    atomic_fetch_add_explicit((v242 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v277);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v279);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v281);
  *v288 = &v243;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v288);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v283);
}

void sub_24759F808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&STACK[0x220]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v70 - 224);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    v68 = STACK[0x208];
  }

  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2F0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x300]);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(&a21, a22);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&a27);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  if (a31)
  {
    a32 = a31;
    operator delete(a31);
  }

  if (a34)
  {
    a35 = a34;
    operator delete(a34);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a37);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a43);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a49);
  a49 = &a55;
  std::vector<realityio::MeshDescriptorAction::MaterialGroupInfo>::__destroy_vector::operator()[abi:ne200100](&a49);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x310]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x320]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x330]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x340]);
  if ((a58 & 7) != 0)
  {
    atomic_fetch_add_explicit((a58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  a49 = &a59;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a49);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a62);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a64, a65);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x350]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x360]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x370]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x380]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x390]);
  if ((a66 & 7) != 0)
  {
    atomic_fetch_add_explicit((a66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a67 & 7) != 0)
  {
    atomic_fetch_add_explicit((a67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3A0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3B0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3C0]);
  a49 = &a68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a49);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3D0]);
  _Unwind_Resume(a1);
}

void handleNormals(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  if (a3 && (v7 = a3, pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(a3)))
  {
    v8 = *(v7 + 1);
    if ((v8 & 4) != 0)
    {
      v7 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
    }

    v9 = *v7;
    v14 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v14, "");
  }

  AttributeRateHelper = getAttributeRateHelper(&v14, 1u);
  memset(&__p, 0, sizeof(__p));
  convertIndices(a4, &__p);
  if (!AttributeRateHelper)
  {
    FaceCount = REGeomModelDescriptorGetFaceCount();
    std::vector<int>::resize(&__p, FaceCount);
    if (__p.__end_ != __p.__begin_)
    {
      v12 = __p.__end_ - __p.__begin_;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      bzero(__p.__begin_, 4 * v12);
    }

    AttributeRateHelper = 2;
  }

  addPrimvarToDescriptor(a1, a2, AttributeRateHelper, &__p, "vertexNormal");
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_2475A0128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void addPrimvar(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::find();
  v9 = v8;
  v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v9 == v11 && (!v9 || v7 == v10))
  {
    return;
  }

  __p.__end_ = 0;
  v12 = pxrInternal__aapl__pxrReserved__::VtValue::operator==(v7 + 56, &__p);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
  if (v12)
  {
    return;
  }

  if (*(v7 + 55) >= 0)
  {
    v13 = *(v7 + 55);
  }

  else
  {
    v13 = *(v7 + 40);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v13 + 8);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    p_p = __p.__begin_;
  }

  if (v13)
  {
    if (*(v7 + 55) >= 0)
    {
      v15 = (v7 + 32);
    }

    else
    {
      v15 = *(v7 + 32);
    }

    memmove(p_p, v15, v13);
  }

  strcpy(p_p + v13, ":indices");
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(v7 + 55) >= 0)
  {
    v17 = *(v7 + 55);
  }

  else
  {
    v17 = *(v7 + 40);
  }

  begin = &__p;
  std::string::basic_string[abi:ne200100](&__p, v17 + 16);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    begin = __p.__begin_;
  }

  if (v17)
  {
    if (*(v7 + 55) >= 0)
    {
      v19 = (v7 + 32);
    }

    else
    {
      v19 = *(v7 + 32);
    }

    memmove(begin, v19, v17);
  }

  strcpy(begin + v17, ":__interpolation");
  v20 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(v7 + 55) >= 0)
  {
    v21 = *(v7 + 55);
  }

  else
  {
    v21 = *(v7 + 40);
  }

  v22 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v21 + 14);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v22 = __p.__begin_;
  }

  if (v21)
  {
    if (*(v7 + 55) >= 0)
    {
      v23 = (v7 + 32);
    }

    else
    {
      v23 = *(v7 + 32);
    }

    memmove(v22, v23, v21);
  }

  strcpy(v22 + v21, ":__elementSize");
  v24 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(v7 + 55) >= 0)
  {
    v25 = *(v7 + 55);
  }

  else
  {
    v25 = *(v7 + 40);
  }

  v26 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v25 + 11);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    v26 = __p.__begin_;
  }

  if (v25)
  {
    if (*(v7 + 55) >= 0)
    {
      v27 = (v7 + 32);
    }

    else
    {
      v27 = *(v7 + 32);
    }

    memmove(v26, v27, v25);
  }

  strcpy(v26 + v25, ":__typeName");
  v28 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v20 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v20))
  {
    v29 = *(v20 + 1);
    if ((v29 & 4) != 0)
    {
      v20 = (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(v20);
    }

    v30 = *v20;
    v35 = v30;
    if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v35 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    MEMORY[0x24C1A5DE0](&v35, "");
  }

  AttributeRateHelper = getAttributeRateHelper(&v35, 0xFFu);
  if (v24)
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(v24))
    {
      v32 = *(v24 + 1);
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(v24);
      }
    }
  }

  if (v28)
  {
    v33 = *(v28 + 1);
    if (v33)
    {
      if (!strcmp((*(*(v33 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__16SdfValueTypeNameE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
LABEL_73:
        if ((v33 & 4) != 0)
        {
          v28 = (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(v28);
        }

        v34 = *v28;
        goto LABEL_77;
      }

      {
        v33 = *(v28 + 1);
        goto LABEL_73;
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v34);
LABEL_77:
  memset(&__p, 0, sizeof(__p));
  convertIndices(ValueAtPath, &__p);
  addPrimvarToDescriptor(a4, (v7 + 56), AttributeRateHelper, &__p, a3);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_2475A0644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *realityio::SphereMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  buildSphereOptions(a2, a3);
  result = REGeomModelDescriptorCreateFromSphereOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    v11 = v9;
    a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy(a4, &v11);
  }

  a4[1] = 0;
  return result;
}

void sub_2475A0790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

unint64_t buildSphereOptions(uint64_t *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (a1[1] == *a1)
  {
    v14 = 0x3F80000000000000;
    return REGeomBuildSphereDefaultOptions() | v14;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1.0;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v17, (*a2 + v6));
    v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    MEMORY[0x24C1A5DE0](&v16, "radius");
    if ((v16 ^ *NameToken) > 7)
    {
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v17))
      {
        if ((v16 & 7) != 0)
        {
          atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_15:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v17))
        {
          if ((v18 & 4) != 0)
          {
            v12 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v17);
          }

          else
          {
            v12 = v17;
          }

          v8 = *v12;
        }

        else
        {
          if ((v18 & 4) != 0)
          {
            v13 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v17);
          }

          else
          {
            v13 = v17;
          }

          v8 = *v13;
        }

        goto LABEL_22;
      }

      v11 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v17);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v11)
      {
        goto LABEL_15;
      }
    }

LABEL_22:
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
    ++v7;
    v2 = *a1;
    v6 += 16;
    v5 += 8;
  }

  while (v7 < (a1[1] - *a1) >> 3);
  v14 = LODWORD(v8) << 32;
  return REGeomBuildSphereDefaultOptions() | v14;
}

void sub_2475A09CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::SphereAssetDescriptorAction::operator()(uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  buildSphereOptions(a2, a3);
  SphereDescriptor = REMeshAssetCreateSphereDescriptor();
  a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy(a4, &SphereDescriptor);
}

void sub_2475A0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t *realityio::CapsuleMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v13 = 0uLL;
  v14 = 0;
  buildCapsuleOptions(&v13, a2, a3);
  v11 = v13;
  v12 = v14;
  result = REGeomModelDescriptorCreateFromCapsuleOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    *&v11 = v9;
    a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy(a4, &v11);
  }

  a4[1] = 0;
  return result;
}

void *buildCapsuleOptions(uint64_t a1, uint64_t *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] == *a2)
  {
    v10 = 0.5;
    v20 = 1.0;
    goto LABEL_47;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = 0.5;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v25, (*a3 + v7));
    v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
    MEMORY[0x24C1A5DE0](&v24, "radius");
    if ((v24 ^ *NameToken) > 7)
    {
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
      {
        if ((v24 & 7) != 0)
        {
          atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_15:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
        {
          if ((v26 & 4) != 0)
          {
            v14 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v14 = v25;
          }

          v10 = *v14;
        }

        else
        {
          if ((v26 & 4) != 0)
          {
            v16 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v16 = v25;
          }

          v10 = *v16;
        }

        goto LABEL_38;
      }

      v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v25);
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v13)
      {
        goto LABEL_15;
      }
    }

    v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
    MEMORY[0x24C1A5DE0](&v24, "height");
    if ((v24 ^ *v15) > 7)
    {
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
      {
        if ((v24 & 7) != 0)
        {
          atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_31:
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v25))
        {
          if ((v26 & 4) != 0)
          {
            v18 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v18 = v25;
          }

          v9 = *v18;
        }

        else
        {
          if ((v26 & 4) != 0)
          {
            v19 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v25);
          }

          else
          {
            v19 = v25;
          }

          v9 = *v19;
        }

        goto LABEL_38;
      }

      v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v25);
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v17)
      {
        goto LABEL_31;
      }
    }

LABEL_38:
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v25);
    ++v8;
    v3 = *a2;
    v7 += 16;
    v6 += 8;
  }

  while (v8 < (a2[1] - *a2) >> 3);
  v20 = v9;
LABEL_47:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = REGeomBuildCapsuleDefaultOptions();
  v22 = v20 + v10 * 2.0;
  *(a1 + 8) = v10;
  *(a1 + 12) = v22;
  *a1 = 64;
  *(a1 + 4) = 32;
  return result;
}

void sub_2475A0F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::CapsuleAssetDescriptorAction::operator()(uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v10 = 0uLL;
  v11 = 0;
  buildCapsuleOptions(&v10, a2, a3);
  v8[1] = *(&v10 + 1);
  v9 = v11;
  v8[0] = REMeshAssetCreateCapsuleDescriptor();
  a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy(a4, v8);
}

uint64_t *realityio::ConeMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  buildConeOptions(a2, a3);
  result = REGeomModelDescriptorCreateFromConeOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    v11 = v9;
    a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy(a4, &v11);
  }

  a4[1] = 0;
  return result;
}

void sub_2475A10E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

unint64_t buildConeOptions(uint64_t *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (a1[1] == *a1)
  {
    v16 = 0x3F80000000000040;
    return v16 | REGeomBuildConeDefaultOptions() & 0xFFFF0000;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1.0;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v19, (*a2 + v6));
    v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
    MEMORY[0x24C1A5DE0](&v18, "radius");
    if ((v18 ^ *NameToken) > 7)
    {
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_18:
      v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v2 + v5));
      MEMORY[0x24C1A5DE0](&v18, "height");
      if ((v18 ^ *v12) > 7)
      {
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
        {
          if ((v18 & 7) != 0)
          {
            atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

LABEL_29:
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
          {
            if ((v20 & 4) != 0)
            {
              v14 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
            }

            else
            {
              v14 = v19;
            }

            v8 = *v14;
          }

          else
          {
            if ((v20 & 4) != 0)
            {
              v15 = (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
            }

            else
            {
              v15 = v19;
            }

            v8 = *v15;
          }

          goto LABEL_36;
        }

        v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v19);
        if ((v18 & 7) != 0)
        {
          atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_36;
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
    {
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v11 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v19);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v19))
    {
      if ((v20 & 4) != 0)
      {
        goto LABEL_40;
      }
    }

    else if ((v20 & 4) != 0)
    {
LABEL_40:
      (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(v19);
    }

LABEL_36:
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
    ++v7;
    v2 = *a1;
    v6 += 16;
    v5 += 8;
  }

  while (v7 < (a1[1] - *a1) >> 3);
  v16 = (LODWORD(v8) << 32) | 0x40;
  return v16 | REGeomBuildConeDefaultOptions() & 0xFFFF0000;
}

void sub_2475A1420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::ConeAssetDescriptorAction::operator()(uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  buildConeOptions(a2, a3);
  ConeDescriptor = REMeshAssetCreateConeDescriptor();
  a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy(a4, &ConeDescriptor);
}

void sub_2475A1518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t *realityio::CubeMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  memset(v12, 0, 28);
  buildBoxOptions(v12, a2, a3);
  *v11 = v12[0];
  *(&v11[1] + 4) = *(v12 + 12);
  result = REGeomModelDescriptorCreateFromBoxOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v11);
    v11[0] = v9;
    a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy(a4, v11);
  }

  a4[1] = 0;
  return result;
}

void *buildBoxOptions(uint64_t a1, uint64_t *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1.0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v18, (*a3 + v8));
      v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v4 + v7));
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v4 + v7));
      MEMORY[0x24C1A5DE0](&v17, "size");
      if ((v17 ^ *NameToken) > 7)
      {
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_22;
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v18))
      {
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v18);
        if ((v17 & 7) != 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v13 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v18))
      {
        if ((v19 & 4) != 0)
        {
          v14 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v18);
        }

        else
        {
          v14 = v18;
        }

        v10 = *v14;
      }

      else
      {
        if ((v19 & 4) != 0)
        {
          v15 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v18);
        }

        else
        {
          v15 = v18;
        }

        v10 = *v15;
      }

LABEL_22:
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v18);
      ++v9;
      v4 = *a2;
      v8 += 16;
      v7 += 8;
      if (v9 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = 1.0;
LABEL_29:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = REGeomBuildBoxDefaultOptions();
  *(a1 + 12) = v10;
  *(a1 + 16) = v10;
  *(a1 + 20) = v10;
  return result;
}

void sub_2475A1858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::CubeAssetDescriptorAction::operator()(uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  memset(v9, 0, 28);
  buildBoxOptions(v9, a2, a3);
  LODWORD(v8[1]) = DWORD2(v9[0]);
  *(&v8[1] + 4) = *(v9 + 12);
  v8[0] = REMeshAssetCreateBoxDescriptor();
  a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy(a4, v8);
}

uint64_t *realityio::CylinderMeshDescriptorAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v13 = 0uLL;
  v14 = 0;
  buildCylinderOptions(&v13, a2, a3);
  v11 = v13;
  v12 = v14;
  result = REGeomModelDescriptorCreateFromCylinderOptions();
  if (result)
  {
    v9 = result;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v11, a1);
    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v11);
    realityio::MeshDescriptorAction::setupModelDescriptor(v9, Name, a2, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    *&v11 = v9;
    a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REGeomModelDescriptor *>>::_PlaceCopy(a4, &v11);
  }

  a4[1] = 0;
  return result;
}

void *buildCylinderOptions(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    v10 = 0.5;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v23, (*a3 + v7));
      v11 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
      MEMORY[0x24C1A5DE0](&v22, "radius");
      if ((v22 ^ *NameToken) > 7)
      {
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v23))
        {
          if ((v22 & 7) != 0)
          {
            atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

LABEL_15:
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v23))
          {
            if ((v24 & 4) != 0)
            {
              v14 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v23);
            }

            else
            {
              v14 = v23;
            }

            v10 = *v14;
          }

          else
          {
            if ((v24 & 4) != 0)
            {
              v16 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v23);
            }

            else
            {
              v16 = v23;
            }

            v10 = *v16;
          }

          goto LABEL_38;
        }

        v13 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v23);
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13)
        {
          goto LABEL_15;
        }
      }

      v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v3 + v6));
      MEMORY[0x24C1A5DE0](&v22, "height");
      if ((v22 ^ *v15) > 7)
      {
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_38;
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v23))
      {
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v23);
        if ((v22 & 7) != 0)
        {
          atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(v23))
      {
        if ((v24 & 4) != 0)
        {
          v18 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v23);
        }

        else
        {
          v18 = v23;
        }

        v9 = *v18;
      }

      else
      {
        if ((v24 & 4) != 0)
        {
          v19 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v23);
        }

        else
        {
          v19 = v23;
        }

        v9 = *v19;
      }

LABEL_38:
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v23);
      ++v8;
      v3 = *a2;
      v7 += 16;
      v6 += 8;
      if (v8 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_47;
      }
    }
  }

  v10 = 0.5;
  v9 = 1.0;
LABEL_47:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = REGeomBuildCylinderDefaultOptions();
  *(a1 + 8) = v10;
  *(a1 + 12) = v10;
  *(a1 + 4) = v9;
  *a1 = 64;
  return result;
}

void sub_2475A1D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::CylinderAssetDescriptorAction::operator()(uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v9 = 0uLL;
  v10 = 0;
  buildCylinderOptions(&v9, a2, a3);
  v8[1] = *(&v9 + 1);
  v8[2] = v10;
  v8[0] = REMeshAssetCreateCylinderDescriptor();
  a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAssetDescriptor *>>::_PlaceCopy(a4, v8);
}

uint64_t *realityio::BlendShapeWeightsComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void *a2@<X3>, void *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v17 = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v7))
  {
    REBlendShapeWeightsComponentGetComponentType();
    v9 = REComponentCreateByClass();
    v18[0] = v9;
    if (v9)
    {
      RERetain();
    }

    v10 = v17;
    if (v17 != v9)
    {
      v17 = v9;
      v18[0] = v10;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(v18);
    RERelease();
    v18[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy(v18, &v17);
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a4);
  realityio::WrappedRERef<REAsset *>::operator=(&v17, v8);
  v18[0] = 0;
  if (a2[1] != *a2)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (*a3 + v11);
      v14 = *(v13 + 1);
      if (v14)
      {
        if (!strcmp((*(*(v14 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
        {
          goto LABEL_15;
        }

        {
          break;
        }
      }

LABEL_18:
      ++v12;
      v11 += 16;
      if (v12 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_21;
      }
    }

    v14 = *(v13 + 1);
LABEL_15:
    if ((v14 & 4) != 0)
    {
      v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
    }

    else
    {
      v15 = *v13;
    }

    realityio::WrappedRERef<REAsset *>::operator=(v18, v15);
    goto LABEL_18;
  }

LABEL_21:
  REBlendShapeWeightsComponentSetBlendShapeWeightsDefinition();
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v18);
  return realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v17);
}

void sub_2475A2090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
  _Unwind_Resume(a1);
}

BOOL std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 0;
    }

    v2 = a1 & 0xFFFFFFFFFFFFFFF8;
    v3 = a2 & 0xFFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
    v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v4 < v5)
    {
      return 1;
    }

    if (v4 != v5)
    {
      return 0;
    }

    else
    {
      v10 = *(v3 + 16);
      v8 = v3 + 16;
      v9 = v10;
      v11 = *(v8 + 23);
      v14 = *(v2 + 16);
      v12 = v2 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = *(v12 + 23);
      }

      else
      {
        v16 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = v13;
      }

      if (v11 >= 0)
      {
        v18 = *(v8 + 23);
      }

      else
      {
        v18 = *(v8 + 8);
      }

      if (v11 >= 0)
      {
        v19 = v8;
      }

      else
      {
        v19 = v9;
      }

      if (v18 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v18;
      }

      v21 = memcmp(v17, v19, v20);
      if (v21)
      {
        return v21 < 0;
      }

      else
      {
        return v16 < v18;
      }
    }
  }

  else
  {
    if (a1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2 == 0;
    }

    return !v7;
  }
}

uint64_t getAttributeRateHelper(void *a1, unsigned int a2)
{
  MEMORY[0x24C1A5DE0](&v10, "constant");
  v4 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v4 < 8)
  {
    return 0;
  }

  MEMORY[0x24C1A5DE0](&v10, "uniform");
  v6 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v6 < 8)
  {
    return 2;
  }

  MEMORY[0x24C1A5DE0](&v10, "varying");
  v7 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v7 < 8)
  {
    return 1;
  }

  MEMORY[0x24C1A5DE0](&v10, "vertex");
  v8 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 < 8)
  {
    return 1;
  }

  MEMORY[0x24C1A5DE0](&v10, "faceVarying");
  v9 = v10 ^ *a1;
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v9 >= 8)
  {
    return a2;
  }

  else
  {
    return 3;
  }
}

void convertIndices(pxrInternal__aapl__pxrReserved__::VtValue *a1, std::vector<unsigned int> *a2)
{
  if (a1 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a1))
  {
    v4 = *(a1 + 1);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v5 = *a1;
    }

    v6 = *(v5 + 16);
    *__sz = *v5;
    v14 = v6;
    v7 = *(v5 + 32);
    v15 = v7;
    if (v7)
    {
      v8 = (v7 - 4);
      if (*(&v14 + 1))
      {
        v8 = *(&v14 + 1);
      }

      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    std::vector<int>::resize(a2, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v9 = v15;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v10 = &v15[__sz[0]];
    if (v9 != v10)
    {
      begin = a2->__begin_;
      do
      {
        v12 = *v9++;
        *begin++ = v12;
      }

      while (v9 != v10);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  }
}

void addPrimvarToDescriptor(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t AttributeRateFromCount, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(this + 1);
  if (v12)
  {
    if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 19)
    {
LABEL_3:
      __p = 0;
      v52 = 0;
      v53 = 0;
      if ((v12 & 4) != 0)
      {
        v13 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
      }

      else
      {
        v13 = *this;
      }

      v52 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
      v14 = v13[4];
      v15 = *v13;
      *&v54 = &__p;
      if (v15)
      {
        v16 = &v14[2 * v15];
        v17 = MEMORY[0x277D86658];
        do
        {
          LODWORD(v18) = *(v17 + 4 * *v14);
          HIDWORD(v18) = *(v17 + 4 * v14[1]);
          p_p = v18;
          _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&v54, &p_p);
          v14 += 2;
        }

        while (v14 != v16);
      }

      if (v10 != v11)
      {
        if (AttributeRateFromCount == 255)
        {
          getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
        }

LABEL_60:
        REGeomModelDescriptorAddIndexedAttributeVector2F();
        goto LABEL_130;
      }

      if (AttributeRateFromCount == 255)
      {
        LODWORD(AttributeRateFromCount) = getAttributeRateFromCount(a1, (v52 - __p) >> 3);
      }

      v24 = v52 - __p;
      if (AttributeRateFromCount)
      {
        v25 = AttributeRateFromCount;
      }

      else
      {
        v25 = 4 * ((v52 - __p) > 8);
      }

      goto LABEL_84;
    }

    if ((v12 & 4) == 0)
    {
      goto LABEL_15;
    }

    v12 = *(this + 1);
    if (IsImpl)
    {
      goto LABEL_3;
    }

    if (v12)
    {
LABEL_15:
      if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
      {
LABEL_16:
        __p = 0;
        v52 = 0;
        v53 = 0;
        if ((v12 & 4) != 0)
        {
          v20 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
        }

        else
        {
          v20 = *this;
        }

        v52 = 0;
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v20);
        v21 = v20[4];
        v22 = *v20;
        *&v54 = &__p;
        if (v22)
        {
          v23 = 8 * v22;
          do
          {
            p_p = *v21;
            _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&v54, &p_p);
            ++v21;
            v23 -= 8;
          }

          while (v23);
        }

        if (v10 != v11)
        {
          if (AttributeRateFromCount == 255)
          {
            getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
          }

          goto LABEL_60;
        }

        if (AttributeRateFromCount == 255)
        {
          LODWORD(AttributeRateFromCount) = getAttributeRateFromCount(a1, (v52 - __p) >> 3);
        }

        v24 = v52 - __p;
        if (AttributeRateFromCount)
        {
          v25 = AttributeRateFromCount;
        }

        else
        {
          v25 = 4 * ((v52 - __p) > 8);
        }

        goto LABEL_84;
      }

      if ((v12 & 4) == 0)
      {
        goto LABEL_33;
      }

      v12 = *(this + 1);
      if (v26)
      {
        goto LABEL_16;
      }

      if (v12)
      {
LABEL_33:
        if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
        {
LABEL_34:
          __p = 0;
          v52 = 0;
          v53 = 0;
          if ((v12 & 4) != 0)
          {
            v27 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
          }

          else
          {
            v27 = *this;
          }

          v52 = 0;
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v27);
          v28 = v27[4];
          v29 = *v27;
          *&v54 = &__p;
          if (v29)
          {
            v30 = 16 * v29;
            do
            {
              p_p = vcvt_f32_f64(*v28);
              _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&v54, &p_p);
              ++v28;
              v30 -= 16;
            }

            while (v30);
          }

          if (v10 != v11)
          {
            if (AttributeRateFromCount == 255)
            {
              getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
            }

            goto LABEL_60;
          }

          if (AttributeRateFromCount == 255)
          {
            LODWORD(AttributeRateFromCount) = getAttributeRateFromCount(a1, (v52 - __p) >> 3);
          }

          v24 = v52 - __p;
          if (AttributeRateFromCount)
          {
            v25 = AttributeRateFromCount;
          }

          else
          {
            v25 = 4 * ((v52 - __p) > 8);
          }

          goto LABEL_84;
        }

        if ((v12 & 4) == 0)
        {
          goto LABEL_51;
        }

        v12 = *(this + 1);
        if (v31)
        {
          goto LABEL_34;
        }

        if (v12)
        {
LABEL_51:
          if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 16)
          {
LABEL_52:
            __p = 0;
            v52 = 0;
            v53 = 0;
            if ((v12 & 4) != 0)
            {
              v32 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
            }

            else
            {
              v32 = *this;
            }

            v52 = 0;
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v32);
            v33 = v32[4];
            v34 = *v32;
            *&v54 = &__p;
            if (v34)
            {
              v35 = 8 * v34;
              do
              {
                p_p = vcvt_f32_s32(*v33);
                _ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&v54, &p_p);
                ++v33;
                v35 -= 8;
              }

              while (v35);
            }

            if (v10 != v11)
            {
              if (AttributeRateFromCount == 255)
              {
                getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
              }

              goto LABEL_60;
            }

            if (AttributeRateFromCount == 255)
            {
              LODWORD(AttributeRateFromCount) = getAttributeRateFromCount(a1, (v52 - __p) >> 3);
            }

            v24 = v52 - __p;
            if (AttributeRateFromCount)
            {
              v25 = AttributeRateFromCount;
            }

            else
            {
              v25 = 4 * ((v52 - __p) > 8);
            }

LABEL_84:
            MEMORY[0x24C1A37F0](a1, a5, v25, v24 >> 3);
            goto LABEL_130;
          }

          if ((v12 & 4) == 0)
          {
            goto LABEL_69;
          }

          v12 = *(this + 1);
          if (v36)
          {
            goto LABEL_52;
          }

          if (v12)
          {
LABEL_69:
            if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
            {
LABEL_70:
              __p = 0;
              v52 = 0;
              v53 = 0;
              if ((v12 & 4) != 0)
              {
                v37 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
              }

              else
              {
                v37 = *this;
              }

              v52 = 0;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v37);
              v39 = v37[4];
              v40 = *v37;
              p_p = &__p;
              if (v40)
              {
                v41 = &v39[3 * v40];
                v42 = MEMORY[0x277D86658];
                do
                {
                  LODWORD(v38) = *(v42 + 4 * *v39);
                  DWORD1(v38) = *(v42 + 4 * v39[1]);
                  DWORD2(v38) = *(v42 + 4 * v39[2]);
                  v54 = v38;
                  _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v54);
                  v39 += 3;
                }

                while (v39 != v41);
              }

              if (v10 != v11)
              {
                if (AttributeRateFromCount == 255)
                {
                  getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
                }

LABEL_78:
                REGeomModelDescriptorAddIndexedAttributeVector3F();
                goto LABEL_130;
              }

              if (AttributeRateFromCount == 255)
              {
                LODWORD(AttributeRateFromCount) = getAttributeRateFromCount(a1, (v52 - __p) >> 4);
              }

              v49 = v52 - __p;
              if (AttributeRateFromCount)
              {
                v50 = AttributeRateFromCount;
              }

              else
              {
                v50 = 4 * ((v52 - __p) > 0x10);
              }

              goto LABEL_129;
            }

            {
              v12 = *(this + 1);
              goto LABEL_70;
            }
          }
        }
      }
    }
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(this))
  {
    __p = 0;
    v52 = 0;
    v53 = 0;
    v43 = *(this + 1);
    if ((v43 & 4) != 0)
    {
      v44 = (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
    }

    else
    {
      v44 = *this;
    }

    v52 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v44);
    v46 = v44[4];
    v47 = *v44;
    p_p = &__p;
    if (v47)
    {
      v48 = 12 * v47;
      do
      {
        *&v45 = *v46;
        DWORD2(v45) = *(v46 + 8);
        v54 = v45;
        _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v54);
        v46 += 12;
        v48 -= 12;
      }

      while (v48);
    }

    if (v10 != v11)
    {
      if (AttributeRateFromCount == 255)
      {
        getAttributeRateFromCount(a1, (a4[1] - *a4) >> 2);
      }

      goto LABEL_78;
    }

    if (AttributeRateFromCount == 255)
    {
      LODWORD(AttributeRateFromCount) = getAttributeRateFromCount(a1, (v52 - __p) >> 4);
    }

    v49 = v52 - __p;
    if (AttributeRateFromCount)
    {
      v50 = AttributeRateFromCount;
    }

    else
    {
      v50 = 4 * ((v52 - __p) > 0x10);
    }

LABEL_129:
    MEMORY[0x24C1A3800](a1, a5, v50, v49 >> 4);
LABEL_130:
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    return;
  }

  if ((_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3iEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (_Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4iEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<BOOL,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doPrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5, v10 != v11, AttributeRateFromCount, a4) & 1) == 0
    && (doSingleValuePrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<BOOL,signed char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,signed char const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5) & 1) == 0
    && (doSingleValuePrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(a1, this, a5) & 1) == 0)
  {

    doSingleValuePrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(a1, this, a5);
  }
}

void sub_2475A2F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v22 = 0;
  v23 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v22 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = (v14 + 24 * v15);
    do
    {
      v17 = *v14;
      *&v17.f64[0] = vcvt_f32_f64(*v14);
      v18 = v14[1].f64[0];
      *&v17.f64[1] = v18;
      v24 = v17;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v24);
      v14 = (v14 + 24);
    }

    while (v14 != v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeVector3F();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v22 - __p) >> 4);
    }

    if (v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = 4 * ((v22 - __p) > 0x10);
    }

    MEMORY[0x24C1A3800](a1, a3, v20, (v22 - __p) >> 4);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec3iEDv3_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 15)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v21 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v15 = v13[4];
  v16 = *v13;
  p_p = &__p;
  if (v16)
  {
    v17 = (v15 + 12 * v16);
    do
    {
      *&v14 = vcvt_f32_s32(*v15);
      *(&v14 + 2) = v15[1].i32[0];
      v23 = v14;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v23);
      v15 = (v15 + 12);
    }

    while (v15 != v17);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeVector3F();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v21 - __p) >> 4);
    }

    if (v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = 4 * ((v21 - __p) > 0x10);
    }

    MEMORY[0x24C1A3800](a1, a3, v19, (v21 - __p) >> 4);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 17)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v22 = 0;
  v23 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v22 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = &v14[4 * v15];
    v17 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v18) = *(v17 + 4 * *v14);
      DWORD1(v18) = *(v17 + 4 * v14[1]);
      DWORD2(v18) = *(v17 + 4 * v14[2]);
      HIDWORD(v18) = *(v17 + 4 * v14[3]);
      v24 = v18;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v24);
      v14 += 4;
    }

    while (v14 != v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v22 - __p) >> 4);
    }

    if (v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = 4 * ((v22 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v20, (v22 - __p) >> 4);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v20 = 0;
  v21 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      v22 = *v14;
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v22);
      ++v14;
      v16 -= 16;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v20 - __p) >> 4);
    }

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4 * ((v20 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v18, (v20 - __p) >> 4);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A36D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v20 = 0;
  v21 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 32 * v15;
    do
    {
      v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*v14), v14[1]);
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v22);
      v14 += 2;
      v16 -= 32;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v20 - __p) >> 4);
    }

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4 * ((v20 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v18, (v20 - __p) >> 4);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A38AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _Z9doPrimvarIN32pxrInternal__aapl__pxrReserved__7GfVec4iEDv4_fFbP21REGeomModelDescriptorPKc23REGeomMeshAttributeRatejPKS2_jPKjEFbS4_S6_S7_jS9_EEbS4_RKNS0_7VtValueES6_RT1_RT2_bS7_RKNSt3__16vectorIjNSL_9allocatorIjEEEE(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 14)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v20 = 0;
  v21 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v20 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      v22 = vcvtq_f32_s32(*v14);
      _ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(&p_p, &v22);
      ++v14;
      v16 -= 16;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeVector4F();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v20 - __p) >> 4);
    }

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4 * ((v20 - __p) > 0x10);
    }

    MEMORY[0x24C1A3810](a1, a3, v18, (v20 - __p) >> 4);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 58)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v21 = 0;
  std::vector<float>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 2 * v15;
    v17 = MEMORY[0x277D86658];
    do
    {
      v23 = *(v17 + 4 * *v14);
      std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&p_p, &v23);
      ++v14;
      v16 -= 2;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeFloat();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v21 - __p) >> 2);
    }

    if (v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = 4 * ((v21 - __p) > 4);
    }

    MEMORY[0x24C1A3790](a1, a3, v19, (v21 - __p) >> 2);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v7 = AttributeRateFromCount;
  v12 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a2);
  if (v12)
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    v13 = *(a2 + 1);
    if ((v13 & 4) != 0)
    {
      v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v14 = *a2;
    }

    v21 = 0;
    std::vector<float>::reserve(&__p, *v14);
    v15 = v14[4];
    v16 = *v14;
    p_p = &__p;
    if (v16)
    {
      v17 = 4 * v16;
      do
      {
        v23 = *v15;
        std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&p_p, &v23);
        ++v15;
        v17 -= 4;
      }

      while (v17);
    }

    if (a4)
    {
      if (v7 == 255)
      {
        getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
      }

      REGeomModelDescriptorAddIndexedAttributeFloat();
    }

    else
    {
      if (v7 == 255)
      {
        v7 = getAttributeRateFromCount(a1, (v21 - __p) >> 2);
      }

      if (v7)
      {
        v18 = v7;
      }

      else
      {
        v18 = 4 * ((v21 - __p) > 4);
      }

      MEMORY[0x24C1A3790](a1, a3, v18, (v21 - __p) >> 2);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  return v12;
}

void sub_2475A3E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v21 = 0;
  std::vector<float>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  p_p = &__p;
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v17 = *v14;
      v23 = v17;
      std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&p_p, &v23);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeFloat();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, (v21 - __p) >> 2);
    }

    if (v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = 4 * ((v21 - __p) > 4);
    }

    MEMORY[0x24C1A3790](a1, a3, v19, (v21 - __p) >> 2);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A3FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<BOOL,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 47)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v19 = 0;
  v20 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v19 = 0;
  std::vector<unsigned char>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  for (i = &__p; v15; --v15)
  {
    v21 = *v14;
    std::back_insert_iterator<std::vector<unsigned char>>::operator=[abi:ne200100](&i, &v21);
    ++v14;
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeUInt8();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, v19 - __p);
    }

    if (v8)
    {
      v17 = v8;
    }

    else
    {
      v17 = 4 * ((v19 - __p) > 1);
    }

    MEMORY[0x24C1A37E0](a1, a3, v17);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A41A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 49)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  __p = 0;
  v19 = 0;
  v20 = 0;
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v19 = 0;
  std::vector<unsigned char>::reserve(&__p, *v13);
  v14 = v13[4];
  v15 = *v13;
  for (i = &__p; v15; --v15)
  {
    v21 = *v14;
    std::back_insert_iterator<std::vector<unsigned char>>::operator=[abi:ne200100](&i, &v21);
    ++v14;
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeUInt8();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, v19 - __p);
    }

    if (v8)
    {
      v17 = v8;
    }

    else
    {
      v17 = 4 * ((v19 - __p) > 1);
    }

    MEMORY[0x24C1A37E0](a1, a3, v17);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_2475A4364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v7 = AttributeRateFromCount;
  v12 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a2);
  if (v12)
  {
    memset(&v20, 0, sizeof(v20));
    v13 = *(a2 + 1);
    if ((v13 & 4) != 0)
    {
      v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
    }

    else
    {
      v14 = *a2;
    }

    v20.__end_ = 0;
    std::vector<int>::reserve(&v20, *v14);
    v15 = v14[4];
    v16 = *v14;
    v22 = &v20;
    if (v16)
    {
      v17 = 4 * v16;
      do
      {
        v21 = *v15;
        std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v22, &v21);
        ++v15;
        v17 -= 4;
      }

      while (v17);
    }

    if (a4)
    {
      if (v7 == 255)
      {
        getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
      }

      REGeomModelDescriptorAddIndexedAttributeInt32();
    }

    else
    {
      if (v7 == 255)
      {
        v7 = getAttributeRateFromCount(a1, v20.__end_ - v20.__begin_);
      }

      if (v7)
      {
        v18 = v7;
      }

      else
      {
        v18 = 4 * ((v20.__end_ - v20.__begin_) > 4);
      }

      MEMORY[0x24C1A37A0](a1, a3, v18, (v20.__end_ - v20.__begin_) >> 2);
    }

    if (v20.__begin_)
    {
      v20.__end_ = v20.__begin_;
      operator delete(v20.__begin_);
    }
  }

  return v12;
}

void sub_2475A4510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  memset(&v19, 0, sizeof(v19));
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v19.__end_ = 0;
  std::vector<int>::reserve(&v19, *v13);
  v14 = v13[4];
  v15 = *v13;
  v21 = &v19;
  if (v15)
  {
    v16 = 4 * v15;
    do
    {
      v20 = *v14;
      std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v21, &v20);
      ++v14;
      v16 -= 4;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeUInt32();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, v19.__end_ - v19.__begin_);
    }

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4 * ((v19.__end_ - v19.__begin_) > 4);
    }

    MEMORY[0x24C1A37D0](a1, a3, v18, (v19.__end_ - v19.__begin_) >> 2);
  }

  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return 1;
}

void sub_2475A46E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 54)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  memset(&v19, 0, sizeof(v19));
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v19.__end_ = 0;
  std::vector<int>::reserve(&v19, *v13);
  v14 = v13[4];
  v15 = *v13;
  v21 = &v19;
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v20 = *v14;
      std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v21, &v20);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeInt32();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, v19.__end_ - v19.__begin_);
    }

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4 * ((v19.__end_ - v19.__begin_) > 4);
    }

    MEMORY[0x24C1A37A0](a1, a3, v18, (v19.__end_ - v19.__begin_) >> 2);
  }

  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return 1;
}

void sub_2475A48B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doPrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*,unsigned int,unsigned int const*),BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3, int a4, uint64_t AttributeRateFromCount, void *a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  v8 = AttributeRateFromCount;
  if (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16) == 55)
  {
    goto LABEL_3;
  }

  if ((v6 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v6 = *(this + 1);
LABEL_3:
  memset(&v19, 0, sizeof(v19));
  if ((v6 & 4) != 0)
  {
    v13 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(this);
  }

  else
  {
    v13 = *this;
  }

  v19.__end_ = 0;
  std::vector<int>::reserve(&v19, *v13);
  v14 = v13[4];
  v15 = *v13;
  v21 = &v19;
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      v20 = *v14;
      std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v21, &v20);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  if (a4)
  {
    if (v8 == 255)
    {
      getAttributeRateFromCount(a1, (a6[1] - *a6) >> 2);
    }

    REGeomModelDescriptorAddIndexedAttributeUInt32();
  }

  else
  {
    if (v8 == 255)
    {
      v8 = getAttributeRateFromCount(a1, v19.__end_ - v19.__begin_);
    }

    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4 * ((v19.__end_ - v19.__begin_) > 4);
    }

    MEMORY[0x24C1A37D0](a1, a3, v18, (v19.__end_ - v19.__begin_) >> 2);
  }

  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return 1;
}

void sub_2475A4A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t doSingleValuePrimvar<pxrInternal__aapl__pxrReserved__::pxr_half::half,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 11)
  {
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(MEMORY[0x277D86658] + 4 * *v5);
  v7 = 1;
  MEMORY[0x24C1A3790](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<float,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3)
{
  v4 = a2;
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(a2);
  if (v6)
  {
    v7 = *(v4 + 1);
    if ((v7 & 4) != 0)
    {
      v4 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v9 = *v4;
    MEMORY[0x24C1A3790](a1, a3, 0, 1, &v9);
  }

  return v6;
}

uint64_t doSingleValuePrimvar<double,float,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,float const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3)
{
  v4 = a2;
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<double>(a2);
  if (v6)
  {
    v7 = *(v4 + 1);
    if ((v7 & 4) != 0)
    {
      v4 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v8 = *v4;
    v10 = v8;
    MEMORY[0x24C1A3790](a1, a3, 0, 1, &v10);
  }

  return v6;
}

uint64_t doSingleValuePrimvar<BOOL,signed char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,signed char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82798]))
    {
      v3 = *(v5 + 1);
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  if ((v3 & 4) != 0)
  {
    v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
  }

  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37B0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<unsigned char,unsigned char,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned char const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 2)
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827B8]))
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37E0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<int,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2, uint64_t a3)
{
  v4 = a2;
  v6 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(a2);
  if (v6)
  {
    v7 = *(v4 + 1);
    if ((v7 & 4) != 0)
    {
      v4 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v4);
    }

    v9 = *v4;
    MEMORY[0x24C1A37A0](a1, a3, 0, 1, &v9);
  }

  return v6;
}

uint64_t doSingleValuePrimvar<unsigned int,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 6)
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827C8]))
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37D0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<long long,int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,int const*)>(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this;
  if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) != 7)
  {
    if ((v3 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827F8]))
    {
      v3 = *(v5 + 1);
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    return 0;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *v5;
  v7 = 1;
  MEMORY[0x24C1A37A0](a1, a3, 0, 1, &v9);
  return v7;
}

uint64_t doSingleValuePrimvar<unsigned long long,unsigned int,BOOL ()(REGeomModelDescriptor *,char const*,REGeomMeshAttributeRate,unsigned int,unsigned int const*)>(uint64_t result, pxrInternal__aapl__pxrReserved__::VtValue *this, uint64_t a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v5 = this;
    v6 = result;
    if (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16) == 8)
    {
      if ((v3 & 4) == 0)
      {
LABEL_4:
        v7 = *v5;
        return MEMORY[0x24C1A37D0](v6, a3, 0, 1, &v7);
      }

LABEL_8:
      v5 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))(v5);
      goto LABEL_4;
    }

    if ((v3 & 4) != 0)
    {
      result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82800]);
      if (result)
      {
        v3 = *(v5 + 1);
        if ((v3 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t getAttributeRateFromCount(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return 0;
  }

  if (REGeomModelDescriptorGetFaceCount() == a2)
  {
    return 2;
  }

  if (REGeomModelDescriptorGetVertexCount() == a2)
  {
    return 1;
  }

  if (REGeomModelDescriptorGetIndexCount() == a2)
  {
    return 3;
  }

  return 0;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t *_ZNSt3__120back_insert_iteratorINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(*a1, v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v7 = 8 * v8 + 8;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

uint64_t *_ZNSt3__120back_insert_iteratorINS_6vectorIDv3_fNS_9allocatorIS2_EEEEEaSB8ne200100EOS2_(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(*a1, v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v7 = 16 * v8 + 16;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

void std::vector<float>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t *std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](uint64_t *a1, int *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}