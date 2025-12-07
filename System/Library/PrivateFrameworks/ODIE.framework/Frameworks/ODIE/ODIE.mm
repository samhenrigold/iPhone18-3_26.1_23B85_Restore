void __chkstk_darwin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (___chkstk_darwin)
  {
    ___chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    __chkstk_darwin_probe(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void __chkstk_darwin_probe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v10 -= 512;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }
}

uint64_t ODIE::Common::ScalarTypeAttr::getScalarTag(ODIE::Common::ScalarTypeAttr *this)
{
  v6[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v6[1] = v1;
  v2 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::IntegerAttr>(v6, 0);
  v3 = (v2 - *v2);
  if (*v3 < 5u)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    v4 = v3[2];
    if (v4)
    {
      LOWORD(v4) = *(v2 + v4);
    }
  }

  return v4;
}

char *ODIE::Common::NDArrayTypeAttr::getShape(ODIE::Common::NDArrayTypeAttr *this)
{
  v6[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v6[1] = v1;
  v2 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::ArrayAttr>(v6, 1u);
  v3 = *v2;
  if (*(v2 - v3) <= 4u)
  {
    v4 = 0;
  }

  else if (*(v2 - v3 + 4))
  {
    v4 = v2 + *(v2 - v3 + 4) + *(v2 + *(v2 - v3 + 4));
  }

  else
  {
    v4 = 0;
  }

  return v4 + 4;
}

char *ODIE::Common::NDArrayTypeAttr::getDimOrdering(ODIE::Common::NDArrayTypeAttr *this)
{
  v6[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v6[1] = v1;
  v2 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::ArrayAttr>(v6, 2u);
  v3 = *v2;
  if (*(v2 - v3) <= 4u)
  {
    v4 = 0;
  }

  else if (*(v2 - v3 + 4))
  {
    v4 = v2 + *(v2 - v3 + 4) + *(v2 + *(v2 - v3 + 4));
  }

  else
  {
    v4 = 0;
  }

  return v4 + 4;
}

uint64_t ODIE::Common::NDArrayTypeAttr::getElementType(ODIE::Common::NDArrayTypeAttr *this)
{
  v6[0] = ODIE::Common::TypeAttr::getAttrs(this);
  v6[1] = v1;
  result = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(v6, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - *v3);
  if (*v4 < 7u)
  {
    return 0;
  }

  v5 = v4[3];
  if (!v5)
  {
    return 0;
  }

  if (*(v3 + v5) != 0x9C98D4C713A836BDLL)
  {
    return 0;
  }

  return result;
}

void odie_log(int a1, ODIE::Platform *a2, const char *a3, char *__format, ...)
{
  va_start(va, __format);
  v9 = *MEMORY[0x277D85DE8];
  if (vsnprintf(__str, 0x400uLL, __format, va) < 0)
  {
    strcpy(__str, "Unable to encode error message.");
  }

  if (a1 == 1)
  {
    ODIE::Platform::logErrorMessage(a2, a3, __str, v7);
  }

  else
  {
    ODIE::Platform::logInfoMessage(a2, a3, __str, v7);
  }
}

uint64_t odie_alloc_aligned(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    if (a4)
    {
      *a4 = 1;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_alloc_aligned", "Invalid alloc callback");
    return 0;
  }

  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = *(a1 + 32);
  result = v5(v8, a2, a3);
  if (!result)
  {
    if (a4)
    {
      *a4 = 4;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_alloc_aligned", "Memory allocation failed");
    return 0;
  }

  return result;
}

void ODIE::Common::MallocAllocator::~MallocAllocator(ODIE::Common::MallocAllocator *this)
{
  *this = &unk_286E74130;
  for (i = *(this + 1); i; i = *(this + 1))
  {
    (*(*this + 24))(this, *i);
  }

  if (*(this + 2))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/MallocAllocator.cpp", "~MallocAllocator", "MallocAllocator: Potential memory leak detected.");
    ODIE::Platform::abort(v3);
  }
}

{
  ODIE::Common::MallocAllocator::~MallocAllocator(this);

  JUMPOUT(0x25F891040);
}

void *ODIE::Common::MallocAllocator::alloc(ODIE::Common::MallocAllocator *this, uint64_t a2, uint64_t a3)
{
  if (a3 <= 7)
  {
    v4 = 8;
  }

  else
  {
    v4 = a3;
  }

  v5 = (a2 + v4 - 1) / v4 * v4;
  v6 = malloc_type_aligned_alloc(v4, v5, 0x49F92BE2uLL);
  if (v6)
  {
    v7 = malloc_type_malloc(0x18uLL, 0x10A0040319E9F20uLL);
    if (!v7)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/LinkedList.hpp", "linkedListPush", "linkedListPush: Failed to create a new allocation node.");
      ODIE::Platform::abort(v10);
    }

    *v7 = v6;
    v7[1] = v5;
    v8 = *(this + 2);
    v7[2] = *(this + 1);
    *(this + 1) = v7;
    *(this + 2) = v8 + v5;
    bzero(v6, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/MallocAllocator.cpp", "alloc", "MallocAllocator: Failed to allocate memory of size %lld & alignment %lld", v5, v4);
  }

  return v6;
}

void ODIE::Common::MallocAllocator::dealloc(ODIE::Common::MallocAllocator *this, void *a2)
{
  if (a2)
  {
    v4 = (this + 8);
    v3 = *(this + 1);
    if (v3)
    {
      v6 = v3;
      while (*v6 != a2)
      {
        v6 = v6[2];
        if (!v6)
        {
          return;
        }
      }

      *(this + 2) -= v6[1];
      v7 = v6[1];
      if (*v3 == a2 && v3[1] == v7)
      {
LABEL_18:
        *v4 = v3[2];
        free(v3);
      }

      else
      {
        while (1)
        {
          v9 = v3;
          v3 = v3[2];
          if (!v3)
          {
            break;
          }

          if (*v3 == a2 && v3[1] == v7)
          {
            v4 = v9 + 2;
            goto LABEL_18;
          }
        }
      }

      free(a2);
    }
  }
}

void *ODIE::Common::MallocAllocator::reset(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    do
    {
      this = (*(*v2 + 24))(v2, *v1);
      v1 = v2[1];
    }

    while (v1);
  }

  return this;
}

uint64_t ODIE::Common::MallocAllocator::operator odie_memory_allocator_t@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = ODIE::Common::wrapAlloc<ODIE::Common::MallocAllocator>;
  a2[2] = ODIE::Common::wrapDealloc<ODIE::Common::MallocAllocator>;
  a2[3] = ODIE::Common::wrapReset<ODIE::Common::MallocAllocator>;
  a2[4] = result;
  return result;
}

uint64_t ODIE::Common::wrapAlloc<ODIE::Common::MallocAllocator>(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(*v3 + 16);

    return v4();
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/AllocatorBase.hpp", "wrapAlloc", "Invalid allocator state", v1, v2);
    return 0;
  }
}

void ODIE::Common::wrapDealloc<ODIE::Common::MallocAllocator>(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(*v1 + 24))();
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/AllocatorBase.hpp", "wrapDealloc", "Invalid allocator state");
  }
}

void ODIE::Common::wrapReset<ODIE::Common::MallocAllocator>(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(*v1 + 32))();
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Allocators/AllocatorBase.hpp", "wrapReset", "Invalid allocator state");
  }
}

uint64_t ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::IntegerAttr>(char **a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = &v2[*&v2[-*v2 + 4]];
  v5 = *&v4[4 * a2 + 4 + *v4];
  v6 = &(*a1)[-**a1];
  if (*v6 < 9u)
  {
    v8 = (4 * v5);
  }

  else
  {
    v7 = *(v6 + 4);
    if (*(v6 + 4))
    {
      v7 += v3 + *(v3 + v7);
    }

    v8 = v7 + (4 * v5);
  }

  v10 = v8 + 4 + *(v8 + 4);
  if (*(v3 + *(v6 + 3) + *(v3 + *(v6 + 3)) + v5 + 4) == 2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::ArrayAttr>(char **a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = &v2[*&v2[-*v2 + 4]];
  v5 = *&v4[4 * a2 + 4 + *v4];
  v6 = &(*a1)[-**a1];
  if (*v6 < 9u)
  {
    v8 = (4 * v5);
  }

  else
  {
    v7 = *(v6 + 4);
    if (*(v6 + 4))
    {
      v7 += v3 + *(v3 + v7);
    }

    v8 = v7 + (4 * v5);
  }

  v10 = v8 + 4 + *(v8 + 4);
  if (*(v3 + *(v6 + 3) + *(v3 + *(v6 + 3)) + v5 + 4) == 5)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(int **a1, unsigned int a2)
{
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = (v4 + *(v4 - *v4 + 4));
  v8 = *(&v7[a2 + 1] + *v7);
  v9 = (*a1 - **a1);
  if (*v9 < 9u)
  {
    v11 = (4 * v8);
  }

  else
  {
    v10 = v9[4];
    if (v9[4])
    {
      v10 += v6 + *(v6 + v10);
    }

    v11 = v10 + (4 * v8);
  }

  v12 = (v11 + 4 + *(v11 + 4));
  if (*(v6 + v9[3] + *(v6 + v9[3]) + v8 + 4) != 6)
  {
    return 0;
  }

  v14[2] = v2;
  v14[3] = v3;
  ODIE::Common::TypeAttr::TypeAttr(v14, v6, v12);
  return v14[0];
}

uint64_t ODIE::Common::DictionaryAttr::getAttrByName<ODIE::Common::StringAttr>(char **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-*v3];
  if (*v4 < 5u)
  {
    return 0;
  }

  v5 = *(v4 + 2);
  if (!v5)
  {
    return 0;
  }

  v9 = &v3[v5];
  v10 = *v9;
  v11 = &v9[v10 + 4];
  v12 = *&v9[v10];
  v13 = v12 & 0x3FFFFFFF;
  if ((v12 & 0x3FFFFFFF) != 0)
  {
    v14 = &v9[v10 + 4];
    do
    {
      v15 = (v14 + ((2 * v13) & 0xFFFFFFFC));
      v16 = (v15 + *v15 + *(v15 + *v15 - *(v15 + *v15) + 4));
      v28 = v16 + *v16 + 4;
      v29 = strlen(v28);
      if (ODIE::Common::StringRef::compare(&v28, a2, a3) >= 0)
      {
        v13 >>= 1;
      }

      else
      {
        v14 = v15 + 1;
        v13 += ~(v13 >> 1);
      }
    }

    while (v13);
  }

  else
  {
    v14 = &v9[v10 + 4];
  }

  if (v14 == (v11 + (4 * v12)))
  {
    return 0;
  }

  v17 = (v14 + *v14 + *(v14 + *v14 - *(v14 + *v14) + 4));
  v28 = v17 + *v17 + 4;
  v29 = strlen(v28);
  if (ODIE::Common::StringRef::compare(&v28, a2, a3))
  {
    return 0;
  }

  v19 = (v14 + *v14);
  v20 = (v19 - *v19);
  if (*v20 >= 7u && (v21 = v20[3]) != 0)
  {
    v22 = *(v19 + v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *a1;
  v24 = &(*a1)[-**a1];
  if (*v24 < 9u)
  {
    v26 = 4 * v22;
  }

  else
  {
    v25 = *(v24 + 4);
    if (*(v24 + 4))
    {
      v25 += v23 + *(v23 + v25);
    }

    v26 = v25 + 4 * v22;
  }

  v27 = v26 + 4 + *(v26 + 4);
  if (*(v23 + *(v24 + 3) + *(v23 + *(v24 + 3)) + v22 + 4) == 4)
  {
    return v27;
  }

  else
  {
    return 0;
  }
}

void *ODIE::Common::TypeAttr::TypeAttr(void *result, int *a2, int *a3)
{
  v3 = (a3 - *a3);
  if (*v3 < 5u)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[2];
    if (v4)
    {
      v4 = (4 * *(a3 + v4));
    }
  }

  v5 = (a2 - *a2);
  if (*v5 < 5u)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[2];
    if (v6)
    {
      v6 += a2 + *(a2 + v6);
    }
  }

  v7 = v6 + v4 + 4 + *(v6 + v4 + 4);
  *result = a2;
  result[1] = v7;
  return result;
}

void ODIE::Platform::logInfoMessage(ODIE::Platform *this, const char *a2, const char *a3, const char *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (qword_27FC1D128 != -1)
  {
    dispatch_once(&qword_27FC1D128, &__block_literal_global);
  }

  v7 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = this;
    v10 = 2080;
    v11 = a2;
    v12 = 2080;
    v13 = a3;
    _os_log_impl(&dword_25C85D000, v7, OS_LOG_TYPE_INFO, "File:%s Function:%s Info: %s", &v8, 0x20u);
  }
}

void ODIE::Platform::logErrorMessage(ODIE::Platform *this, const char *a2, const char *a3, const char *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (qword_27FC1D128 != -1)
  {
    dispatch_once(&qword_27FC1D128, &__block_literal_global);
  }

  v7 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = this;
    v10 = 2080;
    v11 = a2;
    v12 = 2080;
    v13 = a3;
    _os_log_error_impl(&dword_25C85D000, v7, OS_LOG_TYPE_ERROR, "File:%s Function:%s Error: %s", &v8, 0x20u);
  }
}

os_log_t ___ZN12_GLOBAL__N_16getLogEv_block_invoke()
{
  result = os_log_create("com.apple.odie", "rt");
  _MergedGlobals = result;
  return result;
}

uint64_t ODIE::Registration::KernelRegistryImpl::tryGetKernel(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    do
    {
      v9 = v7 + 88 * (v8 >> 1);
      v10 = *(v9 + 56) >> 1;
      v14 = *(v9 + 48);
      v15 = v10;
      v11 = ODIE::Common::StringRef::compare(&v14, a2, a3);
      if (v11 >= 0)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v11 < 0)
      {
        v7 = v9 + 88;
      }
    }

    while (v8);
  }

  else
  {
    v7 = *(a1 + 80);
  }

  if (v7 == v5 + 88 * v6)
  {
    return 0;
  }

  v12 = *(v7 + 56) >> 1;
  v14 = *(v7 + 48);
  v15 = v12;
  if (ODIE::Common::StringRef::compare(&v14, a2, a3))
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void ODIE::Registration::KernelRegistry::create(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v5 = odie_alloc_aligned(v9, 8, 8, 0);
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Registration/KernelRegistry.cpp", "create", "Unable to allocate memory for KernelRegistry.");
LABEL_5:
    v8 = 0;
    *a2 = 4;
    goto LABEL_6;
  }

  v6 = v5;
  *v5 = 0;
  v7 = ODIE::Common::Allocator::allocInstance<ODIE::Registration::KernelRegistryImpl,ODIE::Common::Allocator&>(a1, a1);
  *v6 = v7;
  if (!v7)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Registration/KernelRegistry.cpp", "create", "Unable to allocate memory for KernelRegistry's impl.");
    goto LABEL_5;
  }

  *a2 = v6;
  v8 = 1;
LABEL_6:
  *(a2 + 8) = v8;
}

uint64_t ODIE::Common::Allocator::allocInstance<ODIE::Registration::KernelRegistryImpl,ODIE::Common::Allocator&>(__int128 *a1, __int128 *a2)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12 = *(a1 + 4);
  v4 = odie_alloc_aligned(&v10, 104, 8, 0);
  v5 = v4;
  if (v4)
  {
    v7 = a2[1];
    v10 = *a2;
    v6 = v10;
    v11 = v7;
    v8 = *(a2 + 4);
    v12 = v8;
    *(v4 + 32) = v8;
    *v4 = v6;
    *(v4 + 16) = v7;
    *(v4 + 40) = v6;
    *(v4 + 56) = v7;
    *(v4 + 72) = v8;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 96) = 0;
    ODIE::Common::Vector<ODIE::Registration::CAPI::Kernel>::doResize((v4 + 40), 0x64uLL);
    *(v5 + 88) = 0;
  }

  return v5;
}

uint64_t ODIE::Registration::KernelRegistry::addKernel(_OWORD **a1, uint64_t a2, char a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v43[0] = **a1;
  v43[1] = v6[1];
  v44 = *(v6 + 4);
  v7 = odie_alloc_aligned(v43, 88, 8, 0);
  v8 = v7;
  if (v7)
  {
    ODIE::Common::String::String(v7, a2);
    v9 = *(a2 + 64);
    *(v8 + 80) = *(a2 + 80);
    *(v8 + 64) = v9;
  }

  v10 = *a1;
  ODIE::Common::String::copy(v43, v8);
  if (*(a2 + 64))
  {
    v11 = ODIE::Registration::CAPI::typeInferenceCppKernel;
  }

  else
  {
    v11 = 0;
  }

  *&v47 = v11;
  *(&v47 + 1) = ODIE::Registration::CAPI::valueInferenceCppKernel;
  v48 = v8;
  if (v46 <= 1)
  {
    v31 = 2;
    goto LABEL_51;
  }

  v12 = *(v10 + 10);
  v13 = *(v10 + 11);
  v14 = v46 >> 1;
  if (v13)
  {
    v15 = v45;
    v16 = *(v10 + 10);
    v40 = *(v10 + 11);
    v17 = v40;
    do
    {
      v18 = v16 + 88 * (v17 >> 1);
      v19 = *(v18 + 56) >> 1;
      *&v41 = *(v18 + 48);
      *(&v41 + 1) = v19;
      v20 = ODIE::Common::StringRef::compare(&v41, v15, v14);
      if (v20 >= 0)
      {
        v17 >>= 1;
      }

      else
      {
        v17 += ~(v17 >> 1);
      }

      if (v20 < 0)
      {
        v16 = v18 + 88;
      }
    }

    while (v17);
    v13 = v40;
  }

  else
  {
    v15 = v45;
    v16 = *(v10 + 10);
  }

  v21 = *(v16 + 56) >> 1;
  *&v41 = *(v16 + 48);
  *(&v41 + 1) = v21;
  if (ODIE::Common::StringRef::compare(&v41, v15, v14))
  {
    v22 = v13 + 1;
    v23 = v12;
    v24 = v16;
    if (*(v10 + 12) < v13 + 1)
    {
      if (v12)
      {
        v25 = -v12 & v12;
      }

      else
      {
        v25 = 8;
      }

      v26 = *(v10 + 56);
      v41 = *(v10 + 40);
      *v42 = v26;
      *&v42[16] = *(v10 + 9);
      v27 = odie_alloc_aligned(&v41, 88 * v22, v25, 0);
      v12 = v27;
      v23 = *(v10 + 10);
      if (v27 == v23)
      {
        v24 = v16;
      }

      else
      {
        v24 = v27;
        if (v23 != v16)
        {
          do
          {
            if (v23 != v24)
            {
              ODIE::Common::String::String(v24, v23);
            }

            v28 = *(v23 + 64);
            *(v24 + 80) = *(v23 + 80);
            *(v24 + 64) = v28;
            v23 += 88;
            v24 += 88;
          }

          while (v23 != v16);
          v23 = *(v10 + 10);
        }
      }
    }

    v32 = v23 + 88 * *(v10 + 11);
    if (v32 != v16)
    {
      v33 = v12 + 88 * v13;
      do
      {
        v34 = v33 + 88;
        v35 = v32 - 88;
        if (v32 != v33 + 88)
        {
          v33 = ODIE::Common::String::String(v33, v32 - 88);
        }

        v36 = *(v32 - 24);
        *(v34 - 8) = *(v32 - 8);
        *(v34 - 24) = v36;
        v33 -= 88;
        v32 -= 88;
      }

      while (v35 != v16);
    }

    if (v24 != v43)
    {
      ODIE::Common::String::String(v24, v43);
    }

    v37 = v47;
    *(v24 + 80) = v48;
    *(v24 + 64) = v37;
    if (v12 != *(v10 + 10))
    {
      *(v10 + 10) = v12;
      v38 = *(v10 + 7);
      if (v38)
      {
        v41 = *(v10 + 40);
        *v42 = v38;
        *&v42[8] = v10[4];
        v38(&v41);
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
      }
    }

    v30 = *(v10 + 12);
    if (v22 > v30)
    {
      v30 = v22;
    }

    *(v10 + 11) = v22;
    *(v10 + 12) = v30;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      v31 = 1;
      goto LABEL_51;
    }

    if (v16 != v43)
    {
      ODIE::Common::String::String(v16, v43);
    }

    v29 = v47;
    *(v16 + 80) = v48;
    *(v16 + 64) = v29;
    v22 = *(v10 + 11);
    v30 = *(v10 + 12);
  }

  if (v30 - v22 <= 5 && v30 <= v22 + 50)
  {
    ODIE::Common::Vector<ODIE::Registration::CAPI::Kernel>::doResize((v10 + 40), v22 + 50);
    v31 = 0;
    *(v10 + 11) = v22;
  }

  else
  {
    v31 = 0;
  }

LABEL_51:
  ODIE::Common::String::~String(v43);
  return v31;
}

uint64_t ODIE::Registration::CAPI::typeInferenceCppKernel(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (!v2)
  {
    return 2;
  }

  v3 = *(v1 + 24);
  v25 = *(v1 + 8);
  v26 = v3;
  v27 = *(v1 + 40);
  v4 = *(v2 + 80);
  v5 = *(v1 + 72);
  v21 = *(v1 + 56);
  v22 = v5;
  v23 = *(v1 + 88);
  v24 = *(v1 + 104);
  v20 = *(v1 + 112);
  v7 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v8 = a1[4];
  v10 = *(v2 + 64);
  v12[0] = v25;
  v12[1] = v26;
  v13 = v27;
  v14 = v4;
  v15 = v21;
  v16 = v5;
  v17 = v23;
  v18 = v24;
  v19 = v20;
  return v10(v12, v6, v7 & 0x1FFFFFFFFFFFFFFFLL, v8, v9 & 0x1FFFFFFFFFFFFFFFLL);
}

uint64_t ODIE::Registration::CAPI::valueInferenceCppKernel(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (!v2)
  {
    return 2;
  }

  v3 = *(v1 + 24);
  v26 = *(v1 + 8);
  v27 = v3;
  v28 = *(v1 + 40);
  v4 = *(v1 + 72);
  v22 = *(v1 + 56);
  v23 = v4;
  v24 = *(v1 + 88);
  v25 = *(v1 + 104);
  v21 = *(v1 + 112);
  v6 = a1[1];
  v5 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v11 = v2 + 72;
  v9 = *(v2 + 72);
  v10 = *(v11 + 8);
  v13[0] = v26;
  v13[1] = v27;
  v14 = v28;
  v15 = v10;
  v16 = v22;
  v17 = v4;
  v18 = v24;
  v19 = v25;
  v20 = v21;
  return v9(v13, v5, v6 & 0x1FFFFFFFFFFFFFFFLL, v7, v8 & 0x1FFFFFFFFFFFFFFFLL);
}

void ODIE::Common::Vector<ODIE::Registration::CAPI::Kernel>::doResize(__int128 *a1, unint64_t a2)
{
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  if (v4)
  {
    v6 = -v4 & v4;
  }

  else
  {
    v6 = 8;
  }

  v7 = a1[1];
  v15 = *a1;
  *v16 = v7;
  *&v16[16] = v5;
  v8 = odie_alloc_aligned(&v15, 88 * a2, v6, 0);
  v9 = v8;
  v11 = *(a1 + 5);
  v10 = *(a1 + 6);
  if (v10 >= a2)
  {
    v10 = a2;
  }

  if (v10)
  {
    v12 = v11 + 88 * v10;
    do
    {
      if (v11 != v8)
      {
        v8 = ODIE::Common::String::String(v8, v11);
      }

      v13 = *(v11 + 64);
      *(v8 + 80) = *(v11 + 80);
      *(v8 + 64) = v13;
      v11 += 88;
      v8 += 88;
    }

    while (v11 != v12);
    v11 = *(a1 + 5);
  }

  *(a1 + 5) = v9;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *a1;
    *v16 = v14;
    *&v16[8] = *(a1 + 24);
    v14(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 6) = a2;
  *(a1 + 7) = a2;
}

uint64_t ODIE::Common::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (!a3 || ((v5 = memcmp(*a1, a2, a3), v5 < 1) ? (result = 0xFFFFFFFFLL) : (result = 1), !v5))
  {
    if (v4 < v3)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v4 == v3)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t ODIE::Common::String::String(uint64_t a1, __int128 *a2, const void *a3, unsigned int a4, uint64_t a5)
{
  *(a1 + 40) = 0;
  v7 = *a2;
  v8 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 40) = 1;
  v9 = a4;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4 & 1 | (2 * a5);
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v16 = *(a2 + 4);
  v11 = odie_alloc_aligned(v15, (a5 & 0x7FFFFFFFFFFFFFFFLL) + a4, 1, 0);
  v12 = v11;
  if (!v11)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/String.cpp", "String", "Memory allocation failure");
    ODIE::Platform::abort(v14);
  }

  if ((*(a1 + 56) >> 1) + v9)
  {
    memmove(v11, a3, (*(a1 + 56) >> 1) + v9);
  }

  *(a1 + 48) = v12;
  return a1;
}

void ODIE::Common::String::~String(ODIE::Common::String *this)
{
  if (*(this + 40) == 1)
  {
    v2 = ODIE::Common::Optional<ODIE::Common::Allocator>::value(this);
    v3 = *(this + 6);
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    if (v4)
    {
      v6 = *v2;
      v7 = v4;
      v8 = v5;
      v4(&v6, v3);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }
}

uint64_t ODIE::Common::String::String(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    v5 = ODIE::Common::Optional<ODIE::Common::Allocator>::value(a2);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *a1 = *v5;
    *(a1 + 16) = v7;
    *(a1 + 32) = v6;
    v4 = 1;
  }

  *(a1 + 40) = v4;
  *(a2 + 40) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  v9 = *(a2 + 56);
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(a1 + 56) = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  return a1;
}

uint64_t *ODIE::Common::String::copy@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this;
  if (this[5])
  {
    v4 = ODIE::Common::Optional<ODIE::Common::Allocator>::value(this);
    v5 = *(v4 + 16);
    v8[0] = *v4;
    v8[1] = v5;
    v9 = *(v4 + 32);
    return ODIE::Common::String::String(a1, v8, v2[6], v2[7] & 1, v2[7] >> 1);
  }

  else
  {
    v6 = this[6];
    v7 = this[7];
    *(a1 + 40) = 0;
    a1[6] = v6;
    a1[7] = v7;
  }

  return this;
}

uint64_t ODIE::Common::Optional<ODIE::Common::Allocator>::value(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/Optional.hpp", "value", "access of Optional while empty");
    ODIE::Platform::abort(v1);
  }

  return result;
}

{
  if ((*(result + 40) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/Optional.hpp", "value", "access of Optional while empty");
    ODIE::Platform::abort(v1);
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::getSubByteTypeMin(int a1)
{
  if ((a1 - 19) >= 0x15 || ((0x15E015u >> (a1 - 19)) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/SubByteUtils.cpp", "getSubByteTypeMin", "Scalar tag %d is not a sub-byte dtype", a1);
    ODIE::Platform::abort(v2);
  }

  return byte_25D09E800[(a1 - 19)];
}

uint64_t ODIE::Kernels::Core::CPU::Utils::getSubByteTypeBitCount(int a1)
{
  if ((a1 - 19) >= 0x15 || ((0x15E015u >> (a1 - 19)) & 1) == 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/SubByteUtils.cpp", "getSubByteTypeBitCount", "Scalar tag %d is not a sub-byte dtype", a1);
    ODIE::Platform::abort(v2);
  }

  return byte_25D09E815[(a1 - 19)];
}

uint64_t ODIE::Kernels::Core::CPU::Utils::getSubByteIntegerFromStream(uint64_t a1, int a2, int a3)
{
  SubByteTypeBitCount = ODIE::Kernels::Core::CPU::Utils::getSubByteTypeBitCount(a3);
  v7 = ~(-1 << ODIE::Kernels::Core::CPU::Utils::getSubByteTypeBitCount(a3));
  if (((SubByteTypeBitCount * a2) & 0x80000000) == 0)
  {
    v8 = SubByteTypeBitCount * a2;
  }

  else
  {
    v8 = SubByteTypeBitCount * a2 + 7;
  }

  v9 = (a1 + (v8 >> 3));
  v10 = SubByteTypeBitCount * a2 - (v8 & 0xFFFFFFF8);
  v11 = (((v7 | 1) << v10) & *v9) >> v10;
  v12 = 8 - v10;
  v13 = SubByteTypeBitCount - (8 - v10);
  if (SubByteTypeBitCount > v12)
  {
    v14 = v9[1];
    v15 = v13 - 1;
    if (v13 < 1)
    {
      v32 = 0;
    }

    else
    {
      v16 = (v13 + 15) & 0x7FFFFFF0;
      v17 = xmmword_25D0A0490;
      v18 = xmmword_25D0A04A0;
      v19 = xmmword_25D0A04B0;
      v20 = xmmword_25D0A04C0;
      v21 = 0uLL;
      v22.i64[0] = 0x100000001;
      v22.i64[1] = 0x100000001;
      v23 = vdupq_n_s32(v15);
      v24.i64[0] = 0x1000000010;
      v24.i64[1] = 0x1000000010;
      do
      {
        v25 = v21;
        v26 = v17;
        v27 = v18;
        v28 = v19;
        v29 = v20;
        v21 = vorrq_s8(v21, vuzp1q_s8(vuzp1q_s16(vshlq_u32(v22, v20), vshlq_u32(v22, v19)), vuzp1q_s16(vshlq_u32(v22, v18), vshlq_u32(v22, v17))));
        v20 = vaddq_s32(v20, v24);
        v19 = vaddq_s32(v19, v24);
        v18 = vaddq_s32(v18, v24);
        v17 = vaddq_s32(v17, v24);
        v16 -= 16;
      }

      while (v16);
      v30 = vbslq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_u32(v29, v23), vcgtq_u32(v28, v23)), vuzp1q_s16(vcgtq_u32(v27, v23), vcgtq_u32(v26, v23))), v25, v21);
      *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v31 = v30.i64[0] | HIDWORD(v30.i64[0]) | ((v30.i64[0] | HIDWORD(v30.i64[0])) >> 16);
      v32 = v31 | (v31 >> 8);
    }

    v11 |= (v32 & v14) << v12;
  }

  if ((ODIE::Kernels::Core::CPU::Utils::getSubByteTypeMin(a3) & 0x80000000) != 0 && ((1 << (SubByteTypeBitCount - 1)) & v11) != 0 && SubByteTypeBitCount != 8)
  {
    v34 = vdupq_n_s32(7 - SubByteTypeBitCount);
    v35 = vdupq_n_s32(SubByteTypeBitCount);
    *v34.i8 = vbic_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(xmmword_25D0A04E0, v35), vshlq_u32(xmmword_25D0A04D0, v35))), vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_25D0A04C0, v34), vcgtq_u32(xmmword_25D0A04B0, v34))));
    v36 = vorr_s8(v11, *v34.i8);
    v37 = *&v36 | HIDWORD(v34.i64[0]) | ((*&v36 | HIDWORD(v34.i64[0])) >> 16);
    LOBYTE(v11) = v37 | BYTE1(v37);
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::Utils::equalizeRanks(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v10 = 1;
  ODIE::Common::Vector<int>::resize(a4, a3, &v10);
  if (a2 - 1 >= 0)
  {
    v8 = 4 * (a2 - 1);
    v9 = (*(a4 + 40) + 4 * a3 - 4);
    do
    {
      *v9-- = *(a1 + v8);
      v8 -= 4;
    }

    while (v8 != -4);
  }
}

void ODIE::Common::Vector<int>::resize(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 48);
  ODIE::Common::Vector<int>::doResize(a1, a2);
  if (v6 < a2)
  {
    v7 = *(a1 + 48);
    v8 = v7 - v6;
    if (v7 > v6)
    {
      v9 = 0;
      v10 = *a3;
      v11 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v12 = vdupq_n_s64(v8 - 1);
      v13 = (*(a1 + 40) + 4 * v6 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_25D0A0500)));
        if (vuzp1_s16(v15, *v12.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v12).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_25D0A04F0)))).i32[1])
        {
          *v13 = v10;
          v13[1] = v10;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v11 != v9);
    }
  }
}

void ODIE::Kernels::Core::CPU::Utils::broadcastShapes(uint64_t result, uint64_t a2, __int128 *a3)
{
  v6 = *(result + 48);
  if (*(a3 + 7) <= v6)
  {
    v7 = *(a3 + 6);
    ODIE::Common::Vector<int>::doResize(a3, v6);
    *(a3 + 6) = v7;
    v6 = *(result + 48);
  }

  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = *(*(result + 40) + 4 * v8);
      if (v9 <= *(*(a2 + 40) + 4 * v8))
      {
        v9 = *(*(a2 + 40) + 4 * v8);
      }

      __src = v9;
      ODIE::Common::Vector<int>::insert<true,int *>(a3, (*(a3 + 5) + 4 * *(a3 + 6)), &__src, &v11);
      ++v8;
    }

    while (v8 < *(result + 48));
  }
}

uint64_t ODIE::Kernels::Core::CPU::Utils::broadcastShapesForTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(*(a1 + 40), v9, v11, a3);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(*(a2 + 40), *(a2 + 32), v11, a4);
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(a3, a4, a5);
  return v11;
}

void ODIE::Common::Vector<int>::doResize(__int128 *a1, unint64_t a2)
{
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  if (v4)
  {
    v6 = -v4 & v4;
  }

  else
  {
    v6 = 4;
  }

  v7 = a1[1];
  v13 = *a1;
  *v14 = v7;
  *&v14[16] = v5;
  v8 = odie_alloc_aligned(&v13, 4 * a2, v6, 0);
  v9 = v8;
  v10 = *(a1 + 5);
  v11 = *(a1 + 6);
  if (v11 >= a2)
  {
    v11 = a2;
  }

  if (v11)
  {
    memmove(v8, v10, 4 * v11);
    v10 = *(a1 + 5);
  }

  *(a1 + 5) = v9;
  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = *a1;
    *v14 = v12;
    *&v14[8] = *(a1 + 24);
    v12(&v13, v10);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 6) = a2;
  *(a1 + 7) = a2;
}

void ODIE::Common::Vector<int>::insert<true,int *>(void *result, char *__dst, _BYTE *__src, _BYTE *a4)
{
  v8 = a4 - __src;
  v9 = result[5];
  v10 = result[6] + ((a4 - __src) >> 2);
  v11 = v9;
  v12 = __dst;
  if (result[7] < v10)
  {
    if (v9)
    {
      v13 = -v9 & v9;
    }

    else
    {
      v13 = 4;
    }

    v14 = *(result + 1);
    v20 = *result;
    *v21 = v14;
    *&v21[16] = result[4];
    v15 = odie_alloc_aligned(&v20, 4 * v10, v13, 0);
    v9 = v15;
    v11 = result[5];
    if (v15 == v11)
    {
      v12 = __dst;
    }

    else
    {
      v16 = (__dst - v11);
      if (__dst != v11)
      {
        memmove(v15, v11, __dst - v11);
        v11 = result[5];
      }

      v12 = &v16[v9];
    }
  }

  v17 = &v11[4 * result[6]];
  if (v17 != __dst)
  {
    memmove((v9 + 4 * v10 - (v17 - __dst)), __dst, v17 - __dst);
  }

  if (a4 != __src)
  {
    memmove(v12, __src, v8);
  }

  if (v9 != result[5])
  {
    result[5] = v9;
    v18 = result[2];
    if (v18)
    {
      v20 = *result;
      *v21 = v18;
      *&v21[8] = *(result + 3);
      v18(&v20);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }

  v19 = result[7];
  if (v10 > v19)
  {
    v19 = v10;
  }

  result[6] = v10;
  result[7] = v19;
}

void ODIE::Kernels::Core::CPU::registerAllocationKernels(_OWORD **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = "NDArray.alloc";
  v5 = 27;
  v6 = ODIE::Kernels::Core::CPU::allocTi;
  v7 = ODIE::Kernels::Core::CPU::allocVi;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "NDArray.alloc_const";
  v5 = 39;
  v6 = 0;
  v7 = ODIE::Kernels::Core::CPU::allocConstVi;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "NDArray.alloc_view";
  v5 = 37;
  v6 = 0;
  v7 = ODIE::Kernels::Core::CPU::allocViewVi;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "NDArray.load";
  v5 = 25;
  v6 = 0;
  v7 = ODIE::Kernels::Core::CPU::loadVi;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "NDArray.copy";
  v5 = 25;
  v6 = 0;
  v7 = ODIE::Kernels::Core::CPU::copyVi;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
}

uint64_t ODIE::Kernels::Core::CPU::allocTi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13[0] = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(v13);
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v14 = *(a1 + 32);
  v15[0] = OutputType;
  v15[1] = v8;
  v16[0] = ODIE::Common::TypeAttr::getAttrs(v15);
  v16[1] = v9;
  v10 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(v16, 0);
  *a4 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(v13, v10, v11);
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::allocVi(__int128 *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
  }

  else
  {
    v7 = a1[1];
    v22 = *a1;
    v23 = v7;
    v24 = *(a1 + 4);
    v18[0] = *(a1 + 104);
    OutputType = ODIE::Common::SymbolAttr::getOutputType(v18);
    v6 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(&v22, OutputType, v9);
  }

  if (*(v6 + 8) == 2)
  {
    v16 = a1[1];
    v17 = *(a1 + 4);
    v10 = *(v6 + 16);
    v22 = *a1;
    v15 = v22;
    v23 = v16;
    v24 = *(a1 + 4);
    v11 = odie_alloc_aligned(&v22, v10, 8, 0);
    v18[0] = v15;
    v18[1] = v16;
    v19 = v17;
    *&v22 = 0;
    ODIE::Common::NDArrayValue::create(v18, v6, v11, v10, &v22, &v20);
    if ((v21 & 1) == 0)
    {
      ODIE::Platform::abort(v12);
    }

    v13 = v20;
    if (v22 <= 2)
    {
      (off_286E74180[v22])(&v22 + 8);
    }

    result = 0;
    *a4 = v13;
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::allocConstVi(__int128 *a1, uint64_t *a2, uint64_t a3, ODIE::Common::Value **a4)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v18 = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(&v18);
  v8 = a1[1];
  v18 = *a1;
  v19 = v8;
  v20 = *(a1 + 4);
  v10 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(&v18, OutputType, v9);
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  v20 = *(a1 + 4);
  v23 = 0;
  ODIE::Common::NDArrayValue::create(&v18, v10, 0, 0, &v23, &v16);
  if ((v17 & 1) == 0)
  {
    ODIE::Platform::abort(v12);
  }

  v13 = v16;
  *a4 = v16;
  if (v23 <= 2)
  {
    (off_286E74180[v23])(v24);
    v13 = *a4;
  }

  v14 = *(*v13 + 16);
  v21 = 0;
  ODIE::Common::Value::setData<unsigned char>(v13, v6, v14, &v21, 0);
  if (v21 <= 2)
  {
    (off_286E74180[v21])(&v22);
  }

  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::allocViewVi(__int128 *a1, uint64_t *a2, uint64_t a3, ODIE::Common::Value **a4)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  v20 = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(&v20);
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v22 = *(a1 + 4);
  v11 = ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(&v20, OutputType, v10);
  v12 = a1[1];
  v20 = *a1;
  v21 = v12;
  v22 = *(a1 + 4);
  v25 = 0;
  ODIE::Common::NDArrayValue::create(&v20, v11, 0, 0, &v25, &v18);
  if ((v19 & 1) == 0)
  {
    ODIE::Platform::abort(v13);
  }

  v14 = v18;
  *a4 = v18;
  if (v25 <= 2)
  {
    (off_286E74180[v25])(v26);
    v14 = *a4;
  }

  v15 = *(v7 + 8);
  v16 = *(*v14 + 16);
  v23 = 0;
  ODIE::Common::Value::setData<unsigned char>(v14, v15 + v6, v16, &v23, 0);
  if (v23 <= 2)
  {
    (off_286E74180[v23])(&v24);
  }

  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::createStaticNDArrayType(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v22 = ODIE::Common::NDArrayTypeAttr::getElementType(&v22);
  *(&v22 + 1) = v6;
  ScalarTag = ODIE::Common::ScalarTypeAttr::getScalarTag(&v22);
  v8 = a1[1];
  v22 = *a1;
  v23 = v8;
  v24 = *(a1 + 4);
  StorageSize = ODIE::Common::ScalarType::getStorageSize(ScalarTag);
  ODIE::Common::ScalarType::create(&v22, ScalarTag, StorageSize, &v25);
  if ((v26 & 1) == 0)
  {
    ODIE::Platform::abort(v10);
  }

  v11 = v25;
  v12 = a1[1];
  v22 = *a1;
  v23 = v12;
  v24 = *(a1 + 4);
  v25 = a2;
  v26 = a3;
  ODIE::Common::NDArrayTypeAttr::getShape(&v25);
  v14 = v13;
  v25 = a2;
  v26 = a3;
  Shape = ODIE::Common::NDArrayTypeAttr::getShape(&v25);
  v17 = v16;
  v25 = a2;
  v26 = a3;
  DimOrdering = ODIE::Common::NDArrayTypeAttr::getDimOrdering(&v25);
  ODIE::Common::NDArrayType::create(&v22, v11, v14, Shape, v17, DimOrdering, v19, &v25);
  if ((v26 & 1) == 0)
  {
    ODIE::Platform::abort(v20);
  }

  return v25;
}

uint64_t ODIE::Common::Value::setData<unsigned char>(ODIE::Common::Value *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5 || (result = (*(**this + 16))(), !result))
  {
    if (*(*this + 16) > a3)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Value.hpp", "setData", "Provided data span is insufficiently sized for Value. Expected data should be at least %lld bytes.", *(*this + 16));
      return 2;
    }

    else
    {
      ODIE::Common::Value::resetData(this);
      *(this + 1) = a2;
      v10 = *(this + 2);
      if (v10 <= 2)
      {
        (off_286E74180[v10])(this + 24);
      }

      v11 = *a4;
      *(this + 2) = *a4;
      (off_286E74198[v11])(this + 24, a4 + 1);
      return 0;
    }
  }

  return result;
}

void ODIE::Common::Value::resetData(uint64_t this)
{
  v2 = *(this + 16);
  if (v2 == 2)
  {
    (*(this + 24))(*(this + 8));
  }

  else if (v2 == 1)
  {
    v3 = *(this + 40);
    if (v3)
    {
      v4 = *(this + 8);
      v5 = *(this + 24);
      v6 = v3;
      v7 = *(this + 48);
      v3(&v5, v4);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }

  *(this + 8) = 0;
}

__n128 ODIE::Common::Variant<ODIE::Common::EmptyState,ODIE::Common::Allocator,void (*)(void *)>::copyConstructStorage(unsigned char const&)::{lambda(unsigned char &,unsigned char const&)#2}::__invoke(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBatchNorm(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  v11 = *(a1 + 32);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  ODIE::Common::NDArrayType::create(v10, *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 32), *(v5 + 48), *(v5 + 32), &v12);
  if ((v13 & 1) == 0)
  {
    ODIE::Platform::abort(v7);
  }

  *a4 = v12;
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBatchNorm(uint64_t a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v67);
  }

  v7 = **a4;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v68);
  }

  v8 = *(v6 + 32);
  if (v8 != *(v7 + 32))
  {
    v18 = "Input and output of batchnorm kernel must have same ranks";
LABEL_16:
    v19 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/BatchNorm.cpp", "validateBatchNorm", v18);
    return v19;
  }

  if (v8 < 2)
  {
    v18 = "input and output rank must be at least 2";
    goto LABEL_16;
  }

  v9 = 0;
  v10 = *(v6 + 40);
  v11 = *(v7 + 40);
  v12 = 4 * v8;
  do
  {
    if (*(v10 + v9) != *(v11 + v9))
    {
      v18 = "Every dim of input and output of batchnorm kernel must be the same";
      goto LABEL_16;
    }

    v9 += 4;
  }

  while (v12 != v9);
  if (a3 < 3)
  {
    goto LABEL_18;
  }

  v13 = a2 + 1;
  v14 = 1;
  v15 = 2;
  while (1)
  {
    v16 = **v13;
    if (*(v16 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v17);
    }

    if (**(v16 + 40) != *(v10 + 4))
    {
      break;
    }

    v14 = a3 - 1 > v15;
    ++v13;
    if (a3 == ++v15)
    {
      goto LABEL_18;
    }
  }

  v19 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/BatchNorm.cpp", "validateBatchNorm", "input must have the same size as the input channel dim");
  if (!v14)
  {
LABEL_18:
    v20 = **a2;
    if (*(v20 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v69);
    }

    v21 = (*a4)[1];
    v22 = *(v20 + 24);
    if (*(v22 + 8) != 1)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v70);
    }

    v23 = *(v22 + 24);
    v24 = **a4;
    if (*(v24 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v71);
    }

    v25 = *(v20 + 40);
    v26 = *(v20 + 32);
    if (v26 <= 2)
    {
      v29 = 1;
    }

    else
    {
      v27 = v26 - 2;
      v28 = (v25 + 8);
      v29 = 1;
      do
      {
        v30 = *v28++;
        v29 *= v30;
        --v27;
      }

      while (v27);
    }

    if (v26 < 2)
    {
      v33 = 1;
    }

    else
    {
      v31 = v26 - 1;
      v32 = (v25 + 4);
      v33 = 1;
      do
      {
        v34 = *v32++;
        v33 *= v34;
        --v31;
      }

      while (v31);
    }

    v35 = (*a2)[1];
    v36 = a2[1][1];
    v37 = a2[2][1];
    v38 = a2[3][1];
    v39 = a2[5];
    v40 = a2[4][1];
    v41 = v39[1];
    if (v23 == 69)
    {
      ODIE::Common::NDArrayType::getNumElements(&v72, v24);
      if ((v72 & 0x100000000) == 0)
      {
        ODIE::Platform::abort(v62);
      }

      v63 = v72;
      if (v72 >= 1)
      {
        v64 = 0;
        do
        {
          v65 = v64 % v33 / v29;
          *(v21 + v64) = *(v37 + 4 * v65) + (((*(v35 + 4 * v64) - *(v38 + 4 * v65)) / sqrtf(*(v40 + 4 * v65) + *v41)) * *(v36 + 4 * v65));
          ++v64;
        }

        while (v63 != v64);
      }
    }

    else
    {
      if (v23 != 68)
      {
        return 1;
      }

      ODIE::Common::NDArrayType::getNumElements(&v72, v24);
      if ((v72 & 0x100000000) == 0)
      {
        ODIE::Platform::abort(v42);
      }

      v43 = v72;
      if (v72 >= 1)
      {
        v44 = 0;
        do
        {
          v45 = v44 % v33 / v29;
          _H0 = *(v35 + 2 * v44);
          __asm { FCVT            S0, H0 }

          _H1 = *(v38 + 2 * v45);
          __asm { FCVT            S1, H1 }

          v54 = _S0 - _S1;
          LOWORD(_S1) = *(v40 + 2 * v45);
          __asm { FCVT            S1, H1 }

          _H2 = *v41;
          __asm { FCVT            S2, H2 }

          v58 = v54 / sqrtf(_S1 + _S2);
          LOWORD(_S1) = *(v36 + 2 * v45);
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v37 + 2 * v45);
          __asm { FCVT            S2, H2 }

          _S0 = _S2 + (v58 * _S1);
          __asm { FCVT            H0, S0 }

          *(v21 + v44++) = LOWORD(_S0);
        }

        while (v43 != v44);
      }
    }

    return 0;
  }

  return v19;
}

void ODIE::Kernels::Core::CPU::registerBatchNormKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.batchnorm";
  v3 = 33;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceBatchNorm;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceBatchNorm;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBroadcastInDims(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = a2[2];
  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v8 = a2[1][1];
  if (!v8)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "typeInferenceBroadcastInDims", "broadcast_in_dims: Require dim sizes data to do type inference.");
    return 2;
  }

  v9 = v6[1];
  if (!v9)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "typeInferenceBroadcastInDims", "broadcast_in_dims: Require axes data to do type inference.");
    return 2;
  }

  v10 = *(v7 + 40);
  v11 = *(*v6 + 16);
  v12 = 4 * *(v7 + 32);
  v13 = a1[1];
  v24 = *a1;
  v25 = v13;
  v26 = *(a1 + 4);
  v14 = odie_alloc_aligned(&v24, v12, 4, 0);
  memcpy(v14, v10, v12);
  if (v11 >= 4)
  {
    v15 = v11 >> 2;
    do
    {
      v17 = *v8++;
      v16 = v17;
      v18 = *v9++;
      *(v14 + v18) = v16;
      --v15;
    }

    while (v15);
  }

  v26 = *(a1 + 4);
  v19 = a1[1];
  v24 = *a1;
  v25 = v19;
  ODIE::Common::NDArrayType::create(&v24, *(v7 + 24), *(v7 + 32), v14, *(v7 + 32), *(v7 + 48), *(v7 + 32), &v22);
  if ((v23 & 1) == 0)
  {
    return v22;
  }

  result = 0;
  *a4 = v22;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBroadcastInDims(uint64_t a1, uint64_t **a2, uint64_t a3, void **a4, uint64_t a5)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = a2[v9];
      if (*(*v11 + 16))
      {
        if (!v11[1])
        {
          break;
        }
      }

      v10 = ++v9 < a3;
      if (a3 == v9)
      {
        goto LABEL_6;
      }
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
    if (v10)
    {
      return v18;
    }
  }

LABEL_6:
  if (a5 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = a4[v12];
      if (*(*v14 + 16))
      {
        if (!v14[1])
        {
          break;
        }
      }

      v13 = ++v12 < a5;
      if (a5 == v12)
      {
        goto LABEL_11;
      }
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
    if (v13)
    {
      return v18;
    }
  }

LABEL_11:
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v31 = "broadcast_in_dims expects 3 packed NDArrayType inputs.";
    goto LABEL_36;
  }

  v15 = 1;
  do
  {
    if (v15 == 3)
    {
      goto LABEL_17;
    }

    v16 = *(*a2[v15++] + 8);
  }

  while (v16 == 2);
  v17 = v15 - 2;
  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "broadcast_in_dims expects 3 packed NDArrayType inputs.");
  if (v17 >= 2)
  {
LABEL_17:
    if (a5 == 1 && *(**a4 + 8) == 2)
    {
      v19 = *a2;
      v20 = a2[2];
      v21 = **a2;
      if (*(v21 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v32);
      }

      v22 = *(v21 + 32);
      if ((v22 & 0x80000000) != 0)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_dims does not support negative rank input.", v37);
      }

      else
      {
        if (*(*v20 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v33);
        }

        if (*(*v20 + 32) == 1)
        {
          if (*(*v20 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v34);
          }

          v23 = *(*v20 + 24);
          if (*(v23 + 8) != 1)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v36);
          }

          if (*(v23 + 24) == 25)
          {
            v24 = *(*v20 + 16);
            v25 = v24 >> 2;
            if (v24 >> 2 > v22)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes has %lld values. input rank is only %d.");
            }

            else if (v24 < 4)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes has 0 values.");
            }

            else
            {
              v26 = 0;
              v27 = v20[1];
              v28 = -1;
              while (1)
              {
                v29 = *(v27 + 4 * v26);
                if (v29 < 0)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes[%d] is %d. Currently does not support negative axes.");
                  goto LABEL_46;
                }

                if (v29 <= v28)
                {
                  break;
                }

                ++v26;
                v28 = v29;
                if (v25 == v26)
                {
                  return 0;
                }
              }

              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims: axes[%d] is %d <= max seen before %d. Not strictly monotonic.");
            }
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims currently supports only Int32 axes.", v37);
          }
        }

        else
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "validateAndGetAxes", "broadcast_in_dims requires 1D axes input.", v37);
        }
      }

LABEL_46:
      ODIE::Platform::abort(v35);
    }

    v31 = "broadcast_in_dims expects 1 packed NDArrayType output.";
LABEL_36:
    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v31);
  }

  return v18;
}

char *ODIE::Kernels::Core::CPU::anonymous namespace::broadcastInDims(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v16);
  }

  v8 = *(*(*a1 + 24) + 16);
  v9 = *a6;
  if (*(*a6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v17);
  }

  v10 = *(v9 + 40);
  v11 = *(v9 + 32);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (a5)
  {
  }

  v13 = a1[1];
  if (v13)
  {
    v14 = *(*a1 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = a6[1];

  return memcpy(v15, v13, v14);
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBroadcastTo(uint64_t a1, uint64_t **a2, uint64_t a3, void **a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v38 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = a4[v12];
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v38 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        return v38;
      }
    }

LABEL_11:
    if (a3 == 2 && (v15 = *a2, v16 = **a2, *(v16 + 8) == 2) && (v17 = a2[1], *(*v17 + 8) == 2))
    {
      if (a5 == 1)
      {
        v18 = *a4;
        v19 = *v18;
        if (*(*v18 + 8) == 2)
        {
          v20 = *(v16 + 32);
          v21 = *(v16 + 40);
          v22 = *(v19 + 32);
          if (v20 == v22)
          {
            if (v20 < 1)
            {
LABEL_21:
              v29 = v18[1];
              v30 = v15[1];
              v31 = *(*(v16 + 24) + 16);
              ODIE::Common::NDArrayType::getNumElements(__b, v19);
              if ((BYTE4(__b[0]) & 1) == 0)
              {
                ODIE::Platform::abort(v32);
              }

              memcpy(v29, v30, v31 * SLODWORD(__b[0]));
              return 0;
            }

            v23 = *(v19 + 40);
            v24 = *(v16 + 32);
            v25 = *(v16 + 40);
            while (1)
            {
              v27 = *v25++;
              v26 = v27;
              v28 = *v23++;
              if (v26 != v28)
              {
                break;
              }

              if (!--v24)
              {
                goto LABEL_21;
              }
            }
          }

          v45 = 0;
          memset(__b, 0, sizeof(__b));
          v42 = 0;
          memset(v41, 0, sizeof(v41));
          if (v22 < 1)
          {
            v36 = 0;
          }

          else
          {
            memset_pattern16(__b, &unk_25D0A0510, 4 * v22);
            if (v20 >= 1)
            {
              v33 = v22;
              do
              {
                *&v43[4 * v33] = *(v21 - 4 + 4 * v20);
                if (v20 < 2)
                {
                  break;
                }

                --v20;
              }

              while (v33-- > 1);
            }

            v35 = 0;
            v36 = 0;
            v37 = v17[1];
            do
            {
              if (*(v37 + 4 * v35) != *(__b + v35))
              {
                *(v41 + v36++) = v35;
              }

              ++v35;
            }

            while (v22 != v35);
          }

          return 0;
        }
      }

      v40 = "broadcast_to expects 1 packed NDArrayType output.";
    }

    else
    {
      v40 = "broadcast_to expects 2 packed NDArrayType inputs.";
    }

    v38 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v40);
  }

  return v38;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBroadcastShapes(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, ODIE::Common::NDArrayType ***a4, uint64_t a5)
{
  if (a5 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a4[v9];
    if (*(*v11 + 2))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a5;
    if (a5 == v9)
    {
      goto LABEL_6;
    }
  }

  v30 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a3 == 2 && (v12 = **a2, *(v12 + 8) == 2) && (v13 = a2[1], *(*v13 + 8) == 2))
    {
      if (a5 == 1)
      {
        v14 = *a4;
        v15 = **a4;
        if (*(v15 + 8) == 2)
        {
          v16 = *v13;
          if (*(*v13 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v33);
          }

          v17 = (*a2)[1];
          v18 = v13[1];
          v19 = v14[1];
          ODIE::Common::NDArrayType::getNumElements(&v34, v12);
          if ((v34 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v20);
          }

          v21 = v34;
          ODIE::Common::NDArrayType::getNumElements(&v34, v16);
          if ((v34 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v22);
          }

          v23 = v34;
          if (v21 <= v34)
          {
            v24 = v34;
          }

          else
          {
            v24 = v21;
          }

          ODIE::Common::NDArrayType::getNumElements(&v34, v15);
          if ((v34 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v25);
          }

          if (v34 == v24)
          {
            if (v24 < 1)
            {
              return 0;
            }

            v26 = v23 - 1;
            for (i = v21 - 1; ; --i)
            {
              v28 = 1;
              if (v17 && (i & 0x80000000) == 0)
              {
                v28 = *(v17 + i);
              }

              v29 = 1;
              if (v18 && (v26 & 0x80000000) == 0)
              {
                v29 = *(v18 + v26);
              }

              if (v28 != v29 && v28 != 1 && v29 != 1)
              {
                break;
              }

              if (v28 <= v29)
              {
                v28 = v29;
              }

              *(v19 - 4 + 4 * v24) = v28;
              --v26;
              if (!--v24)
              {
                return 0;
              }
            }

            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "valueInferenceBroadcastShapes", "Invalid broadcasting indices: %d vs %d");
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "valueInferenceBroadcastShapes", "Computed rank is different than output rank in broadcast_shapes");
          }

          return 3;
        }
      }

      v32 = "broadcast_shapes expects 1 packed NDArrayType output.";
    }

    else
    {
      v32 = "broadcast_shapes expects 2 packed NDArrayType inputs.";
    }

    v30 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v32);
  }

  return v30;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBroadcastTo(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = a2[1];
  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v15);
  }

  v8 = v6[1];
  if (!v8)
  {
    return 2;
  }

  v9 = *(*v6 + 16) >> 2;
  v10 = a1[1];
  v18 = *a1;
  v19 = v10;
  v20 = *(a1 + 4);
  v11 = odie_alloc_aligned(&v18, 4 * v9, 4, 0);
  memcpy(v11, v8, 4 * v9);
  v12 = *(v7 + 32);
  if (v12 > v9)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Broadcast.cpp", "typeInferenceBroadcastTo", "coreml.broadcast_to type inference is invoked where output rank %d is smaller than input rank %d", v9, v12);
    return 2;
  }

  v20 = *(a1 + 4);
  v13 = a1[1];
  v18 = *a1;
  v19 = v13;
  ODIE::Common::NDArrayType::create(&v18, *(v7 + 24), v9, v11, v9, &ODIE::Common::Constants::kDefaultDimOrdering, v9, &v16);
  if ((v17 & 1) == 0)
  {
    return v16;
  }

  result = 0;
  *a4 = v16;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBroadcastShapes(__int128 *a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v16);
  }

  v7 = *a2[1];
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v17);
  }

  ODIE::Common::NDArrayType::getNumElements(&v20, **a2);
  if ((BYTE4(v20) & 1) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v20;
  ODIE::Common::NDArrayType::getNumElements(&v20, v7);
  if ((BYTE4(v20) & 1) == 0)
  {
    ODIE::Platform::abort(v10);
  }

  if (v9 <= v20)
  {
    v11 = v20;
  }

  else
  {
    v11 = v9;
  }

  v12 = a1[1];
  v20 = *a1;
  v21 = v12;
  v22 = *(a1 + 4);
  v13 = odie_alloc_aligned(&v20, 4, 4, 0);
  *v13 = v11;
  v22 = *(a1 + 4);
  v14 = a1[1];
  v20 = *a1;
  v21 = v14;
  ODIE::Common::NDArrayType::create(&v20, *(v6 + 24), 1, v13, 1, *(v6 + 48), *(v6 + 32), &v18);
  if ((v19 & 1) == 0)
  {
    return v18;
  }

  result = 0;
  *a4 = v18;
  return result;
}

void ODIE::Kernels::Core::CPU::registerBroadcastInDimsKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.broadcast_in_dims";
  v3 = 49;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceBroadcastInDims;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceBroadcastInDims;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

void ODIE::Kernels::Core::CPU::registerBroadcastToKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.broadcast_to";
  v3 = 39;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceBroadcastTo;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceBroadcastTo;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

void ODIE::Kernels::Core::CPU::registerBroadcastShapesKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.broadcast_shapes";
  v3 = 47;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceBroadcastShapes;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceBroadcastShapes;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

char *ODIE::Kernels::Core::CPU::anonymous namespace::broadcastNDims(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v14 = a5;
  v15 = result;
  v16 = a12;
  v17 = a10;
  if (a9 == a12)
  {
    *(a11 + 4 * a9) = 0;
    if (a9 < 0)
    {
      v18 = -1;
    }

    else
    {
      v18 = a9;
    }

    v19 = (v18 + 1);
    v20 = a6 - v19;
    if (a6 <= v19)
    {
      v22 = 1;
    }

    else
    {
      v21 = (a5 + 4 * v19);
      v22 = 1;
      do
      {
        v23 = *v21++;
        v22 *= v23;
        --v20;
      }

      while (v20);
    }

    if (a6 < 1)
    {
      v45 = 0;
    }

    else
    {
      v40 = 0;
      v41 = (a6 & 0x7FFFFFFF) - 1;
      v42 = 1;
      v43 = v41;
      do
      {
        v40 += *(a11 + 4 * v43) * v42;
        v42 *= *(a7 + 4 * v43);
        v44 = v43-- + 1;
      }

      while (v44 > 1);
      v45 = 0;
      v46 = v40 * a10;
      v47 = 1;
      do
      {
        v45 += *(a11 + 4 * v41) * v47;
        v47 *= *(a5 + 4 * v41);
        v48 = v41-- + 1;
      }

      while (v48 > 1);
      v15 = &result[v46];
    }

    if (*(a5 + 4 * a9) >= 1)
    {
      v49 = 0;
      v50 = (a3 + v45 * a10);
      v51 = v22 * a10;
      do
      {
        result = memcpy(v50, v15, v51);
        ++v49;
        v50 += v51;
      }

      while (v49 < *(v14 + 4 * a9));
    }
  }

  else
  {
    *(a11 + 4 * a9) = 0;
    if (*(a7 + 4 * a9) >= 1)
    {
      v61 = result;
      do
      {
        v27 = v15;
        v28 = a3;
        v29 = v14;
        v30 = v14;
        v31 = v17;
        v17 = v31;
        v14 = v30;
        a3 = v28;
        v15 = v61;
        v32 = *(a11 + 4 * a9) + 1;
        *(a11 + 4 * a9) = v32;
        v16 = a12;
      }

      while (v32 < *(a7 + 4 * a9));
    }

    *(a11 + 4 * a9) = 0;
    v33 = *(v14 + 4 * a9);
    if (v33 != *(a7 + 4 * a9))
    {
      v34 = a9 < 0 ? -1 : a9;
      v35 = (v34 + 1);
      v36 = a6 - v35;
      if (a6 <= v35)
      {
        v38 = 1;
      }

      else
      {
        v37 = (v14 + 4 * v35);
        v38 = 1;
        do
        {
          v39 = *v37++;
          v38 *= v39;
          --v36;
        }

        while (v36);
      }

      if (a6 < 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = 0;
        v53 = (a6 & 0x7FFFFFFF) - 1;
        v54 = 1;
        do
        {
          v52 += *(a11 + 4 * v53) * v54;
          v54 *= *(v14 + 4 * v53);
          v55 = v53-- + 1;
        }

        while (v55 > 1);
      }

      if (v33 > 1)
      {
        v56 = v52 * v17;
        v57 = (a3 + v56);
        v58 = v38 * v17;
        v59 = (a3 + v58 + v56);
        v60 = 1;
        do
        {
          result = memcpy(v59, v57, v58);
          ++v60;
          v59 += v58;
        }

        while (v60 < *(v14 + 4 * a9));
      }
    }
  }

  return result;
}

void ODIE::Kernels::Core::CPU::registerBuiltinKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "Context.alloc";
  v3 = 27;
  v4 = 0;
  v5 = ODIE::Kernels::Core::CPU::contextAlloc;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::contextAlloc(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = *(a1 + 104);
  v22[0] = ODIE::Common::SymbolAttr::getOutputType(&v23);
  v22[1] = v6;
  ODIE::Common::TypeAttr::getAttrs(v22);
  v8 = (v7 + *(v7 - *v7 + 4));
  v9 = *(v8 + *v8);
  v10 = a1[1];
  v23 = *a1;
  *v24 = v10;
  *&v24[16] = *(a1 + 4);
  v11 = odie_alloc_aligned(&v23, 64, 8, 0);
  v12 = v11;
  if (v11)
  {
    v13 = *a1;
    v14 = a1[1];
    *(v11 + 32) = *(a1 + 4);
    *v11 = v13;
    *(v11 + 16) = v14;
    *(v11 + 40) = 0;
    v15 = (v11 + 40);
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    v23 = *v11;
    *v24 = *(v11 + 16);
    *&v24[16] = *(v11 + 32);
    v16 = odie_alloc_aligned(&v23, 8 * v9, 8, 0);
    v17 = v16;
    v18 = *(v12 + 48);
    v19 = *v15;
    if (v18 >= v9)
    {
      v18 = v9;
    }

    if (v18)
    {
      memmove(v16, v19, 8 * v18);
      v19 = *v15;
    }

    *(v12 + 40) = v17;
    v20 = *(v12 + 16);
    if (v20)
    {
      v23 = *v12;
      *v24 = v20;
      *&v24[8] = *(v12 + 24);
      v20(&v23, v19);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }

    *(v12 + 48) = v9;
    *(v12 + 56) = v9;
  }

  *a4 = v12;
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceCast(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v16);
  }

  v17 = *(a1 + 104);
  OutputType = ODIE::Common::SymbolAttr::getOutputType(&v17);
  v21 = v7;
  *&v17 = ODIE::Common::TypeAttr::getAttrs(&OutputType);
  *(&v17 + 1) = v8;
  *&v17 = ODIE::Common::CompositeAttr::getAttrByIndex<ODIE::Common::TypeAttr>(&v17, 0);
  *(&v17 + 1) = v9;
  *&v17 = ODIE::Common::NDArrayTypeAttr::getElementType(&v17);
  *(&v17 + 1) = v10;
  ScalarTag = ODIE::Common::ScalarTypeAttr::getScalarTag(&v17);
  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  v19 = *(a1 + 4);
  StorageSize = ODIE::Common::ScalarType::getStorageSize(ScalarTag);
  ODIE::Common::ScalarType::create(&v17, ScalarTag, StorageSize, &OutputType);
  if ((v21 & 1) == 0)
  {
    return OutputType;
  }

  v19 = *(a1 + 4);
  v14 = a1[1];
  v17 = *a1;
  v18 = v14;
  ODIE::Common::NDArrayType::create(&v17, OutputType, *(v6 + 32), *(v6 + 40), *(v6 + 32), *(v6 + 48), *(v6 + 32), &OutputType);
  if ((v21 & 1) == 0)
  {
    return OutputType;
  }

  result = 0;
  *a4 = OutputType;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceCast(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v5 = *a2;
  v6 = (*a2)[1];
  v7 = *a4;
  v8 = (*a4)[1];
  if (*(**a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v81);
  }

  v9 = *v7;
  if (*(*v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v82);
  }

  ODIE::Common::NDArrayType::getNumElements(&v88, **a2);
  ODIE::Common::NDArrayType::getNumElements(&v87, v9);
  if (BYTE4(v87) == 1)
  {
    v10 = v87;
  }

  else if (BYTE4(v88) == 1)
  {
    v10 = v88;
  }

  else
  {
    v10 = -1;
  }

  if ((*v5)[8] != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v83);
  }

  v11 = *(*v5 + 3);
  if (*(v11 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v84);
  }

  v12 = *(v11 + 24);
  v13 = **a4;
  if (*(v13 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v85);
  }

  v14 = *(v13 + 24);
  if (*(v14 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v86);
  }

  v15 = *(v14 + 24);
  result = 3;
  if (v12 > 25)
  {
    if (v12 > 67)
    {
      if (v12 == 68)
      {
        if (v15 <= 24)
        {
          switch(v15)
          {
            case 16:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                ++v6;
                __asm { FCMP            H0, #0 }

                if (_ZF)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = 1;
                }

                *v8 = v51;
                v8 = (v8 + 1);
                --v10;
              }

              while (v10);
              break;
            case 23:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v76 = *v6++;
                *v8 = v76;
                v8 = (v8 + 1);
                --v10;
              }

              while (v10);
              break;
            case 24:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v28 = *v6++;
                *v8 = v28;
                v8 = (v8 + 2);
                --v10;
              }

              while (v10);
              break;
            default:
              return result;
          }
        }

        else if (v15 > 67)
        {
          if (v15 == 68)
          {
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v63 = *v6++;
              *v8 = v63;
              v8 = (v8 + 2);
              --v10;
            }

            while (v10);
          }

          else
          {
            if (v15 != 69)
            {
              return result;
            }

            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v36 = *v6++;
              _H0 = v36;
              __asm { FCVT            S0, H0 }

              *v8 = _S0;
              v8 = (v8 + 4);
              --v10;
            }

            while (v10);
          }
        }

        else if (v15 == 25)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v55 = *v6++;
            *v8 = v55;
            v8 = (v8 + 4);
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 26)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v24 = *v6++;
            *v8 = v24;
            v8 = (v8 + 8);
            --v10;
          }

          while (v10);
        }
      }

      else
      {
        if (v12 != 69)
        {
          return result;
        }

        if (v15 <= 24)
        {
          switch(v15)
          {
            case 16:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v59 = *v6;
                v6 += 2;
                *v8 = v59 != 0.0;
                v8 = (v8 + 1);
                --v10;
              }

              while (v10);
              break;
            case 23:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v80 = *v6;
                v6 += 2;
                *v8 = v80;
                v8 = (v8 + 1);
                --v10;
              }

              while (v10);
              break;
            case 24:
              if (v10 < 1)
              {
                return 0;
              }

              result = 0;
              do
              {
                v32 = *v6;
                v6 += 2;
                *v8 = v32;
                v8 = (v8 + 2);
                --v10;
              }

              while (v10);
              break;
            default:
              return result;
          }
        }

        else if (v15 > 67)
        {
          if (v15 == 68)
          {
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v71 = *v6;
              v6 += 2;
              _S0 = v71;
              __asm { FCVT            H0, S0 }

              *v8 = LOWORD(_S0);
              v8 = (v8 + 2);
              --v10;
            }

            while (v10);
          }

          else
          {
            if (v15 != 69)
            {
              return result;
            }

            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v46 = *v6;
              v6 += 2;
              *v8 = v46;
              v8 = (v8 + 4);
              --v10;
            }

            while (v10);
          }
        }

        else if (v15 == 25)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v67 = *v6;
            v6 += 2;
            *v8 = v67;
            v8 = (v8 + 4);
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 26)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v20 = *v6;
            v6 += 2;
            *v8 = v20;
            v8 = (v8 + 8);
            --v10;
          }

          while (v10);
        }
      }
    }

    else if (v12 == 26)
    {
      if (v15 <= 24)
      {
        switch(v15)
        {
          case 16:
            if (v10 < 1)
            {
              return 0;
            }

            do
            {
              result = 0;
              v48 = *v6;
              v6 += 4;
              *v8 = v48 != 0;
              v8 = (v8 + 1);
              --v10;
            }

            while (v10);
            break;
          case 23:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v74 = *v6;
              v6 += 4;
              *v8 = v74;
              v8 = (v8 + 1);
              --v10;
            }

            while (v10);
            break;
          case 24:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v26 = *v6;
              v6 += 4;
              *v8 = v26;
              v8 = (v8 + 2);
              --v10;
            }

            while (v10);
            break;
          default:
            return result;
        }
      }

      else if (v15 > 67)
      {
        if (v15 == 68)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v61 = *v6;
            v6 += 4;
            *v8 = v61;
            v8 = (v8 + 2);
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 69)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v34 = *v6;
            v6 += 4;
            *v8 = v34;
            v8 = (v8 + 4);
            --v10;
          }

          while (v10);
        }
      }

      else if (v15 == 25)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v53 = *v6;
          v6 += 4;
          *v8 = v53;
          v8 = (v8 + 4);
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v22 = *v6;
          v6 += 4;
          *v8 = v22;
          v8 = (v8 + 8);
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      if (v12 != 41)
      {
        return result;
      }

      if (v15 <= 24)
      {
        switch(v15)
        {
          case 16:
            if (v10 < 1)
            {
              return 0;
            }

            do
            {
              result = 0;
              v57 = *v6;
              v6 += 2;
              *v8 = LODWORD(v57) != 0;
              v8 = (v8 + 1);
              --v10;
            }

            while (v10);
            break;
          case 23:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v78 = *v6;
              v6 += 2;
              *v8 = LOBYTE(v78);
              v8 = (v8 + 1);
              --v10;
            }

            while (v10);
            break;
          case 24:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v30 = *v6;
              v6 += 2;
              *v8 = LOWORD(v30);
              v8 = (v8 + 2);
              --v10;
            }

            while (v10);
            break;
          default:
            return result;
        }
      }

      else if (v15 > 67)
      {
        if (v15 == 68)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v69 = *v6;
            v6 += 2;
            *v8 = v69;
            v8 = (v8 + 2);
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 69)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v44 = *v6;
            v6 += 2;
            *v8 = v44;
            v8 = (v8 + 4);
            --v10;
          }

          while (v10);
        }
      }

      else if (v15 == 25)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v65 = *v6;
          v6 += 2;
          *v8 = v65;
          v8 = (v8 + 4);
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v18 = *v6;
          v6 += 2;
          *v8 = LODWORD(v18);
          v8 = (v8 + 8);
          --v10;
        }

        while (v10);
      }
    }
  }

  else if (v12 > 23)
  {
    if (v12 == 24)
    {
      if (v15 <= 24)
      {
        switch(v15)
        {
          case 16:
            if (v10 < 1)
            {
              return 0;
            }

            do
            {
              result = 0;
              v49 = *v6++;
              *v8 = v49 != 0;
              v8 = (v8 + 1);
              --v10;
            }

            while (v10);
            break;
          case 23:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v75 = *v6++;
              *v8 = v75;
              v8 = (v8 + 1);
              --v10;
            }

            while (v10);
            break;
          case 24:
            if (v10 < 1)
            {
              return 0;
            }

            result = 0;
            do
            {
              v27 = *v6++;
              *v8 = v27;
              v8 = (v8 + 2);
              --v10;
            }

            while (v10);
            break;
          default:
            return result;
        }
      }

      else if (v15 > 67)
      {
        if (v15 == 68)
        {
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v62 = *v6++;
            *v8 = SLOWORD(v62);
            v8 = (v8 + 2);
            --v10;
          }

          while (v10);
        }

        else
        {
          if (v15 != 69)
          {
            return result;
          }

          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v35 = *v6++;
            *v8 = v35;
            v8 = (v8 + 4);
            --v10;
          }

          while (v10);
        }
      }

      else if (v15 == 25)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v54 = *v6++;
          *v8 = v54;
          v8 = (v8 + 4);
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v23 = *v6++;
          *v8 = v23;
          v8 = (v8 + 8);
          --v10;
        }

        while (v10);
      }
    }

    else if (v15 <= 24)
    {
      switch(v15)
      {
        case 16:
          if (v10 < 1)
          {
            return 0;
          }

          do
          {
            result = 0;
            v58 = *v6;
            v6 += 2;
            *v8 = LODWORD(v58) != 0;
            v8 = (v8 + 1);
            --v10;
          }

          while (v10);
          break;
        case 23:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v79 = *v6;
            v6 += 2;
            *v8 = LOBYTE(v79);
            v8 = (v8 + 1);
            --v10;
          }

          while (v10);
          break;
        case 24:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v31 = *v6;
            v6 += 2;
            *v8 = LOWORD(v31);
            v8 = (v8 + 2);
            --v10;
          }

          while (v10);
          break;
        default:
          return result;
      }
    }

    else if (v15 > 67)
    {
      if (v15 == 68)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v70 = *v6;
          v6 += 2;
          *v8 = v70;
          v8 = (v8 + 2);
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 69)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v45 = *v6;
          v6 += 2;
          *v8 = v45;
          v8 = (v8 + 4);
          --v10;
        }

        while (v10);
      }
    }

    else if (v15 == 25)
    {
      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v66 = *v6;
        v6 += 2;
        *v8 = v66;
        v8 = (v8 + 4);
        --v10;
      }

      while (v10);
    }

    else
    {
      if (v15 != 26)
      {
        return result;
      }

      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v19 = *v6;
        v6 += 2;
        *v8 = v19;
        v8 = (v8 + 8);
        --v10;
      }

      while (v10);
    }
  }

  else if (v12 == 16)
  {
    if (v15 <= 24)
    {
      switch(v15)
      {
        case 16:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v47 = *v6;
            v6 = (v6 + 1);
            *v8 = v47;
            v8 = (v8 + 1);
            --v10;
          }

          while (v10);
          break;
        case 23:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v73 = *v6;
            v6 = (v6 + 1);
            *v8 = v73;
            v8 = (v8 + 1);
            --v10;
          }

          while (v10);
          break;
        case 24:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v25 = *v6;
            v6 = (v6 + 1);
            *v8 = v25;
            v8 = (v8 + 2);
            --v10;
          }

          while (v10);
          break;
        default:
          return result;
      }
    }

    else if (v15 > 67)
    {
      if (v15 == 68)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v60 = *v6;
          v6 = (v6 + 1);
          *v8 = v60;
          v8 = (v8 + 2);
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 69)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v33 = *v6;
          v6 = (v6 + 1);
          *v8 = v33;
          v8 = (v8 + 4);
          --v10;
        }

        while (v10);
      }
    }

    else if (v15 == 25)
    {
      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v52 = *v6;
        v6 = (v6 + 1);
        *v8 = v52;
        v8 = (v8 + 4);
        --v10;
      }

      while (v10);
    }

    else
    {
      if (v15 != 26)
      {
        return result;
      }

      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v21 = *v6;
        v6 = (v6 + 1);
        *v8 = v21;
        v8 = (v8 + 8);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    if (v12 != 23)
    {
      return result;
    }

    if (v15 <= 24)
    {
      switch(v15)
      {
        case 16:
          if (v10 < 1)
          {
            return 0;
          }

          do
          {
            result = 0;
            v56 = *v6;
            v6 = (v6 + 1);
            *v8 = v56 != 0;
            v8 = (v8 + 1);
            --v10;
          }

          while (v10);
          break;
        case 23:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v77 = *v6;
            v6 = (v6 + 1);
            *v8 = v77;
            v8 = (v8 + 1);
            --v10;
          }

          while (v10);
          break;
        case 24:
          if (v10 < 1)
          {
            return 0;
          }

          result = 0;
          do
          {
            v29 = *v6;
            v6 = (v6 + 1);
            *v8 = v29;
            v8 = (v8 + 2);
            --v10;
          }

          while (v10);
          break;
        default:
          return result;
      }
    }

    else if (v15 > 67)
    {
      if (v15 == 68)
      {
        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v68 = *v6;
          v6 = (v6 + 1);
          *v8 = v68;
          v8 = (v8 + 2);
          --v10;
        }

        while (v10);
      }

      else
      {
        if (v15 != 69)
        {
          return result;
        }

        if (v10 < 1)
        {
          return 0;
        }

        result = 0;
        do
        {
          v43 = *v6;
          v6 = (v6 + 1);
          *v8 = v43;
          v8 = (v8 + 4);
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      if (v15 != 25)
      {
        if (v15 != 26)
        {
          return result;
        }

        if (v10 >= 1)
        {
          result = 0;
          do
          {
            v17 = *v6;
            v6 = (v6 + 1);
            *v8 = v17;
            v8 = (v8 + 8);
            --v10;
          }

          while (v10);
          return result;
        }

        return 0;
      }

      if (v10 < 1)
      {
        return 0;
      }

      result = 0;
      do
      {
        v64 = *v6;
        v6 = (v6 + 1);
        *v8 = v64;
        v8 = (v8 + 4);
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

void ODIE::Kernels::Core::CPU::registerCastKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.cast";
  v3 = 23;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceCast;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceCast;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceComplexPart(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v15);
  }

  v7 = *(v6 + 24);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 24);
    if ((v8 - 96) >= 3)
    {
      v13 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Complex.cpp", "typeInferenceComplexPart", "Expect input scalar tag to be complex. Found %d", *(v7 + 24));
    }

    else
    {
      v9 = *(v6 + 40);
      v10 = *(v6 + 32);
      v18 = *(a1 + 4);
      v11 = a1[1];
      v16 = *a1;
      v17 = v11;
      ODIE::Common::ScalarType::create(&v16, (v8 - 28), *(v7 + 16) / 2, &v19);
      if (v20 & 1) != 0 && (v12 = a1[1], v16 = *a1, v17 = v12, v18 = *(a1 + 4), ODIE::Common::NDArrayType::create(&v16, v19, v10, v9, v10, &ODIE::Common::Constants::kDefaultDimOrdering, v10, &v19), (v20))
      {
        v13 = 0;
        *a4 = v19;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return v13;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceCreateComplex(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v15);
  }

  v7 = *(v6 + 24);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 24);
    if ((v8 - 68) >= 3)
    {
      v13 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Complex.cpp", "typeInferenceCreateComplex", "Expect real scalar tag to be floating point. Found %d", *(v7 + 24));
    }

    else
    {
      v9 = *(v6 + 40);
      v10 = *(v6 + 32);
      v18 = *(a1 + 4);
      v11 = a1[1];
      v16 = *a1;
      v17 = v11;
      ODIE::Common::ScalarType::create(&v16, (v8 + 28), 2 * *(v7 + 16), &v19);
      if (v20 & 1) != 0 && (v12 = a1[1], v16 = *a1, v17 = v12, v18 = *(a1 + 4), ODIE::Common::NDArrayType::create(&v16, v19, v10, v9, v10, &ODIE::Common::Constants::kDefaultDimOrdering, v10, &v19), (v20))
      {
        v13 = 0;
        *a4 = v19;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return v13;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceRealPart(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, const ODIE::Common::Value **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = *a2, v6 = **a2, *(v6 + 8) != 2))
  {
    v12 = "real_part expects a packed NDArrayType input.";
LABEL_15:
    v13 = "validateOperandsAreNdArrayType";
    v14 = "%s";
    v15 = v12;
LABEL_16:
    v10 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v13, v14, a5, v15);
    return v10;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v12 = "real_part expects a packed NDArrayType output.";
    goto LABEL_15;
  }

  if (*(v6 + 2) && !v5[1] || *(v8 + 16) && !*(v7 + 1))
  {
    v13 = "validateOperandsHaveData";
    v14 = "Operand %lld does not have data bound.";
    v15 = 0;
    goto LABEL_16;
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::copyPartFromComplex(ODIE::Common::NDArrayType **this, const ODIE::Common::Value *a2, ODIE::Common::Value *a3)
{
  v3 = a3;
  v6 = *this;
  if (*(*this + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  ODIE::Common::NDArrayType::getNumElements(&v14, *this);
  v7 = v14;
  if (BYTE4(v14) == 1)
  {
    if (v14 < 1)
    {
      return 0;
    }

    else
    {
      v8 = *(v6[3] + 16);
      v9 = *(a2 + 1);
      if (v3)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 / 2;
      }

      v11 = this[1] + v10;
      do
      {
        memcpy(v9, v11, v8 / 2);
        v11 += v8;
        v9 += v8 / 2;
        v7 = (v7 - 1);
      }

      while (v7);
    }
  }

  return v7;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceImaginaryPart(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, const ODIE::Common::Value **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = *a2, v6 = **a2, *(v6 + 8) != 2))
  {
    v12 = "imaginary_part expects a packed NDArrayType input.";
LABEL_15:
    v13 = "validateOperandsAreNdArrayType";
    v14 = "%s";
    v15 = v12;
LABEL_16:
    v10 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v13, v14, a5, v15);
    return v10;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v12 = "imaginary_part expects a packed NDArrayType output.";
    goto LABEL_15;
  }

  if (*(v6 + 16) && !v5[1] || *(v8 + 16) && !*(v7 + 1))
  {
    v13 = "validateOperandsHaveData";
    v14 = "Operand %lld does not have data bound.";
    v15 = 0;
    goto LABEL_16;
  }

  if (v9)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceCreateComplex(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 2 || *(**a2 + 8) != 2 || *(*a2[1] + 8) != 2)
  {
    v25 = "create_complex expects two packed NDArrayType inputs.";
LABEL_24:
    v26 = "validateOperandsAreNdArrayType";
    v27 = "%s";
    v29 = v25;
LABEL_25:
    v19 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v26, v27, a5, v29);
    return v19;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v25 = "create_complex expects a packed NDArrayType output.";
    goto LABEL_24;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 1;
  while (1)
  {
    v13 = v9;
    v14 = a2[v10];
    if (*(*v14 + 16))
    {
      if (!v14[1])
      {
        break;
      }
    }

    v9 = 1;
    v11 = v12;
    v10 = 1;
    v12 = 0;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  v19 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v10);
  if (v11)
  {
    return v19;
  }

  v7 = *a4;
  v8 = **a4;
LABEL_10:
  if (*(v8 + 16) && !v7[1])
  {
    v26 = "validateOperandsHaveData";
    v27 = "Operand %lld does not have data bound.";
    v29 = 0;
    goto LABEL_25;
  }

  v15 = *a2;
  v16 = a2[1];
  v17 = **a2;
  if (*(v17 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  v18 = *(*(v17 + 24) + 16);
  ODIE::Common::NDArrayType::getNumElements(&v30, v17);
  v19 = v30;
  if (BYTE4(v30) == 1)
  {
    if (v30 < 1)
    {
      return 0;
    }

    else
    {
      v20 = (*a4)[1];
      v21 = v16[1];
      v22 = v15[1];
      do
      {
        memcpy(v20, v22, v18);
        v23 = &v20[v18];
        v22 += v18;
        memcpy(v23, v21, v18);
        v20 = &v23[v18];
        v21 += v18;
        v19 = (v19 - 1);
      }

      while (v19);
    }
  }

  return v19;
}

void ODIE::Kernels::Core::CPU::registerComplexKernels(_OWORD **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14[40] = 0;
  v15 = "coreml.real_part";
  v16 = 33;
  v17 = ODIE::Kernels::Core::CPU::typeInferenceComplexPart;
  v18 = ODIE::Kernels::Core::CPU::valueInferenceRealPart;
  v19 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v14, 1);
  v8[40] = 0;
  v9 = "coreml.imaginary_part";
  v10 = 43;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceComplexPart;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceImaginaryPart;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coreml.create_complex";
  v4 = 43;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceCreateComplex;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceCreateComplex;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
  ODIE::Common::String::~String(v14);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceConcat(__int128 *a1, void **a2, uint64_t a3, void *a4)
{
  v4 = *a2;
  if (!(*a2)[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Concat.cpp", "typeInferenceConcat", "Cannot do type inference for coreml.slice without dim data.");
    return 2;
  }

  v9 = *a2[1];
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v30);
  }

  v10 = *(v9 + 32);
  if (*(*v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  v11 = *(*v4 + 3);
  if (*(v11 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v11 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    return 2;
  }

  v12 = *v4[1];
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v9 + 40);
  v15 = a1[1];
  v34 = *a1;
  v35 = v15;
  v36 = *(a1 + 4);
  v16 = odie_alloc_aligned(&v34, 4 * v13, 4, 0);
  if (v10)
  {
    if (v10 >= 1)
    {
      v17 = v16;
      v18 = v10;
      do
      {
        v19 = *v14++;
        *v17++ = v19;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    *v16 = 1;
  }

  if (a3 >= 3)
  {
    v20 = (v10 & (v12 >> 31)) + v12;
    v21 = 2;
    do
    {
      v22 = *a2[v21];
      if (*(v22 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v27);
      }

      v23 = *(v22 + 32);
      if (v23)
      {
        if (v23 >= 1)
        {
          v24 = 0;
          v25 = *(v22 + 40);
          do
          {
            if (v20 == v24)
            {
              v26 = *(v25 + 4 * v20);
              if (v26 != -1)
              {
                v26 += v16[v20];
              }

              v16[v20] = v26;
            }

            else if (v16[v24] != *(v25 + 4 * v24))
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Concat.cpp", "typeInferenceConcat", "coreml.concat requires all tensor inputs to match shape along all dimensions other than concat dimension. Mismatch at dim %d");
              return 2;
            }

            ++v24;
          }

          while (v23 != v24);
        }
      }

      else
      {
        ++*v16;
      }

      ++v21;
    }

    while (v21 != a3);
  }

  v36 = *(a1 + 4);
  v28 = a1[1];
  v34 = *a1;
  v35 = v28;
  ODIE::Common::NDArrayType::create(&v34, *(v9 + 24), v13, v16, v13, &ODIE::Common::Constants::kDefaultDimOrdering, v13, &v32);
  if ((v33 & 1) == 0)
  {
    return v32;
  }

  result = 0;
  *a4 = v32;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceConcat(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a3;
  v6 = **a4;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v146);
  }

  v7 = *(v6 + 24);
  if (*(v7 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v147);
  }

  v8 = *(v7 + 24);
  if (v8 <= 25)
  {
    if (v8 == 16)
    {
      v90 = *a4;
      if (a3 >= 1)
      {
        if (*(**a2 + 8) != 2)
        {
          goto LABEL_190;
        }

        v91 = 0;
        do
        {
          if (a3 - 1 == v91)
          {
            goto LABEL_111;
          }

          v92 = *(*a2[++v91] + 8);
        }

        while (v92 == 2);
        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
        if (v91 < v4)
        {
          return v12;
        }

LABEL_111:
        v93 = 0;
        v94 = 1;
        while (1)
        {
          v95 = a2[v93];
          if (*(*v95 + 16))
          {
            if (!v95[1])
            {
              break;
            }
          }

          v94 = ++v93 < v4;
          if (v4 == v93)
          {
            goto LABEL_115;
          }
        }

        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v93);
        if (v94)
        {
          return v12;
        }
      }

LABEL_115:
      v98 = v90;
      v97 = *v90;
      v96 = v98[1];
      if (*(v97 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v154);
      }

      v100 = **a2;
      if (*(v100 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v155);
      }

      v101 = *(v100 + 24);
      if (*(v101 + 8) == 1)
      {
        if (*(v101 + 24) == 25)
        {
          v99 = *(v97 + 32);
          v102 = (v99 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          v103 = *(v97 + 40);
          if (v102 < 0)
          {
            v104 = -1;
          }

          else
          {
            v104 = (v99 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          }

          v105 = (v104 + 1);
          v106 = 1;
          if (v99 > v105)
          {
            do
            {
              v106 *= v103[v105++];
            }

            while (v105 < v99);
          }

          if (v102 < 1)
          {
            v108 = 1;
          }

          else
          {
            v107 = v102;
            v108 = 1;
            do
            {
              v109 = *v103++;
              v108 *= v109;
              --v107;
            }

            while (v107);
            if (v108 < 1)
            {
              return 0;
            }
          }

          v124 = 0;
          v165 = a2 + 1;
          v170 = v4 - 1;
          do
          {
            if (v4 >= 2)
            {
              v125 = v165;
              v126 = v170;
              do
              {
                v127 = **v125;
                if (*(v127 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v130);
                }

                v128 = v106;
                if (*(v127 + 32))
                {
                  v128 = v106 * *(*(v127 + 40) + 4 * v102);
                }

                v129 = *v125++;
                memcpy(v96, (v129[1] + v128 * v124), v128);
                v96 += v128;
                --v126;
              }

              while (v126);
              v4 = a3;
            }

            ++v124;
          }

          while (v124 != v108);
          return 0;
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      }

      ODIE::Platform::abort(v156);
    }

    if (v8 == 25)
    {
      v30 = *a4;
      if (a3 >= 1)
      {
        if (*(**a2 + 8) != 2)
        {
          goto LABEL_190;
        }

        v31 = 0;
        do
        {
          if (a3 - 1 == v31)
          {
            goto LABEL_39;
          }

          v32 = *(*a2[++v31] + 8);
        }

        while (v32 == 2);
        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
        if (v31 < v4)
        {
          return v12;
        }

LABEL_39:
        v33 = 0;
        v34 = 1;
        while (1)
        {
          v35 = a2[v33];
          if (*(*v35 + 16))
          {
            if (!v35[1])
            {
              break;
            }
          }

          v34 = ++v33 < v4;
          if (v4 == v33)
          {
            goto LABEL_43;
          }
        }

        v12 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v33);
        if (v34)
        {
          return v12;
        }
      }

LABEL_43:
      v38 = v30;
      v37 = *v30;
      v36 = v38[1];
      if (*(v37 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v160);
      }

      v40 = **a2;
      if (*(v40 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v161);
      }

      v41 = *(v40 + 24);
      if (*(v41 + 8) == 1)
      {
        if (*(v41 + 24) == 25)
        {
          v39 = *(v37 + 32);
          v42 = (v39 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          v43 = *(v37 + 40);
          if (v42 < 0)
          {
            v44 = -1;
          }

          else
          {
            v44 = (v39 & (*(*a2)[1] >> 31)) + *(*a2)[1];
          }

          v45 = (v44 + 1);
          v46 = 1;
          if (v39 > v45)
          {
            do
            {
              v46 *= v43[v45++];
            }

            while (v45 < v39);
          }

          if (v42 < 1)
          {
            v48 = 1;
          }

          else
          {
            v47 = v42;
            v48 = 1;
            do
            {
              v49 = *v43++;
              v48 *= v49;
              --v47;
            }

            while (v47);
            if (v48 < 1)
            {
              return 0;
            }
          }

          v138 = 0;
          v167 = a2 + 1;
          v172 = v4 - 1;
          do
          {
            if (v4 >= 2)
            {
              v139 = v167;
              v140 = v172;
              do
              {
                v141 = **v139;
                if (*(v141 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v144);
                }

                v142 = v46;
                if (*(v141 + 32))
                {
                  v142 = v46 * *(*(v141 + 40) + 4 * v42);
                }

                v143 = *v139++;
                memcpy(v36, (v143[1] + 4 * v142 * v138), 4 * v142);
                v36 += 4 * v142;
                --v140;
              }

              while (v140);
              v4 = a3;
            }

            ++v138;
          }

          while (v138 != v48);
          return 0;
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      }

      ODIE::Platform::abort(v162);
    }

LABEL_203:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Concat.cpp", "valueInferenceConcat", "Unsupported type for Concat kernel %u", v8);
    return 3;
  }

  if (v8 == 26)
  {
    v50 = *a4;
    if (a3 >= 1)
    {
      if (*(**a2 + 8) != 2)
      {
        goto LABEL_190;
      }

      v51 = 0;
      do
      {
        if (a3 - 1 == v51)
        {
          goto LABEL_63;
        }

        v52 = *(*a2[++v51] + 8);
      }

      while (v52 == 2);
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
      if (v51 < v4)
      {
        return v12;
      }

LABEL_63:
      v53 = 0;
      v54 = 1;
      while (1)
      {
        v55 = a2[v53];
        if (*(*v55 + 16))
        {
          if (!v55[1])
          {
            break;
          }
        }

        v54 = ++v53 < v4;
        if (v4 == v53)
        {
          goto LABEL_67;
        }
      }

      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v53);
      if (v54)
      {
        return v12;
      }
    }

LABEL_67:
    v58 = v50;
    v57 = *v50;
    v56 = v58[1];
    if (*(v57 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v148);
    }

    v60 = **a2;
    if (*(v60 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v149);
    }

    v61 = *(v60 + 24);
    if (*(v61 + 8) == 1)
    {
      if (*(v61 + 24) == 25)
      {
        v59 = *(v57 + 32);
        v62 = (v59 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        v63 = *(v57 + 40);
        if (v62 < 0)
        {
          v64 = -1;
        }

        else
        {
          v64 = (v59 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        }

        v65 = (v64 + 1);
        v66 = 1;
        if (v59 > v65)
        {
          do
          {
            v66 *= v63[v65++];
          }

          while (v65 < v59);
        }

        if (v62 < 1)
        {
          v68 = 1;
        }

        else
        {
          v67 = v62;
          v68 = 1;
          do
          {
            v69 = *v63++;
            v68 *= v69;
            --v67;
          }

          while (v67);
          if (v68 < 1)
          {
            return 0;
          }
        }

        v110 = 0;
        v163 = a2 + 1;
        v168 = v4 - 1;
        do
        {
          if (v4 >= 2)
          {
            v111 = v163;
            v112 = v168;
            do
            {
              v113 = **v111;
              if (*(v113 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v116);
              }

              v114 = v66;
              if (*(v113 + 32))
              {
                v114 = v66 * *(*(v113 + 40) + 4 * v62);
              }

              v115 = *v111++;
              memcpy(v56, (v115[1] + 8 * v114 * v110), 8 * v114);
              v56 += 8 * v114;
              --v112;
            }

            while (v112);
            v4 = a3;
          }

          ++v110;
        }

        while (v110 != v68);
        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    }

    ODIE::Platform::abort(v150);
  }

  if (v8 == 68)
  {
    v70 = *a4;
    if (a3 >= 1)
    {
      if (*(**a2 + 8) != 2)
      {
        goto LABEL_190;
      }

      v71 = 0;
      do
      {
        if (a3 - 1 == v71)
        {
          goto LABEL_87;
        }

        v72 = *(*a2[++v71] + 8);
      }

      while (v72 == 2);
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
      if (v71 < v4)
      {
        return v12;
      }

LABEL_87:
      v73 = 0;
      v74 = 1;
      while (1)
      {
        v75 = a2[v73];
        if (*(*v75 + 16))
        {
          if (!v75[1])
          {
            break;
          }
        }

        v74 = ++v73 < v4;
        if (v4 == v73)
        {
          goto LABEL_91;
        }
      }

      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v73);
      if (v74)
      {
        return v12;
      }
    }

LABEL_91:
    v78 = v70;
    v77 = *v70;
    v76 = v78[1];
    if (*(v77 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v151);
    }

    v80 = **a2;
    if (*(v80 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v152);
    }

    v81 = *(v80 + 24);
    if (*(v81 + 8) == 1)
    {
      if (*(v81 + 24) == 25)
      {
        v79 = *(v77 + 32);
        v82 = (v79 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        v83 = *(v77 + 40);
        if (v82 < 0)
        {
          v84 = -1;
        }

        else
        {
          v84 = (v79 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        }

        v85 = (v84 + 1);
        v86 = 1;
        if (v79 > v85)
        {
          do
          {
            v86 *= v83[v85++];
          }

          while (v85 < v79);
        }

        if (v82 < 1)
        {
          v88 = 1;
        }

        else
        {
          v87 = v82;
          v88 = 1;
          do
          {
            v89 = *v83++;
            v88 *= v89;
            --v87;
          }

          while (v87);
          if (v88 < 1)
          {
            return 0;
          }
        }

        v117 = 0;
        v164 = a2 + 1;
        v169 = v4 - 1;
        do
        {
          if (v4 >= 2)
          {
            v118 = v164;
            v119 = v169;
            do
            {
              v120 = **v118;
              if (*(v120 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v123);
              }

              v121 = v86;
              if (*(v120 + 32))
              {
                v121 = v86 * *(*(v120 + 40) + 4 * v82);
              }

              v122 = *v118++;
              memcpy(v76, (v122[1] + 2 * v121 * v117), 2 * v121);
              v76 += 2 * v121;
              --v119;
            }

            while (v119);
            v4 = a3;
          }

          ++v117;
        }

        while (v117 != v88);
        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    }

    ODIE::Platform::abort(v153);
  }

  if (v8 != 69)
  {
    goto LABEL_203;
  }

  v9 = *a4;
  if (a3 < 1)
  {
    goto LABEL_17;
  }

  if (*(**a2 + 8) != 2)
  {
LABEL_190:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
    return v12;
  }

  v10 = 0;
  do
  {
    if (a3 - 1 == v10)
    {
      goto LABEL_13;
    }

    v11 = *(*a2[++v10] + 8);
  }

  while (v11 == 2);
  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "No error message.");
  if (v10 >= v4)
  {
LABEL_13:
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = a2[v13];
      if (*(*v15 + 16))
      {
        if (!v15[1])
        {
          break;
        }
      }

      v14 = ++v13 < v4;
      if (v4 == v13)
      {
        goto LABEL_17;
      }
    }

    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v13);
    if (v14)
    {
      return v12;
    }

LABEL_17:
    v18 = v9;
    v17 = *v9;
    v16 = v18[1];
    if (*(v17 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v157);
    }

    v20 = **a2;
    if (*(v20 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v158);
    }

    v21 = *(v20 + 24);
    if (*(v21 + 8) == 1)
    {
      if (*(v21 + 24) == 25)
      {
        v19 = *(v17 + 32);
        v22 = (v19 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        v23 = *(v17 + 40);
        if (v22 < 0)
        {
          v24 = -1;
        }

        else
        {
          v24 = (v19 & (*(*a2)[1] >> 31)) + *(*a2)[1];
        }

        v25 = (v24 + 1);
        v26 = 1;
        if (v19 > v25)
        {
          do
          {
            v26 *= v23[v25++];
          }

          while (v25 < v19);
        }

        if (v22 < 1)
        {
          v28 = 1;
        }

        else
        {
          v27 = v22;
          v28 = 1;
          do
          {
            v29 = *v23++;
            v28 *= v29;
            --v27;
          }

          while (v27);
          if (v28 < 1)
          {
            return 0;
          }
        }

        v131 = 0;
        v166 = a2 + 1;
        v171 = v4 - 1;
        do
        {
          if (v4 >= 2)
          {
            v132 = v166;
            v133 = v171;
            do
            {
              v134 = **v132;
              if (*(v134 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v137);
              }

              v135 = v26;
              if (*(v134 + 32))
              {
                v135 = v26 * *(*(v134 + 40) + 4 * v22);
              }

              v136 = *v132++;
              memcpy(v16, (v136[1] + 4 * v135 * v131), 4 * v135);
              v16 += 4 * v135;
              --v133;
            }

            while (v133);
            v4 = a3;
          }

          ++v131;
        }

        while (v131 != v28);
        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    }

    ODIE::Platform::abort(v159);
  }

  return v12;
}

void ODIE::Kernels::Core::CPU::registerConcatKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.concat";
  v3 = 27;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceConcat;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceConcat;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceConv2d(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[2][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "typeInferenceConv2d", "coreml.conv2d: Cannot do type inference without stride data.");
    return 2;
  }

  v5 = a2[3][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "typeInferenceConv2d", "coreml.conv2d: Cannot do type inference without padding data.");
    return 2;
  }

  v6 = a2[4][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "typeInferenceConv2d", "coreml.conv2d: Cannot do type inference without dilation data.");
    return 2;
  }

  v8 = a2[1];
  v9 = **a2;
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v10 = *(v9 + 40);
  v11 = *v10;
  v13 = v10[2];
  v12 = v10[3];
  v14 = *v5;
  v31 = v5[1];
  v15 = *v6;
  v30 = v6[1];
  v29 = *v4;
  v32 = v4[1];
  if (*(*v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  v16 = *(*v8 + 40);
  v17 = *v16;
  v19 = v16[2];
  v18 = v16[3];
  v20 = 4 * *(v9 + 32);
  v21 = a1[1];
  v36 = *a1;
  v37 = v21;
  v38 = *(a1 + 4);
  v22 = odie_alloc_aligned(&v36, v20, 4, 0);
  *v22 = v11;
  v22[1] = v17;
  if (v13 == -1)
  {
    v23 = -1;
  }

  else
  {
    v23 = (v13 + 2 * v14 + ~((v19 - 1) * v15)) / v29 + 1;
  }

  v22[2] = v23;
  if (v12 == -1)
  {
    v24 = -1;
  }

  else
  {
    v24 = (v12 + 2 * v31 + ~((v18 - 1) * v30)) / v32 + 1;
  }

  v22[3] = v24;
  v38 = *(a1 + 4);
  v25 = a1[1];
  v36 = *a1;
  v37 = v25;
  ODIE::Common::NDArrayType::create(&v36, *(v9 + 24), *(v9 + 32), v22, *(v9 + 32), *(v9 + 48), *(v9 + 32), &v34);
  if ((v35 & 1) == 0)
  {
    return v34;
  }

  result = 0;
  *a4 = v34;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceConv2d(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v337 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = *(a4 + 8 * v12);
        if (*(*v14 + 16))
        {
          if (!v14[1])
          {
            break;
          }
        }

        v13 = ++v12 < a5;
        if (a5 == v12)
        {
          goto LABEL_11;
        }
      }

      v18 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        return v18;
      }
    }

LABEL_11:
    if (a3 == 6 && *(**a2 + 8) == 2)
    {
      v15 = 1;
      while (v15 != 6)
      {
        v16 = *(*a2[v15++] + 8);
        if (v16 != 2)
        {
          v17 = v15 - 2;
          v18 = 1;
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "conv2d expects 6 packed NDArrayType inputs.");
          if (v17 < 5)
          {
            return v18;
          }

          break;
        }
      }

      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v19 = a2[1];
        v20 = **a2;
        if (*(v20 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v255);
        }

        v21 = *(v20 + 24);
        if (*(v21 + 8) != 1)
        {
          goto LABEL_217;
        }

        v22 = *(v21 + 24);
        if (*(*v19 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v256);
        }

        v23 = *(*v19 + 24);
        if (*(v23 + 8) != 1)
        {
          goto LABEL_217;
        }

        v24 = *(v23 + 24);
        if (v22 != 68)
        {
          if (v22 != 69)
          {
            goto LABEL_207;
          }

          if (v24 != 68)
          {
            if (v24 == 69)
            {
              v25 = *a2;
              v26 = a2[1];
              v27 = a2[2];
              v28 = a2[3];
              v29 = a2[4];
              v30 = a2[5];
              v31 = *a4;
              v32 = **a2;
              if (*(v32 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v257);
              }

              v33 = *(v32 + 40);
              v34 = *v26;
              if (*(*v26 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v258);
              }

              v35 = *(v34 + 40);
              if (*(*v31 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v259);
              }

              v302 = *v31;
              v36 = *(*v31 + 40);
              v37 = v25[1];
              v38 = v26[1];
              v322 = v31[1];
              v39 = v27[1];
              v40 = v28[1];
              v41 = v29[1];
              if (*(*v30 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v260);
              }

              v42 = *(*v30 + 24);
              if (*(v42 + 8) == 1)
              {
                if (*(v42 + 24) == 25)
                {
                  v278 = *v30[1];
                  v43 = v33[2];
                  v44 = v33[3];
                  v45 = *v33;
                  v46 = v33[1];
                  v47 = *v35;
                  v48 = *(v36 + 12);
                  v306 = *(v36 + 8);
                  v49 = v35[2];
                  v50 = v35[3];
                  v298 = *v39;
                  v318 = v39[1];
                  v51 = *v40;
                  v52 = v40[1];
                  v53 = *v41;
                  v54 = v41[1];
                  v336 = 0;
                  if (v45 >= 1)
                  {
                    v55 = 0;
                    v56 = v46 / v278;
                    v294 = -v51;
                    v314 = -v52;
                    v282 = v47 / v278;
                    do
                    {
                      v334 = v55;
                      v274 = v55;
                      v330 = v55;
                      if (v278 >= 1)
                      {
                        for (i = 0; i != v278; ++i)
                        {
                          if (v282 >= 1)
                          {
                            v57 = i * v282;
                            do
                            {
                              v326 = v57;
                              v290 = v57;
                              v331 = v57;
                              if (v306 >= 1)
                              {
                                v58 = 0;
                                do
                                {
                                  v310 = v58;
                                  v332 = v58;
                                  if (v48 >= 1)
                                  {
                                    v59 = 0;
                                    v60 = v294 + v58 * v298;
                                    v61 = *(v302 + 40);
                                    do
                                    {
                                      v333 = v59;
                                      if (v56 < 1)
                                      {
                                        v75 = 0.0;
                                      }

                                      else
                                      {
                                        v63 = 0.0;
                                        v64 = i * v56;
                                        do
                                        {
                                          v335 = v64;
                                          v327 = v64 - i * v56;
                                          if (v49 >= 1)
                                          {
                                            for (j = 0; j != v49; ++j)
                                            {
                                              v328 = j;
                                              v66 = v60 + j * v53;
                                              if ((v66 & 0x80000000) == 0 && v66 < v43)
                                              {
                                                LODWORD(v336) = v60 + j * v53;
                                                if (v50 >= 1)
                                                {
                                                  for (k = 0; k != v50; ++k)
                                                  {
                                                    v329 = k;
                                                    v62 = v314 + v59 * v318;
                                                    v68 = v62 + k * v54;
                                                    if ((v68 & 0x80000000) == 0 && v68 < v44)
                                                    {
                                                      v69 = 0;
                                                      HIDWORD(v336) = v62 + k * v54;
                                                      v70 = 1;
                                                      for (m = 12; m != -4; m -= 4)
                                                      {
                                                        v69 += *(&v334 + m) * v70;
                                                        v70 *= *(*(v32 + 40) + m);
                                                      }

                                                      v72 = 0;
                                                      v73 = 1;
                                                      for (n = 12; n != -4; n -= 4)
                                                      {
                                                        v72 += *(&v326 + n) * v73;
                                                        v73 *= *(*(v34 + 40) + n);
                                                      }

                                                      v63 = v63 + *(v37 + 4 * v69) * *(v38 + 4 * v72);
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }

                                          ++v64;
                                        }

                                        while (v64 < i * v56 + v56);
                                        v75 = v63;
                                      }

                                      v76 = 0;
                                      v77 = 1;
                                      for (ii = 12; ii != -4; ii -= 4)
                                      {
                                        v76 += *(&v330 + ii) * v77;
                                        v77 *= *(v61 + ii);
                                      }

                                      *(v322 + 4 * v76) = v75;
                                      ++v59;
                                    }

                                    while (v59 != v48);
                                  }

                                  v58 = v310 + 1;
                                }

                                while (v310 + 1 != v306);
                              }

                              v57 = v290 + 1;
                            }

                            while (v290 + 1 < i * v282 + v282);
                          }
                        }
                      }

                      v55 = v274 + 1;
                    }

                    while (v274 + 1 != v45);
                  }

                  return 0;
                }

                goto LABEL_220;
              }

              goto LABEL_217;
            }

LABEL_207:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Conv.cpp", "valueInferenceConv2d", "Unsupported input scalar tag %u weight scalar tag %u.");
            return 2;
          }

          v139 = *a2;
          v140 = a2[1];
          v141 = a2[2];
          v142 = a2[3];
          v143 = a2[4];
          v144 = a2[5];
          v145 = *a4;
          v146 = **a2;
          if (*(v146 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v265);
          }

          v147 = *(v146 + 40);
          v148 = *v140;
          if (*(*v140 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v266);
          }

          v149 = *(v148 + 40);
          if (*(*v145 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v267);
          }

          v304 = *v145;
          v150 = *(*v145 + 40);
          v151 = v139[1];
          v152 = v140[1];
          v324 = v145[1];
          v153 = v141[1];
          v154 = v142[1];
          v155 = v143[1];
          if (*(*v144 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v268);
          }

          v156 = *(*v144 + 24);
          if (*(v156 + 8) == 1)
          {
            if (*(v156 + 24) == 25)
            {
              v280 = *v144[1];
              v157 = v147[2];
              v158 = v147[3];
              v159 = *v147;
              v160 = v147[1];
              v161 = *v149;
              v162 = *(v150 + 12);
              v308 = *(v150 + 8);
              v163 = v149[2];
              v164 = v149[3];
              v300 = *v153;
              v320 = v153[1];
              v165 = *v154;
              v166 = v154[1];
              v167 = *v155;
              v168 = v155[1];
              v336 = 0;
              if (v159 >= 1)
              {
                v169 = 0;
                v170 = v160 / v280;
                v296 = -v165;
                v316 = -v166;
                v284 = v161 / v280;
                do
                {
                  v334 = v169;
                  v276 = v169;
                  v330 = v169;
                  if (v280 >= 1)
                  {
                    for (jj = 0; jj != v280; ++jj)
                    {
                      if (v284 >= 1)
                      {
                        v171 = jj * v284;
                        do
                        {
                          v326 = v171;
                          v292 = v171;
                          v331 = v171;
                          if (v308 >= 1)
                          {
                            v172 = 0;
                            do
                            {
                              v312 = v172;
                              v332 = v172;
                              if (v162 >= 1)
                              {
                                v173 = 0;
                                v174 = v296 + v172 * v300;
                                v175 = *(v304 + 40);
                                do
                                {
                                  v333 = v173;
                                  if (v170 < 1)
                                  {
                                    v191 = 0.0;
                                  }

                                  else
                                  {
                                    v177 = 0.0;
                                    v178 = jj * v170;
                                    do
                                    {
                                      v335 = v178;
                                      v327 = v178 - jj * v170;
                                      if (v163 >= 1)
                                      {
                                        for (kk = 0; kk != v163; ++kk)
                                        {
                                          v328 = kk;
                                          v180 = v174 + kk * v167;
                                          if ((v180 & 0x80000000) == 0 && v180 < v157)
                                          {
                                            LODWORD(v336) = v174 + kk * v167;
                                            if (v164 >= 1)
                                            {
                                              for (mm = 0; mm != v164; ++mm)
                                              {
                                                v329 = mm;
                                                v176 = v316 + v173 * v320;
                                                v182 = v176 + mm * v168;
                                                if ((v182 & 0x80000000) == 0 && v182 < v158)
                                                {
                                                  v183 = 0;
                                                  HIDWORD(v336) = v176 + mm * v168;
                                                  v184 = 1;
                                                  for (nn = 12; nn != -4; nn -= 4)
                                                  {
                                                    v183 += *(&v334 + nn) * v184;
                                                    v184 *= *(*(v146 + 40) + nn);
                                                  }

                                                  v186 = 0;
                                                  v187 = 1;
                                                  for (i1 = 12; i1 != -4; i1 -= 4)
                                                  {
                                                    v186 += *(&v326 + i1) * v187;
                                                    v187 *= *(*(v148 + 40) + i1);
                                                  }

                                                  _H2 = *(v152 + 2 * v186);
                                                  __asm { FCVT            D2, H2 }

                                                  v177 = v177 + *(v151 + 4 * v183) * _D2;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      ++v178;
                                    }

                                    while (v178 < jj * v170 + v170);
                                    v191 = v177;
                                  }

                                  v192 = 0;
                                  v193 = 1;
                                  for (i2 = 12; i2 != -4; i2 -= 4)
                                  {
                                    v192 += *(&v330 + i2) * v193;
                                    v193 *= *(v175 + i2);
                                  }

                                  *(v324 + 4 * v192) = v191;
                                  ++v173;
                                }

                                while (v173 != v162);
                              }

                              v172 = v312 + 1;
                            }

                            while (v312 + 1 != v308);
                          }

                          v171 = v292 + 1;
                        }

                        while (v292 + 1 < jj * v284 + v284);
                      }
                    }
                  }

                  v169 = v276 + 1;
                }

                while (v276 + 1 != v159);
              }

              return 0;
            }

            goto LABEL_220;
          }

LABEL_217:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v273);
          return 2;
        }

        if (v24 == 68)
        {
          v195 = *a2;
          v196 = a2[1];
          v197 = a2[2];
          v198 = a2[3];
          v199 = a2[4];
          v200 = a2[5];
          v201 = *a4;
          v202 = **a2;
          if (*(v202 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v269);
          }

          v203 = *(v202 + 40);
          v204 = *v196;
          if (*(*v196 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v270);
          }

          v205 = *(v204 + 40);
          if (*(*v201 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v271);
          }

          v305 = *v201;
          v206 = *(*v201 + 40);
          v207 = v195[1];
          v208 = v196[1];
          v325 = v201[1];
          v209 = v197[1];
          v210 = v198[1];
          v211 = v199[1];
          if (*(*v200 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v272);
          }

          v212 = *(*v200 + 24);
          if (*(v212 + 8) != 1)
          {
            goto LABEL_217;
          }

          if (*(v212 + 24) == 25)
          {
            v281 = *v200[1];
            v213 = v203[2];
            v214 = v203[3];
            v215 = *v203;
            v216 = v203[1];
            v217 = *v205;
            v218 = *(v206 + 12);
            v309 = *(v206 + 8);
            v219 = v205[2];
            v220 = v205[3];
            v301 = *v209;
            v321 = v209[1];
            v221 = *v210;
            v222 = v210[1];
            v223 = *v211;
            v224 = v211[1];
            v336 = 0;
            if (v215 >= 1)
            {
              v225 = 0;
              v226 = v216 / v281;
              v297 = -v221;
              v317 = -v222;
              v285 = v217 / v281;
              do
              {
                v334 = v225;
                v277 = v225;
                v330 = v225;
                if (v281 >= 1)
                {
                  for (i3 = 0; i3 != v281; ++i3)
                  {
                    if (v285 >= 1)
                    {
                      v227 = i3 * v285;
                      do
                      {
                        v326 = v227;
                        v293 = v227;
                        v331 = v227;
                        if (v309 >= 1)
                        {
                          v228 = 0;
                          do
                          {
                            v313 = v228;
                            v332 = v228;
                            if (v218 >= 1)
                            {
                              v229 = 0;
                              v230 = v297 + v228 * v301;
                              v231 = *(v305 + 40);
                              do
                              {
                                v333 = v229;
                                if (v226 < 1)
                                {
                                  _H0 = 0;
                                }

                                else
                                {
                                  _D0 = 0.0;
                                  v234 = i3 * v226;
                                  do
                                  {
                                    v335 = v234;
                                    v327 = v234 - i3 * v226;
                                    if (v219 >= 1)
                                    {
                                      for (i4 = 0; i4 != v219; ++i4)
                                      {
                                        v328 = i4;
                                        v236 = v230 + i4 * v223;
                                        if ((v236 & 0x80000000) == 0 && v236 < v213)
                                        {
                                          LODWORD(v336) = v230 + i4 * v223;
                                          if (v220 >= 1)
                                          {
                                            for (i5 = 0; i5 != v220; ++i5)
                                            {
                                              v329 = i5;
                                              v232 = v317 + v229 * v321;
                                              v238 = v232 + i5 * v224;
                                              if ((v238 & 0x80000000) == 0 && v238 < v214)
                                              {
                                                v239 = 0;
                                                HIDWORD(v336) = v232 + i5 * v224;
                                                v240 = 1;
                                                for (i6 = 12; i6 != -4; i6 -= 4)
                                                {
                                                  v239 += *(&v334 + i6) * v240;
                                                  v240 *= *(*(v202 + 40) + i6);
                                                }

                                                v242 = 0;
                                                _H1 = *(v207 + 2 * v239);
                                                v244 = 1;
                                                for (i7 = 12; i7 != -4; i7 -= 4)
                                                {
                                                  v242 += *(&v326 + i7) * v244;
                                                  v244 *= *(*(v204 + 40) + i7);
                                                }

                                                _H2 = *(v208 + 2 * v242);
                                                __asm
                                                {
                                                  FCVT            D1, H1
                                                  FCVT            D2, H2
                                                }

                                                _D0 = _D0 + _D1 * _D2;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    ++v234;
                                  }

                                  while (v234 < i3 * v226 + v226);
                                  __asm { FCVT            H0, D0 }
                                }

                                v250 = 0;
                                v251 = 1;
                                for (i8 = 12; i8 != -4; i8 -= 4)
                                {
                                  v250 += *(&v330 + i8) * v251;
                                  v251 *= *(v231 + i8);
                                }

                                *(v325 + 2 * v250) = _H0;
                                ++v229;
                              }

                              while (v229 != v218);
                            }

                            v228 = v313 + 1;
                          }

                          while (v313 + 1 != v309);
                        }

                        v227 = v293 + 1;
                      }

                      while (v293 + 1 < i3 * v285 + v285);
                    }
                  }
                }

                v225 = v277 + 1;
              }

              while (v277 + 1 != v215);
            }

            return 0;
          }
        }

        else
        {
          if (v24 != 69)
          {
            goto LABEL_207;
          }

          v79 = *a2;
          v80 = a2[1];
          v81 = a2[2];
          v82 = a2[3];
          v83 = a2[4];
          v84 = a2[5];
          v85 = *a4;
          v86 = **a2;
          if (*(v86 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v261);
          }

          v87 = *(v86 + 40);
          v88 = *v80;
          if (*(*v80 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v262);
          }

          v89 = *(v88 + 40);
          if (*(*v85 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v263);
          }

          v303 = *v85;
          v90 = *(*v85 + 40);
          v91 = v79[1];
          v92 = v80[1];
          v323 = v85[1];
          v93 = v81[1];
          v94 = v82[1];
          v95 = v83[1];
          if (*(*v84 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v264);
          }

          v96 = *(*v84 + 24);
          if (*(v96 + 8) != 1)
          {
            goto LABEL_217;
          }

          if (*(v96 + 24) == 25)
          {
            v279 = *v84[1];
            v97 = v87[2];
            v98 = v87[3];
            v99 = *v87;
            v100 = v87[1];
            v101 = *v89;
            v102 = *(v90 + 12);
            v307 = *(v90 + 8);
            v103 = v89[2];
            v104 = v89[3];
            v299 = *v93;
            v319 = v93[1];
            v105 = *v94;
            v106 = v94[1];
            v107 = *v95;
            v108 = v95[1];
            v336 = 0;
            if (v99 >= 1)
            {
              v109 = 0;
              v110 = v100 / v279;
              v295 = -v105;
              v315 = -v106;
              v283 = v101 / v279;
              do
              {
                v334 = v109;
                v275 = v109;
                v330 = v109;
                if (v279 >= 1)
                {
                  for (i9 = 0; i9 != v279; ++i9)
                  {
                    if (v283 >= 1)
                    {
                      v111 = i9 * v283;
                      do
                      {
                        v326 = v111;
                        v291 = v111;
                        v331 = v111;
                        if (v307 >= 1)
                        {
                          v112 = 0;
                          do
                          {
                            v311 = v112;
                            v332 = v112;
                            if (v102 >= 1)
                            {
                              v113 = 0;
                              v114 = v295 + v112 * v299;
                              v115 = *(v303 + 40);
                              do
                              {
                                v333 = v113;
                                if (v110 < 1)
                                {
                                  _H0 = 0;
                                }

                                else
                                {
                                  _D0 = 0.0;
                                  v118 = i9 * v110;
                                  do
                                  {
                                    v335 = v118;
                                    v327 = v118 - i9 * v110;
                                    if (v103 >= 1)
                                    {
                                      for (i10 = 0; i10 != v103; ++i10)
                                      {
                                        v328 = i10;
                                        v120 = v114 + i10 * v107;
                                        if ((v120 & 0x80000000) == 0 && v120 < v97)
                                        {
                                          LODWORD(v336) = v114 + i10 * v107;
                                          if (v104 >= 1)
                                          {
                                            for (i11 = 0; i11 != v104; ++i11)
                                            {
                                              v329 = i11;
                                              v116 = v315 + v113 * v319;
                                              v122 = v116 + i11 * v108;
                                              if ((v122 & 0x80000000) == 0 && v122 < v98)
                                              {
                                                v123 = 0;
                                                HIDWORD(v336) = v116 + i11 * v108;
                                                v124 = 1;
                                                for (i12 = 12; i12 != -4; i12 -= 4)
                                                {
                                                  v123 += *(&v334 + i12) * v124;
                                                  v124 *= *(*(v86 + 40) + i12);
                                                }

                                                v126 = 0;
                                                _H1 = *(v91 + 2 * v123);
                                                v128 = 1;
                                                for (i13 = 12; i13 != -4; i13 -= 4)
                                                {
                                                  v126 += *(&v326 + i13) * v128;
                                                  v128 *= *(*(v88 + 40) + i13);
                                                }

                                                __asm { FCVT            D1, H1 }

                                                _D0 = _D0 + _D1 * *(v92 + 4 * v126);
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    ++v118;
                                  }

                                  while (v118 < i9 * v110 + v110);
                                  __asm { FCVT            H0, D0 }
                                }

                                v136 = 0;
                                v137 = 1;
                                for (i14 = 12; i14 != -4; i14 -= 4)
                                {
                                  v136 += *(&v330 + i14) * v137;
                                  v137 *= *(v115 + i14);
                                }

                                *(v323 + 2 * v136) = _H0;
                                ++v113;
                              }

                              while (v113 != v102);
                            }

                            v112 = v311 + 1;
                          }

                          while (v311 + 1 != v307);
                        }

                        v111 = v291 + 1;
                      }

                      while (v291 + 1 < i9 * v283 + v283);
                    }
                  }
                }

                v109 = v275 + 1;
              }

              while (v275 + 1 != v99);
            }

            return 0;
          }
        }

LABEL_220:
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
        return 2;
      }

      v254 = "conv2d expects 1 packed NDArrayType output.";
    }

    else
    {
      v254 = "conv2d expects 6 packed NDArrayType inputs.";
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v254);
  }

  return v18;
}

void ODIE::Kernels::Core::CPU::registerConvKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.conv2d";
  v3 = 27;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceConv2d;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceConv2d;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  v11 = *(a1 + 32);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  ODIE::Common::NDArrayType::create(v10, *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 32), *(v5 + 48), *(v5 + 32), &v12);
  if ((v13 & 1) == 0)
  {
    ODIE::Platform::abort(v7);
  }

  *a4 = v12;
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinaryComparison(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v18);
  }

  v6 = a1[1];
  v23 = *a1;
  v24 = v6;
  v25 = *(a1 + 4);
  v7 = *(v5 + 40);
  v8 = *(v5 + 32);
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v28 = *(a1 + 4);
  v10 = odie_alloc_aligned(&v26, 4 * v8, 4, 0);
  v11 = v10;
  if (v8 >= 1)
  {
    v12 = v10;
    v13 = v8;
    do
    {
      v14 = *v7++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  v26 = v23;
  v27 = v24;
  v28 = v25;
  v19[0] = v23;
  v19[1] = v24;
  v20 = v25;
  ODIE::Common::ScalarType::create(v19, 16, 1, &v21);
  if ((v22 & 1) == 0)
  {
    ODIE::Platform::abort(v15);
  }

  ODIE::Common::NDArrayType::create(&v26, v21, *(v5 + 32), v11, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, v19);
  if ((BYTE8(v19[0]) & 1) == 0)
  {
    ODIE::Platform::abort(v16);
  }

  *a4 = *&v19[0];
  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAdd(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v172);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v173);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v174);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v175);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v176);
  }

  v178 = (*a2)[1];
  v179 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v178);
    ODIE::Platform::abort(v177);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = a1[1];
  v195 = *a1;
  v196 = v17;
  v197 = *(a1 + 4);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = a1[1];
  v190 = *a1;
  *v191 = v20;
  *&v191[16] = *(a1 + 4);
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v185 = v190;
  *v186 = v20;
  *&v186[16] = *(a1 + 4);
  v187 = 0;
  v188 = 0;
  v189 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v190);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v185);
  v180 = v195;
  *v181 = v196;
  *&v181[16] = v197;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v190, &v185, &v180);
  if (v183)
  {
    v21 = v182;
    v22 = 4 * v183;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v229 = v195;
          *v230 = v196;
          *&v230[16] = v197;
          v231 = 0;
          v232 = 0;
          v233 = 0;
          v224 = v195;
          *v225 = v196;
          *&v225[16] = v197;
          v226 = 0;
          v227 = 0;
          v228 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v229);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v224);
          v219 = v195;
          *v220 = v196;
          *&v220[16] = v197;
          v221 = 0;
          v223 = 0;
          v222 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
          v201 = v195;
          v202 = v196;
          v203 = v197;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v201, v178, &v229, &v219);
          v198 = v195;
          v199 = v196;
          v200 = v197;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v201, &v198, v4, &v224, &v219);
          if (v217)
          {
            bzero(v216, 4 * v217);
          }

          if (v208)
          {
            bzero(v207, 4 * v208);
          }

          if (v23 < 1)
          {
            goto LABEL_180;
          }

          v26 = 0;
          while (1)
          {
            v27 = v217;
            if (!v217)
            {
LABEL_37:
              v34 = (v213 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v214;
            v30 = v215;
            v31 = v216;
            v32 = v218;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v208;
            if (v208)
            {
              v36 = 0;
              v37 = v205;
              v38 = v206;
              v39 = v207;
              v40 = v209;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_180;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v204 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              *(v179 + 2 * v26) = *v34 + *(v204 + 2 * v35);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v201);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_180;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v229 = v195;
        *v230 = v196;
        *&v230[16] = v197;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        v224 = v195;
        *v225 = v196;
        *&v225[16] = v197;
        v226 = 0;
        v227 = 0;
        v228 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v229);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v224);
        v219 = v195;
        *v220 = v196;
        *&v220[16] = v197;
        v221 = 0;
        v223 = 0;
        v222 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
        v201 = v195;
        v202 = v196;
        v203 = v197;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v201, v178, &v229, &v219);
        v198 = v195;
        v199 = v196;
        v200 = v197;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v201, &v198, v4, &v224, &v219);
        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v208)
        {
          bzero(v207, 4 * v208);
        }

        if (v23 < 1)
        {
          goto LABEL_180;
        }

        v98 = 0;
LABEL_157:
        v99 = v217;
        if (!v217)
        {
LABEL_164:
          v106 = v213 + 2 * v99;
          goto LABEL_166;
        }

        v100 = 0;
        v101 = v214;
        v102 = v215;
        v103 = v216;
        v104 = v218;
        while (1)
        {
          v105 = *v101++;
          if (v105 != 1)
          {
            if (*v103 >= *v102)
            {
              v106 = 0;
LABEL_166:
              v107 = v208;
              if (v208)
              {
                v108 = 0;
                v109 = v205;
                v110 = v206;
                v111 = v207;
                v112 = v209;
                do
                {
                  v113 = *v109++;
                  if (v113 != 1)
                  {
                    if (*v111 >= *v110)
                    {
                      goto LABEL_180;
                    }

                    v108 += *v112 * *v111;
                  }

                  ++v112;
                  ++v110;
                  ++v111;
                  --v107;
                }

                while (v107);
              }

              if (v106)
              {
                v114 = v204 == 0;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                goto LABEL_180;
              }

              __asm { FCMP            H0, #0 }

              v119 = !_ZF;
              *(v179 + v98) = v119;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v201);
              if (++v98 == v23)
              {
LABEL_180:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v201);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v210);
                goto LABEL_265;
              }

              goto LABEL_157;
            }

            v100 += *v104 * *v103;
          }

          ++v104;
          ++v102;
          ++v103;
          if (!--v99)
          {
            v99 = v100;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v178);
      v61 = 3;
      goto LABEL_272;
    }

    if (v14 <= v16)
    {
      v62 = v16;
    }

    else
    {
      v62 = v14;
    }

    if (v10 == 25)
    {
      v229 = v195;
      *v230 = v196;
      *&v230[16] = v197;
      v231 = 0;
      v232 = 0;
      v233 = 0;
      v224 = v195;
      *v225 = v196;
      *&v225[16] = v197;
      v226 = 0;
      v227 = 0;
      v228 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v229);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v224);
      v219 = v195;
      *v220 = v196;
      *&v220[16] = v197;
      v221 = 0;
      v223 = 0;
      v222 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
      v201 = v195;
      v202 = v196;
      v203 = v197;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v201, v178, &v229, &v219);
      v198 = v195;
      v199 = v196;
      v200 = v197;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v201, &v198, v4, &v224, &v219);
      if (v217)
      {
        bzero(v216, 4 * v217);
      }

      if (v208)
      {
        bzero(v207, 4 * v208);
      }

      if (v23 < 1)
      {
        goto LABEL_236;
      }

      v63 = 0;
      while (1)
      {
        v64 = v217;
        if (!v217)
        {
LABEL_104:
          v71 = (v213 + 4 * v64);
          goto LABEL_106;
        }

        v65 = 0;
        v66 = v214;
        v67 = v215;
        v68 = v216;
        v69 = v218;
        while (1)
        {
          v70 = *v66++;
          if (v70 != 1)
          {
            break;
          }

LABEL_102:
          ++v69;
          ++v67;
          ++v68;
          if (!--v64)
          {
            v64 = v65;
            goto LABEL_104;
          }
        }

        if (*v68 < *v67)
        {
          break;
        }

        v71 = 0;
LABEL_106:
        v72 = v208;
        if (v208)
        {
          v73 = 0;
          v74 = v205;
          v75 = v206;
          v76 = v207;
          v77 = v209;
          do
          {
            v78 = *v74++;
            if (v78 != 1)
            {
              if (*v76 >= *v75)
              {
                goto LABEL_236;
              }

              v73 += *v77 * *v76;
            }

            ++v77;
            ++v75;
            ++v76;
            --v72;
          }

          while (v72);
          v72 = v73;
        }

        if (v71)
        {
          v79 = v204 == 0;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          *(v179 + 4 * v63) = *(v204 + 4 * v72) + *v71;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v201);
          if (++v63 != v23)
          {
            continue;
          }
        }

        goto LABEL_236;
      }

      v65 += *v69 * *v68;
      goto LABEL_102;
    }

    v229 = v195;
    *v230 = v196;
    *&v230[16] = v197;
    v231 = 0;
    v232 = 0;
    v233 = 0;
    v224 = v195;
    *v225 = v196;
    *&v225[16] = v197;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v229);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v224);
    v219 = v195;
    *v220 = v196;
    *&v220[16] = v197;
    v221 = 0;
    v223 = 0;
    v222 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
    v201 = v195;
    v202 = v196;
    v203 = v197;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v201, v178, &v229, &v219);
    v198 = v195;
    v199 = v196;
    v200 = v197;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v201, &v198, v4, &v224, &v219);
    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v208)
    {
      bzero(v207, 4 * v208);
    }

    if (v23 < 1)
    {
      goto LABEL_236;
    }

    v137 = 0;
LABEL_215:
    v138 = v217;
    if (!v217)
    {
LABEL_222:
      v145 = (v213 + 4 * v138);
      goto LABEL_224;
    }

    v139 = 0;
    v140 = v214;
    v141 = v215;
    v142 = v216;
    v143 = v218;
    while (1)
    {
      v144 = *v140++;
      if (v144 != 1)
      {
        if (*v142 >= *v141)
        {
          v145 = 0;
LABEL_224:
          v146 = v208;
          if (v208)
          {
            v147 = 0;
            v148 = v205;
            v149 = v206;
            v150 = v207;
            v151 = v209;
            do
            {
              v152 = *v148++;
              if (v152 != 1)
              {
                if (*v150 >= *v149)
                {
                  goto LABEL_236;
                }

                v147 += *v151 * *v150;
              }

              ++v151;
              ++v149;
              ++v150;
              --v146;
            }

            while (v146);
            v146 = v147;
          }

          if (v145)
          {
            v153 = v204 == 0;
          }

          else
          {
            v153 = 1;
          }

          if (v153 || (*(v179 + v137) = *(v204 + 4 * v146) + *v145 != 0, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v201), ++v137, v137 == v23))
          {
LABEL_236:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v201);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v210);
            goto LABEL_265;
          }

          goto LABEL_215;
        }

        v139 += *v143 * *v142;
      }

      ++v143;
      ++v141;
      ++v142;
      if (!--v138)
      {
        v138 = v139;
        goto LABEL_222;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = v14;
      }

      if (v10 == 69)
      {
        v229 = v195;
        *v230 = v196;
        *&v230[16] = v197;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        v224 = v195;
        *v225 = v196;
        *&v225[16] = v197;
        v226 = 0;
        v227 = 0;
        v228 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v229);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v224);
        v219 = v195;
        *v220 = v196;
        *&v220[16] = v197;
        v221 = 0;
        v223 = 0;
        v222 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
        v201 = v195;
        v202 = v196;
        v203 = v197;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v201, v178, &v229, &v219);
        v198 = v195;
        v199 = v196;
        v200 = v197;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v201, &v198, v4, &v224, &v219);
        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v208)
        {
          bzero(v207, 4 * v208);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v45 = v217;
            if (!v217)
            {
              goto LABEL_71;
            }

            v46 = 0;
            v47 = v214;
            v48 = v215;
            v49 = v216;
            v50 = v218;
            do
            {
              v51 = *v47++;
              if (v51 != 1)
              {
                if (*v49 >= *v48)
                {
                  v52 = 0;
                  goto LABEL_73;
                }

                v46 += *v50 * *v49;
              }

              ++v50;
              ++v48;
              ++v49;
              --v45;
            }

            while (v45);
            v45 = v46;
LABEL_71:
            v52 = (v213 + 4 * v45);
LABEL_73:
            v53 = v208;
            if (v208)
            {
              v54 = 0;
              v55 = v205;
              v56 = v206;
              v57 = v207;
              v58 = v209;
              do
              {
                v59 = *v55++;
                if (v59 != 1)
                {
                  if (*v57 >= *v56)
                  {
                    goto LABEL_208;
                  }

                  v54 += *v58 * *v57;
                }

                ++v58;
                ++v56;
                ++v57;
                --v53;
              }

              while (v53);
              v53 = v54;
            }

            if (v52)
            {
              v60 = v204 == 0;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              break;
            }

            *(v179 + 4 * i) = *v52 + *(v204 + 4 * v53);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v201);
          }
        }
      }

      else
      {
        v229 = v195;
        *v230 = v196;
        *&v230[16] = v197;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        v224 = v195;
        *v225 = v196;
        *&v225[16] = v197;
        v226 = 0;
        v227 = 0;
        v228 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v229);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v224);
        v219 = v195;
        *v220 = v196;
        *&v220[16] = v197;
        v221 = 0;
        v223 = 0;
        v222 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
        v201 = v195;
        v202 = v196;
        v203 = v197;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v201, v178, &v229, &v219);
        v198 = v195;
        v199 = v196;
        v200 = v197;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v201, &v198, v4, &v224, &v219);
        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v208)
        {
          bzero(v207, 4 * v208);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v121 = v217;
            if (!v217)
            {
              goto LABEL_194;
            }

            v122 = 0;
            v123 = v214;
            v124 = v215;
            v125 = v216;
            v126 = v218;
            do
            {
              v127 = *v123++;
              if (v127 != 1)
              {
                if (*v125 >= *v124)
                {
                  v128 = 0;
                  goto LABEL_196;
                }

                v122 += *v126 * *v125;
              }

              ++v126;
              ++v124;
              ++v125;
              --v121;
            }

            while (v121);
            v121 = v122;
LABEL_194:
            v128 = (v213 + 4 * v121);
LABEL_196:
            v129 = v208;
            if (v208)
            {
              v130 = 0;
              v131 = v205;
              v132 = v206;
              v133 = v207;
              v134 = v209;
              do
              {
                v135 = *v131++;
                if (v135 != 1)
                {
                  if (*v133 >= *v132)
                  {
                    goto LABEL_208;
                  }

                  v130 += *v134 * *v133;
                }

                ++v134;
                ++v132;
                ++v133;
                --v129;
              }

              while (v129);
              v129 = v130;
            }

            if (v128)
            {
              v136 = v204 == 0;
            }

            else
            {
              v136 = 1;
            }

            if (v136)
            {
              break;
            }

            *(v179 + j) = (*v128 + *(v204 + 4 * v129)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v201);
          }
        }
      }

LABEL_208:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v201);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v210);
      goto LABEL_265;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v80 = v16;
  }

  else
  {
    v80 = v14;
  }

  if (v10 != 70)
  {
    v229 = v195;
    *v230 = v196;
    *&v230[16] = v197;
    v231 = 0;
    v232 = 0;
    v233 = 0;
    v224 = v195;
    *v225 = v196;
    *&v225[16] = v197;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v229);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v224);
    v219 = v195;
    *v220 = v196;
    *&v220[16] = v197;
    v221 = 0;
    v223 = 0;
    v222 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
    v201 = v195;
    v202 = v196;
    v203 = v197;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v201, v178, &v229, &v219);
    v198 = v195;
    v199 = v196;
    v200 = v197;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v201, &v198, v4, &v224, &v219);
    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v208)
    {
      bzero(v207, 4 * v208);
    }

    if (v23 < 1)
    {
      goto LABEL_264;
    }

    v154 = 0;
    while (1)
    {
      v155 = v217;
      if (!v217)
      {
        goto LABEL_250;
      }

      v156 = 0;
      v157 = v214;
      v158 = v215;
      v159 = v216;
      v160 = v218;
      do
      {
        v161 = *v157++;
        if (v161 != 1)
        {
          if (*v159 >= *v158)
          {
            v162 = 0;
            goto LABEL_252;
          }

          v156 += *v160 * *v159;
        }

        ++v160;
        ++v158;
        ++v159;
        --v155;
      }

      while (v155);
      v155 = v156;
LABEL_250:
      v162 = (v213 + 8 * v155);
LABEL_252:
      v163 = v208;
      if (v208)
      {
        v164 = 0;
        v165 = v205;
        v166 = v206;
        v167 = v207;
        v168 = v209;
        do
        {
          v169 = *v165++;
          if (v169 != 1)
          {
            if (*v167 >= *v166)
            {
              goto LABEL_264;
            }

            v164 += *v168 * *v167;
          }

          ++v168;
          ++v166;
          ++v167;
          --v163;
        }

        while (v163);
        v163 = v164;
      }

      if (v162)
      {
        v170 = v204 == 0;
      }

      else
      {
        v170 = 1;
      }

      if (!v170)
      {
        *(v179 + v154) = *v162 + *(v204 + 8 * v163) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v201);
        if (++v154 != v23)
        {
          continue;
        }
      }

      goto LABEL_264;
    }
  }

  v229 = v195;
  *v230 = v196;
  *&v230[16] = v197;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v224 = v195;
  *v225 = v196;
  *&v225[16] = v197;
  v226 = 0;
  v227 = 0;
  v228 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v229);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v224);
  v219 = v195;
  *v220 = v196;
  *&v220[16] = v197;
  v221 = 0;
  v223 = 0;
  v222 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v229, &v224, &v219);
  v201 = v195;
  v202 = v196;
  v203 = v197;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v201, v178, &v229, &v219);
  v198 = v195;
  v199 = v196;
  v200 = v197;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v201, &v198, v4, &v224, &v219);
  if (v217)
  {
    bzero(v216, 4 * v217);
  }

  if (v208)
  {
    bzero(v207, 4 * v208);
  }

  if (v23 < 1)
  {
    goto LABEL_264;
  }

  for (k = 0; k != v23; ++k)
  {
    v82 = v217;
    if (!v217)
    {
LABEL_136:
      v89 = (v213 + 8 * v82);
      goto LABEL_138;
    }

    v83 = 0;
    v84 = v214;
    v85 = v215;
    v86 = v216;
    v87 = v218;
    while (1)
    {
      v88 = *v84++;
      if (v88 != 1)
      {
        break;
      }

LABEL_134:
      ++v87;
      ++v85;
      ++v86;
      if (!--v82)
      {
        v82 = v83;
        goto LABEL_136;
      }
    }

    if (*v86 < *v85)
    {
      v83 += *v87 * *v86;
      goto LABEL_134;
    }

    v89 = 0;
LABEL_138:
    v90 = v208;
    if (v208)
    {
      v91 = 0;
      v92 = v205;
      v93 = v206;
      v94 = v207;
      v95 = v209;
      do
      {
        v96 = *v92++;
        if (v96 != 1)
        {
          if (*v94 >= *v93)
          {
            goto LABEL_264;
          }

          v91 += *v95 * *v94;
        }

        ++v95;
        ++v93;
        ++v94;
        --v90;
      }

      while (v90);
      v90 = v91;
    }

    if (v89)
    {
      v97 = v204 == 0;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      break;
    }

    *(v179 + 8 * k) = *v89 + *(v204 + 8 * v90);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v201);
  }

LABEL_264:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v201);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v210);
LABEL_265:
  if (*v220)
  {
    v210 = v219;
    v211 = *v220;
    v212 = *&v220[8];
    (*v220)(&v210, v221);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v225)
  {
    v210 = v224;
    v211 = *v225;
    v212 = *&v225[8];
    (*v225)(&v210, v226);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v230)
  {
    v210 = v229;
    v211 = *v230;
    v212 = *&v230[8];
    (*v230)(&v210, v231);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v61 = 0;
LABEL_272:
  if (*v181)
  {
    v210 = v180;
    v211 = *v181;
    v212 = *&v181[8];
    (*v181)(&v210, v182);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v186)
  {
    v210 = v185;
    v211 = *v186;
    v212 = *&v186[8];
    (*v186)(&v210, v187);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v191)
  {
    v210 = v190;
    v211 = *v191;
    v212 = *&v191[8];
    (*v191)(&v210, v192);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v61;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseMul(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v175);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v176);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v177);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v178);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v179);
  }

  v181 = (*a2)[1];
  v182 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v181);
    ODIE::Platform::abort(v180);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = a1[1];
  v198 = *a1;
  v199 = v17;
  v200 = *(a1 + 4);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = a1[1];
  v193 = *a1;
  *v194 = v20;
  *&v194[16] = *(a1 + 4);
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v188 = v193;
  *v189 = v20;
  *&v189[16] = *(a1 + 4);
  v190 = 0;
  v191 = 0;
  v192 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v193);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v188);
  v183 = v198;
  *v184 = v199;
  *&v184[16] = v200;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v193, &v188, &v183);
  if (v186)
  {
    v21 = v185;
    v22 = 4 * v186;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v232 = v198;
          *v233 = v199;
          *&v233[16] = v200;
          v234 = 0;
          v235 = 0;
          v236 = 0;
          v227 = v198;
          *v228 = v199;
          *&v228[16] = v200;
          v229 = 0;
          v230 = 0;
          v231 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v232);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v227);
          v222 = v198;
          *v223 = v199;
          *&v223[16] = v200;
          v224 = 0;
          v226 = 0;
          v225 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
          v204 = v198;
          v205 = v199;
          v206 = v200;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v213, &v204, v181, &v232, &v222);
          v201 = v198;
          v202 = v199;
          v203 = v200;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v204, &v201, v4, &v227, &v222);
          if (v220)
          {
            bzero(v219, 4 * v220);
          }

          if (v211)
          {
            bzero(v210, 4 * v211);
          }

          if (v23 < 1)
          {
            goto LABEL_180;
          }

          v26 = 0;
          while (1)
          {
            v27 = v220;
            if (!v220)
            {
LABEL_37:
              v34 = (v216 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v217;
            v30 = v218;
            v31 = v219;
            v32 = v221;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v211;
            if (v211)
            {
              v36 = 0;
              v37 = v208;
              v38 = v209;
              v39 = v210;
              v40 = v212;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_180;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v207 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              *(v182 + 2 * v26) = *v34 * *(v207 + 2 * v35);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v213);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v204);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_180;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v232 = v198;
        *v233 = v199;
        *&v233[16] = v200;
        v234 = 0;
        v235 = 0;
        v236 = 0;
        v227 = v198;
        *v228 = v199;
        *&v228[16] = v200;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v232);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v227);
        v222 = v198;
        *v223 = v199;
        *&v223[16] = v200;
        v224 = 0;
        v226 = 0;
        v225 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
        v204 = v198;
        v205 = v199;
        v206 = v200;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v213, &v204, v181, &v232, &v222);
        v201 = v198;
        v202 = v199;
        v203 = v200;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v204, &v201, v4, &v227, &v222);
        if (v220)
        {
          bzero(v219, 4 * v220);
        }

        if (v211)
        {
          bzero(v210, 4 * v211);
        }

        if (v23 < 1)
        {
          goto LABEL_180;
        }

        v98 = 0;
LABEL_157:
        v99 = v220;
        if (!v220)
        {
LABEL_164:
          v106 = v216 + 2 * v99;
          goto LABEL_166;
        }

        v100 = 0;
        v101 = v217;
        v102 = v218;
        v103 = v219;
        v104 = v221;
        while (1)
        {
          v105 = *v101++;
          if (v105 != 1)
          {
            if (*v103 >= *v102)
            {
              v106 = 0;
LABEL_166:
              v107 = v211;
              if (v211)
              {
                v108 = 0;
                v109 = v208;
                v110 = v209;
                v111 = v210;
                v112 = v212;
                do
                {
                  v113 = *v109++;
                  if (v113 != 1)
                  {
                    if (*v111 >= *v110)
                    {
                      goto LABEL_180;
                    }

                    v108 += *v112 * *v111;
                  }

                  ++v112;
                  ++v110;
                  ++v111;
                  --v107;
                }

                while (v107);
              }

              if (v106)
              {
                v114 = v207 == 0;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                goto LABEL_180;
              }

              __asm { FCMP            H0, #0 }

              v119 = !_ZF;
              *(v182 + v98) = v119;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v213);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v204);
              if (++v98 == v23)
              {
LABEL_180:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v204);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v213);
                goto LABEL_271;
              }

              goto LABEL_157;
            }

            v100 += *v104 * *v103;
          }

          ++v104;
          ++v102;
          ++v103;
          if (!--v99)
          {
            v99 = v100;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v181);
      v61 = 3;
      goto LABEL_278;
    }

    if (v14 <= v16)
    {
      v62 = v16;
    }

    else
    {
      v62 = v14;
    }

    if (v10 == 25)
    {
      v232 = v198;
      *v233 = v199;
      *&v233[16] = v200;
      v234 = 0;
      v235 = 0;
      v236 = 0;
      v227 = v198;
      *v228 = v199;
      *&v228[16] = v200;
      v229 = 0;
      v230 = 0;
      v231 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v232);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v227);
      v222 = v198;
      *v223 = v199;
      *&v223[16] = v200;
      v224 = 0;
      v226 = 0;
      v225 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
      v204 = v198;
      v205 = v199;
      v206 = v200;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v213, &v204, v181, &v232, &v222);
      v201 = v198;
      v202 = v199;
      v203 = v200;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v204, &v201, v4, &v227, &v222);
      if (v220)
      {
        bzero(v219, 4 * v220);
      }

      if (v211)
      {
        bzero(v210, 4 * v211);
      }

      if (v23 < 1)
      {
        goto LABEL_242;
      }

      v63 = 0;
      while (1)
      {
        v64 = v220;
        if (!v220)
        {
LABEL_104:
          v71 = (v216 + 4 * v64);
          goto LABEL_106;
        }

        v65 = 0;
        v66 = v217;
        v67 = v218;
        v68 = v219;
        v69 = v221;
        while (1)
        {
          v70 = *v66++;
          if (v70 != 1)
          {
            break;
          }

LABEL_102:
          ++v69;
          ++v67;
          ++v68;
          if (!--v64)
          {
            v64 = v65;
            goto LABEL_104;
          }
        }

        if (*v68 < *v67)
        {
          break;
        }

        v71 = 0;
LABEL_106:
        v72 = v211;
        if (v211)
        {
          v73 = 0;
          v74 = v208;
          v75 = v209;
          v76 = v210;
          v77 = v212;
          do
          {
            v78 = *v74++;
            if (v78 != 1)
            {
              if (*v76 >= *v75)
              {
                goto LABEL_242;
              }

              v73 += *v77 * *v76;
            }

            ++v77;
            ++v75;
            ++v76;
            --v72;
          }

          while (v72);
          v72 = v73;
        }

        if (v71)
        {
          v79 = v207 == 0;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          *(v182 + 4 * v63) = *(v207 + 4 * v72) * *v71;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v213);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v204);
          if (++v63 != v23)
          {
            continue;
          }
        }

        goto LABEL_242;
      }

      v65 += *v69 * *v68;
      goto LABEL_102;
    }

    v232 = v198;
    *v233 = v199;
    *&v233[16] = v200;
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v227 = v198;
    *v228 = v199;
    *&v228[16] = v200;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v62, &v232);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v62, &v227);
    v222 = v198;
    *v223 = v199;
    *&v223[16] = v200;
    v224 = 0;
    v226 = 0;
    v225 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
    v204 = v198;
    v205 = v199;
    v206 = v200;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v213, &v204, v181, &v232, &v222);
    v201 = v198;
    v202 = v199;
    v203 = v200;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v204, &v201, v4, &v227, &v222);
    if (v220)
    {
      bzero(v219, 4 * v220);
    }

    if (v211)
    {
      bzero(v210, 4 * v211);
    }

    if (v23 < 1)
    {
      goto LABEL_242;
    }

    v137 = 0;
LABEL_215:
    v138 = v220;
    if (!v220)
    {
LABEL_222:
      v145 = (v216 + 4 * v138);
      goto LABEL_224;
    }

    v139 = 0;
    v140 = v217;
    v141 = v218;
    v142 = v219;
    v143 = v221;
    while (1)
    {
      v144 = *v140++;
      if (v144 != 1)
      {
        if (*v142 >= *v141)
        {
          v145 = 0;
LABEL_224:
          v146 = v211;
          if (v211)
          {
            v147 = 0;
            v148 = v208;
            v149 = v209;
            v150 = v210;
            v151 = v212;
            do
            {
              v152 = *v148++;
              if (v152 != 1)
              {
                if (*v150 >= *v149)
                {
                  goto LABEL_242;
                }

                v147 += *v151 * *v150;
              }

              ++v151;
              ++v149;
              ++v150;
              --v146;
            }

            while (v146);
            v146 = v147;
          }

          if (v145)
          {
            v153 = v207 == 0;
          }

          else
          {
            v153 = 1;
          }

          if (v153 || ((v154 = *v145, *(v207 + 4 * v146)) ? (v155 = v154 == 0) : (v155 = 1), v155 ? (v156 = 0) : (v156 = 1), *(v182 + v137) = v156, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v213), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v204), ++v137, v137 == v23))
          {
LABEL_242:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v204);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v213);
            goto LABEL_271;
          }

          goto LABEL_215;
        }

        v139 += *v143 * *v142;
      }

      ++v143;
      ++v141;
      ++v142;
      if (!--v138)
      {
        v138 = v139;
        goto LABEL_222;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = v14;
      }

      if (v10 == 69)
      {
        v232 = v198;
        *v233 = v199;
        *&v233[16] = v200;
        v234 = 0;
        v235 = 0;
        v236 = 0;
        v227 = v198;
        *v228 = v199;
        *&v228[16] = v200;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v232);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v227);
        v222 = v198;
        *v223 = v199;
        *&v223[16] = v200;
        v224 = 0;
        v226 = 0;
        v225 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
        v204 = v198;
        v205 = v199;
        v206 = v200;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v213, &v204, v181, &v232, &v222);
        v201 = v198;
        v202 = v199;
        v203 = v200;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v204, &v201, v4, &v227, &v222);
        if (v220)
        {
          bzero(v219, 4 * v220);
        }

        if (v211)
        {
          bzero(v210, 4 * v211);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v45 = v220;
            if (!v220)
            {
              goto LABEL_71;
            }

            v46 = 0;
            v47 = v217;
            v48 = v218;
            v49 = v219;
            v50 = v221;
            do
            {
              v51 = *v47++;
              if (v51 != 1)
              {
                if (*v49 >= *v48)
                {
                  v52 = 0;
                  goto LABEL_73;
                }

                v46 += *v50 * *v49;
              }

              ++v50;
              ++v48;
              ++v49;
              --v45;
            }

            while (v45);
            v45 = v46;
LABEL_71:
            v52 = (v216 + 4 * v45);
LABEL_73:
            v53 = v211;
            if (v211)
            {
              v54 = 0;
              v55 = v208;
              v56 = v209;
              v57 = v210;
              v58 = v212;
              do
              {
                v59 = *v55++;
                if (v59 != 1)
                {
                  if (*v57 >= *v56)
                  {
                    goto LABEL_208;
                  }

                  v54 += *v58 * *v57;
                }

                ++v58;
                ++v56;
                ++v57;
                --v53;
              }

              while (v53);
              v53 = v54;
            }

            if (v52)
            {
              v60 = v207 == 0;
            }

            else
            {
              v60 = 1;
            }

            if (v60)
            {
              break;
            }

            *(v182 + 4 * i) = *v52 * *(v207 + 4 * v53);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v213);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v204);
          }
        }
      }

      else
      {
        v232 = v198;
        *v233 = v199;
        *&v233[16] = v200;
        v234 = 0;
        v235 = 0;
        v236 = 0;
        v227 = v198;
        *v228 = v199;
        *&v228[16] = v200;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v43, &v232);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v43, &v227);
        v222 = v198;
        *v223 = v199;
        *&v223[16] = v200;
        v224 = 0;
        v226 = 0;
        v225 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
        v204 = v198;
        v205 = v199;
        v206 = v200;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v213, &v204, v181, &v232, &v222);
        v201 = v198;
        v202 = v199;
        v203 = v200;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v204, &v201, v4, &v227, &v222);
        if (v220)
        {
          bzero(v219, 4 * v220);
        }

        if (v211)
        {
          bzero(v210, 4 * v211);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v121 = v220;
            if (!v220)
            {
              goto LABEL_194;
            }

            v122 = 0;
            v123 = v217;
            v124 = v218;
            v125 = v219;
            v126 = v221;
            do
            {
              v127 = *v123++;
              if (v127 != 1)
              {
                if (*v125 >= *v124)
                {
                  v128 = 0;
                  goto LABEL_196;
                }

                v122 += *v126 * *v125;
              }

              ++v126;
              ++v124;
              ++v125;
              --v121;
            }

            while (v121);
            v121 = v122;
LABEL_194:
            v128 = (v216 + 4 * v121);
LABEL_196:
            v129 = v211;
            if (v211)
            {
              v130 = 0;
              v131 = v208;
              v132 = v209;
              v133 = v210;
              v134 = v212;
              do
              {
                v135 = *v131++;
                if (v135 != 1)
                {
                  if (*v133 >= *v132)
                  {
                    goto LABEL_208;
                  }

                  v130 += *v134 * *v133;
                }

                ++v134;
                ++v132;
                ++v133;
                --v129;
              }

              while (v129);
              v129 = v130;
            }

            if (v128)
            {
              v136 = v207 == 0;
            }

            else
            {
              v136 = 1;
            }

            if (v136)
            {
              break;
            }

            *(v182 + j) = (*v128 * *(v207 + 4 * v129)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v213);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v204);
          }
        }
      }

LABEL_208:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v204);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v213);
      goto LABEL_271;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v80 = v16;
  }

  else
  {
    v80 = v14;
  }

  if (v10 != 70)
  {
    v232 = v198;
    *v233 = v199;
    *&v233[16] = v200;
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v227 = v198;
    *v228 = v199;
    *&v228[16] = v200;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v232);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v227);
    v222 = v198;
    *v223 = v199;
    *&v223[16] = v200;
    v224 = 0;
    v226 = 0;
    v225 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
    v204 = v198;
    v205 = v199;
    v206 = v200;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v213, &v204, v181, &v232, &v222);
    v201 = v198;
    v202 = v199;
    v203 = v200;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v204, &v201, v4, &v227, &v222);
    if (v220)
    {
      bzero(v219, 4 * v220);
    }

    if (v211)
    {
      bzero(v210, 4 * v211);
    }

    if (v23 < 1)
    {
      goto LABEL_270;
    }

    v157 = 0;
    while (1)
    {
      v158 = v220;
      if (!v220)
      {
        goto LABEL_256;
      }

      v159 = 0;
      v160 = v217;
      v161 = v218;
      v162 = v219;
      v163 = v221;
      do
      {
        v164 = *v160++;
        if (v164 != 1)
        {
          if (*v162 >= *v161)
          {
            v165 = 0;
            goto LABEL_258;
          }

          v159 += *v163 * *v162;
        }

        ++v163;
        ++v161;
        ++v162;
        --v158;
      }

      while (v158);
      v158 = v159;
LABEL_256:
      v165 = (v216 + 8 * v158);
LABEL_258:
      v166 = v211;
      if (v211)
      {
        v167 = 0;
        v168 = v208;
        v169 = v209;
        v170 = v210;
        v171 = v212;
        do
        {
          v172 = *v168++;
          if (v172 != 1)
          {
            if (*v170 >= *v169)
            {
              goto LABEL_270;
            }

            v167 += *v171 * *v170;
          }

          ++v171;
          ++v169;
          ++v170;
          --v166;
        }

        while (v166);
        v166 = v167;
      }

      if (v165)
      {
        v173 = v207 == 0;
      }

      else
      {
        v173 = 1;
      }

      if (!v173)
      {
        *(v182 + v157) = *v165 * *(v207 + 8 * v166) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v213);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v204);
        if (++v157 != v23)
        {
          continue;
        }
      }

      goto LABEL_270;
    }
  }

  v232 = v198;
  *v233 = v199;
  *&v233[16] = v200;
  v234 = 0;
  v235 = 0;
  v236 = 0;
  v227 = v198;
  *v228 = v199;
  *&v228[16] = v200;
  v229 = 0;
  v230 = 0;
  v231 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v80, &v232);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v80, &v227);
  v222 = v198;
  *v223 = v199;
  *&v223[16] = v200;
  v224 = 0;
  v226 = 0;
  v225 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v232, &v227, &v222);
  v204 = v198;
  v205 = v199;
  v206 = v200;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v213, &v204, v181, &v232, &v222);
  v201 = v198;
  v202 = v199;
  v203 = v200;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v204, &v201, v4, &v227, &v222);
  if (v220)
  {
    bzero(v219, 4 * v220);
  }

  if (v211)
  {
    bzero(v210, 4 * v211);
  }

  if (v23 < 1)
  {
    goto LABEL_270;
  }

  for (k = 0; k != v23; ++k)
  {
    v82 = v220;
    if (!v220)
    {
LABEL_136:
      v89 = (v216 + 8 * v82);
      goto LABEL_138;
    }

    v83 = 0;
    v84 = v217;
    v85 = v218;
    v86 = v219;
    v87 = v221;
    while (1)
    {
      v88 = *v84++;
      if (v88 != 1)
      {
        break;
      }

LABEL_134:
      ++v87;
      ++v85;
      ++v86;
      if (!--v82)
      {
        v82 = v83;
        goto LABEL_136;
      }
    }

    if (*v86 < *v85)
    {
      v83 += *v87 * *v86;
      goto LABEL_134;
    }

    v89 = 0;
LABEL_138:
    v90 = v211;
    if (v211)
    {
      v91 = 0;
      v92 = v208;
      v93 = v209;
      v94 = v210;
      v95 = v212;
      do
      {
        v96 = *v92++;
        if (v96 != 1)
        {
          if (*v94 >= *v93)
          {
            goto LABEL_270;
          }

          v91 += *v95 * *v94;
        }

        ++v95;
        ++v93;
        ++v94;
        --v90;
      }

      while (v90);
      v90 = v91;
    }

    if (v89)
    {
      v97 = v207 == 0;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      break;
    }

    *(v182 + 8 * k) = *v89 * *(v207 + 8 * v90);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v213);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v204);
  }

LABEL_270:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v204);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v213);
LABEL_271:
  if (*v223)
  {
    v213 = v222;
    v214 = *v223;
    v215 = *&v223[8];
    (*v223)(&v213, v224);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v228)
  {
    v213 = v227;
    v214 = *v228;
    v215 = *&v228[8];
    (*v228)(&v213, v229);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v233)
  {
    v213 = v232;
    v214 = *v233;
    v215 = *&v233[8];
    (*v233)(&v213, v234);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v61 = 0;
LABEL_278:
  if (*v184)
  {
    v213 = v183;
    v214 = *v184;
    v215 = *&v184[8];
    (*v184)(&v213, v185);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v189)
  {
    v213 = v188;
    v214 = *v189;
    v215 = *&v189[8];
    (*v189)(&v213, v190);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v194)
  {
    v213 = v193;
    v214 = *v194;
    v215 = *&v194[8];
    (*v194)(&v213, v195);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v61;
}