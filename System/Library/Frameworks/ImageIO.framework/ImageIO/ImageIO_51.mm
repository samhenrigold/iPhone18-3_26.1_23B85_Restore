void AdobeXMPCore_Int::MetadataImpl::RemoveNode(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    memset(v8, 0, sizeof(v8));
    v5 = (*(**a2 + 192))(*a2, a2);
    v6 = (*(**a3 + 192))();
    AdobeXMPCore_Int::IsNodeAlias(v5, v6, v8);
  }

  v7 = (a1 + *(*a1 - 928));

  AdobeXMPCore_Int::StructureNodeImpl::RemoveNode(v7, a2, a3, a4);
}

void sub_18618453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a14);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a21);
  }

  a14 = (v21 - 72);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::GetNode(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    memset(v8, 0, sizeof(v8));
    v5 = (*(**a2 + 192))(*a2, a2);
    v6 = (*(**a3 + 192))();
    AdobeXMPCore_Int::IsNodeAlias(v5, v6, v8);
  }

  v7 = (a1 + *(*a1 - 928));

  AdobeXMPCore_Int::StructureNodeImpl::GetNode(v7, a2, a3, a4);
}

void sub_186184860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a14);
  v21 = *(v18 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v21);
  }

  a14 = &a18;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::~MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl((v2 + 40), &off_1EF5035F0);
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((this + 80), off_1EF5036D8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 208), off_1EF503740);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 184), off_1EF503728);
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::~MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::~MetadataImpl(void *a1)
{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::MetadataImpl::~MetadataImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::CreateTerminalNode(uint64_t *__return_ptr a1@<X8>, __int16 a4@<W2>, void *a5@<X3>)
{
  *a1 = 0;
  a1[1] = 0;
  if (*a5)
  {
    (*(**a5 + 264))(&v8, *a5, 0, 0);
    v6 = v8;
    v8 = 0uLL;
    v7 = a1[1];
    *a1 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v7);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
      }
    }
  }

  else
  {
    if ((a4 & 0x1F00) == 0)
    {
      AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
    }

    if ((a4 & 0x100) != 0)
    {
      AdobeXMPCore::IStructureNode_v1::CreateStructureNode();
    }

    if ((a4 & 0x200) != 0)
    {
      if ((a4 & 0x1000) == 0)
      {
        if ((a4 & 0x400) == 0)
        {
          AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode();
        }

        AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode();
      }

      AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode();
    }
  }
}

void sub_186184C44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataImpl::~MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 920)) = a2[1];
  *(this + *(*this - 856)) = a2[2];
  *(this + *(*this - 792)) = a2[3];
  *(this + *(*this - 688)) = a2[4];
  *(this + *(*this - 544)) = a2[5];
  *(this + *(*this - 56)) = a2[6];
  *(this + *(*this - 64)) = a2[7];
  *(this + *(*this - 72)) = a2[8];
  *(this + *(*this - 864)) = a2[9];
  *(this + *(*this - 872)) = a2[10];
  *(this + *(*this - 880)) = a2[11];
  *(this + *(*this - 888)) = a2[12];
  *(this + *(*this - 896)) = a2[13];
  *(this + *(*this - 928)) = a2[14];
  *(this + *(*this - 936)) = a2[15];
  *(this + *(*this - 944)) = a2[16];
  *(this + *(*this - 952)) = a2[17];
  *(this + *(*this - 960)) = a2[18];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void sub_1861852E8(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 944) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::MetadataImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::MetadataImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::MetadataImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::MetadataImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 944) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::MetadataImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::MetadataImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(char *a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

BOOL PhotoDataUtils::CheckIPTCDigest(PhotoDataUtils *this, const void *a2, void *a3, const void *a4)
{
  v5 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  memset(&v11, 0, sizeof(v11));
  MD5Init(&v11);
  MD5Update(&v11, this, v5);
  MD5Final(&v9, &v11);
  return v9 == *a3 && v10 == a3[1];
}

uint64_t PhotoDataUtils::SetIPTCDigest(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  memset(&v9, 0, sizeof(v9));
  MD5Init(&v9);
  MD5Update(&v9, a1, a2);
  v6 = MD5Final(v8, &v9);
  return (*(*a3 + 8))(a3, 1061, v8, 16, v6);
}

void PhotoDataUtils::ImportIPTC_Simple(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5)
{
  memset(&__p, 0, sizeof(__p));
  IPTC_Manager::GetDataSet_UTF8(a1, a3, &__p, 0);
  if (v8)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v13 = (p_p + size);
      do
      {
        if (p_p->__r_.__value_.__s.__data_[0] == 13)
        {
          p_p->__r_.__value_.__s.__data_[0] = 10;
        }

        p_p = (p_p + 1);
      }

      while (p_p < v13);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = v11;
    }

    TXMPMeta<std::string>::SetProperty(a2, a4, a5, v14, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186185790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::ImportIPTC_LangAlt(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5)
{
  memset(&__p, 0, sizeof(__p));
  IPTC_Manager::GetDataSet_UTF8(a1, a3, &__p, 0);
  if (v8)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v13 = (p_p + size);
      do
      {
        if (p_p->__r_.__value_.__s.__data_[0] == 13)
        {
          p_p->__r_.__value_.__s.__data_[0] = 10;
        }

        p_p = (p_p + 1);
      }

      while (p_p < v13);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = v11;
    }

    TXMPMeta<std::string>::SetLocalizedText(a2, a4, a5, "", "x-default", v14, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186185894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::ImportIPTC_Array(uint64_t a1, uint64_t a2, int a3, char *a4, char *a5)
{
  memset(&__p, 0, sizeof(__p));
  IPTC_Manager::GetDataSet(a1, a3, 0, 0);
  v11 = v10;
  TXMPMeta<std::string>::DeleteProperty(a2, a4, a5);
  v12 = 512;
  if (!strcmp(a4, "http://purl.org/dc/elements/1.1/"))
  {
    if (!strcmp(a5, "creator"))
    {
      v12 = 1024;
    }

    else
    {
      v12 = 512;
    }

    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  for (i = 0; i != v11; ++i)
  {
    IPTC_Manager::GetDataSet_UTF8(a1, a3, &__p, i);
    if (v14)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v17 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size >= 1)
      {
        v19 = (p_p + size);
        do
        {
          if (p_p->__r_.__value_.__s.__data_[0] == 13)
          {
            p_p->__r_.__value_.__s.__data_[0] = 10;
          }

          p_p = (p_p + 1);
        }

        while (p_p < v19);
        v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v17 = __p.__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        v20 = &__p;
      }

      else
      {
        v20 = v17;
      }

      TXMPMeta<std::string>::AppendArrayItem(a2, a4, a5, v12, v20, 0);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_186185A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PhotoDataUtils::ImportIPTC_Date(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 55)
  {
    v5 = 60;
    v6 = "http://ns.adobe.com/photoshop/1.0/";
    v7 = "DateCreated";
  }

  else
  {
    if (a1 != 62)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Unrecognized dateID";
      *(exception + 16) = 0;
    }

    v5 = 63;
    v6 = "http://ns.adobe.com/xap/1.0/";
    v7 = "CreateDate";
  }

  v60 = 0uLL;
  IPTC_Manager::GetDataSet(a2, a1, &v60, 0);
  if (!v8 || !v60.n128_u32[1] || !v60.n128_u64[1])
  {
    return;
  }

  v9 = 3;
  if (v60.n128_u32[1] - 1 < 3)
  {
    v9 = v60.n128_u32[1] - 1;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v10 = *v60.n128_u64[1];
  if ((v10 - 58) < 0xFFFFFFF6)
  {
    v11 = 0;
LABEL_18:
    if (*(v60.n128_u64[1] + v11) == 45)
    {
      ++v11;
    }

    goto LABEL_20;
  }

  v12 = 0;
  v11 = 0;
  while (1)
  {
    v13 = v11;
    v12 = v10 + 10 * v12 - 48;
    LODWORD(v57) = v12;
    if (v9 == v11)
    {
      break;
    }

    v10 = *(v60.n128_u64[1] + 1 + v11++);
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_17;
    }
  }

  v11 = v9 + 1;
LABEL_17:
  if (v13 + 1 < v60.n128_u32[1])
  {
    goto LABEL_18;
  }

LABEL_20:
  if (v11 >= v60.n128_u32[1])
  {
    DWORD1(v57) = 1;
    goto LABEL_34;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = *(v60.n128_u64[1] + v11);
    if ((v16 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v14 = v16 + 10 * v14 - 48;
    DWORD1(v57) = v14;
    v17 = ++v11 < v60.n128_u32[1];
    v18 = v15 & v17;
    v15 = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = 1;
LABEL_27:
  if (v14 <= 0)
  {
    v19 = 1;
LABEL_31:
    DWORD1(v57) = v19;
    if (!v17)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v14 >= 0xD)
  {
    v19 = 12;
    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (*(v60.n128_u64[1] + v11) == 45)
  {
    ++v11;
  }

LABEL_34:
  if (v11 >= v60.n128_u32[1])
  {
    goto LABEL_41;
  }

  v20 = 0;
  v21 = 1;
  do
  {
    v22 = *(v60.n128_u64[1] + v11);
    if ((v22 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v20 = v22 + 10 * v20 - 48;
    DWORD2(v57) = v20;
    v23 = v21 & (++v11 < v60.n128_u32[1]);
    v21 = 0;
  }

  while ((v23 & 1) != 0);
  if (v20 < 1)
  {
LABEL_41:
    v24 = 1;
  }

  else
  {
    if (v20 < 0x20)
    {
      goto LABEL_43;
    }

    v24 = 28;
  }

  DWORD2(v57) = v24;
LABEL_43:
  if (v11 != v60.n128_u32[1])
  {
    return;
  }

  BYTE8(v58) = 1;
  IPTC_Manager::GetDataSet(a2, v5, &v60, 0);
  if (!v25 || !v60.n128_u32[1] || !v60.n128_u64[1])
  {
    goto LABEL_90;
  }

  v26 = 1;
  if (v60.n128_u32[1] == 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  v28 = *v60.n128_u64[1];
  if ((v28 - 58) >= 0xFFFFFFF6)
  {
    v29 = 0;
    v31 = 1;
    while (1)
    {
      v32 = v31;
      v29 = v28 + 10 * v29 - 48;
      HIDWORD(v57) = v29;
      if (v27 == v31)
      {
        break;
      }

      v28 = *(v60.n128_u64[1] + v31++);
      if ((v28 - 58) < 0xFFFFFFF6)
      {
        v27 = v32;
        break;
      }
    }

    v26 = v32 < v60.n128_u32[1];
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    v29 = 0;
    v27 = 0;
  }

  if (v29 < 0x18)
  {
    goto LABEL_63;
  }

  v30 = 23;
LABEL_62:
  HIDWORD(v57) = v30;
LABEL_63:
  if (v26 && *(v60.n128_u64[1] + v27) == 58)
  {
    ++v27;
  }

  if (v27 >= v60.n128_u32[1])
  {
    goto LABEL_82;
  }

  v33 = 0;
  v34 = 1;
  do
  {
    v35 = *(v60.n128_u64[1] + v27);
    if ((v35 - 58) < 0xFFFFFFF6)
    {
      if ((v33 & 0x80000000) != 0)
      {
        v37 = 0;
      }

      else
      {
        if (v33 <= 0x3B)
        {
          goto LABEL_80;
        }

        v37 = 59;
      }

      LODWORD(v58) = v37;
LABEL_80:
      if (*(v60.n128_u64[1] + v27) == 58)
      {
        ++v27;
      }

      goto LABEL_82;
    }

    v33 = v35 + 10 * v33 - 48;
    LODWORD(v58) = v33;
    v36 = v34 & (++v27 < v60.n128_u32[1]);
    v34 = 0;
  }

  while ((v36 & 1) != 0);
  if ((v33 & 0x80000000) != 0)
  {
    LODWORD(v58) = 0;
  }

  else if (v33 > 0x3B)
  {
    LODWORD(v58) = 59;
  }

  if (v27 < v60.n128_u32[1])
  {
    goto LABEL_80;
  }

LABEL_82:
  if (v27 >= v60.n128_u32[1])
  {
    BYTE9(v58) = 1;
LABEL_90:
    TXMPMeta<std::string>::SetProperty_Date(a3, v6, v7, &v57, 0);
    return;
  }

  v38 = 0;
  v39 = 1;
  while (2)
  {
    v40 = *(v60.n128_u64[1] + v27);
    if ((v40 - 58) < 0xFFFFFFF6)
    {
      if ((v38 & 0x80000000) != 0)
      {
        v42 = 0;
      }

      else
      {
        if (v38 <= 0x3B)
        {
LABEL_97:
          BYTE9(v58) = 1;
          goto LABEL_100;
        }

        v42 = 59;
      }

      DWORD1(v58) = v42;
      goto LABEL_97;
    }

    v38 = v40 + 10 * v38 - 48;
    DWORD1(v58) = v38;
    v41 = v39 & (++v27 < v60.n128_u32[1]);
    v39 = 0;
    if (v41)
    {
      continue;
    }

    break;
  }

  if ((v38 & 0x80000000) != 0)
  {
    DWORD1(v58) = 0;
  }

  else if (v38 > 0x3B)
  {
    DWORD1(v58) = 59;
  }

  BYTE9(v58) = 1;
  if (v27 >= v60.n128_u32[1])
  {
    goto LABEL_90;
  }

LABEL_100:
  v43 = *(v60.n128_u64[1] + v27);
  if (v43 > 0x2A)
  {
    if (v43 == 43)
    {
      v44 = 1;
    }

    else
    {
      if (v43 != 45)
      {
        return;
      }

      v44 = -1;
    }

    BYTE11(v58) = v44;
    v45 = v27 + 1;
    if (v27 + 1 < v60.n128_u32[1])
    {
      v46 = *(v60.n128_u64[1] + v45);
      if ((v46 - 58) < 0xFFFFFFF6)
      {
        v47 = 0;
LABEL_116:
        if ((v47 & 0x80000000) != 0)
        {
          v49 = 0;
        }

        else
        {
          if (v47 <= 0x17)
          {
            goto LABEL_121;
          }

          v49 = 23;
        }

        HIDWORD(v58) = v49;
LABEL_121:
        v50 = v27 + 2;
        if (*(v60.n128_u64[1] + v45) == 58)
        {
          v45 = v50;
        }

        goto LABEL_123;
      }

      v47 = 0;
      v48 = 1;
      while (1)
      {
        v47 = v46 + 10 * v47 - 48;
        HIDWORD(v58) = v47;
        v45 = v27 + 2;
        if ((v48 & 1) == 0 || v45 >= v60.n128_u32[1])
        {
          break;
        }

        v48 = 0;
        v46 = *(v60.n128_u64[1] + 2 + v27++);
        if ((v46 - 58) < 0xFFFFFFF6)
        {
          v45 = v27 + 1;
          goto LABEL_116;
        }
      }

      ++v27;
      if ((v47 & 0x80000000) != 0)
      {
        HIDWORD(v58) = 0;
      }

      else if (v47 > 0x17)
      {
        HIDWORD(v58) = 23;
      }

      if (v45 < v60.n128_u32[1])
      {
        goto LABEL_121;
      }
    }

LABEL_123:
    if (v45 < v60.n128_u32[1])
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = *(v60.n128_u64[1] + v45);
        if ((v53 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v51 = v53 + 10 * v51 - 48;
        LODWORD(v59) = v51;
        v54 = v52 & (++v45 < v60.n128_u32[1]);
        v52 = 0;
      }

      while ((v54 & 1) != 0);
      if ((v51 & 0x80000000) != 0)
      {
        v55 = 0;
        goto LABEL_131;
      }

      if (v51 >= 0x3C)
      {
        v55 = 59;
LABEL_131:
        LODWORD(v59) = v55;
      }
    }

    if (v45 != v60.n128_u32[1])
    {
      return;
    }

    BYTE10(v58) = 1;
    goto LABEL_90;
  }

  if (!*(v60.n128_u64[1] + v27) || v43 == 32)
  {
    goto LABEL_90;
  }
}

void PhotoDataUtils::Import2WayIPTC(PhotoDataUtils *a1, uint64_t a2, uint64_t a3)
{
  memset(v33, 0, sizeof(v33));
  v32[0] = &unk_1EF4F1590;
  v32[1] = v33;
  if (!a3)
  {
    PhotoDataUtils::ExportIPTC(a2, v32, 0);
  }

  v31 = 0uLL;
  if (kKnownDataSets[0] != 255)
  {
    v6 = 0;
    v7 = &__s1.__r_.__value_.__s.__data_[4];
    v8 = kKnownDataSets;
    while (1)
    {
      if (v8[1] > 3u)
      {
        goto LABEL_27;
      }

      DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a2, *(v8 + 2), *(v8 + 3));
      v10 = DoesPropertyExist;
      if (!PhotoDataUtils::GetNativeInfo(a1, *v8, a3, DoesPropertyExist, &v31) || v31.n128_u32[1] == 0)
      {
        goto LABEL_27;
      }

      if (a3 == 1 || a3 == -1)
      {
        if (v10)
        {
          goto LABEL_27;
        }
      }

      else if (!PhotoDataUtils::IsValueDifferent(a1, v32, *v8))
      {
        goto LABEL_27;
      }

      TXMPMeta<std::string>::DeleteProperty(a2, *(v8 + 2), *(v8 + 3));
      v12 = v8[1];
      if (v12 <= 1)
      {
        if (v8[1])
        {
          if (v12 == 1)
          {
            PhotoDataUtils::ImportIPTC_LangAlt(a1, a2, *v8, *(v8 + 2), *(v8 + 3));
          }
        }

        else
        {
          PhotoDataUtils::ImportIPTC_Simple(a1, a2, *v8, *(v8 + 2), *(v8 + 3));
        }

        goto LABEL_27;
      }

      if (v12 == 2)
      {
        PhotoDataUtils::ImportIPTC_Array(a1, a2, *v8, *(v8 + 2), *(v8 + 3));
        goto LABEL_27;
      }

      if (v12 == 3)
      {
        break;
      }

LABEL_27:
      ++v6;
      v8 = &kKnownDataSets[32 * v6];
      if (*v8 == 255)
      {
        goto LABEL_77;
      }
    }

    v13 = *v8;
    if (v13 != 4)
    {
      if (v13 != 12)
      {
        if (v13 != 55)
        {
          __assert_rtn("Import2WayIPTC", "ReconcileIPTC.cpp", 423, "false");
        }

        PhotoDataUtils::ImportIPTC_Date(55, a1, a2);
        goto LABEL_27;
      }

      memset(&__s1, 0, sizeof(__s1));
      IPTC_Manager::GetDataSet_UTF8(a1, 12, 0, 0);
      v15 = v14;
      if (!v14)
      {
        goto LABEL_27;
      }

      v16 = 0;
      do
      {
        IPTC_Manager::GetDataSet_UTF8(a1, 12, &__s1, v16);
        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s1 = &__s1;
        }

        else
        {
          p_s1 = __s1.__r_.__value_.__r.__words[0];
        }

        while (p_s1->__r_.__value_.__s.__data_[0])
        {
          if (p_s1->__r_.__value_.__s.__data_[0] == 58)
          {
            v18 = 0;
            do
            {
              v19 = p_s1->__r_.__value_.__s.__data_[++v18];
            }

            while (v19 != 58 && v19 != 0);
            if (v18 == 8)
            {
              p_s1->__r_.__value_.__s.__data_[8] = 0;
              TXMPMeta<std::string>::AppendArrayItem(a2, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode", 512, p_s1, 0);
            }

            break;
          }

          p_s1 = (p_s1 + 1);
        }

        ++v16;
      }

      while (v16 != v15);
      if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_73;
    }

    memset(&__s1, 0, sizeof(__s1));
    IPTC_Manager::GetDataSet_UTF8(a1, 4, &__s1, 0);
    v21 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if (!v22)
    {
LABEL_72:
      if ((v21 & 0x80) != 0)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__s1;
    }

    else
    {
      v23 = __s1.__r_.__value_.__r.__words[0];
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __s1.__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v25 = (v23 + size);
      do
      {
        if (v23->__r_.__value_.__s.__data_[0] == 13)
        {
          v23->__r_.__value_.__s.__data_[0] = 10;
        }

        v23 = (v23 + 1);
      }

      while (v23 < v25);
      v21 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    }

    if ((v21 & 0x80) != 0)
    {
      v27 = __s1.__r_.__value_.__r.__words[0];
      if (__s1.__r_.__value_.__l.__size_ < 5)
      {
        goto LABEL_65;
      }

      v26 = __s1.__r_.__value_.__r.__words[0] + 4;
    }

    else
    {
      v26 = v7;
      if (v21 <= 4)
      {
        v27 = &__s1;
LABEL_65:
        if (!"001")
        {
          goto LABEL_72;
        }

        v30 = v7;
        v28 = kIntellectualGenreMappings;
        if (strncmp(v27, "001", 3uLL))
        {
          while (1)
          {
            v29 = v28[2];
            if (!v29)
            {
              break;
            }

            v28 += 2;
            if (!strncmp(v27, v29, 3uLL))
            {
              goto LABEL_69;
            }
          }

          v7 = v30;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_27;
          }

LABEL_73:
          operator delete(__s1.__r_.__value_.__l.__data_);
          goto LABEL_27;
        }

LABEL_69:
        v26 = v28[1];
        v7 = v30;
      }
    }

    TXMPMeta<std::string>::SetProperty(a2, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "IntellectualGenre", v26, 0);
    LOBYTE(v21) = *(&__s1.__r_.__value_.__s + 23);
    goto LABEL_72;
  }

LABEL_77:
  IPTC_Writer::~IPTC_Writer(v32);
}

void sub_186186488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IPTC_Writer::~IPTC_Writer(va);
  _Unwind_Resume(a1);
}

void PhotoDataUtils::ExportIPTC(uint64_t a1, uint64_t a2, __n128 a3)
{
  LOBYTE(v3) = kKnownDataSets[0];
  if (kKnownDataSets[0] != 255)
  {
    v6 = 0;
    v7 = kKnownDataSets;
    do
    {
      v8 = v7[1];
      if (v8 <= 4)
      {
        if (v7[1] <= 1u)
        {
          if (!v7[1])
          {
            v20 = *(v7 + 2);
            v21 = *(v7 + 3);
            __p = 0;
            v52 = 0;
            v53 = 0;
            LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
            if (TXMPMeta<std::string>::GetProperty(a1, v20, v21, &__p, &__dst))
            {
              if ((__dst.__r_.__value_.__s.__data_[1] & 0x1F) == 0)
              {
                v22 = HIBYTE(v53);
                if (v53 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                if (v53 < 0)
                {
                  v22 = v52;
                }

                if (v22 >= 1)
                {
                  v24 = &p_p[v22];
                  do
                  {
                    if (*p_p == 10)
                    {
                      *p_p = 13;
                    }

                    ++p_p;
                  }

                  while (p_p < v24);
                }

                DataSet = IPTC_Manager::GetDataSet(a2, v3, 0, 0);
                if (v26 > 1)
                {
                  (*(*a2 + 8))(a2, v3, -1, DataSet);
                }

                if (v53 >= 0)
                {
                  v27 = &__p;
                }

                else
                {
                  v27 = __p;
                }

                if (v53 >= 0)
                {
                  v28 = HIBYTE(v53);
                }

                else
                {
                  v28 = v52;
                }

                (**a2)(a2, v3, v27, v28, 0);
              }
            }

            else
            {
              (*(*a2 + 8))(a2, v3, -1);
            }

            goto LABEL_100;
          }

          ExportIPTC_LangAlt(a1, a2, *(v7 + 2), *(v7 + 3), v3);
        }

        else if (v8 == 2)
        {
          ExportIPTC_Array(a1, a2, *(v7 + 2), *(v7 + 3), v3);
        }

        else
        {
          if (v8 == 3)
          {
            if (v3 != 55)
            {
              if (v3 == 12)
              {
                __p = 0;
                v52 = 0;
                v53 = 0;
                memset(&__dst, 0, sizeof(__dst));
                v49 = 0;
                if (TXMPMeta<std::string>::GetProperty(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode", 0, &v49))
                {
                  if ((v49 & 0x200) != 0)
                  {
                    v31 = TXMPMeta<std::string>::CountArrayItems(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode");
                    v32 = IPTC_Manager::GetDataSet(a2, 12, 0, 0);
                    if (v31 != v33)
                    {
                      (*(*a2 + 8))(a2, 12, -1, v32);
                    }

                    if (v31 >= 1)
                    {
                      v34 = 0;
                      v35 = v31;
                      do
                      {
                        v36 = v34 + 1;
                        TXMPMeta<std::string>::GetArrayItem(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "SubjectCode", v34 + 1, &__p, &v49);
                        if ((v49 & 0x1F00) == 0)
                        {
                          v37 = HIBYTE(v53);
                          if (v53 < 0)
                          {
                            v37 = v52;
                          }

                          if (v37 == 8)
                          {
                            MEMORY[0x186602520](&__dst, "IPTC:");
                            if (v53 >= 0)
                            {
                              v38 = &__p;
                            }

                            else
                            {
                              v38 = __p;
                            }

                            if (v53 >= 0)
                            {
                              v39 = HIBYTE(v53);
                            }

                            else
                            {
                              v39 = v52;
                            }

                            std::string::append(&__dst, v38, v39);
                            std::string::append(&__dst, ":::");
                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              p_dst = &__dst;
                            }

                            else
                            {
                              p_dst = __dst.__r_.__value_.__r.__words[0];
                            }

                            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v41 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v41 = LODWORD(__dst.__r_.__value_.__r.__words[1]);
                            }

                            (**a2)(a2, 12, p_dst, v41, v34);
                          }
                        }

                        ++v34;
                      }

                      while (v35 != v36);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_119;
                      }
                    }
                  }
                }

                else
                {
                  (*(*a2 + 8))(a2, 12, -1);
                }
              }

              else
              {
                if (v3 != 4)
                {
                  v29 = 776;
LABEL_121:
                  __assert_rtn("ExportIPTC", "ReconcileIPTC.cpp", v29, "false");
                }

                __p = 0;
                v52 = 0;
                v53 = 0;
                v49 = 0;
                if (TXMPMeta<std::string>::GetProperty(a1, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", "IntellectualGenre", &__p, &v49))
                {
                  if ((v49 & 0x1F00) == 0)
                  {
                    v9 = HIBYTE(v53);
                    v10 = HIBYTE(v53);
                    v11 = __p;
                    if (v53 >= 0)
                    {
                      v12 = &__p;
                    }

                    else
                    {
                      v12 = __p;
                    }

                    if (v53 < 0)
                    {
                      v9 = v52;
                    }

                    if (v9 >= 1)
                    {
                      v13 = &v12[v9];
                      do
                      {
                        if (*v12 == 10)
                        {
                          *v12 = 13;
                        }

                        ++v12;
                      }

                      while (v12 < v13);
                      v10 = HIBYTE(v53);
                      v11 = __p;
                    }

                    v14 = (v10 >= 0 ? &__p : v11);
                    if ("Current")
                    {
                      v15 = kIntellectualGenreMappings;
                      if (strcmp(v14, "Current"))
                      {
                        do
                        {
                          v16 = v15[3];
                          if (!v16)
                          {
                            goto LABEL_100;
                          }

                          v15 += 2;
                        }

                        while (strcmp(v14, v16));
                      }

                      memset(&__dst, 0, sizeof(__dst));
                      v17 = *v15;
                      v18 = strlen(v17);
                      if (v18 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        std::string::__throw_length_error[abi:fe200100]();
                      }

                      v19 = v18;
                      if (v18 >= 0x17)
                      {
                        operator new();
                      }

                      *(&__dst.__r_.__value_.__s + 23) = v18;
                      if (v18)
                      {
                        memmove(&__dst, v17, v18);
                      }

                      __dst.__r_.__value_.__s.__data_[v19] = 0;
                      std::string::push_back(&__dst, 58);
                      if (v53 >= 0)
                      {
                        v43 = &__p;
                      }

                      else
                      {
                        v43 = __p;
                      }

                      if (v53 >= 0)
                      {
                        v44 = HIBYTE(v53);
                      }

                      else
                      {
                        v44 = v52;
                      }

                      std::string::append(&__dst, v43, v44);
                      v45 = IPTC_Manager::GetDataSet(a2, 4, 0, 0);
                      if (v46 > 1)
                      {
                        (*(*a2 + 8))(a2, 4, -1, v45);
                      }

                      v47 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
                      v48 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : LODWORD(__dst.__r_.__value_.__r.__words[1]);
                      (**a2)(a2, 4, v47, v48, 0);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
LABEL_119:
                        operator delete(__dst.__r_.__value_.__l.__data_);
                      }
                    }
                  }
                }

                else
                {
                  (*(*a2 + 8))(a2, 4, -1);
                }
              }

LABEL_100:
              if (SHIBYTE(v53) < 0)
              {
                operator delete(__p);
              }

              goto LABEL_4;
            }

            goto LABEL_97;
          }

          v29 = 792;
          if (v3 > 0x73u)
          {
            v30 = "rights";
            if (v3 != 116)
            {
              if (v3 != 120)
              {
                goto LABEL_121;
              }

              v30 = "description";
            }

            ExportIPTC_LangAlt(a1, a2, "http://purl.org/dc/elements/1.1/", v30, v3);
          }

          else if (v3 == 62)
          {
            IPTC_Manager::GetDataSet(a2, 62, 0, 0);
            if (v42)
            {
              LOBYTE(v3) = *v7;
LABEL_97:
              ExportIPTC_Date(v3, a1, a2);
            }
          }

          else
          {
            if (v3 != 80)
            {
              goto LABEL_121;
            }

            ExportIPTC_Array(a1, a2, "http://purl.org/dc/elements/1.1/", "creator", 80);
          }
        }
      }

LABEL_4:
      ++v6;
      v7 = &kKnownDataSets[32 * v6];
      v3 = *v7;
    }

    while (v3 != 255);
  }
}

void PhotoDataUtils::ImportPSIR(unsigned int (***a1)(void, uint64_t, void **), uint64_t a2, int a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3 != 1)
  {
    if ((**a1)(a1, 1034, &v9))
    {
      DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/xap/1.0/rights/", "Marked");
      v6 = HIDWORD(v9) != 1 || DoesPropertyExist;
      if (!v6 && *v10)
      {
        TXMPMeta<std::string>::SetProperty_Bool(a2, "http://ns.adobe.com/xap/1.0/rights/", "Marked", 1, 0);
      }
    }

    if ((**a1)(a1, 1035, &v9) && !TXMPMeta<std::string>::DoesPropertyExist(a2, "http://ns.adobe.com/xap/1.0/rights/", "WebStatement"))
    {
      memset(&__p, 0, sizeof(__p));
      if (ReconcileUtils::IsUTF8(v10, HIDWORD(v9)))
      {
        MEMORY[0x186602530](&__p, v10, HIDWORD(v9));
      }

      else
      {
        if (ignoreLocalText)
        {
          return;
        }

        ReconcileUtils::LocalToUTF8(v10, HIDWORD(v9), &__p);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      TXMPMeta<std::string>::SetProperty(a2, "http://ns.adobe.com/xap/1.0/rights/", "WebStatement", p_p, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_186186E30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186186E20);
}

void sub_186186E5C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186186D44);
}

void ExportIPTC_LangAlt(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  if (!TXMPMeta<std::string>::GetProperty(a1, a3, a4, 0, &v17))
  {
    goto LABEL_20;
  }

  if ((v17 & 0x1000) == 0)
  {
    goto LABEL_21;
  }

  if (TXMPMeta<std::string>::GetLocalizedText(a1, a3, a4, "", "x-default", 0, &__p, 0))
  {
    v10 = HIBYTE(v20);
    p_p = &__p;
    if (v20 < 0)
    {
      p_p = __p;
      v10 = v19;
    }

    if (v10 >= 1)
    {
      v12 = &p_p[v10];
      do
      {
        if (*p_p == 10)
        {
          *p_p = 13;
        }

        ++p_p;
      }

      while (p_p < v12);
    }

    DataSet = IPTC_Manager::GetDataSet(a2, a5, 0, 0);
    if (v14 > 1)
    {
      (*(*a2 + 8))(a2, a5, -1, DataSet);
    }

    if (v20 >= 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if (v20 >= 0)
    {
      v16 = HIBYTE(v20);
    }

    else
    {
      v16 = v19;
    }

    (**a2)(a2, a5, v15, v16, 0);
  }

  else
  {
LABEL_20:
    (*(*a2 + 8))(a2, a5, -1);
  }

LABEL_21:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_186187034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ExportIPTC_Array(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  __p = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  if (TXMPMeta<std::string>::GetProperty(a1, a3, a4, 0, &v25))
  {
    if ((v25 & 0x200) != 0)
    {
      v10 = TXMPMeta<std::string>::CountArrayItems(a1, a3, a4);
      DataSet = IPTC_Manager::GetDataSet(a2, a5, 0, 0);
      if (v10 != v12)
      {
        (*(*a2 + 8))(a2, a5, -1, DataSet);
      }

      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10;
        do
        {
          v15 = v13 + 1;
          TXMPMeta<std::string>::GetArrayItem(a1, a3, a4, v13 + 1, &__p, &v25);
          if ((v25 & 0x1F00) == 0)
          {
            v16 = HIBYTE(v28);
            v17 = HIBYTE(v28);
            v19 = __p;
            v18 = v27;
            if (v28 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v28 >= 0)
            {
              v21 = HIBYTE(v28);
            }

            else
            {
              v21 = v27;
            }

            if (v21 >= 1)
            {
              v22 = &p_p[v21];
              do
              {
                if (*p_p == 10)
                {
                  *p_p = 13;
                }

                ++p_p;
              }

              while (p_p < v22);
              v16 = HIBYTE(v28);
              v19 = __p;
              v18 = v27;
              v17 = HIBYTE(v28);
            }

            if (v17 >= 0)
            {
              v23 = &__p;
            }

            else
            {
              v23 = v19;
            }

            if (v17 >= 0)
            {
              v24 = v16;
            }

            else
            {
              v24 = v18;
            }

            (**a2)(a2, a5, v23, v24, v13);
          }

          ++v13;
        }

        while (v15 != v14);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    (*(*a2 + 8))(a2, a5, -1);
  }
}

uint64_t ExportIPTC_Date(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 == 55)
  {
    v6 = 60;
    v7 = "http://ns.adobe.com/photoshop/1.0/";
    v8 = "DateCreated";
  }

  else
  {
    if (a1 != 62)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Unrecognized dateID";
      *(exception + 16) = 0;
    }

    v6 = 63;
    v7 = "http://ns.adobe.com/xap/1.0/";
    v8 = "CreateDate";
  }

  (*(*a3 + 8))(a3, a1, -1);
  (*(*a3 + 8))(a3, v6, -1);
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  result = TXMPMeta<std::string>::GetProperty_Date(a2, v7, v8, &v12, 0);
  if (result)
  {
    *__str = 0;
    v16 = 0;
    snprintf(__str, 0x10uLL, "%04d%02d%02d", v12, DWORD1(v12), DWORD2(v12));
    (**a3)(a3, a1, __str, 8, -1);
    if (BYTE10(v13))
    {
      v10 = 43;
      if (BYTE11(v13) == 255)
      {
        v10 = 45;
      }

      snprintf(__str, 0x10uLL, "%02d%02d%02d%c%02d%02d", HIDWORD(v12), v13, DWORD1(v13), v10, HIDWORD(v13), v14);
      return (**a3)(a3, v6, __str, 11, -1);
    }

    else if (BYTE9(v13))
    {
      snprintf(__str, 0x10uLL, "%02d%02d%02d", HIDWORD(v12), v13, DWORD1(v13));
      return (**a3)(a3, v6, __str, 6, -1);
    }

    else
    {
      return (*(*a3 + 8))(a3, v6, -1);
    }
  }

  return result;
}

void PhotoDataUtils::ExportPSIR(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/xap/1.0/rights/", "Marked", &__p, 0))
  {
    v12.__r_.__value_.__s.__data_[0] = TXMPUtils<std::string>::ConvertToBool(&__p);
    (*(*a2 + 8))(a2, 1034, &v12, 1);
  }

  else
  {
    (*(*a2 + 16))(a2, 1034);
  }

  if (!TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/xap/1.0/rights/", "WebStatement", &__p, 0))
  {
    goto LABEL_20;
  }

  if (ignoreLocalText)
  {
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v15 >= 0)
    {
      v5 = HIBYTE(v15);
    }

    else
    {
      v5 = v14;
    }

    if (ReconcileUtils::IsASCII(p_p, v5))
    {
      if (v15 >= 0)
      {
        v6 = &__p;
      }

      else
      {
        v6 = __p;
      }

      if (v15 >= 0)
      {
        v7 = HIBYTE(v15);
      }

      else
      {
        v7 = v14;
      }

      (*(*a2 + 8))(a2, 1035, v6, v7);
      goto LABEL_21;
    }

LABEL_20:
    (*(*a2 + 16))(a2, 1035);
    goto LABEL_21;
  }

  memset(&v12, 0, sizeof(v12));
  if (v15 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14;
  }

  ReconcileUtils::UTF8ToLocal(v8, v9, &v12);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = LODWORD(v12.__r_.__value_.__r.__words[1]);
  }

  (*(*a2 + 8))(a2, 1035, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_21:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1861877D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186187728);
}

void sub_186187810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AdobeXMPCore_Int::ErrorImpl::ErrorImpl(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *(a1 + 104) = &unk_1EF50DE00;
  *a1 = &unk_1EF50D960;
  *(a1 + 96) = off_1EF50DAB0;
  *(a1 + unk_1EF50D828) = &unk_1EF50DB10;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *a1 = &unk_1EF50D588;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_1EF50D6D8;
  *(a1 + 104) = &unk_1EF50D740;
  *(a1 + 8) = a3;
  *(a1 + 12) = a2;
  *(a1 + 16) = a4;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void AdobeXMPCore_Int::ErrorImpl::~ErrorImpl(AdobeXMPCore_Int::ErrorImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 344)) = a2[1];
  *(this + *(*this - 304)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  *(this + *(*this - 312)) = a2[5];
  *(this + *(*this - 352)) = a2[6];
  v4 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

  v10 = (this + 56);
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&v10);
  v8 = *(this + 6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }
}

void AdobeXMPCore_Int::ErrorImpl::~ErrorImpl(AdobeXMPCore_Int::ErrorImpl *this)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 104), off_1EF50D7F8);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((v1 + 104), off_1EF50D7F8);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ErrorImpl::~ErrorImpl(void *a1)
{
  v2 = (v1 + 104);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF50D7F8);
}

{
  AdobeXMPCore_Int::ErrorImpl::~ErrorImpl((a1 + *(*a1 - 48)));
}

void virtual thunk toAdobeXMPCore_Int::ErrorImpl::~ErrorImpl(AdobeXMPCore_Int::ErrorImpl *this)
{
  v2 = (v1 + 104);

  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF50D7F8);
}

{
  AdobeXMPCore_Int::ErrorImpl::~ErrorImpl((this + *(*this - 24)));
}

uint64_t AdobeXMPCore_Int::ErrorImpl::GetMessage@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 48);
  *a2 = *(this + 40);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AdobeXMPCore_Int::ErrorImpl::GetLocation@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AdobeXMPCore_Int::ErrorImpl::GetParameter@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a2;
  v3 = *(this + 56);
  if (a2 >= (*(this + 64) - v3) >> 4)
  {
    v5 = 0;
    v6 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  v4 = *(v3 + 16 * a2);
  *a3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_186187FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::ErrorImpl::GetNextError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 88);
  *a2 = *(this + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AdobeXMPCore_Int::ErrorImpl::SetNextError(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 88);
  *a3 = *(a1 + 80);
  a3[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 88);
  *(a1 + 80) = v5;
  *(a1 + 88) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }
}

void AdobeXMPCore_Int::ErrorImpl::SetMessage(AdobeXMPCore_Int::ErrorImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3)
{
  v3 = *(this + 5);
  if (!v3)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  (*(*v3 + 56))(&v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }
}

uint64_t AdobeXMPCore_Int::ErrorImpl::SetLocation(AdobeXMPCore_Int::ErrorImpl *this, AdobeXMPCore_Int::IUTF8String_I *a2, uint64_t a3)
{
  v5 = *(this + 3);
  if (!v5)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  (*(*v5 + 56))(&v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  (*(**(this + 3) + 40))(&v26);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](&v18);
  MEMORY[0x1866026A0](&v19, a3);
  v6 = *(this + 3);
  std::stringbuf::str();
  std::stringbuf::str();
  if (v15 >= 0)
  {
    v7 = &v14;
  }

  else
  {
    v7 = v14;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  (*(*v6 + 40))(&v16, v6, v7, v8);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  *&v18 = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v19 = v9;
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1866027D0](v24);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:fe200100]((a1 + 3), 24);
  return a1;
}

void sub_1861887A8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](a1 + 128);
  return a1;
}

void sub_186188A44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&a9 + 1));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::ErrorImpl::AppendParameter(AdobeXMPCore_Int::ErrorImpl *this, void *a2)
{
  v30 = 0;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](&v23);
  *(&v23 + *(v23 - 24) + 8) |= 8u;
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  *v15 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](v15);
  *(&v15[1] + *(v15[0] - 3)) |= 8u;
  v4 = std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v16, "0x", 2);
  MEMORY[0x186602640](v4, a2);
  std::stringbuf::str();
  v5 = MEMORY[0x1E69E54D8];
  if (v14 < 0)
  {
    operator delete(__p);
    if (v13 < 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v14 > 4u)
  {
LABEL_5:
    std::stringbuf::str();
  }

LABEL_6:
  v6 = *v5;
  v15[0] = *v5;
  v7 = v5[8];
  v8 = v5[9];
  *(v15 + *(v15[0] - 3)) = v7;
  *&v16 = v8;
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x1866027D0](v21);
  v9 = std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v24, "0x", 2);
  MEMORY[0x186602640](v9, a2);
  std::stringbuf::str();
  if ((SBYTE7(v16) & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v15[0];
  }

  (*(*this + 128))(this, v10, -1);
  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  *&v23 = v6;
  *(&v23 + *(v6 - 3)) = v7;
  *&v24 = v8;
  *(&v24 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(*(&v26 + 1));
  }

  *(&v24 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x1866027D0](v29);
}

void sub_18618903C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<double>(uint64_t a1, double *a2)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v8);
  v4 = v8;
  *(&v9[-1] + *(v8 - 24) + 8) = *(&v9[-1] + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v9 + *(v4 - 24)) = 6;
  MEMORY[0x186602650](&v8, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *&v8 = *MEMORY[0x1E69E54E8];
  *(&v9[-1] + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v8 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  *(&v8 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v13);
}

void sub_1861892B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1866027D0](a1 + 112);
  return a1;
}

uint64_t AdobeXMPCore_Int::TAppendParameter<float>(uint64_t a1, float *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  v3 = v7;
  *(&v8[-1] + *(v7 - 24) + 8) = *(&v8[-1] + *(v7 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v8 + *(v3 - 24)) = 6;
  std::ostream::operator<<();
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ErrorImpl::AppendParameter(AdobeXMPCore_Int::ErrorImpl *this, unsigned int *a2)
{
  return AdobeXMPCore_Int::TAppendParameter<unsigned int>(this, a2);
}

{
  return AdobeXMPCore_Int::TAppendParameter<int>(this, a2);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x186602680](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<unsigned long long>(uint64_t a1, void *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x1866026A0](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<int>(uint64_t a1, unsigned int *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x186602670](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::TAppendParameter<long long>(uint64_t a1, void *a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  *v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  std::ostringstream::basic_ostringstream[abi:fe200100](&v7);
  MEMORY[0x186602690](&v7, *a2);
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  std::stringbuf::str();
  (*(*a1 + 128))(a1, __p, 0);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1866027D0](v12);
}

void sub_186189E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MakeUncheckedSharedPointer<AdobeXMPCore_Int::ErrorImpl>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1 || !a4)
  {
    (**&a1[*(*a1 - 352)])(&a1[*(*a1 - 352)], a2, a3, a4);

    std::shared_ptr<AdobeXMPCore_Int::ErrorImpl>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::ErrorImpl,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(a5, a1, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  v12 = 0;
  v13 = 0;
  AdobeXMPCore_Int::IError_I::CreateError(1, 6, 2, &v12);
  v9 = v12;
  (*(*&v12[*(*v12 - 304)] + 120))(&v12[*(*v12 - 304)], a2, a3);
  (*(*&v9[*(*v9 - 304)] + 112))(&v9[*(*v9 - 304)], "NULL pointer provided for creating shared pointer", -1);
  exception = __cxa_allocate_exception(0x10uLL);
  v11 = v13;
  *exception = v9;
  exception[1] = v11;
}

void *std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x186602610](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:fe200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x186602620](v13);
  return a1;
}

void sub_18618A1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x186602620](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x18618A1B8);
}

uint64_t std::__pad_and_output[abi:fe200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:fe200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_18618A414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18618A4AC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 352) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ErrorImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ErrorImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ErrorImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ErrorImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 352) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ErrorImpl *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ErrorImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void PSIR_FileWriter::DeleteExistingInfo(PSIR_FileWriter *this)
{
  if (*(this + 10) == 1)
  {
    if (*(this + 11))
    {
      PSIR_FileWriter::DeleteExistingInfo();
    }

    if (*(this + 12) == 1)
    {
      free(*(this + 3));
    }
  }

  else if (*(this + 11))
  {
    v2 = *(this + 4);
    if (v2 != (this + 40))
    {
      do
      {
        *(v2 + 40) = 1;
        v3 = *(v2 + 1);
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = *(v2 + 2);
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
      }

      while (v4 != (this + 40));
    }
  }

  v7 = *(this + 5);
  v6 = (this + 40);
  std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 2) = 0;
  *(v6 - 1) = v6;
  *(v6 - 6) = 0;
  *(v6 - 8) = 0;
  *(v6 - 28) = 0;
}

void PSIR_FileWriter::~PSIR_FileWriter(PSIR_FileWriter *this)
{
  *this = &unk_1EF50DFF0;
  if (*(this + 10) == 1 && (*(this + 11) & 1) != 0)
  {
    v4 = "! (this->memParsed && this->fileParsed)";
    v5 = 76;
    goto LABEL_11;
  }

  if (*(this + 12) != 1)
  {
    goto LABEL_6;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    v4 = "this->memContent != 0";
    v5 = 79;
LABEL_11:
    __assert_rtn("~PSIR_FileWriter", "PSIR_FileWriter.cpp", v5, v4);
  }

  free(v2);
LABEL_6:
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(this + 32, *(this + 5));
}

{
  PSIR_FileWriter::~PSIR_FileWriter(this);

  JUMPOUT(0x186602850);
}

uint64_t PSIR_FileWriter::GetImgRsrc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v3 = a1 + 40;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v6 + 42);
    *(a3 + 4) = *(v6 + 44);
    *(a3 + 8) = *(v6 + 48);
    *(a3 + 16) = *(v6 + 56);
  }

  return 1;
}

uint64_t PSIR_FileWriter::SetImgRsrc(PSIR_FileWriter *this, unsigned int a2, const void *__s2, size_t __n)
{
  v4 = __n;
  v8 = (this + 40);
  v7 = *(this + 5);
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = (this + 40);
  do
  {
    v10 = *(v7 + 16);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v9 != v8 && *(v9 + 16) <= a2)
  {
    if (*(v9 + 11) == __n)
    {
      result = memcmp(v9[6], __s2, __n);
      if (!result)
      {
        return result;
      }
    }

    v14 = (v9 + 5);
    if ((*(v9 + 41) & 1) != 0 || *v14 == 1)
    {
      v17 = v9[6];
      if (v17)
      {
        free(v17);
        v9[6] = 0;
      }
    }

    *(v9 + 11) = v4;
  }

  else
  {
LABEL_9:
    v13 = *(this + 11);
    LOBYTE(v19[0]) = 0;
    BYTE1(v19[0]) = v13;
    WORD1(v19[0]) = a2;
    HIDWORD(v19[0]) = __n;
    v19[1] = 0;
    LODWORD(v20) = 0;
    v21 = 0;
    v23[0] = v19[0];
    v23[1] = v20;
    v22 = a2;
    PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v19);
    v14 = std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(v8 - 1, v8, &v22, &v22) + 40;
    PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v23);
  }

  *v14 = 1;
  v15 = malloc_type_malloc(v4, 0xA6A8DB08uLL);
  *(v14 + 8) = v15;
  if (!v15)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    exception[1] = "Out of memory";
    *(exception + 16) = 0;
  }

  result = memcpy(v15, __s2, v4);
  *(this + 8) = 1;
  return result;
}

uint64_t PSIR_FileWriter::DeleteImgRsrc(uint64_t this, unsigned int a2)
{
  v9 = a2;
  v2 = this + 40;
  v3 = *(this + 40);
  if (v3)
  {
    v4 = this;
    this += 32;
    v5 = v2;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= a2)
    {
      this = std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__erase_unique<unsigned short>(this, &v9);
      *(v4 + 8) = 1;
      if (v9 != 1060)
      {
        *(v4 + 9) = 1;
      }
    }
  }

  return this;
}

uint64_t PSIR_FileWriter::IsLegacyChanged(PSIR_FileWriter *this)
{
  if (*(this + 8) == 1)
  {
    if (*(this + 9))
    {
      return 1;
    }

    v2 = *(this + 4);
    if (v2 != (this + 40))
    {
      while (*(v2 + 40) != 1 || *(v2 + 21) == 1060)
      {
        v3 = *(v2 + 1);
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = *(v2 + 2);
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
        if (v4 == (this + 40))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

void PSIR_FileWriter::ParseMemoryResources(char **this, char *a2, unsigned int a3, char a4)
{
  PSIR_FileWriter::DeleteExistingInfo(this);
  *(this + 10) = 1;
  if (!a3)
  {
    return;
  }

  if ((a4 & 1) == 0)
  {
    this[3] = a2;
    if (*(this + 12))
    {
      PSIR_FileWriter::ParseMemoryResources();
    }

    v8 = a3;
    goto LABEL_8;
  }

  if (a3 >= 0x6400001)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 209;
    v31 = "Outrageous length for memory-based PSIR";
    goto LABEL_44;
  }

  v8 = a3;
  v9 = malloc_type_malloc(a3, 0x100004077774924uLL);
  this[3] = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v31 = "Out of memory";
LABEL_44:
    exception[1] = v31;
    *(exception + 16) = 0;
  }

  memcpy(v9, a2, a3);
  *(this + 12) = 1;
  a2 = this[3];
LABEL_8:
  *(this + 4) = a3;
  v10 = &a2[v8];
  v11 = &a2[v8 - 12];
  if (a2 <= v11)
  {
    v12 = this + 5;
    do
    {
      v13 = a2[6];
      v14 = &a2[((v13 + 2) & 0x1FE) + 6];
      if (v14 > v10 - 1)
      {
        break;
      }

      v17 = *v14;
      v16 = v14 + 1;
      v15 = v17;
      v18 = bswap32(v17);
      if (v18 > a3 || v16 > &v10[-v18])
      {
        break;
      }

      v20 = this[3];
      v21 = v16 + ((v18 + 1) & 0xFFFFFFFE);
      if (*a2 == 1296646712)
      {
        v22 = bswap32(*(a2 + 2)) >> 16;
        LOWORD(v34) = 0;
        v35 = 0u;
        WORD1(v34) = v22;
        DWORD1(v34) = v18;
        *(&v34 + 1) = v16;
        LODWORD(v35) = v16 - v20;
        if (v13)
        {
          *(&v35 + 1) = a2 + 6;
        }

        v23 = *v12;
        if (!*v12)
        {
          goto LABEL_27;
        }

        v24 = this + 5;
        do
        {
          v25 = *(v23 + 16);
          v26 = v25 >= v22;
          v27 = v25 < v22;
          if (v26)
          {
            v24 = v23;
          }

          v23 = *&v23[8 * v27];
        }

        while (v23);
        if (v24 != v12 && v22 >= *(v24 + 16))
        {
          if (v15 && !*(v24 + 11))
          {
            if ((*(v24 + 41) & 1) != 0 || *(v24 + 40) == 1)
            {
              v28 = v24[6];
              if (v28)
              {
                free(v28);
                v24[6] = 0;
              }
            }

            v29 = v35;
            *(v24 + 5) = v34;
            *(v24 + 7) = v29;
            *(&v34 + 1) = 0;
            *(&v35 + 1) = 0;
          }
        }

        else
        {
LABEL_27:
          LOWORD(v32) = v22;
          v33[0] = v34;
          v33[1] = v35;
          std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(this + 4, this + 5, &v32, &v32);
          PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v33);
        }

        PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(&v34);
      }

      else
      {
        if ((v21 - a2))
        {
          PSIR_FileWriter::ParseMemoryResources();
        }

        LODWORD(v32) = a2 - v20;
        HIDWORD(v32) = v21 - a2;
        std::vector<PSIR_FileWriter::OtherRsrcInfo>::push_back[abi:fe200100]((this + 7), &v32);
      }

      a2 = v21;
    }

    while (v21 <= v11);
  }
}

void sub_18618ADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((v13 + 8));
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(va);
  _Unwind_Resume(a1);
}

void std::vector<PSIR_FileWriter::OtherRsrcInfo>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void PSIR_FileWriter::ParseFileResources(PSIR_FileWriter *a1, uint64_t a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  PSIR_FileWriter::DeleteExistingInfo(a1);
  v37 = a1;
  *(a1 + 11) = 1;
  if (a3)
  {
    v6 = (*(*a2 + 16))(a2, 0, 1) + a3;
    v44 = 0;
    memset(__src, 0, sizeof(__src));
    v36 = v6;
    if ((*(*a2 + 16))(a2, 0, 1) < v6)
    {
      v35 = (a1 + 40);
      while (1)
      {
        v7 = (*(*a2 + 24))(a2);
        if (v7 - (*(*a2 + 16))(a2, 0, 1) < 12)
        {
          return;
        }

        v8 = (*(*a2 + 16))(a2, 0, 1);
        LODWORD(v39) = 0;
        (**a2)(a2, &v39, 4, 1);
        v9 = v39;
        LOWORD(v39) = 0;
        (**a2)(a2, &v39, 2, 1);
        v38 = v39;
        LOBYTE(v39) = 0;
        (**a2)(a2, &v39, 1, 1);
        v10 = v39;
        v11 = (*(*a2 + 24))(a2);
        v12 = (v10 + 2) & 0x1FE;
        if (v11 - (*(*a2 + 16))(a2, 0, 1) < v12 + 4)
        {
          return;
        }

        LOBYTE(__src[0]) = v10;
        (**a2)(a2, __src + 1, (v12 - 1), 1);
        LODWORD(v39) = 0;
        (**a2)(a2, &v39, 4, 1);
        v13 = v39;
        v14 = (*(*a2 + 24))(a2);
        v15 = bswap32(v13);
        v16 = (v15 + 1) & 0xFFFFFFFE;
        if (v14 - (*(*a2 + 16))(a2, 0, 1) < v16)
        {
          return;
        }

        v17 = (*(*a2 + 16))(a2, 0, 1);
        v18 = v17;
        v19 = v17 + v16;
        if (v9 == 1296646712)
        {
          break;
        }

        LODWORD(v39) = v8;
        HIDWORD(v39) = v19 - v8;
        std::vector<PSIR_FileWriter::OtherRsrcInfo>::push_back[abi:fe200100](v37 + 56, &v39);
        (*(*a2 + 16))(a2, v19, 0);
LABEL_30:
        if ((*(*a2 + 16))(a2, 0, 1) >= v36)
        {
          return;
        }
      }

      v20 = __rev16(v38);
      v41 = 0u;
      v42 = 0u;
      BYTE1(v41) = 1;
      WORD1(v41) = v20;
      DWORD1(v41) = v15;
      LODWORD(v42) = 0;
      v21 = *v35;
      if (!*v35)
      {
        goto LABEL_16;
      }

      v22 = v35;
      do
      {
        v23 = *(v21 + 32);
        v24 = v23 >= v20;
        v25 = v23 < v20;
        if (v24)
        {
          v22 = v21;
        }

        v21 = *(v21 + 8 * v25);
      }

      while (v21);
      if (v22 != v35 && v20 >= *(v22 + 32))
      {
        if (*(v22 + 44))
        {
          v31 = 1;
        }

        else
        {
          v31 = v13 == 0;
        }

        if (v31)
        {
          goto LABEL_28;
        }

        if ((*(v22 + 41) & 1) != 0 || *(v22 + 40) == 1)
        {
          v32 = *(v22 + 48);
          if (v32)
          {
            free(v32);
            *(v22 + 48) = 0;
          }
        }

        v33 = v42;
        *(v22 + 40) = v41;
        *(v22 + 56) = v33;
        *(&v41 + 1) = 0;
        *(&v42 + 1) = 0;
      }

      else
      {
LABEL_16:
        LOWORD(v39) = v20;
        v40[0] = v41;
        v40[1] = v42;
        v22 = std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(v37 + 4, v35, &v39, &v39);
        PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(v40);
      }

      *(v22 + 56) = v18;
      if (v10)
      {
        v26 = malloc_type_malloc((v10 + 2) & 0x1FE, 0x100004077774924uLL);
        *(v22 + 64) = v26;
        if (!v26)
        {
          goto LABEL_44;
        }

        memcpy(v26, __src, (v10 + 2) & 0x1FE);
      }

      if (v38)
      {
        v27 = &word_1862F1C56;
        do
        {
          v28 = *v27++;
          v29 = v28 == v20;
        }

        while (v28 > v20);
        if (v29)
        {
          v30 = malloc_type_malloc((v15 + 1) & 0xFFFFFFFE, 0xFCD8C27AuLL);
          *(v22 + 48) = v30;
          if (!v30)
          {
LABEL_44:
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 15;
            exception[1] = "Out of memory";
            *(exception + 16) = 0;
          }

          (**a2)(a2, v30, (v15 + 1) & 0xFFFFFFFE, 1);
          goto LABEL_29;
        }
      }

LABEL_28:
      (*(*a2 + 16))(a2, v19, 0);
LABEL_29:
      PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(&v41);
      goto LABEL_30;
    }
  }
}

void sub_18618B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(va);
  _Unwind_Resume(a1);
}

uint64_t PSIR_FileWriter::UpdateMemoryResources(PSIR_FileWriter *this, void **a2)
{
  if (*(this + 11) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v37 = "Not memory based";
    goto LABEL_49;
  }

  v3 = *(this + 4);
  v4 = this + 40;
  if (v3 == this + 40)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v5 + ((*(v3 + 11) + 1) & 0xFFFFFFFE) + 10;
      v7 = *(v3 + 8);
      if (v7)
      {
        v5 = ((*v7 + 2) & 0x1FE) + v6;
      }

      else
      {
        v5 = v6 + 2;
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  v11 = *(this + 7);
  v12 = *(this + 8) - v11;
  if (v12)
  {
    v13 = v12 >> 3;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 4);
    do
    {
      v15 = *v14;
      v14 += 2;
      v5 += v15;
      --v13;
    }

    while (v13);
  }

  v16 = v5;
  v17 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 15;
    v37 = "Out of memory";
    goto LABEL_49;
  }

  v18 = v17;
  v19 = *(this + 4);
  v20 = v17;
  if (v19 != v4)
  {
    v21 = &v17[v16];
    v20 = v17;
    do
    {
      *v20 = 1296646712;
      *(v20 + 2) = bswap32(*(v19 + 21)) >> 16;
      v22 = *(v19 + 8);
      if (v22)
      {
        v23 = *v22;
        if (!*v22)
        {
          PSIR_FileWriter::UpdateMemoryResources();
        }

        v24 = v20 + 6;
        if (v21 - v24 < v23 + 1)
        {
          goto LABEL_48;
        }

        memcpy(v24, v22, v23 + 1);
        v25 = &v24[v23 + 1];
        if ((v23 & 1) == 0)
        {
          *v25++ = 0;
        }
      }

      else
      {
        *(v20 + 3) = 0;
        v25 = v20 + 8;
      }

      *v25 = bswap32(*(v19 + 11));
      v26 = v25 + 4;
      v27 = *(v19 + 11);
      if (v21 - v26 < v27)
      {
        goto LABEL_48;
      }

      memcpy(v26, *(v19 + 6), v27);
      v28 = *(v19 + 11);
      v20 = &v26[v28];
      if (v28)
      {
        *v20++ = 0;
      }

      v29 = *(v19 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v19 + 2);
          v10 = *v30 == v19;
          v19 = v30;
        }

        while (!v10);
      }

      v19 = v30;
    }

    while (v30 != v4);
  }

  v31 = *(this + 7);
  if (*(this + 8) != v31)
  {
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v34 = *(v31 + v32 + 4);
      if (&v18[v16] - v20 < v34)
      {
        break;
      }

      memcpy(v20, (*(this + 3) + *(v31 + v32)), v34);
      v20 += v34;
      ++v33;
      v31 = *(this + 7);
      v32 += 8;
      if (v33 >= (*(this + 8) - v31) >> 3)
      {
        goto LABEL_42;
      }
    }

LABEL_48:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v37 = "Buffer overrun";
LABEL_49:
    exception[1] = v37;
    *(exception + 16) = 0;
  }

LABEL_42:
  if (v20 != &v18[v16])
  {
    PSIR_FileWriter::UpdateMemoryResources();
  }

  (*(*this + 40))(this, v18, v16, 0);
  *(this + 12) = v16 != 0;
  if (a2)
  {
    *a2 = v18;
  }

  return v16;
}

uint64_t PSIR_FileWriter::UpdateFileResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, XMP_ProgressTracker *this, __n128 a7)
{
  v45 = 0;
  if (*(a1 + 10) == 1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "Not file based";
    *(exception + 16) = 0;
  }

  v10 = (a1 + 40);
  if (this)
  {
    v11 = *(a1 + 32);
    v12 = 8.0;
    if (v11 != v10)
    {
      do
      {
        v13 = v11[1];
        v14 = v11;
        if (v13)
        {
          do
          {
            v15 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = v14[2];
            v16 = *v15 == v14;
            v14 = v15;
          }

          while (!v16);
        }

        v12 = v12 + (*(v11 + 11) + 12);
        v11 = v15;
      }

      while (v15 != v10);
    }

    v17 = *(a1 + 56);
    v18 = *(a1 + 64) - v17;
    if (v18)
    {
      v19 = v18 >> 3;
      if (v19 <= 1)
      {
        v19 = 1;
      }

      v20 = (v17 + 4);
      do
      {
        v21 = *v20;
        v20 += 2;
        v12 = v12 + v21;
        --v19;
      }

      while (v19);
    }

    if ((*(this + 32) & 1) == 0)
    {
      PSIR_FileWriter::UpdateFileResources();
    }

    a7.n128_f32[0] = XMP_ProgressTracker::AddTotalWork(this, v12);
  }

  v44 = 0;
  v22 = (*(*a3 + 16))(a3, 0, 1, a4, a5, a7);
  (*(*a3 + 8))(a3, &v44, 4);
  v43 = 1296646712;
  v23 = *(a1 + 32);
  if (v23 != v10)
  {
    do
    {
      WORD2(v43) = bswap32(*(v23 + 21)) >> 16;
      (*(*a3 + 8))(a3, &v43, 6);
      v44 += 6;
      v24 = v23[8];
      if (v24)
      {
        if (!*v24)
        {
          goto LABEL_40;
        }

        v25 = (*v24 + 2) & 0x1FE;
        (*(*a3 + 8))(a3);
        v26 = v44 + v25;
      }

      else
      {
        (*(*a3 + 8))(a3, &v45, 2);
        v26 = v44 + 2;
      }

      v44 = v26;
      v42 = bswap32(*(v23 + 11));
      (*(*a3 + 8))(a3, &v42, 4);
      v27 = v23[6];
      if (v27)
      {
        (*(*a3 + 8))(a3, v27, *(v23 + 11));
      }

      else
      {
        (*(*a2 + 16))(a2, *(v23 + 14), 0);
        XIO::Copy(a2, a3, *(v23 + 11), 0, 0, v28, v29);
      }

      v30 = *(v23 + 11);
      v44 += v30 + 4;
      if (v30)
      {
        (*(*a3 + 8))(a3, &v45, 1);
        ++v44;
      }

      v31 = v23[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v23[2];
          v16 = *v32 == v23;
          v23 = v32;
        }

        while (!v16);
      }

      v23 = v32;
    }

    while (v32 != v10);
  }

  v33 = *(a1 + 56);
  if (*(a1 + 64) != v33)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      (*(*a2 + 16))(a2, *(v33 + v34), 0);
      v38 = *(a1 + 56);
      if (v35 >= (*(a1 + 64) - v38) >> 3)
      {
        break;
      }

      XIO::Copy(a2, a3, *(v38 + v34 + 4), 0, 0, v36, v37);
      v33 = *(a1 + 56);
      v39 = (*(a1 + 64) - v33) >> 3;
      if (v39 <= v35)
      {
        break;
      }

      v44 += *(v33 + v34 + 4);
      ++v35;
      v34 += 8;
      if (v35 >= v39)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    PSIR_FileWriter::UpdateFileResources();
  }

LABEL_38:
  (*(*a3 + 16))(a3, v22, 0);
  v42 = bswap32(v44);
  (*(*a3 + 8))(a3, &v42, 4);
  (*(*a3 + 16))(a3, 0, 2);
  return v44;
}

void PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo(PSIR_FileWriter::InternalRsrcInfo *this)
{
  v2 = *(this + 1);
  if ((v2 & 1) != 0 || *this == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      free(v3);
      *(this + 1) = 0;
      if ((*(this + 1) & 1) == 0)
      {
        return;
      }
    }

    else if (!v2)
    {
      return;
    }

    v4 = *(this + 3);
    if (v4)
    {
      free(v4);
      *(this + 3) = 0;
    }
  }
}

void std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::destroy(a1, a2[1]);
    PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((a2 + 5));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_FileWriter::InternalRsrcInfo> const&>(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__find_equal<unsigned short>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_FileWriter::InternalRsrcInfo>>>::__erase_unique<unsigned short>(uint64_t **a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = *(v2 + 16);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < *(v4 + 16))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
  PSIR_FileWriter::InternalRsrcInfo::~InternalRsrcInfo((v4 + 5));
  operator delete(v4);
  return 1;
}

void PSIR_FileWriter::ParseMemoryResources()
{
  __assert_rtn("ParseMemoryResources", "PSIR_FileWriter.cpp", 198, "! this->ownedContent");
}

{
  __assert_rtn("ParseMemoryResources", "PSIR_FileWriter.cpp", 245, "(rsrcLength & 1) == 0");
}

void PSIR_FileWriter::UpdateMemoryResources()
{
  __assert_rtn("UpdateMemoryResources", "PSIR_FileWriter.cpp", 433, "nameLen > 0");
}

{
  __assert_rtn("UpdateMemoryResources", "PSIR_FileWriter.cpp", 469, "rsrcPtr == (newContent + newLength)");
}

void PSIR_FileWriter::UpdateFileResources()
{
  __assert_rtn("UpdateFileResources", "PSIR_FileWriter.cpp", 516, "progressTracker->WorkInProgress()");
}

{
  __assert_rtn("UpdateFileResources", "PSIR_FileWriter.cpp", 559, "nameLen > 0");
}

void *AdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63536D6C4E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63536D6C4E6F6465, a3, exception);
      }

      return (this + *(*this - 632));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::INode_I::GetInterfacePointerInternal((this + *(*this - 640)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63536D6C4E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointer(AdobeXMPCore_Int::ISimpleNode_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::ISimpleNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ISimpleNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::ISimpleNode_I::getInterfacePointer(AdobeXMPCore_Int::ISimpleNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::ISimpleNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::ISimpleNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::ISimpleNode_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18618C720(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18618C704);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ISimpleNode_v1,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::ISimpleNode_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::ISimpleNode_v1,BOOL>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

void WebPInitAlphaProcessingNEON()
{
  WebPApplyAlphaMultiply = ApplyAlphaMultiply_NEON;
  WebPDispatchAlpha = DispatchAlpha_NEON;
  WebPDispatchAlphaToGreen = DispatchAlphaToGreen_NEON;
  WebPExtractAlpha = ExtractAlpha_NEON;
  WebPExtractGreen = ExtractGreen_NEON;
}

char *ApplyAlphaMultiply_NEON(char *result, int a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v5 = 3;
    if (a2)
    {
      v5 = 0;
    }

    v6 = a5;
    do
    {
      if (a2)
      {
        if (a3 >= 8)
        {
          v7 = result;
          for (i = 8; i <= a3; i += 8)
          {
            v26 = vld4_s8(v7);
            v9 = vmull_u8(v26.val[1], v26.val[0]);
            v10 = vmull_u8(v26.val[2], v26.val[0]);
            v11 = vmull_u8(v26.val[3], v26.val[0]);
            v26.val[1] = vsubhn_s16(vshrq_n_u16(v9, 8uLL), vmvnq_s8(v9));
            v26.val[2] = vsubhn_s16(vshrq_n_u16(v10, 8uLL), vmvnq_s8(v10));
            v26.val[3] = vsubhn_s16(vshrq_n_u16(v11, 8uLL), vmvnq_s8(v11));
            vst4_s8(v7, v26);
            v7 += 32;
          }

LABEL_14:
          v12 = a3 & 0x7FFFFFF8;
          goto LABEL_15;
        }
      }

      else if (a3 >= 8)
      {
        v13 = result;
        for (j = 8; j <= a3; j += 8)
        {
          v27 = vld4_s8(v13);
          v15 = vmull_u8(v27.val[1], v27.val[3]);
          v16 = vmull_u8(v27.val[2], v27.val[3]);
          v17 = vmull_u8(v27.val[0], v27.val[3]);
          v27.val[1] = vsubhn_s16(vshrq_n_u16(v15, 8uLL), vmvnq_s8(v15));
          v27.val[2] = vsubhn_s16(vshrq_n_u16(v16, 8uLL), vmvnq_s8(v16));
          v27.val[0] = vsubhn_s16(vshrq_n_u16(v17, 8uLL), vmvnq_s8(v17));
          vst4_s8(v13, v27);
          v13 += 32;
        }

        goto LABEL_14;
      }

      v12 = 0;
LABEL_15:
      if (v12 < a3)
      {
        v18 = &result[a2 != 0];
        v19 = 4 * v12;
        do
        {
          v20 = v19;
          v21 = result[v5 + v19];
          if (v21 != 255)
          {
            v22 = 32897 * v21;
            v18[v20] = (v22 * v18[v20]) >> 23;
            v18[(v20 + 1)] = (v22 * v18[(v20 + 1)]) >> 23;
            v18[(v20 + 2)] = (v22 * v18[(v20 + 2)]) >> 23;
          }

          v19 = v20 + 4;
          ++v12;
        }

        while (v12 < a3);
      }

      result += v6;
      v25 = __OFSUB__(a4, 1);
      v23 = a4 == 1;
      v24 = --a4 < 0;
    }

    while (!(v24 ^ v25 | v23));
  }

  return result;
}

BOOL DispatchAlpha_NEON(uint64_t a1, int a2, int a3, int a4, char *a5, int a6)
{
  if (a4 < 1)
  {
    v7 = -1;
    v15 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    v8 = 255;
    do
    {
      if (a3 < 9)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v17 = vld4_s8(v10);
          v17.val[0] = *(a1 + v9);
          vst4_s8(v10, v17);
          v10 += 32;
          v7 = vand_s8(v17.val[0], v7);
          v11 = v9 + 16;
          v9 += 8;
        }

        while (v11 < a3);
        LODWORD(v12) = ((a3 - 9) & 0xFFFFFFF8) + 8;
      }

      if (v12 < a3)
      {
        v13 = 4 * v12;
        v12 = v12;
        do
        {
          v14 = *(a1 + v12);
          a5[v13 & 0xFFFFFFFC] = v14;
          v8 &= v14;
          ++v12;
          v13 += 4;
        }

        while (v12 < a3);
      }

      a1 += a2;
      a5 += a6;
      ++v6;
    }

    while (v6 != a4);
    v15 = 16843009 * v8;
  }

  return (v15 & v7.i32[0] & v7.i32[1]) != -1;
}

uint64_t DispatchAlphaToGreen_NEON(uint64_t result, int a2, int a3, int a4, char *a5, int a6)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (a3 >= 8)
      {
        v9 = 0;
        v10 = a5;
        do
        {
          v11 = *(result + v9);
          v12 = 0;
          v13 = 0;
          vst4_s8(v10, *&v7);
          v10 += 32;
          v14 = v9 + 16;
          v9 += 8;
        }

        while (v14 <= a3);
        LODWORD(v8) = a3 & 0x7FFFFFF8;
      }

      else
      {
        LODWORD(v8) = 0;
      }

      if (v8 < a3)
      {
        v8 = v8;
        do
        {
          *&a5[4 * v8] = *(result + v8) << 8;
          ++v8;
        }

        while (v8 < a3);
      }

      result += a2;
      ++v6;
      a5 += 4 * a6;
    }

    while (v6 != a4);
  }

  return result;
}

BOOL ExtractAlpha_NEON(const char *a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  if (a4 < 1)
  {
    v7 = -1;
    v16 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    v8 = 255;
    do
    {
      if (a3 < 9)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v11 = vld4_s8(v10);
          v10 += 32;
          *(a5 + v9) = v11;
          v7 = vand_s8(v11, v7);
          v12 = v9 + 16;
          v9 += 8;
        }

        while (v12 < a3);
        LODWORD(v13) = ((a3 - 9) & 0xFFFFFFF8) + 8;
      }

      if (v13 < a3)
      {
        v14 = 4 * v13;
        v13 = v13;
        do
        {
          v15 = a1[v14 & 0xFFFFFFFC];
          *(a5 + v13) = v15;
          v8 &= v15;
          ++v13;
          v14 += 4;
        }

        while (v13 < a3);
      }

      a1 += a2;
      a5 += a6;
      ++v6;
    }

    while (v6 != a4);
    v16 = 16843009 * v8;
  }

  return (vand_s8(vdup_lane_s32(v7, 1), v7).u32[0] & v16) == -1;
}

const char *ExtractGreen_NEON(const char *result, int8x16_t *a2, int a3)
{
  if (a3 >= 16)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF0;
    v4 = 16;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = vld4q_s8(v5);
      v5 += 64;
      *v6++ = v7.val[1];
      v4 += 16;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v3 = v3;
    do
    {
      a2->i8[v3] = BYTE1(*&result[4 * v3]);
      ++v3;
    }

    while (v3 < a3);
  }

  return result;
}

uint64_t VP8InitBitReader(uint64_t result, unint64_t *a2, unint64_t a3)
{
  if (!result)
  {
    VP8InitBitReader_cold_3();
  }

  if (!a2)
  {
    VP8InitBitReader_cold_2();
  }

  if (a3 >> 31)
  {
    VP8InitBitReader_cold_1();
  }

  *result = 0;
  *(result + 8) = 0xFFFFFFF8000000FELL;
  *(result + 40) = 0;
  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  v3 = (a2 + a3 - 7);
  if (a3 <= 7)
  {
    v3 = a2;
  }

  *(result + 32) = v3;
  if (v3 <= a2)
  {

    return VP8LoadFinalBytes(result, a2);
  }

  else
  {
    v4 = *a2;
    *(result + 16) = a2 + 7;
    *result = bswap64(v4) >> 8;
    *(result + 12) = 48;
  }

  return result;
}

uint64_t VP8LoadFinalBytes(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = *(result + 16)) == 0)
  {
    VP8LoadFinalBytes_cold_1();
  }

  if (v2 >= *(result + 24))
  {
    if (*(result + 40))
    {
      *(result + 12) = 0;
    }

    else
    {
      *result <<= 8;
      *(result + 12) += 8;
      *(result + 40) = 1;
    }
  }

  else
  {
    *(result + 12) += 8;
    *(result + 16) = v2 + 1;
    *result = *v2 | (*result << 8);
  }

  return result;
}

uint64_t VP8GetValue(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = a2 + 1;
  do
  {
    if (v4 < 0)
    {
      v7 = *(a1 + 16);
      if (!v7)
      {
        VP8GetValue_cold_1();
      }

      if (v7 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1, a2);
        v4 = *(a1 + 12);
      }

      else
      {
        v8 = *v7;
        *(a1 + 16) = v7 + 7;
        *(&v9 + 1) = *a1;
        *&v9 = bswap64(v8);
        *a1 = v9 >> 8;
        v4 += 56;
      }
    }

    v10 = (v5 >> 1) & 0xFFFFFF;
    v11 = v4;
    v12 = *a1 >> v4;
    if (v10 >= v12)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = v5 - v10;
      *a1 -= (v10 + 1) << v11;
    }

    v14 = v10 < v12;
    v15 = __clz(v13) ^ 0x18;
    v16 = v13 << v15;
    v4 = v11 - v15;
    v5 = v16 - 1;
    *(a1 + 8) = v16 - 1;
    *(a1 + 12) = v4;
    v3 = (v14 << (v6-- - 2)) | v3;
  }

  while (v6 > 1);
  return v3;
}

uint64_t VP8GetSignedValue(uint64_t a1, uint64_t a2)
{
  Value = VP8GetValue(a1, a2);
  if (VP8GetValue(a1, 1))
  {
    return -Value;
  }

  else
  {
    return Value;
  }
}

void *VP8LInitBitReader(void *result, unsigned __int8 *a2, unint64_t a3)
{
  if (!result)
  {
    VP8LInitBitReader_cold_3();
  }

  if (!a2)
  {
    VP8LInitBitReader_cold_2();
  }

  if (a3 >= 0xFFFFFFF8)
  {
    VP8LInitBitReader_cold_1();
  }

  result[2] = a3;
  *result = 0;
  result[4] = 0;
  v3 = 8;
  if (a3 < 8)
  {
    v3 = a3;
  }

  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = *v6++;
      v5 |= v7 << v4;
      v4 += 8;
    }

    while (8 * v3 != v4);
  }

  else
  {
    v5 = 0;
  }

  result[3] = v3;
  *result = v5;
  result[1] = a2;
  return result;
}

double VP8LDoFillBitWindow(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  if (v3 <= 31)
  {
    VP8LDoFillBitWindow_cold_1();
  }

  v4 = *(result + 24);
  if ((v4 + 8) >= *(result + 16))
  {

    return ShiftBytes(result);
  }

  else
  {
    v5 = *result;
    v6 = *(result + 8);
    *result >>= 32;
    *(result + 32) = v3 - 32;
    *(&v7 + 1) = *(v6 + v4);
    *&v7 = v5;
    *result = v7 >> 32;
    *(result + 24) = v4 + 4;
  }

  return v8;
}

double ShiftBytes(unint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = a1[2];
  v2 = a1[3];
  if (v1 < 8)
  {
    v10 = 1;
  }

  else
  {
    if (v2 <= v3)
    {
      v4 = a1[2];
    }

    else
    {
      v4 = a1[3];
    }

    while (v4 != v2)
    {
      v5 = *a1;
      v6 = a1[1];
      *a1 >>= 8;
      *(&v7 + 1) = *(v6 + v2);
      *&v7 = v5;
      *a1 = v7 >> 8;
      a1[3] = ++v2;
      v8 = v1 - 8;
      *(a1 + 8) = v1 - 8;
      v9 = v1 <= 15;
      v1 -= 8;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    v2 = v4;
    v8 = v1;
LABEL_11:
    v10 = v8 < 65;
  }

  if (v2 > v3)
  {
    ShiftBytes_cold_1();
  }

  v11 = v2 != v3 || v10;
  if (*(a1 + 9) || (v11 & 1) == 0)
  {
    *&result = 0x100000000;
    a1[4] = 0x100000000;
  }

  return result;
}

uint64_t VP8LReadBits(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    VP8LReadBits_cold_1();
  }

  if (a2 > 0x18 || *(a1 + 36))
  {
    v3 = 0;
    *(a1 + 32) = 0x100000000;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = kBitMask[a2] & (*a1 >> v2);
    *(a1 + 32) = v2 + a2;
    ShiftBytes(a1);
  }

  return v3;
}

void VP8DspInit(uint64_t result, uint64_t a2, const char *a3)
{
  if (VP8DspInit_VP8DspInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    _cg_jpeg_mem_term(result, a2, a3);
    VP8TransformUV = TransformUV_C;
    VP8TransformDCUV = TransformDCUV_C;
    qword_1EA8E1608 = HE4_C;
    qword_1EA8E1618 = VR4_C;
    qword_1EA8E1628 = VL4_C;
    qword_1EA8E1630 = HD4_C;
    qword_1EA8E1638 = HU4_C;
    VP8DitherCombine8x8 = DitherCombine8x8_C;
    VP8DspInitNEON();
    if (!VP8TransformWHT)
    {
      VP8DspInit_cold_43();
    }

    if (!VP8Transform)
    {
      VP8DspInit_cold_42();
    }

    if (!VP8TransformDC)
    {
      VP8DspInit_cold_41();
    }

    if (!VP8TransformAC3)
    {
      VP8DspInit_cold_40();
    }

    if (!VP8TransformUV)
    {
      VP8DspInit_cold_39();
    }

    if (!VP8TransformDCUV)
    {
      VP8DspInit_cold_38();
    }

    if (!VP8VFilter16)
    {
      VP8DspInit_cold_37();
    }

    if (!VP8HFilter16)
    {
      VP8DspInit_cold_36();
    }

    if (!VP8VFilter8)
    {
      VP8DspInit_cold_35();
    }

    if (!VP8HFilter8)
    {
      VP8DspInit_cold_34();
    }

    if (!VP8VFilter16i)
    {
      VP8DspInit_cold_33();
    }

    if (!VP8HFilter16i)
    {
      VP8DspInit_cold_32();
    }

    if (!VP8VFilter8i)
    {
      VP8DspInit_cold_31();
    }

    if (!VP8HFilter8i)
    {
      VP8DspInit_cold_30();
    }

    if (!VP8SimpleVFilter16)
    {
      VP8DspInit_cold_29();
    }

    if (!VP8SimpleHFilter16)
    {
      VP8DspInit_cold_28();
    }

    if (!VP8SimpleVFilter16i)
    {
      VP8DspInit_cold_27();
    }

    if (!VP8SimpleHFilter16i)
    {
      VP8DspInit_cold_26();
    }

    if (!VP8PredLuma4[0])
    {
      VP8DspInit_cold_25();
    }

    if (!qword_1EA8E15F8)
    {
      VP8DspInit_cold_24();
    }

    if (!qword_1EA8E1600)
    {
      VP8DspInit_cold_23();
    }

    if (!qword_1EA8E1608)
    {
      VP8DspInit_cold_22();
    }

    if (!qword_1EA8E1610)
    {
      VP8DspInit_cold_21();
    }

    if (!qword_1EA8E1618)
    {
      VP8DspInit_cold_20();
    }

    if (!qword_1EA8E1620)
    {
      VP8DspInit_cold_19();
    }

    if (!qword_1EA8E1628)
    {
      VP8DspInit_cold_18();
    }

    if (!qword_1EA8E1630)
    {
      VP8DspInit_cold_17();
    }

    if (!qword_1EA8E1638)
    {
      VP8DspInit_cold_16();
    }

    if (!VP8PredLuma16[0])
    {
      VP8DspInit_cold_15();
    }

    if (!qword_1EA8E1648)
    {
      VP8DspInit_cold_14();
    }

    if (!qword_1EA8E1650)
    {
      VP8DspInit_cold_13();
    }

    if (!qword_1EA8E1658)
    {
      VP8DspInit_cold_12();
    }

    if (!qword_1EA8E1660)
    {
      VP8DspInit_cold_11();
    }

    if (!qword_1EA8E1668)
    {
      VP8DspInit_cold_10();
    }

    if (!qword_1EA8E1670)
    {
      VP8DspInit_cold_9();
    }

    if (!VP8PredChroma8[0])
    {
      VP8DspInit_cold_8();
    }

    if (!qword_1EA8E1680)
    {
      VP8DspInit_cold_7();
    }

    if (!qword_1EA8E1688)
    {
      VP8DspInit_cold_6();
    }

    if (!qword_1EA8E1690)
    {
      VP8DspInit_cold_5();
    }

    if (!qword_1EA8E1698)
    {
      VP8DspInit_cold_4();
    }

    if (!qword_1EA8E16A0)
    {
      VP8DspInit_cold_3();
    }

    if (!qword_1EA8E16A8)
    {
      VP8DspInit_cold_2();
    }

    if (!VP8DitherCombine8x8)
    {
      VP8DspInit_cold_1();
    }

    VP8DspInit_VP8DspInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

uint64_t TransformUV_C(uint64_t a1, uint64_t a2)
{
  VP8Transform(a1, a2, 1);
  v4 = VP8Transform;

  return v4(a1 + 64, a2 + 128, 1);
}

_WORD *TransformDCUV_C(_WORD *a1, uint64_t a2)
{
  if (*a1)
  {
    VP8TransformDC(a1, a2);
  }

  if (a1[16])
  {
    VP8TransformDC(a1 + 16, a2 + 4);
  }

  result = a1 + 32;
  if (a1[32])
  {
    result = VP8TransformDC(result, a2 + 128);
  }

  v6 = a1[48];
  v5 = a1 + 48;
  if (v6)
  {
    v7 = VP8TransformDC;

    return v7(v5, a2 + 132);
  }

  return result;
}

uint64_t HE4_C(uint64_t result)
{
  v1 = *(result - 1);
  v2 = *(result + 31);
  v3 = *(result + 63);
  v4 = *(result + 95);
  *result = 16843009 * ((v2 + 2 + *(result - 33) + 2 * v1) >> 2);
  *(result + 32) = 16843009 * ((v3 + 2 + v1 + 2 * v2) >> 2);
  *(result + 64) = 16843009 * ((v2 + 2 + 2 * v3 + v4) >> 2);
  *(result + 96) = 16843009 * ((v3 + 2 + v4 + 2 * v4) >> 2);
  return result;
}

_BYTE *VR4_C(_BYTE *result)
{
  v1 = *(result - 33);
  v2 = *(result - 32);
  v3 = *(result - 31);
  v4 = (v2 + v1 + 1) >> 1;
  v5 = (v2 + v3 + 1) >> 1;
  v6 = *(result - 1);
  v7 = result[31];
  v8 = v6 + 2;
  v9 = v6 + 2 + result[63] + 2 * v7;
  v10 = *(result - 30);
  result[65] = v4;
  *result = v4;
  v11 = (v3 + v10 + 1) >> 1;
  result[66] = v5;
  result[1] = v5;
  v12 = v1 + 2;
  v13 = v1 + 2 + v7 + 2 * v6;
  v14 = *(result - 29);
  result[67] = v11;
  result[2] = v11;
  result[3] = (v10 + v14 + 1) >> 1;
  result[96] = v9 >> 2;
  result[64] = v13 >> 2;
  v15 = (v8 + 2 * v1 + v2) >> 2;
  result[97] = v15;
  result[32] = v15;
  v16 = (v12 + 2 * v2 + v3) >> 2;
  result[98] = v16;
  result[33] = v16;
  v17 = (v2 + 2 * v3 + v10 + 2) >> 2;
  result[99] = v17;
  result[34] = v17;
  result[35] = (v3 + 2 * v10 + v14 + 2) >> 2;
  return result;
}

_BYTE *VL4_C(_BYTE *result)
{
  v1 = *(result - 32);
  v2 = *(result - 31);
  v3 = *(result - 30);
  v4 = (v2 + v3 + 1) >> 1;
  v5 = *(result - 29);
  v6 = *(result - 28);
  v7 = *(result - 27);
  *result = (v2 + v1 + 1) >> 1;
  result[64] = v4;
  result[1] = v4;
  v8 = (v3 + v5 + 1) >> 1;
  result[65] = v8;
  result[2] = v8;
  v9 = (v5 + v6 + 1) >> 1;
  v10 = v3 + 2;
  v11 = *(result - 26);
  result[66] = v9;
  result[3] = v9;
  v12 = (v3 + 2 + v1 + 2 * v2) >> 2;
  v13 = (v5 + 2 + v2 + 2 * v3) >> 2;
  v14 = *(result - 25);
  result[32] = v12;
  result[96] = v13;
  result[33] = v13;
  v15 = (v10 + 2 * v5 + v6) >> 2;
  result[97] = v15;
  result[34] = v15;
  v16 = (v5 + 2 + 2 * v6 + v7) >> 2;
  result[98] = v16;
  result[35] = v16;
  result[67] = (v6 + 2 * v7 + v11 + 2) >> 2;
  result[99] = (v7 + 2 * v11 + v14 + 2) >> 2;
  return result;
}

_BYTE *HD4_C(_BYTE *result)
{
  v1 = *(result - 1);
  v2 = result[31];
  v3 = *(result - 33);
  v4 = (v1 + v3 + 1) >> 1;
  v5 = (v1 + v2 + 1) >> 1;
  v6 = result[63];
  v7 = *(result - 32);
  v8 = (v2 + v6 + 1) >> 1;
  v9 = *(result - 31);
  result[34] = v4;
  *result = v4;
  v10 = *(result - 30);
  result[66] = v5;
  result[32] = v5;
  result[98] = v8;
  result[64] = v8;
  v11 = result[95];
  result[96] = (v6 + v11 + 1) >> 1;
  result[3] = (v7 + 2 * v9 + v10 + 2) >> 2;
  result[2] = (v3 + 2 * v7 + v9 + 2) >> 2;
  v12 = v1 + 2;
  v13 = (v1 + 2 + 2 * v3 + v7) >> 2;
  result[35] = v13;
  result[1] = v13;
  v14 = v2 + 2;
  v15 = (v2 + 2 + 2 * v1 + v3) >> 2;
  result[67] = v15;
  result[33] = v15;
  v16 = (v12 + v6 + 2 * v2) >> 2;
  result[99] = v16;
  result[65] = v16;
  result[97] = (v14 + v11 + 2 * v6) >> 2;
  return result;
}

int8x8_t HU4_C(uint64_t a1)
{
  v1 = *(a1 - 1);
  v2 = *(a1 + 31);
  v3 = *(a1 + 63);
  v4 = *(a1 + 95);
  *a1 = (v2 + v1 + 1) >> 1;
  v5 = (v2 + v3 + 1) >> 1;
  *(a1 + 32) = v5;
  *(a1 + 2) = v5;
  v6 = (v3 + v4 + 1) >> 1;
  *(a1 + 64) = v6;
  *(a1 + 34) = v6;
  *(a1 + 1) = (v3 + 2 + v1 + 2 * v2) >> 2;
  v7 = (v4 + v2 + 2 * v3 + 2) >> 2;
  *(a1 + 33) = v7;
  *(a1 + 3) = v7;
  v8 = (v3 + 2 + v4 + 2 * v4) >> 2;
  *(a1 + 65) = v8;
  *(a1 + 35) = v8;
  result = vdup_n_s8(v4);
  *(a1 + 96) = result.i32[0];
  *(a1 + 66) = v4;
  *(a1 + 67) = v4;
  return result;
}

uint64_t DitherCombine8x8_C(uint64_t result, uint8x8_t *a2, int a3)
{
  v3 = 0;
  v4.i64[0] = 0x7700000077;
  v4.i64[1] = 0x7700000077;
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  do
  {
    v6 = vmovl_u8(*(result + v3));
    v7 = vmovl_u8(*a2);
    *a2 = vmovn_s16(vuzp1q_s16(vminq_s32(vmaxq_s32(vsraq_n_s32(vmovl_u16(*v7.i8), vaddw_u16(v4, *v6.i8), 4uLL), 0), v5), vminq_s32(vmaxq_s32(vaddw_high_u16(vshrq_n_s32(vaddw_high_u16(v4, v6), 4uLL), v7), 0), v5)));
    a2 = (a2 + a3);
    v3 += 8;
  }

  while (v3 != 64);
  return result;
}

uint64_t VP8LPredictor10_C(_DWORD *a1, _DWORD *a2)
{
  v2 = (((*(a2 - 1) ^ *a1) >> 1) & 0x7F7F7F7F) + (*(a2 - 1) & *a1);
  v3 = (((a2[1] ^ *a2) >> 1) & 0x7F7F7F7F) + (a2[1] & *a2);
  return (((v3 ^ v2) >> 1) & 0x7F7F7F7F) + (v3 & v2);
}

uint64_t VP8LPredictor11_C(unsigned int *a1, unsigned int *a2)
{
  v3 = *(a2 - 1);
  v2 = *a2;
  v4 = *a1;
  v5 = HIBYTE(*a1) - HIBYTE(v3);
  v6 = HIBYTE(*a2) - HIBYTE(v3);
  if (v5 < 0)
  {
    v5 = HIBYTE(v3) - HIBYTE(*a1);
  }

  if (v6 < 0)
  {
    v6 = HIBYTE(v3) - HIBYTE(*a2);
  }

  v7 = BYTE2(v4) - BYTE2(v3);
  v8 = BYTE2(v2) - BYTE2(v3);
  if (v7 < 0)
  {
    v7 = BYTE2(v3) - BYTE2(v4);
  }

  if (v8 < 0)
  {
    v8 = BYTE2(v3) - BYTE2(v2);
  }

  v9 = BYTE1(v4) - BYTE1(v3);
  v10 = BYTE1(v2) - BYTE1(v3);
  if (v9 < 0)
  {
    v9 = BYTE1(v3) - BYTE1(v4);
  }

  if (v10 < 0)
  {
    v10 = BYTE1(v3) - BYTE1(v2);
  }

  v11 = *a1 - v3;
  v12 = *a2 - v3;
  if (v11 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = -v11;
  }

  if (v12 < 0)
  {
    v12 = -v12;
  }

  if (v13 + v5 + v9 - (v6 + v12 + v10 + v8) + v7 >= 1)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t VP8LPredictor12_C(unsigned int *a1, uint64_t a2)
{
  v2 = *(a2 - 4);
  v3 = vshr_n_u32(v2, 0x18uLL);
  v4 = vand_s8(v2, 0xFF000000FFLL);
  v5 = vdup_n_s32(*a1);
  v6.i32[0] = *a1;
  v6.i32[1] = vshr_n_u32(v5, 0x18uLL).i32[1];
  v7 = vsub_s32(vadd_s32(vzip2_s32(v4, v3), v6), vzip1_s32(v4, v3));
  v8 = v7.u32[1];
  v9 = vcgt_u32(0x10000000100, v7);
  if ((v9.i8[4] & 1) == 0)
  {
    v8 = ~v7.i32[1] >> 24;
  }

  v10 = v7.i32[0];
  if ((v9.i8[0] & 1) == 0)
  {
    v10 = ~v7.i32[0] >> 24;
  }

  v11 = vsub_s32(vadd_s32(vand_s8(vshl_u32(vdup_lane_s32(v2, 1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vand_s8(vshl_u32(v5, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vand_s8(vshl_u32(vdup_lane_s32(v2, 0), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v12 = vshl_u32(vbsl_s8(vcgt_u32(0x10000000100, v11), v11, vshr_n_u32(vmvn_s8(v11), 0x18uLL)), 0x800000010);
  return v10 + (v8 << 24) + v12.i32[0] + v12.i32[1];
}

uint64_t VP8LPredictor13_C(_DWORD *a1, _DWORD *a2)
{
  v2 = *(a2 - 1);
  v3 = (((*a2 ^ *a1) >> 1) & 0x7F7F7F7F) + (*a2 & *a1);
  v4 = HIBYTE(v3) + ((HIBYTE(v3) - HIBYTE(v2) + (((HIBYTE(v3) - HIBYTE(v2)) & 0x8000) >> 15)) >> 1);
  if (v4 >= 0x100)
  {
    v4 = ~v4 >> 24;
  }

  v5 = ((v3 - v2 + (((v3 - v2) & 0x8000u) >> 15)) >> 1) + v3;
  v6 = vdup_n_s32(v3);
  if (v5 >= 0x100)
  {
    v7 = ~v5 >> 24;
  }

  else
  {
    v7 = ((v3 - v2 + (((v3 - v2) & 0x8000u) >> 15)) >> 1) + v3;
  }

  v8 = vand_s8(vshl_u32(v6, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v9 = vsub_s32(v8, vand_s8(vshl_u32(vdup_n_s32(v2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v10 = vadd_s32(v8, vhadd_s32(v9, vshr_n_u32(vand_s8(v9, 0xFFFF0000FFFFLL), 0xFuLL)));
  v11 = vshl_u32(vbsl_s8(vcgt_u32(0x10000000100, v10), v10, vshr_n_u32(vmvn_s8(v10), 0x18uLL)), 0x800000010);
  return v7 + (v4 << 24) + v11.i32[0] + v11.i32[1];
}

unsigned int *VP8LAddGreenToBlueAndRed_C(unsigned int *result, unsigned int a2, unsigned int *a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      v4 = *result++;
      *a3++ = ((v4 & 0xFF00FF) + BYTE1(v4) + (v4 >> 8 << 16)) & 0xFF00FF | v4 & 0xFF00FF00;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *VP8LTransformColorInverse_C(char *result, int *a2, unsigned int a3, unsigned int *a4)
{
  if (a3 >= 1)
  {
    v4 = *result;
    v5 = result[1];
    v6 = a3;
    v7 = result[2];
    do
    {
      v8 = *a2++;
      *a4++ = v8 & 0xFF00FF00 | (((((v8 >> 8) * v4) >> 5) + BYTE2(v8)) << 16) | (v8 + (((v8 >> 8) * v5) >> 5) + ((((((v8 >> 8) * v4) >> 5) + BYTE2(v8)) * v7) >> 5));
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t VP8LColorIndexInverseTransformAlpha(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5)
{
  v7 = *(result + 4);
  v6 = *(result + 8);
  v8 = *(result + 16);
  if (!v7)
  {
    return VP8LMapColor8b(a4, v8, a5, a2, a3, v6);
  }

  if (a2 < a3)
  {
    v9 = 8u >> v7;
    v10 = ~(-1 << v7);
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((v11 & v10) == 0)
          {
            v13 = *a4++;
            v12 = v13;
          }

          *a5++ = BYTE1(*(v8 + 4 * (v12 & ~(-1 << v9))));
          v12 >>= v9;
          ++v11;
        }

        while (v6 != v11);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a2 != a3);
  }

  return result;
}

int *VP8LInverseTransform(int *result, uint64_t a2, uint64_t a3, char *a4, char *__src)
{
  v5 = a3 - a2;
  if (a3 <= a2)
  {
    VP8LInverseTransform_cold_1();
  }

  v6 = a3;
  v7 = result;
  if (result[3] < a3)
  {
    VP8LInverseTransform_cold_2();
  }

  v8 = __src;
  v9 = a4;
  v10 = a2;
  v11 = result[2];
  v12 = *result;
  if (*result > 1)
  {
    if (v12 == 3)
    {
      if (a4 == __src)
      {
        v27 = result[1];
        if (v27 >= 1)
        {
          v28 = v11 * v5;
          v29 = ((v11 + (1 << v27) - 1) >> v27) * v5;
          v9 = &__src[4 * v28 + -4 * v29];
          memmove(v9, __src, 4 * v29);
        }
      }

      return ColorIndexInverseTransform_C(v7, v10, v6, v9, v8);
    }

    else if (v12 == 2)
    {
      v25 = VP8LAddGreenToBlueAndRed;

      return v25(v9, (v11 * v5), __src);
    }
  }

  else
  {
    v54 = a3;
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = result[1];
        v14 = (1 << v13);
        v15 = v11 & -v14;
        v52 = (v14 - 1 + v11) >> v13;
        v16 = *(result + 2) + 4 * (v52 * (a2 >> v13));
        v17 = v15;
        v48 = v11 - v15;
        v50 = v15;
        v18 = 4 * v14;
        do
        {
          v55 = v10;
          v58 = 0;
          v57 = 0;
          if (v17 < 1)
          {
            v21 = v16;
            v20 = v9;
          }

          else
          {
            v19 = &v9[4 * v17];
            v20 = v9;
            v21 = v16;
            do
            {
              v22 = *v21++;
              v57 = v22;
              v58 = BYTE2(v22);
              result = VP8LTransformColorInverse(&v57, v20, v14, v8);
              v20 += v18;
              v8 += v18;
            }

            while (v20 < v19);
          }

          if (v20 < &v9[4 * v11])
          {
            v23 = *v21;
            LOBYTE(v57) = *v21;
            HIBYTE(v57) = BYTE1(v23);
            v58 = BYTE2(v23);
            result = VP8LTransformColorInverse(&v57, v20, v48, v8);
            v20 += 4 * v48;
            v8 += 4 * v48;
          }

          v17 = v50;
          LODWORD(v10) = v55 + 1;
          v24 = v52;
          if (((v55 + 1) & (v14 - 1)) != 0)
          {
            v24 = 0;
          }

          v16 += 4 * v24;
          v9 = v20;
        }

        while (v10 != v54);
      }
    }

    else
    {
      v45 = result;
      v56 = a2;
      if (a2)
      {
        v26 = __src;
      }

      else
      {
        v30 = a4 + 4;
        v31 = *a4 - 0x1000000;
        *__src = v31;
        v32 = __src + 4;
        if (v11 >= 2)
        {
          v33 = (v11 - 1);
          do
          {
            v34 = *v30;
            v30 += 4;
            v31 = ((v34 & 0xFF00FF00) + (v31 & 0xFF00FF00)) & 0xFF00FF00 | ((v34 & 0xFF00FF) + (v31 & 0xFF00FF)) & 0xFF00FF;
            *v32 = v31;
            v32 += 4;
            --v33;
          }

          while (v33);
        }

        v9 = &a4[4 * v11];
        LODWORD(v10) = 1;
        v26 = &__src[4 * v11];
      }

      if (v10 < a3)
      {
        v35 = result[1];
        v49 = (1 << v35) - 1;
        v46 = 1 << v35;
        v47 = (v49 + v11) >> v35;
        v53 = *(result + 2) + 4 * (v47 * (v10 >> v35));
        v36 = -v11;
        v37 = -(1 << v35);
        do
        {
          v51 = v10;
          result = PredictorAdd2_C(v9, &v26[4 * v36], 1u, v26);
          if (v11 >= 2)
          {
            v38 = 1;
            v39 = v53;
            do
            {
              v40 = *v39++;
              v41 = VP8LPredictorsAdd[(v40 >> 8) & 0xF];
              v42 = (v38 & v37) + v46;
              if (v42 >= v11)
              {
                v43 = v11;
              }

              else
              {
                v43 = (v38 & v37) + v46;
              }

              result = v41(&v9[4 * v38], &v26[4 * v38 + -4 * v11], (v43 - v38));
              v38 = v43;
            }

            while (v42 < v11);
          }

          v9 += 4 * v11;
          v26 += 4 * v11;
          LODWORD(v10) = v51 + 1;
          v44 = v47;
          if (((v51 + 1) & v49) != 0)
          {
            v44 = 0;
          }

          v53 += 4 * v44;
          LODWORD(v6) = v54;
          v36 = -v11;
        }

        while (v10 != v54);
      }

      if (v45[3] != v6)
      {

        return memcpy(&v8[-4 * v11], &v8[4 * v11 * (~v56 + v6)], 4 * v11);
      }
    }
  }

  return result;
}

uint64_t ColorIndexInverseTransform_C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = *(result + 4);
  v6 = *(result + 8);
  v8 = *(result + 16);
  if (!v7)
  {
    return VP8LMapColor32b(a4, v8, a5, a2, a3, v6);
  }

  if (a2 < a3)
  {
    v9 = 8u >> v7;
    v10 = ~(-1 << v7);
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((v11 & v10) == 0)
          {
            v12 = *(a4 + 1);
            a4 += 4;
          }

          *a5++ = *(v8 + 4 * (v12 & ~(-1 << v9)));
          v12 >>= v9;
          ++v11;
        }

        while (v6 != v11);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a2 != a3);
  }

  return result;
}

int *VP8LConvertBGRAToRGB_C(int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4);
      a3[1] = BYTE1(v4);
      a3[2] = v4;
      a3 += 3;
    }

    while (result < v3);
  }

  return result;
}

int *VP8LConvertBGRAToRGBA_C(int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4);
      a3[1] = BYTE1(v4);
      a3[2] = v4;
      a3[3] = HIBYTE(v4);
      a3 += 4;
    }

    while (result < v3);
  }

  return result;
}

unsigned int *VP8LConvertBGRAToRGBA4444_C(unsigned int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4) & 0xF0 | (v4 >> 12);
      a3[1] = v4 & 0xF0 | (v4 >> 28);
      a3 += 2;
    }

    while (result < v3);
  }

  return result;
}

unsigned int *VP8LConvertBGRAToRGB565_C(unsigned int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4) & 0xF8 | (v4 >> 13);
      a3[1] = (v4 >> 5) & 0xE0 | (v4 >> 3);
      a3 += 2;
    }

    while (result < v3);
  }

  return result;
}

int *VP8LConvertBGRAToBGR_C(int *result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = v4;
      *(a3 + 2) = BYTE2(v4);
      a3 += 3;
    }

    while (result < v3);
  }

  return result;
}

unsigned int *VP8LConvertFromBGRA(unsigned int *__src, uint64_t a2, int a3, _DWORD *__dst)
{
  v4 = __dst;
  v6 = __src;
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v9 = VP8LConvertBGRAToRGBA4444;
      }

      else
      {
        if (a3 != 6)
        {
          VP8LConvertBGRAToRGBA(__src, a2, __dst);
LABEL_32:
          v12 = WebPApplyAlphaMultiply;
          v13 = v4;
          v14 = 0;
LABEL_33:

          return v12(v13, v14, a2, 1, 0);
        }

        v9 = VP8LConvertBGRAToRGB565;
      }

      goto LABEL_37;
    }

    switch(a3)
    {
      case 8:
        memcpy(__dst, __src, 4 * a2);
        goto LABEL_32;
      case 9:
        if (a2 >= 1)
        {
          v10 = __dst;
          do
          {
            v11 = *v6++;
            *v10++ = bswap32(v11);
          }

          while (v6 < &__src[a2]);
        }

        v12 = WebPApplyAlphaMultiply;
        v13 = __dst;
        v14 = 1;
        goto LABEL_33;
      case 10:
        VP8LConvertBGRAToRGBA4444(__src, a2, __dst);
        v8 = WebPApplyAlphaMultiply4444;

        return v8(v4, a2, 1, 0);
    }

LABEL_40:
    VP8LConvertFromBGRA_cold_1();
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_40;
      }

      v9 = VP8LConvertBGRAToRGBA;
    }

    else
    {
      v9 = VP8LConvertBGRAToRGB;
    }

LABEL_37:

    return v9(__src, a2, v4);
  }

  if (a3 == 2)
  {
    v9 = VP8LConvertBGRAToBGR;
    goto LABEL_37;
  }

  if (a3 == 3)
  {

    return memcpy(__dst, __src, 4 * a2);
  }

  else if (a2 >= 1)
  {
    do
    {
      v7 = *v6++;
      *v4++ = bswap32(v7);
    }

    while (v6 < &__src[a2]);
  }

  return __src;
}

void VP8LDspInit()
{
  if (VP8LDspInit_VP8LDspInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    VP8LPredictors = VP8LPredictor0_C;
    qword_1EA8E17C0 = VP8LPredictor1_C;
    qword_1EA8E17C8 = VP8LPredictor2_C;
    qword_1EA8E17D0 = VP8LPredictor3_C;
    qword_1EA8E17D8 = VP8LPredictor4_C;
    qword_1EA8E17E0 = VP8LPredictor5_C;
    qword_1EA8E17E8 = VP8LPredictor6_C;
    qword_1EA8E17F0 = VP8LPredictor7_C;
    qword_1EA8E17F8 = VP8LPredictor8_C;
    qword_1EA8E1800 = VP8LPredictor9_C;
    qword_1EA8E1808 = VP8LPredictor10_C;
    qword_1EA8E1810 = VP8LPredictor11_C;
    qword_1EA8E1818 = VP8LPredictor12_C;
    qword_1EA8E1820 = VP8LPredictor13_C;
    unk_1EA8E1828 = VP8LPredictor0_C;
    qword_1EA8E1830 = VP8LPredictor0_C;
    VP8LPredictorsAdd[0] = PredictorAdd0_C;
    qword_1EA8E1740 = PredictorAdd1_C;
    qword_1EA8E1748 = PredictorAdd2_C;
    qword_1EA8E1750 = PredictorAdd3_C;
    qword_1EA8E1758 = PredictorAdd4_C;
    qword_1EA8E1760 = PredictorAdd5_C;
    qword_1EA8E1768 = PredictorAdd6_C;
    qword_1EA8E1770 = PredictorAdd7_C;
    qword_1EA8E1778 = PredictorAdd8_C;
    qword_1EA8E1780 = PredictorAdd9_C;
    qword_1EA8E1788 = PredictorAdd10_C;
    qword_1EA8E1790 = PredictorAdd11_C;
    qword_1EA8E1798 = PredictorAdd12_C;
    qword_1EA8E17A0 = PredictorAdd13_C;
    unk_1EA8E17A8 = PredictorAdd0_C;
    qword_1EA8E17B0 = PredictorAdd0_C;
    VP8LPredictorsAdd_C = PredictorAdd0_C;
    off_1EA8E16C0 = PredictorAdd1_C;
    off_1EA8E16C8 = PredictorAdd2_C;
    off_1EA8E16D0 = PredictorAdd3_C;
    off_1EA8E16D8 = PredictorAdd4_C;
    off_1EA8E16E0 = PredictorAdd5_C;
    off_1EA8E16E8 = PredictorAdd6_C;
    off_1EA8E16F0 = PredictorAdd7_C;
    off_1EA8E16F8 = PredictorAdd8_C;
    off_1EA8E1700 = PredictorAdd9_C;
    off_1EA8E1708 = PredictorAdd10_C;
    off_1EA8E1710 = PredictorAdd11_C;
    off_1EA8E1718 = PredictorAdd12_C;
    off_1EA8E1720 = PredictorAdd13_C;
    qword_1EA8E1728 = PredictorAdd0_C;
    unk_1EA8E1730 = PredictorAdd0_C;
    VP8LConvertBGRAToRGBA4444 = VP8LConvertBGRAToRGBA4444_C;
    VP8LConvertBGRAToRGB565 = VP8LConvertBGRAToRGB565_C;
    VP8LMapColor32b = MapARGB_C;
    VP8LMapColor8b = MapAlpha_C;
    VP8LDspInitNEON();
    if (!VP8LAddGreenToBlueAndRed)
    {
      VP8LDspInit_cold_9();
    }

    if (!VP8LTransformColorInverse)
    {
      VP8LDspInit_cold_8();
    }

    if (!VP8LConvertBGRAToRGBA)
    {
      VP8LDspInit_cold_7();
    }

    if (!VP8LConvertBGRAToRGB)
    {
      VP8LDspInit_cold_6();
    }

    if (!VP8LConvertBGRAToBGR)
    {
      VP8LDspInit_cold_5();
    }

    if (!VP8LConvertBGRAToRGBA4444)
    {
      VP8LDspInit_cold_4();
    }

    if (!VP8LConvertBGRAToRGB565)
    {
      VP8LDspInit_cold_3();
    }

    if (!VP8LMapColor32b)
    {
      VP8LDspInit_cold_2();
    }

    if (!VP8LMapColor8b)
    {
      VP8LDspInit_cold_1();
    }

    VP8LDspInit_VP8LDspInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

int *PredictorAdd0_C(int *result, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v5 = *result++;
      *a4++ = v5 - 0x1000000;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd1_C(int *result, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (a3 >= 1)
  {
    v4 = *(a4 - 1);
    v5 = a3;
    do
    {
      v6 = *result++;
      v4 = ((v6 & 0xFF00FF00) + (v4 & 0xFF00FF00)) & 0xFF00FF00 | ((v6 & 0xFF00FF) + (v4 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd2_C(int *result, int *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd2_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      v5 = v6;
      v7 = *result++;
      *a4++ = ((v7 & 0xFF00FF00) + (v5 & 0xFF00FF00)) & 0xFF00FF00 | ((v7 & 0xFF00FF) + (v5 & 0xFF00FF)) & 0xFF00FF;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd3_C(int *result, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd3_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 + 4);
    v5 = a3;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *result++;
      *a4++ = ((v8 & 0xFF00FF00) + (v6 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v6 & 0xFF00FF)) & 0xFF00FF;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd4_C(int *result, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd4_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 - 4);
    v5 = a3;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *result++;
      *a4++ = ((v8 & 0xFF00FF00) + (v6 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v6 & 0xFF00FF)) & 0xFF00FF;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd5_C(int *result, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd5_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = *(a4 - 1);
    v5 = (a2 + 4);
    v6 = a3;
    do
    {
      v7 = (((*v5 ^ v4) >> 1) & 0x7F7F7F7F) + (*v5 & v4);
      v8 = (((v7 ^ *(v5 - 1)) >> 1) & 0x7F7F7F7F) + (v7 & *(v5 - 1));
      v9 = *result++;
      v4 = ((v8 & 0xFF00FF00) + (v9 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v9 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v4;
      ++v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

int *PredictorAdd6_C(int *result, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd6_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 - 4);
    v5 = *(a4 - 1);
    v6 = a3;
    do
    {
      v7 = *v4++;
      v8 = (((v7 ^ v5) >> 1) & 0x7F7F7F7F) + (v7 & v5);
      v9 = *result++;
      v5 = ((v8 & 0xFF00FF00) + (v9 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v9 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

int *PredictorAdd7_C(int *result, int *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd7_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a3;
    v5 = *(a4 - 1);
    do
    {
      v6 = *a2++;
      v7 = (((v6 ^ v5) >> 1) & 0x7F7F7F7F) + (v6 & v5);
      v8 = *result++;
      v5 = ((v7 & 0xFF00FF00) + (v8 & 0xFF00FF00)) & 0xFF00FF00 | ((v7 & 0xFF00FF) + (v8 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd8_C(int *result, _DWORD *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd8_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v5 = (((*a2 ^ *(a2 - 1)) >> 1) & 0x7F7F7F7F) + (*a2 & *(a2 - 1));
      v6 = *result++;
      *a4++ = ((v5 & 0xFF00FF00) + (v6 & 0xFF00FF00)) & 0xFF00FF00 | ((v5 & 0xFF00FF) + (v6 & 0xFF00FF)) & 0xFF00FF;
      ++a2;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd9_C(int *result, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd9_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 + 4);
    v5 = a3;
    do
    {
      v6 = (((*v4 ^ *(v4 - 1)) >> 1) & 0x7F7F7F7F) + (*v4 & *(v4 - 1));
      v7 = *result++;
      *a4++ = ((v6 & 0xFF00FF00) + (v7 & 0xFF00FF00)) & 0xFF00FF00 | ((v6 & 0xFF00FF) + (v7 & 0xFF00FF)) & 0xFF00FF;
      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd10_C(int *result, unsigned int *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd10_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = *(a4 - 1);
    v5 = a3;
    do
    {
      v6 = *(a2 - 1);
      v7 = *a2;
      v8 = a2[1];
      ++a2;
      v9 = (((v6 ^ v4) >> 1) & 0x7F7F7F7F) + (v6 & v4);
      v10 = (((v8 ^ v7) >> 1) & 0x7F7F7F7F) + (v8 & v7);
      v11 = (((v10 ^ v9) >> 1) & 0x7F7F7F7F) + (v10 & v9);
      v12 = *result++;
      v4 = ((v11 & 0xFF00FF00) + (v12 & 0xFF00FF00)) & 0xFF00FF00 | ((v11 & 0xFF00FF) + (v12 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t PredictorAdd11_C(uint64_t result, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  if (!a2)
  {
    PredictorAdd11_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = (a4 - 4);
    v7 = a3;
    do
    {
      result = VP8LPredictor11_C(v6, v4);
      v8 = *v5++;
      v6[1] = ((v8 & 0xFF00FF00) + (result & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF;
      ++v6;
      ++v4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t PredictorAdd12_C(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a2)
  {
    PredictorAdd12_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = (a4 - 4);
    v7 = a3;
    do
    {
      result = VP8LPredictor12_C(v6, v4);
      v8 = *v5++;
      v6[1] = ((v8 & 0xFF00FF00) + (result & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF;
      ++v6;
      v4 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t PredictorAdd13_C(uint64_t result, _DWORD *a2, unsigned int a3, uint64_t a4)
{
  if (!a2)
  {
    PredictorAdd13_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = (a4 - 4);
    v7 = a3;
    do
    {
      result = VP8LPredictor13_C(v6, v4);
      v8 = *v5++;
      v6[1] = ((v8 & 0xFF00FF00) + (result & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF;
      ++v6;
      ++v4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t MapARGB_C(uint64_t result, uint64_t a2, _DWORD *a3, int a4, int a5, int a6)
{
  if (a4 < a5)
  {
    do
    {
      if (a6 < 1)
      {
        v7 = result;
      }

      else
      {
        v6 = a6;
        do
        {
          v7 = result + 4;
          *a3++ = *(a2 + 4 * *(result + 1));
          result += 4;
          --v6;
        }

        while (v6);
      }

      ++a4;
      result = v7;
    }

    while (a4 != a5);
  }

  return result;
}

unsigned __int8 *MapAlpha_C(unsigned __int8 *result, uint64_t a2, _BYTE *a3, int a4, int a5, int a6)
{
  if (a4 < a5)
  {
    do
    {
      if (a6 >= 1)
      {
        v6 = a6;
        do
        {
          v7 = *result++;
          *a3++ = BYTE1(*(a2 + 4 * v7));
          --v6;
        }

        while (v6);
      }

      ++a4;
    }

    while (a4 != a5);
  }

  return result;
}

uint64_t VP8LColorCacheInit(uint64_t a1, int a2)
{
  if (!a1)
  {
    VP8LColorCacheInit_cold_2();
  }

  if (a2 <= 0)
  {
    VP8LColorCacheInit_cold_1();
  }

  result = malloc_type_calloc(1 << a2, 4uLL, 0x100004052888210uLL);
  *a1 = result;
  if (result)
  {
    *(a1 + 8) = 32 - a2;
    *(a1 + 12) = a2;
    return 1;
  }

  return result;
}

void VP8LColorCacheClear(void **a1)
{
  if (a1)
  {
    free(*a1);
    *a1 = 0;
  }
}

void *VP8LColorCacheCopy(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    VP8LColorCacheCopy_cold_3();
  }

  if (!a2)
  {
    VP8LColorCacheCopy_cold_2();
  }

  v2 = *(a1 + 12);
  if (v2 != *(a2 + 12))
  {
    VP8LColorCacheCopy_cold_1();
  }

  v3 = *a2;
  v4 = *a1;

  return memcpy(v3, v4, 4 << v2);
}

void *VP8LHtreeGroupsNew(int a1)
{
  result = malloc_type_malloc(568 * a1, 0x102004068DAEE82uLL);
  if (a1 > 0x10000)
  {
    if (result)
    {
      VP8LHtreeGroupsNew_cold_1();
    }
  }

  return result;
}

void VP8LHtreeGroupsFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t VP8LBuildHuffmanTable(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v8 = BuildHuffmanTable(0, a2, a3, a4, 0);
  if (v4 >= 2329)
  {
    VP8LBuildHuffmanTable_cold_1();
  }

  v9 = v8;
  if (a1 && v8)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v12 = *(v10 + 24);
    if (v11 + 4 * v8 >= (*v10 + 4 * v12))
    {
      v13 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      if (v9 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      *(v13 + 6) = v15;
      v16 = malloc_type_malloc(4 * v15, 0x10000407B5B4437uLL);
      *v14 = v16;
      if (!v16)
      {
        free(v14);
        return 0;
      }

      v11 = v16;
      v14[1] = v16;
      v14[2] = 0;
      *(*(a1 + 32) + 16) = v14;
      *(a1 + 32) = v14;
    }

    if (v4 <= 512)
    {
      bzero(v20, 0x400uLL);
      BuildHuffmanTable(v11, a2, a3, v4, v20);
      return v9;
    }

    v17 = malloc_type_malloc((2 * v4), 0x1000040BDFB0063uLL);
    if (v17)
    {
      v18 = v17;
      BuildHuffmanTable(*(*(a1 + 32) + 8), a2, a3, v4, v17);
      free(v18);
      return v9;
    }

    return 0;
  }

  return v9;
}

uint64_t BuildHuffmanTable(uint64_t a1, uint64_t a2, int *a3, int a4, unsigned __int16 *a5)
{
  v68 = *MEMORY[0x1E69E9840];
  memset(v67, 0, sizeof(v67));
  if (!a4)
  {
    BuildHuffmanTable_cold_6();
  }

  if (!a3)
  {
    BuildHuffmanTable_cold_5();
  }

  if ((a1 != 0) != (a5 != 0))
  {
    BuildHuffmanTable_cold_4();
  }

  if (a2 < 1)
  {
    BuildHuffmanTable_cold_3();
  }

  if (a4 < 1)
  {
    v9 = 0;
  }

  else
  {
    v5 = a4;
    v6 = a3;
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 > 15)
      {
        return 0;
      }

      ++*(v67 + v7);
      --v5;
    }

    while (v5);
    v9 = v67[0];
  }

  if (v9 == a4)
  {
    return 0;
  }

  v10 = (1 << a2);
  v66 = 0u;
  memset(v65, 0, sizeof(v65));
  DWORD1(v65[0]) = 0;
  v12 = v65 + 2;
  v13 = v67 + 1;
  v14 = -14;
  do
  {
    v16 = *v13++;
    v15 = v16;
    if (v16 > 1 << (v14 + 15))
    {
      return 0;
    }

    *v12 = *(v12 - 1) + v15;
    ++v12;
  }

  while (!__CFADD__(v14++, 1));
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v19 = a3[i];
      if (v19 >= 1)
      {
        v20 = *(v65 + v19);
        if (a5)
        {
          if (v20 >= a4)
          {
            return 0;
          }

          *(v65 + v19) = v20 + 1;
          a5[v20] = i;
        }

        else
        {
          *(v65 + v19) = v20 + 1;
        }
      }
    }
  }

  v21 = HIDWORD(v66);
  if (HIDWORD(v66) != 1)
  {
    v30 = 0;
    LODWORD(v31) = 0;
    v32 = v10 - 1;
    v33 = 2;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = v35;
      v38 = *(v67 + v34);
      v35 = 2 * v35 - v38;
      if (v35 < 0)
      {
        return 0;
      }

      if (a1 && v38 >= 1)
      {
        if (((v33 - 1) & v10) != 0)
        {
          BuildHuffmanTable_cold_1();
        }

        v31 = v31;
        do
        {
          v39 = v34 | (a5[v31] << 16);
          v40 = 1 << a2;
          do
          {
            *(a1 + 4 * v30 + 4 * (v40 - v33)) = v39;
            v40 -= v33;
          }

          while (v40 > 0);
          v41 = 1 << (v34 - 1);
          do
          {
            v42 = v41;
            v41 >>= 1;
          }

          while ((v42 & v30) != 0);
          ++v31;
          v30 = ((v42 - 1) & v30) + v42;
          v43 = __OFSUB__(v38--, 1);
        }

        while (!((v38 < 0) ^ v43 | (v38 == 0)));
        *(v67 + v34) = 0;
      }

      v36 += 2 * v37;
      ++v34;
      v33 *= 2;
    }

    while (v34 != a2 + 1);
    if (a2 > 14)
    {
      v47 = 1 << a2;
    }

    else
    {
      v44 = 2;
      v45 = -1;
      v46 = a1;
      v47 = 1 << a2;
      v48 = a2;
      do
      {
        v49 = v48 + 1;
        v50 = *(v67 + v48 + 1);
        if (2 * v35 - v50 < 0)
        {
          return 0;
        }

        if (v50 > 0)
        {
          do
          {
            if ((v30 & v32) == v45)
            {
              if (a1)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v51 = 1 << (v49 - a2);
              v52 = v49 - a2;
              if (v48 != 14)
              {
                v53 = v48 + 1;
                v54 = 1 << (v49 - a2);
                while (1)
                {
                  v55 = v54 - *(v67 + v53);
                  if (v55 < 1)
                  {
                    break;
                  }

                  ++v53;
                  v54 = 2 * v55;
                  if (v53 == 15)
                  {
                    LOBYTE(v53) = 15;
                    break;
                  }
                }

                v52 = v53 - a2;
                v51 = 1 << (v53 - a2);
              }

              v47 += v51;
              if (a1)
              {
                v46 += 4 * v10;
                v56 = v52 + a2;
                v57 = a1 + 4 * (v30 & v32);
                *v57 = v56;
                *(v57 + 2) = ((v46 - a1) >> 2) - (v30 & v32);
                LODWORD(v10) = v51;
                v45 = v30 & v32;
LABEL_69:
                if ((v10 & (v44 - 1)) != 0)
                {
                  BuildHuffmanTable_cold_1();
                }

                v58 = v31 + 1;
                v59 = (v49 - a2) | (a5[v31] << 16);
                v60 = v10;
                do
                {
                  *(v46 + 4 * (v30 >> a2) + 4 * (v60 - v44)) = v59;
                  v60 -= v44;
                }

                while (v60 > 0);
                LODWORD(v31) = v58;
                goto LABEL_74;
              }

              LODWORD(v10) = v51;
              v45 = v30 & v32;
            }

LABEL_74:
            v61 = 1 << v48;
            do
            {
              v62 = v61;
              v61 >>= 1;
            }

            while ((v62 & v30) != 0);
            v30 = ((v62 - 1) & v30) + v62;
            v63 = *(v67 + v49);
            v43 = __OFSUB__(v63--, 1);
            *(v67 + v49) = v63;
          }

          while (!((v63 < 0) ^ v43 | (v63 == 0)));
        }

        v36 += 2 * v35;
        v35 = 2 * v35 - v50;
        v44 *= 2;
      }

      while (v48++ < 14);
      v21 = HIDWORD(v66);
    }

    if (v36 == 2 * v21 - 1)
    {
      return v47;
    }

    else
    {
      return 0;
    }
  }

  if (a5)
  {
    v22 = 0;
    if (v10 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v10;
    }

    v24 = vdupq_n_s64(v23 - 1);
    v25 = *a5 << 16;
    v26 = (v23 + 3) & 0xFFFFFFFC;
    v27 = (a1 + 4 * v10 - 8);
    do
    {
      v28 = vdupq_n_s64(v22);
      v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v28, xmmword_186205EC0)));
      if (vuzp1_s16(v29, *v24.i8).u8[0])
      {
        v27[1] = v25;
      }

      if (vuzp1_s16(v29, *&v24).i8[2])
      {
        *v27 = v25;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v28, xmmword_186205EB0)))).i32[1])
      {
        *(v27 - 1) = v25;
        *(v27 - 2) = v25;
      }

      v22 += 4;
      v27 -= 4;
    }

    while (v26 != v22);
  }

  return v10;
}

uint64_t VP8LHuffmanTablesAllocate(int a1, uint64_t a2)
{
  *(a2 + 32) = a2;
  *(a2 + 16) = 0;
  result = malloc_type_malloc(4 * a1, 0x10000407B5B4437uLL);
  *a2 = result;
  if (result)
  {
    *(a2 + 8) = result;
    *(a2 + 24) = a1;
    return 1;
  }

  return result;
}

void VP8LHuffmanTablesDeallocate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    free(*a1);
    *a1 = 0;
    *(a1 + 16) = 0;
    if (v2)
    {
      do
      {
        v3 = *(v2 + 16);
        free(*v2);
        free(v2);
        v2 = v3;
      }

      while (v3);
    }
  }
}

uint64_t WebPFlipBuffer(int32x2_t *a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = a1[1].i32[0];
  v2 = a1[2];
  if (a1->i32[0] <= 0xAu)
  {
    v9 = 0;
    v11 = a1[3].i32[0];
    a1[2] = (*&v2 + (v1 - 1) * v11);
    a1[3].i32[0] = -v11;
  }

  else
  {
    v3 = v1 - 1;
    v4 = a1[6];
    v5 = a1[4];
    v6 = *&a1[3] + (v3 >> 1) * v4.i32[1];
    a1[2] = (*&v2 + v3 * v4.i32[0]);
    a1[3] = v6;
    a1[6] = vneg_s32(v4);
    v7 = a1[7].i32[0];
    a1[4] = (*&v5 + (v3 >> 1) * v7);
    a1[7].i32[0] = -v7;
    v8 = a1[5];
    v9 = 0;
    if (v8)
    {
      v10 = a1[7].i32[1];
      a1[5] = (*&v8 + v3 * v10);
      a1[7].i32[1] = -v10;
    }
  }

  return v9;
}

uint64_t WebPAllocateDecBuffer(uint64_t a1, uint64_t a2, _DWORD *a3, int32x2_t *a4)
{
  v6 = 2;
  if (a2 < 1)
  {
    return v6;
  }

  if (a1 < 1)
  {
    return v6;
  }

  v27 = v4;
  v28 = v5;
  if (!a4)
  {
    return v6;
  }

  if (a3)
  {
    if (a3[2])
    {
      v9 = a3[5];
      v10 = a3[6];
      if (!WebPCheckCropDimensions(a1, a2, a3[3] & 0xFFFFFFFE, a3[4] & 0xFFFFFFFE, v9, v10))
      {
        return 2;
      }

      LODWORD(a2) = v10;
      LODWORD(a1) = v9;
    }

    if (a3[7])
    {
      v11 = a3[8];
      v25 = a3[9];
      v26 = v11;
      if (!WebPRescalerGetScaledDimensions(a1, a2, &v26, &v25))
      {
        return 2;
      }

      LODWORD(a2) = v25;
      LODWORD(a1) = v26;
    }
  }

  a4->i32[1] = a1;
  a4[1].i32[0] = a2;
  v6 = 2;
  if (a1 < 1)
  {
    return v6;
  }

  if (a2 < 1)
  {
    return v6;
  }

  v12 = a4->u32[0];
  if (v12 > 0xC)
  {
    return v6;
  }

  if (a4[1].i32[1] > 0 || *&a4[14])
  {
    goto LABEL_16;
  }

  v14 = kModeBpp[v12];
  if ((kModeBpp[v12] * a1) >> 31)
  {
    return 2;
  }

  v16 = a1 * v14;
  v17 = (a1 * v14) * a2;
  v18 = a1 * a2;
  if (v12 == 12)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  if (v12 != 12)
  {
    v18 = 0;
  }

  if (v12 >= 0xB)
  {
    v20 = (a1 + 1) >> 1;
  }

  else
  {
    v20 = 0;
  }

  if (v12 >= 0xB)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v12 >= 0xB)
  {
    v22 = ((a1 + 1) >> 1) * ((a2 + 1) >> 1);
  }

  else
  {
    v22 = 0;
  }

  if (v12 >= 0xB)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  v24 = malloc_type_malloc(v17 + 2 * v22 + *&v23, 0x100004077774924uLL);
  if (!v24)
  {
    return 1;
  }

  a4[14] = v24;
  a4[2] = v24;
  if (v12 < 0xB)
  {
    a4[3].i32[0] = v16;
    a4[4] = v17;
  }

  else
  {
    a4[6].i32[0] = v16;
    a4[6].i32[1] = v20;
    a4[8] = v17;
    a4[9] = v22;
    a4[3] = &v24[v17];
    a4[4] = &v24[v17 + v22];
    a4[7].i32[0] = v20;
    a4[10] = v22;
    if (v12 == 12)
    {
      a4[5] = &v24[2 * v22 + v17];
    }

    a4[11] = v23;
    a4[7].i32[1] = v21;
  }

LABEL_16:
  v13 = CheckDecBuffer(a4);
  v6 = v13;
  if (a3)
  {
    if (!v13)
    {
      v6 = a3[12];
      if (v6)
      {
        return WebPFlipBuffer(a4);
      }
    }
  }

  return v6;
}

uint64_t WebPInitDecBufferInternal(uint64_t a1, int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0xFFFFFF00) == 0x200)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    v2 = 1;
    *a1 = 0u;
  }

  return v2;
}

void WebPFreeDecBuffer(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 12) <= 0)
    {
      free(*(a1 + 112));
    }

    *(a1 + 112) = 0;
  }
}

uint64_t WebPCopyDecBufferPixels(unsigned int *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    WebPCopyDecBufferPixels_cold_2();
  }

  v4 = *a1;
  if (v4 != *a2)
  {
    WebPCopyDecBufferPixels_cold_1();
  }

  v6 = a1[1];
  v5 = a1[2];
  *(a2 + 4) = v6;
  *(a2 + 8) = v5;
  if (CheckDecBuffer(a2))
  {
    return 2;
  }

  v8 = *(a1 + 2);
  v9 = *(a2 + 16);
  if (v4 <= 0xA)
  {
    v11 = a1[6];
    v12 = *(a2 + 24);
    v13 = v6 * kModeBpp[v4];
    v14 = v5;
  }

  else
  {
    WebPCopyPlane(v8, a1[12], v9, *(a2 + 48), v6, v5);
    WebPCopyPlane(*(a1 + 3), a1[13], *(a2 + 24), *(a2 + 52), (a1[1] + 1) / 2, (a1[2] + 1) / 2);
    WebPCopyPlane(*(a1 + 4), a1[14], *(a2 + 32), *(a2 + 56), (a1[1] + 1) / 2, (a1[2] + 1) / 2);
    v10 = *a1;
    if ((*a1 > 0xC || ((1 << v10) & 0x103A) == 0) && (v10 - 11) < 0xFFFFFFFC)
    {
      return 0;
    }

    v8 = *(a1 + 5);
    v11 = a1[15];
    v9 = *(a2 + 40);
    v12 = *(a2 + 60);
    v13 = a1[1];
    v14 = a1[2];
  }

  WebPCopyPlane(v8, v11, v9, v12, v13, v14);
  return 0;
}

uint64_t CheckDecBuffer(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0xC)
  {
    return 2;
  }

  v3 = a1[1];
  v4 = a1[2];
  if (v1 < 0xB)
  {
    LODWORD(v24) = a1[6];
    if (v24 >= 0)
    {
      v24 = v24;
    }

    else
    {
      v24 = -v24;
    }

    v25 = kModeBpp[v1];
    v26 = v24 * (v4 - 1) + v25 * v3;
    v27 = v3 * v25;
    if (v26 > *(a1 + 4) || v24 < v27 || *(a1 + 2) == 0)
    {
      return 2;
    }
  }

  else
  {
    v5 = (v3 + 1) / 2;
    v6 = (v4 + 1) / 2;
    LODWORD(v7) = a1[12];
    if (v7 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = -v7;
    }

    v8 = v4 - 1;
    v9 = v6 - 1;
    v10 = vabs_s32(*(a1 + 13));
    v11 = v10.u32[0] * v9 + v5;
    v12 = v10.u32[1] * v9 + v5;
    v16 = (v3 + v7 * v8) <= *(a1 + 8) && v11 <= *(a1 + 9) && v12 <= *(a1 + 10) && v7 >= v3;
    v17 = vcge_s32(v10, vdup_n_s32(v5));
    v18 = v17.i32[1] & v17.i32[0] & v16;
    if (!*(a1 + 2))
    {
      v18 = 0;
    }

    if (!*(a1 + 3))
    {
      v18 = 0;
    }

    if (!*(a1 + 4))
    {
      v18 = 0;
    }

    if (v1 == 12)
    {
      LODWORD(v19) = a1[15];
      if (v19 >= 0)
      {
        v19 = v19;
      }

      else
      {
        v19 = -v19;
      }

      v20 = v3 + v19 * v8;
      v23 = v19 >= v3 && v20 <= *(a1 + 11) && *(a1 + 5) != 0;
      if ((v18 & v23 & 1) == 0)
      {
        return 2;
      }
    }

    else if ((v18 & 1) == 0)
    {
      return 2;
    }
  }

  return 0;
}

BOOL WebPAvoidSlowMemory(_DWORD *a1, uint64_t a2)
{
  if (!a1)
  {
    WebPAvoidSlowMemory_cold_1();
  }

  if (a1[3] < 2)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    if ((*a1 - 7) <= 3)
    {
      return *(a2 + 8) != 0;
    }
  }

  return result;
}

uint64_t VP8ParseQuant(uint64_t a1)
{
  Value = VP8GetValue(a1 + 16, 7);
  if (VP8GetValue(a1 + 16, 1))
  {
    SignedValue = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    SignedValue = 0;
  }

  if (VP8GetValue(a1 + 16, 1))
  {
    v4 = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    v4 = 0;
  }

  if (VP8GetValue(a1 + 16, 1))
  {
    v5 = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    v5 = 0;
  }

  if (VP8GetValue(a1 + 16, 1))
  {
    v6 = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    v6 = 0;
  }

  result = VP8GetValue(a1 + 16, 1);
  if (result)
  {
    result = VP8GetSignedValue(a1 + 16, 4);
  }

  v8 = 144;
  v9 = *(a1 + 132);
  v10 = a1 + 1060;
  do
  {
    if (v9)
    {
      if (*(a1 + 140))
      {
        v11 = 0;
      }

      else
      {
        v11 = Value;
      }

      v12 = v11 + *(a1 + v8);
    }

    else
    {
      v12 = Value;
      if (v8 != 144)
      {
        v26 = *(a1 + 1076);
        *v10 = *(a1 + 1060);
        *(v10 + 16) = v26;
        goto LABEL_40;
      }
    }

    v13 = v12 + SignedValue;
    if (v12 + SignedValue >= 127)
    {
      v13 = 127;
    }

    v14 = kDcTable[v13 & ~(v13 >> 31)];
    if (v12 >= 127)
    {
      v15 = 127;
    }

    else
    {
      v15 = v12;
    }

    v16 = kAcTable[v15 & ~(v15 >> 31)];
    *v10 = v14;
    *(v10 + 4) = v16;
    v17 = v12 + v4;
    if (v12 + v4 >= 127)
    {
      v17 = 127;
    }

    if (v12 + v5 >= 127)
    {
      v18 = 127;
    }

    else
    {
      v18 = v12 + v5;
    }

    v19 = 2 * kDcTable[v17 & ~(v17 >> 31)];
    v20 = (101581 * kAcTable[v18 & ~(v18 >> 31)]) >> 16;
    if (v12 + v5 < 2)
    {
      v20 = 8;
    }

    *(v10 + 8) = v19;
    *(v10 + 12) = v20;
    v21 = v12 + v6;
    if (v12 + v6 >= 117)
    {
      v21 = 117;
    }

    v22 = kDcTable[v21 & ~(v21 >> 31)];
    v23 = v12 + result;
    if (v23 >= 127)
    {
      v24 = 127;
    }

    else
    {
      v24 = v23;
    }

    v25 = kAcTable[v24 & ~(v24 >> 31)];
    *(v10 + 16) = v22;
    *(v10 + 20) = v25;
    *(v10 + 24) = v23;
LABEL_40:
    v10 += 32;
    ++v8;
  }

  while (v8 != 148);
  return result;
}

void WebPInitUpsamplersNEON()
{
  qword_1EA8E14B8 = UpsampleRgbaLinePair_NEON;
  qword_1EA8E14C8 = UpsampleBgraLinePair_NEON;
  qword_1EA8E14E8 = UpsampleRgbaLinePair_NEON;
  qword_1EA8E14F0 = UpsampleBgraLinePair_NEON;
  WebPUpsamplers[0] = UpsampleRgbLinePair_NEON;
  qword_1EA8E14C0 = UpsampleBgrLinePair_NEON;
  qword_1EA8E14D0 = UpsampleArgbLinePair_NEON;
  qword_1EA8E14F8 = UpsampleArgbLinePair_NEON;
  qword_1EA8E14E0 = UpsampleRgb565LinePair_NEON;
  qword_1EA8E14D8 = UpsampleRgba4444LinePair_NEON;
  qword_1EA8E1500 = UpsampleRgba4444LinePair_NEON;
}

uint64_t UpsampleRgbaLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v162 = *MEMORY[0x1E69E9840];
  v160 = 0u;
  memset(v161, 0, 31);
  v158 = 0u;
  v159 = 0u;
  if (!a1)
  {
    UpsampleRgbaLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = ((v15 - 1) >> 3);
  v154 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v155 = 1;
  LODWORD(v15) = *a3;
  v17 = *a5;
  v18 = ((v17 + v15) >> 1) + 1;
  v19 = *a4;
  v20 = *a6;
  v21 = ((v20 + v19) >> 1) + 1;
  v22 = (v18 + v15) >> 1;
  v23 = (v21 + v19) >> 1;
  v24 = (19077 * *a1) >> 8;
  v25 = v24 + ((26149 * v23) >> 8);
  if (v25 >= 0x379A)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (v25 - 14234 >= 0x4000)
  {
    v27 = v26;
  }

  else
  {
    v27 = (v25 - 14234) >> 6;
  }

  *a7 = v27;
  v28 = v24 - (((13320 * v23) >> 8) + ((6419 * v22) >> 8));
  v29 = v28 + 8708;
  v30 = (v28 + 8708) >> 6;
  if (v28 >= -8708)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v29 < 0x4000)
  {
    v31 = v30;
  }

  a7[1] = v31;
  v32 = v24 + ((33050 * v22) >> 8);
  v33 = v32 - 17685;
  v34 = (v32 - 17685) >> 6;
  if (v32 >= 0x4515)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  if (v33 < 0x4000)
  {
    v35 = v34;
  }

  a7[2] = v35;
  a7[3] = -1;
  if (a2)
  {
    v36 = (v18 + v17) >> 1;
    v37 = (v21 + v20) >> 1;
    v38 = (19077 * *a2) >> 8;
    v39 = v38 + ((26149 * v37) >> 8);
    v40 = v39 - 14234;
    v41 = (v39 - 14234) >> 6;
    if (v39 >= 0x379A)
    {
      v42 = -1;
    }

    else
    {
      v42 = 0;
    }

    if (v40 < 0x4000)
    {
      v42 = v41;
    }

    *a8 = v42;
    v43 = v38 - (((13320 * v37) >> 8) + ((6419 * v36) >> 8));
    v44 = v43 + 8708;
    v45 = (v43 + 8708) >> 6;
    if (v43 >= -8708)
    {
      v46 = -1;
    }

    else
    {
      v46 = 0;
    }

    if (v44 < 0x4000)
    {
      v46 = v45;
    }

    a8[1] = v46;
    v47 = v38 + ((33050 * v36) >> 8);
    v48 = v47 - 17685;
    v49 = (v47 - 17685) >> 6;
    if (v47 >= 0x4515)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0;
    }

    if (v48 < 0x4000)
    {
      v50 = v49;
    }

    a8[2] = v50;
    a8[3] = -1;
  }

  v155 = v155 & 0xF | (16 * v16);
  if (v16 >= 1)
  {
    v51 = 0;
    v53 = vdupq_n_s16(0x11Au);
    v54 = vdupq_n_s16(0xC866u);
    v55 = vdupq_n_s16(0x2204u);
    v56 = vdupq_n_s16(0xBAEBu);
    v58 = -1;
    do
    {
      v59 = 0;
      v60 = *(a3 + 1);
      v61 = *(v12 + 1);
      v62 = vaddl_u8(v61, *a3);
      v63 = vaddl_u8(*v12, v60);
      v64 = vaddq_s16(v62, v63);
      *v62.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v62, v62)), 3uLL);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vrhadd_u8(*a3, *v63.i8);
      v65 = vrhadd_u8(v60, *v62.i8);
      v165.val[0] = vrhadd_u8(*v12, *v62.i8);
      v165.val[1] = vrhadd_u8(v61, *v63.i8);
      vst2_s8(&v158, v64);
      vst2_s8(&v160, v165);
      v165.val[1] = *(v13 + 1);
      v66 = *(v11 + 1);
      v67 = vaddl_u8(v66, *v13);
      v68 = vaddl_u8(*v11, v165.val[1]);
      v69 = vaddq_s16(v67, v68);
      *v67.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v67, v67)), 3uLL);
      *v68.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v68, v68)), 3uLL);
      *v69.i8 = vrhadd_u8(*v13, *v68.i8);
      v70 = vrhadd_u8(v165.val[1], *v67.i8);
      v165.val[0] = vrhadd_u8(*v11, *v67.i8);
      v52 = &v159;
      vst2_s8(v52, v69);
      v165.val[1] = vrhadd_u8(v66, *v68.i8);
      v57 = v161;
      vst2_s8(v57, v165);
      v71 = 1;
      v72 = (16 * v51) | 1;
      do
      {
        v73 = 4 * (v59 | v72);
        v74 = *&a1[v72 + v59];
        v75 = (&v158 + v59);
        v76 = vshll_n_u8(*v75, 7uLL);
        v77 = vshll_n_u8(v75[2], 7uLL);
        v78 = vqdmulhq_lane_s16(vshll_n_u8(v74, 7uLL), 0x3408191366254A85, 0);
        v79 = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v77, 0x3408191366254A85, 1), vqaddq_s16(v78, v54)), 6uLL);
        v80 = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v78, v55), vqaddq_s16(vqdmulhq_lane_s16(v76, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v77, 0x3408191366254A85, 3))), 6uLL);
        v81 = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v76, v53), vqaddq_s16(v78, v56)), v76), 6uLL);
        v82 = &a7[v73 & 0xFFFFFFE4];
        vst4_s8(v82, *(&v58 - 3));
        LOBYTE(v73) = v71;
        v59 = 8;
        v71 = 0;
      }

      while ((v73 & 1) != 0);
      if (a2)
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = 4 * (v83 | v72);
          v86 = *&a2[v72 + v83];
          v87 = &v161[v83 - 16];
          v88 = vshll_n_u8(*v87, 7uLL);
          v89 = vshll_n_u8(v87[2], 7uLL);
          v90 = vqdmulhq_lane_s16(vshll_n_u8(v86, 7uLL), 0x3408191366254A85, 0);
          v166.val[0] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v89, 0x3408191366254A85, 1), vqaddq_s16(v90, v54)), 6uLL);
          v166.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v90, v55), vqaddq_s16(vqdmulhq_lane_s16(v88, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v89, 0x3408191366254A85, 3))), 6uLL);
          v166.val[2] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v88, v53), vqaddq_s16(v90, v56)), v88), 6uLL);
          v166.val[3] = -1;
          v91 = &a8[v85 & 0xFFFFFFE4];
          vst4_s8(v91, v166);
          LOBYTE(v85) = v84;
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v51;
    }

    while (v51 != v16);
  }

  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v92 = 9 - v154;
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v93 = *(v156 + 1);
  v94 = vaddl_u8(*(v156 + 1), v157[0]);
  v95 = vaddl_u8(v156[0], *(v157 + 1));
  v96 = vaddq_s16(v94, v95);
  *v94.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v94, v94)), 3uLL);
  *v95.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v95, v95)), 3uLL);
  *v96.i8 = vrhadd_u8(v157[0], *v95.i8);
  v97 = vrhadd_u8(*(v157 + 1), *v94.i8);
  v163.val[0] = vrhadd_u8(v156[0], *v94.i8);
  v98 = &v158;
  vst2_s8(v98, v96);
  v163.val[1] = vrhadd_u8(v93, *v95.i8);
  v100 = &v160;
  vst2_s8(v100, v163);
  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  result = memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v102 = *(v156 + 1);
  v103 = vaddl_u8(*(v156 + 1), v157[0]);
  v104 = vaddl_u8(v156[0], *(v157 + 1));
  v105 = vaddq_s16(v103, v104);
  *v103.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v103, v103)), 3uLL);
  *v104.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v104, v104)), 3uLL);
  *v105.i8 = vrhadd_u8(v157[0], *v104.i8);
  v106 = vrhadd_u8(*(v157 + 1), *v103.i8);
  v164.val[0] = vrhadd_u8(v156[0], *v103.i8);
  v99 = &v159;
  vst2_s8(v99, v105);
  v164.val[1] = vrhadd_u8(v102, *v104.i8);
  v107 = v161;
  vst2_s8(v107, v164);
  v108 = (a9 - v155);
  if (v108 >= 1)
  {
    v109 = &a1[v155];
    v110 = 16 * v16;
    v111 = &v159;
    v112 = &a7[64 * v16 + 7];
    result = 255;
    v113 = (a9 - v155);
    do
    {
      v115 = *v109++;
      v114 = v115;
      v116 = *(v111 - 16);
      v118 = *v111++;
      v117 = v118;
      v119 = 19077 * v114;
      v120 = ((26149 * v118) >> 8) + (v119 >> 8);
      v121 = v120 - 14234;
      v122 = (v120 - 14234) >> 6;
      if (v120 >= 0x379A)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v112 - 3) = v123;
      v124 = (v119 >> 8) - (((6419 * v116) >> 8) + ((13320 * v117) >> 8));
      v125 = v124 + 8708;
      v126 = (v124 + 8708) >> 6;
      if (v124 >= -8708)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *(v112 - 2) = v127;
      v128 = ((33050 * v116) >> 8) + (v119 >> 8);
      v129 = v128 - 17685;
      v130 = (v128 - 17685) >> 6;
      if (v128 >= 0x4515)
      {
        v131 = -1;
      }

      else
      {
        v131 = 0;
      }

      if (v129 < 0x4000)
      {
        v131 = v130;
      }

      *(v112 - 1) = v131;
      *v112 = -1;
      v112 += 4;
      --v113;
    }

    while (v113);
    if (a2)
    {
      v132 = v161;
      v133 = &a2[v155];
      v134 = &a8[4 * v110 + 7];
      result = 13320;
      do
      {
        v136 = *v133++;
        v135 = v136;
        v137 = *(v132 - 16);
        v139 = *v132++;
        v138 = v139;
        v140 = 19077 * v135;
        v141 = ((26149 * v139) >> 8) + (v140 >> 8);
        v142 = v141 - 14234;
        v143 = (v141 - 14234) >> 6;
        if (v141 >= 0x379A)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v134 - 3) = v144;
        v145 = (v140 >> 8) - (((6419 * v137) >> 8) + ((13320 * v138) >> 8));
        v146 = v145 + 8708;
        v147 = (v145 + 8708) >> 6;
        if (v145 >= -8708)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *(v134 - 2) = v148;
        v149 = ((33050 * v137) >> 8) + (v140 >> 8);
        v150 = v149 - 17685;
        v151 = (v149 - 17685) >> 6;
        if (v149 >= 0x4515)
        {
          v152 = -1;
        }

        else
        {
          v152 = 0;
        }

        if (v150 < 0x4000)
        {
          v152 = v151;
        }

        *(v134 - 1) = v152;
        *v134 = -1;
        v134 += 4;
        --v108;
      }

      while (v108);
    }
  }

  return result;
}

uint64_t UpsampleBgraLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v162 = *MEMORY[0x1E69E9840];
  v160 = 0u;
  memset(v161, 0, 31);
  v158 = 0u;
  v159 = 0u;
  if (!a1)
  {
    UpsampleBgraLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = ((v15 - 1) >> 3);
  v154 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v155 = 1;
  LODWORD(v15) = *a3;
  v17 = *a5;
  v18 = ((v17 + v15) >> 1) + 1;
  v19 = *a4;
  v20 = *a6;
  v21 = ((v20 + v19) >> 1) + 1;
  v22 = (v18 + v15) >> 1;
  v23 = (v21 + v19) >> 1;
  v24 = (19077 * *a1) >> 8;
  v25 = v24 + ((33050 * v22) >> 8);
  if (v25 >= 0x4515)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (v25 - 17685 >= 0x4000)
  {
    v27 = v26;
  }

  else
  {
    v27 = (v25 - 17685) >> 6;
  }

  *a7 = v27;
  v28 = v24 - (((13320 * v23) >> 8) + ((6419 * v22) >> 8));
  v29 = v28 + 8708;
  v30 = (v28 + 8708) >> 6;
  if (v28 >= -8708)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v29 < 0x4000)
  {
    v31 = v30;
  }

  a7[1] = v31;
  v32 = v24 + ((26149 * v23) >> 8);
  v33 = v32 - 14234;
  v34 = (v32 - 14234) >> 6;
  if (v32 >= 0x379A)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  if (v33 < 0x4000)
  {
    v35 = v34;
  }

  a7[2] = v35;
  a7[3] = -1;
  if (a2)
  {
    v36 = (v18 + v17) >> 1;
    v37 = (v21 + v20) >> 1;
    v38 = (19077 * *a2) >> 8;
    v39 = v38 + ((33050 * v36) >> 8);
    v40 = v39 - 17685;
    v41 = (v39 - 17685) >> 6;
    if (v39 >= 0x4515)
    {
      v42 = -1;
    }

    else
    {
      v42 = 0;
    }

    if (v40 < 0x4000)
    {
      v42 = v41;
    }

    *a8 = v42;
    v43 = v38 - (((13320 * v37) >> 8) + ((6419 * v36) >> 8));
    v44 = v43 + 8708;
    v45 = (v43 + 8708) >> 6;
    if (v43 >= -8708)
    {
      v46 = -1;
    }

    else
    {
      v46 = 0;
    }

    if (v44 < 0x4000)
    {
      v46 = v45;
    }

    a8[1] = v46;
    v47 = v38 + ((26149 * v37) >> 8);
    v48 = v47 - 14234;
    v49 = (v47 - 14234) >> 6;
    if (v47 >= 0x379A)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0;
    }

    if (v48 < 0x4000)
    {
      v50 = v49;
    }

    a8[2] = v50;
    a8[3] = -1;
  }

  v155 = v155 & 0xF | (16 * v16);
  if (v16 >= 1)
  {
    v51 = 0;
    v53 = vdupq_n_s16(0x11Au);
    v54 = vdupq_n_s16(0xC866u);
    v55 = vdupq_n_s16(0x2204u);
    v56 = vdupq_n_s16(0xBAEBu);
    v58 = -1;
    do
    {
      v59 = 0;
      v60 = *(a3 + 1);
      v61 = *(v12 + 1);
      v62 = vaddl_u8(v61, *a3);
      v63 = vaddl_u8(*v12, v60);
      v64 = vaddq_s16(v62, v63);
      *v62.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v62, v62)), 3uLL);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vrhadd_u8(*a3, *v63.i8);
      v65 = vrhadd_u8(v60, *v62.i8);
      v165.val[0] = vrhadd_u8(*v12, *v62.i8);
      v165.val[1] = vrhadd_u8(v61, *v63.i8);
      vst2_s8(&v158, v64);
      vst2_s8(&v160, v165);
      v165.val[1] = *(v13 + 1);
      v66 = *(v11 + 1);
      v67 = vaddl_u8(v66, *v13);
      v68 = vaddl_u8(*v11, v165.val[1]);
      v69 = vaddq_s16(v67, v68);
      *v67.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v67, v67)), 3uLL);
      *v68.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v68, v68)), 3uLL);
      *v69.i8 = vrhadd_u8(*v13, *v68.i8);
      v70 = vrhadd_u8(v165.val[1], *v67.i8);
      v165.val[0] = vrhadd_u8(*v11, *v67.i8);
      v52 = &v159;
      vst2_s8(v52, v69);
      v165.val[1] = vrhadd_u8(v66, *v68.i8);
      v57 = v161;
      vst2_s8(v57, v165);
      v71 = 1;
      v72 = (16 * v51) | 1;
      do
      {
        v73 = 4 * (v59 | v72);
        v74 = *&a1[v72 + v59];
        v75 = (&v158 + v59);
        v76 = vshll_n_u8(*v75, 7uLL);
        v77 = vshll_n_u8(v75[2], 7uLL);
        v78 = vqdmulhq_lane_s16(vshll_n_u8(v74, 7uLL), 0x3408191366254A85, 0);
        v79 = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v77, 0x3408191366254A85, 1), vqaddq_s16(v78, v54)), 6uLL);
        v80 = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v78, v55), vqaddq_s16(vqdmulhq_lane_s16(v76, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v77, 0x3408191366254A85, 3))), 6uLL);
        v81 = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v76, v53), vqaddq_s16(v78, v56)), v76), 6uLL);
        v82 = &a7[v73 & 0xFFFFFFE4];
        vst4_s8(v82, *(&v58 - 3));
        LOBYTE(v73) = v71;
        v59 = 8;
        v71 = 0;
      }

      while ((v73 & 1) != 0);
      if (a2)
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = 4 * (v83 | v72);
          v86 = *&a2[v72 + v83];
          v87 = &v161[v83 - 16];
          v88 = vshll_n_u8(*v87, 7uLL);
          v89 = vshll_n_u8(v87[2], 7uLL);
          v90 = vqdmulhq_lane_s16(vshll_n_u8(v86, 7uLL), 0x3408191366254A85, 0);
          v166.val[2] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v89, 0x3408191366254A85, 1), vqaddq_s16(v90, v54)), 6uLL);
          v166.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v90, v55), vqaddq_s16(vqdmulhq_lane_s16(v88, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v89, 0x3408191366254A85, 3))), 6uLL);
          v166.val[0] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v88, v53), vqaddq_s16(v90, v56)), v88), 6uLL);
          v166.val[3] = -1;
          v91 = &a8[v85 & 0xFFFFFFE4];
          vst4_s8(v91, v166);
          LOBYTE(v85) = v84;
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v51;
    }

    while (v51 != v16);
  }

  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v92 = 9 - v154;
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v93 = *(v156 + 1);
  v94 = vaddl_u8(*(v156 + 1), v157[0]);
  v95 = vaddl_u8(v156[0], *(v157 + 1));
  v96 = vaddq_s16(v94, v95);
  *v94.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v94, v94)), 3uLL);
  *v95.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v95, v95)), 3uLL);
  *v96.i8 = vrhadd_u8(v157[0], *v95.i8);
  v97 = vrhadd_u8(*(v157 + 1), *v94.i8);
  v163.val[0] = vrhadd_u8(v156[0], *v94.i8);
  v98 = &v158;
  vst2_s8(v98, v96);
  v163.val[1] = vrhadd_u8(v93, *v95.i8);
  v100 = &v160;
  vst2_s8(v100, v163);
  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  result = memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v102 = *(v156 + 1);
  v103 = vaddl_u8(*(v156 + 1), v157[0]);
  v104 = vaddl_u8(v156[0], *(v157 + 1));
  v105 = vaddq_s16(v103, v104);
  *v103.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v103, v103)), 3uLL);
  *v104.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v104, v104)), 3uLL);
  *v105.i8 = vrhadd_u8(v157[0], *v104.i8);
  v106 = vrhadd_u8(*(v157 + 1), *v103.i8);
  v164.val[0] = vrhadd_u8(v156[0], *v103.i8);
  v99 = &v159;
  vst2_s8(v99, v105);
  v164.val[1] = vrhadd_u8(v102, *v104.i8);
  v107 = v161;
  vst2_s8(v107, v164);
  v108 = (a9 - v155);
  if (v108 >= 1)
  {
    v109 = &a1[v155];
    v110 = 16 * v16;
    v111 = &v159;
    v112 = &a7[64 * v16 + 7];
    result = 255;
    v113 = (a9 - v155);
    do
    {
      v115 = *v109++;
      v114 = v115;
      v116 = *(v111 - 16);
      v118 = *v111++;
      v117 = v118;
      v119 = 19077 * v114;
      v120 = ((33050 * v116) >> 8) + (v119 >> 8);
      v121 = v120 - 17685;
      v122 = (v120 - 17685) >> 6;
      if (v120 >= 0x4515)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v112 - 3) = v123;
      v124 = (v119 >> 8) - (((6419 * v116) >> 8) + ((13320 * v117) >> 8));
      v125 = v124 + 8708;
      v126 = (v124 + 8708) >> 6;
      if (v124 >= -8708)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *(v112 - 2) = v127;
      v128 = ((26149 * v117) >> 8) + (v119 >> 8);
      v129 = v128 - 14234;
      v130 = (v128 - 14234) >> 6;
      if (v128 >= 0x379A)
      {
        v131 = -1;
      }

      else
      {
        v131 = 0;
      }

      if (v129 < 0x4000)
      {
        v131 = v130;
      }

      *(v112 - 1) = v131;
      *v112 = -1;
      v112 += 4;
      --v113;
    }

    while (v113);
    if (a2)
    {
      v132 = v161;
      v133 = &a2[v155];
      v134 = &a8[4 * v110 + 7];
      result = 13320;
      do
      {
        v136 = *v133++;
        v135 = v136;
        v137 = *(v132 - 16);
        v139 = *v132++;
        v138 = v139;
        v140 = 19077 * v135;
        v141 = ((33050 * v137) >> 8) + (v140 >> 8);
        v142 = v141 - 17685;
        v143 = (v141 - 17685) >> 6;
        if (v141 >= 0x4515)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v134 - 3) = v144;
        v145 = (v140 >> 8) - (((6419 * v137) >> 8) + ((13320 * v138) >> 8));
        v146 = v145 + 8708;
        v147 = (v145 + 8708) >> 6;
        if (v145 >= -8708)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *(v134 - 2) = v148;
        v149 = ((26149 * v138) >> 8) + (v140 >> 8);
        v150 = v149 - 14234;
        v151 = (v149 - 14234) >> 6;
        if (v149 >= 0x379A)
        {
          v152 = -1;
        }

        else
        {
          v152 = 0;
        }

        if (v150 < 0x4000)
        {
          v152 = v151;
        }

        *(v134 - 1) = v152;
        *v134 = -1;
        v134 += 4;
        --v108;
      }

      while (v108);
    }
  }

  return result;
}

uint64_t UpsampleRgbLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v159 = *MEMORY[0x1E69E9840];
  v157 = 0u;
  memset(v158, 0, 31);
  v155 = 0u;
  v156 = 0u;
  if (!a1)
  {
    UpsampleRgbLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v152 = ((v15 - 1) >> 3);
  v150 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v15) = *a3;
  v16 = *a5;
  v17 = ((v16 + v15) >> 1) + 1;
  v18 = *a4;
  v19 = *a6;
  v20 = ((v19 + v18) >> 1) + 1;
  v21 = (v17 + v15) >> 1;
  v22 = (v20 + v18) >> 1;
  v23 = (19077 * *a1) >> 8;
  v24 = v23 + ((26149 * v22) >> 8);
  if (v24 >= 0x379A)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  if (v24 - 14234 >= 0x4000)
  {
    v26 = v25;
  }

  else
  {
    v26 = (v24 - 14234) >> 6;
  }

  *a7 = v26;
  v27 = v23 - (((13320 * v22) >> 8) + ((6419 * v21) >> 8));
  v28 = v27 + 8708;
  v29 = (v27 + 8708) >> 6;
  if (v27 >= -8708)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  if (v28 < 0x4000)
  {
    v30 = v29;
  }

  a7[1] = v30;
  v31 = v23 + ((33050 * v21) >> 8);
  v32 = v31 - 17685;
  v33 = (v31 - 17685) >> 6;
  if (v31 >= 0x4515)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (v32 < 0x4000)
  {
    v34 = v33;
  }

  a7[2] = v34;
  if (a2)
  {
    v35 = (v17 + v16) >> 1;
    v36 = (v20 + v19) >> 1;
    v37 = (19077 * *a2) >> 8;
    v38 = v37 + ((26149 * v36) >> 8);
    v39 = v38 - 14234;
    v40 = (v38 - 14234) >> 6;
    if (v38 >= 0x379A)
    {
      v41 = -1;
    }

    else
    {
      v41 = 0;
    }

    if (v39 < 0x4000)
    {
      v41 = v40;
    }

    *a8 = v41;
    v42 = v37 - (((13320 * v36) >> 8) + ((6419 * v35) >> 8));
    v43 = v42 + 8708;
    v44 = (v42 + 8708) >> 6;
    if (v42 >= -8708)
    {
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    if (v43 < 0x4000)
    {
      v45 = v44;
    }

    a8[1] = v45;
    v46 = v37 + ((33050 * v35) >> 8);
    if (v46 >= 0x4515)
    {
      v47 = -1;
    }

    else
    {
      v47 = 0;
    }

    if (v46 - 17685 < 0x4000)
    {
      v47 = (v46 - 17685) >> 6;
    }

    a8[2] = v47;
  }

  v151 = (16 * v152) | 1;
  if (v152 >= 1)
  {
    v48 = 0;
    v51 = vdupq_n_s16(0x11Au);
    v52 = vdupq_n_s16(0xC866u);
    v53 = vdupq_n_s16(0x2204u);
    v54 = vdupq_n_s16(0xBAEBu);
    do
    {
      v55 = 0;
      v56 = *(a3 + 1);
      v57 = *(v12 + 1);
      v58 = vaddl_u8(v57, *a3);
      v59 = vaddl_u8(*v12, v56);
      v60 = vaddq_s16(v58, v59);
      *v58.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v58, v58)), 3uLL);
      *v59.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v59, v59)), 3uLL);
      *v60.i8 = vrhadd_u8(*a3, *v59.i8);
      v61 = vrhadd_u8(v56, *v58.i8);
      v162.val[0] = vrhadd_u8(*v12, *v58.i8);
      v162.val[1] = vrhadd_u8(v57, *v59.i8);
      vst2_s8(&v155, v60);
      vst2_s8(&v157, v162);
      v162.val[1] = *(v13 + 1);
      v62 = *(v11 + 1);
      v63 = vaddl_u8(v62, *v13);
      v64 = vaddl_u8(*v11, v162.val[1]);
      v65 = vaddq_s16(v63, v64);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v64, v64)), 3uLL);
      *v65.i8 = vrhadd_u8(*v13, *v64.i8);
      v66 = vrhadd_u8(v162.val[1], *v63.i8);
      v162.val[0] = vrhadd_u8(*v11, *v63.i8);
      v162.val[1] = vrhadd_u8(v62, *v64.i8);
      v49 = &v156;
      vst2_s8(v49, v65);
      v50 = v158;
      vst2_s8(v50, v162);
      v67 = 1;
      v68 = (16 * v48) | 1;
      v69 = (16 * v48) | 1u;
      do
      {
        v70 = v67;
        v71 = *&a1[v68 + v55];
        v72 = 3 * (v55 | v69);
        v73 = (&v155 + v55);
        v74 = vshll_n_u8(*v73, 7uLL);
        v75 = vshll_n_u8(v73[2], 7uLL);
        v76 = vqdmulhq_lane_s16(vshll_n_u8(v71, 7uLL), 0x3408191366254A85, 0);
        v163.val[0] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v75, 0x3408191366254A85, 1), vqaddq_s16(v76, v52)), 6uLL);
        v163.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v76, v53), vqaddq_s16(vqdmulhq_lane_s16(v74, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v75, 0x3408191366254A85, 3))), 6uLL);
        v163.val[2] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v74, v51), vqaddq_s16(v76, v54)), v74), 6uLL);
        v77 = &a7[v72];
        vst3_s8(v77, v163);
        v55 = 8;
        v67 = 0;
      }

      while ((v70 & 1) != 0);
      if (a2)
      {
        v78 = 0;
        v79 = &a2[v68];
        v80 = 1;
        do
        {
          v81 = v80;
          v82 = *&v79[v78];
          v83 = 3 * (v78 | v69);
          v84 = &v158[v78 - 16];
          v85 = vshll_n_u8(*v84, 7uLL);
          v86 = vshll_n_u8(v84[2], 7uLL);
          v87 = vqdmulhq_lane_s16(vshll_n_u8(v82, 7uLL), 0x3408191366254A85, 0);
          v164.val[0] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v86, 0x3408191366254A85, 1), vqaddq_s16(v87, v52)), 6uLL);
          v164.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v87, v53), vqaddq_s16(vqdmulhq_lane_s16(v85, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v86, 0x3408191366254A85, 3))), 6uLL);
          v164.val[2] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v85, v51), vqaddq_s16(v87, v54)), v85), 6uLL);
          v88 = &a8[v83];
          vst3_s8(v88, v164);
          v78 = 8;
          v80 = 0;
        }

        while ((v81 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v48;
    }

    while (v48 != v152);
  }

  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v89 = 9 - v150;
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v90 = *(v153 + 1);
  v91 = vaddl_u8(*(v153 + 1), v154[0]);
  v92 = vaddl_u8(v153[0], *(v154 + 1));
  v93 = vaddq_s16(v91, v92);
  *v91.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v91, v91)), 3uLL);
  *v92.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v92, v92)), 3uLL);
  *v93.i8 = vrhadd_u8(v154[0], *v92.i8);
  v94 = vrhadd_u8(*(v154 + 1), *v91.i8);
  v160.val[0] = vrhadd_u8(v153[0], *v91.i8);
  v95 = &v155;
  vst2_s8(v95, v93);
  v160.val[1] = vrhadd_u8(v90, *v92.i8);
  v97 = &v157;
  vst2_s8(v97, v160);
  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  result = memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v99 = *(v153 + 1);
  v100 = vaddl_u8(*(v153 + 1), v154[0]);
  v101 = vaddl_u8(v153[0], *(v154 + 1));
  v102 = vaddq_s16(v100, v101);
  *v100.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v100, v100)), 3uLL);
  *v101.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v101, v101)), 3uLL);
  *v102.i8 = vrhadd_u8(v154[0], *v101.i8);
  v103 = vrhadd_u8(*(v154 + 1), *v100.i8);
  v161.val[0] = vrhadd_u8(v153[0], *v100.i8);
  v96 = &v156;
  vst2_s8(v96, v102);
  v161.val[1] = vrhadd_u8(v99, *v101.i8);
  v104 = v158;
  vst2_s8(v104, v161);
  v105 = (a9 - v151);
  if (v105 >= 1)
  {
    v106 = &a1[v151];
    v107 = &v156;
    v108 = &a7[48 * v152 + 5];
    result = 255;
    v109 = (a9 - v151);
    do
    {
      v111 = *v106++;
      v110 = v111;
      v112 = *(v107 - 16);
      v114 = *v107++;
      v113 = v114;
      v115 = 19077 * v110;
      v116 = ((26149 * v114) >> 8) + (v115 >> 8);
      v117 = v116 - 14234;
      v118 = (v116 - 14234) >> 6;
      if (v116 >= 0x379A)
      {
        v119 = -1;
      }

      else
      {
        v119 = 0;
      }

      if (v117 < 0x4000)
      {
        v119 = v118;
      }

      *(v108 - 2) = v119;
      v120 = (v115 >> 8) - (((6419 * v112) >> 8) + ((13320 * v113) >> 8));
      v121 = v120 + 8708;
      v122 = (v120 + 8708) >> 6;
      if (v120 >= -8708)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v108 - 1) = v123;
      v124 = ((33050 * v112) >> 8) + (v115 >> 8);
      v125 = v124 - 17685;
      v126 = (v124 - 17685) >> 6;
      if (v124 >= 0x4515)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *v108 = v127;
      v108 += 3;
      --v109;
    }

    while (v109);
    if (a2)
    {
      v128 = &a2[v151];
      v129 = v158;
      v130 = &a8[48 * v152 + 5];
      result = 13320;
      do
      {
        v132 = *v128++;
        v131 = v132;
        v133 = *(v129 - 16);
        v135 = *v129++;
        v134 = v135;
        v136 = 19077 * v131;
        v137 = ((26149 * v135) >> 8) + (v136 >> 8);
        v138 = v137 - 14234;
        v139 = (v137 - 14234) >> 6;
        if (v137 >= 0x379A)
        {
          v140 = -1;
        }

        else
        {
          v140 = 0;
        }

        if (v138 < 0x4000)
        {
          v140 = v139;
        }

        *(v130 - 2) = v140;
        v141 = (v136 >> 8) - (((6419 * v133) >> 8) + ((13320 * v134) >> 8));
        v142 = v141 + 8708;
        v143 = (v141 + 8708) >> 6;
        if (v141 >= -8708)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v130 - 1) = v144;
        v145 = ((33050 * v133) >> 8) + (v136 >> 8);
        v146 = v145 - 17685;
        v147 = (v145 - 17685) >> 6;
        if (v145 >= 0x4515)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *v130 = v148;
        v130 += 3;
        --v105;
      }

      while (v105);
    }
  }

  return result;
}

uint64_t UpsampleBgrLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v159 = *MEMORY[0x1E69E9840];
  v157 = 0u;
  memset(v158, 0, 31);
  v155 = 0u;
  v156 = 0u;
  if (!a1)
  {
    UpsampleBgrLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v152 = ((v15 - 1) >> 3);
  v150 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v15) = *a3;
  v16 = *a5;
  v17 = ((v16 + v15) >> 1) + 1;
  v18 = *a4;
  v19 = *a6;
  v20 = ((v19 + v18) >> 1) + 1;
  v21 = (v17 + v15) >> 1;
  v22 = (v20 + v18) >> 1;
  v23 = (19077 * *a1) >> 8;
  v24 = v23 + ((33050 * v21) >> 8);
  if (v24 >= 0x4515)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  if (v24 - 17685 >= 0x4000)
  {
    v26 = v25;
  }

  else
  {
    v26 = (v24 - 17685) >> 6;
  }

  *a7 = v26;
  v27 = v23 - (((13320 * v22) >> 8) + ((6419 * v21) >> 8));
  v28 = v27 + 8708;
  v29 = (v27 + 8708) >> 6;
  if (v27 >= -8708)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  if (v28 < 0x4000)
  {
    v30 = v29;
  }

  a7[1] = v30;
  v31 = v23 + ((26149 * v22) >> 8);
  v32 = v31 - 14234;
  v33 = (v31 - 14234) >> 6;
  if (v31 >= 0x379A)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (v32 < 0x4000)
  {
    v34 = v33;
  }

  a7[2] = v34;
  if (a2)
  {
    v35 = (v17 + v16) >> 1;
    v36 = (v20 + v19) >> 1;
    v37 = (19077 * *a2) >> 8;
    v38 = v37 + ((33050 * v35) >> 8);
    v39 = v38 - 17685;
    v40 = (v38 - 17685) >> 6;
    if (v38 >= 0x4515)
    {
      v41 = -1;
    }

    else
    {
      v41 = 0;
    }

    if (v39 < 0x4000)
    {
      v41 = v40;
    }

    *a8 = v41;
    v42 = v37 - (((13320 * v36) >> 8) + ((6419 * v35) >> 8));
    v43 = v42 + 8708;
    v44 = (v42 + 8708) >> 6;
    if (v42 >= -8708)
    {
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    if (v43 < 0x4000)
    {
      v45 = v44;
    }

    a8[1] = v45;
    v46 = v37 + ((26149 * v36) >> 8);
    if (v46 >= 0x379A)
    {
      v47 = -1;
    }

    else
    {
      v47 = 0;
    }

    if (v46 - 14234 < 0x4000)
    {
      v47 = (v46 - 14234) >> 6;
    }

    a8[2] = v47;
  }

  v151 = (16 * v152) | 1;
  if (v152 >= 1)
  {
    v48 = 0;
    v51 = vdupq_n_s16(0x11Au);
    v52 = vdupq_n_s16(0xC866u);
    v53 = vdupq_n_s16(0x2204u);
    v54 = vdupq_n_s16(0xBAEBu);
    do
    {
      v55 = 0;
      v56 = *(a3 + 1);
      v57 = *(v12 + 1);
      v58 = vaddl_u8(v57, *a3);
      v59 = vaddl_u8(*v12, v56);
      v60 = vaddq_s16(v58, v59);
      *v58.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v58, v58)), 3uLL);
      *v59.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v59, v59)), 3uLL);
      *v60.i8 = vrhadd_u8(*a3, *v59.i8);
      v61 = vrhadd_u8(v56, *v58.i8);
      v162.val[0] = vrhadd_u8(*v12, *v58.i8);
      v162.val[1] = vrhadd_u8(v57, *v59.i8);
      vst2_s8(&v155, v60);
      vst2_s8(&v157, v162);
      v162.val[1] = *(v13 + 1);
      v62 = *(v11 + 1);
      v63 = vaddl_u8(v62, *v13);
      v64 = vaddl_u8(*v11, v162.val[1]);
      v65 = vaddq_s16(v63, v64);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v64, v64)), 3uLL);
      *v65.i8 = vrhadd_u8(*v13, *v64.i8);
      v66 = vrhadd_u8(v162.val[1], *v63.i8);
      v162.val[0] = vrhadd_u8(*v11, *v63.i8);
      v162.val[1] = vrhadd_u8(v62, *v64.i8);
      v49 = &v156;
      vst2_s8(v49, v65);
      v50 = v158;
      vst2_s8(v50, v162);
      v67 = 1;
      v68 = (16 * v48) | 1;
      v69 = (16 * v48) | 1u;
      do
      {
        v70 = v67;
        v71 = *&a1[v68 + v55];
        v72 = 3 * (v55 | v69);
        v73 = (&v155 + v55);
        v74 = vshll_n_u8(*v73, 7uLL);
        v75 = vshll_n_u8(v73[2], 7uLL);
        v76 = vqdmulhq_lane_s16(vshll_n_u8(v71, 7uLL), 0x3408191366254A85, 0);
        v163.val[2] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v75, 0x3408191366254A85, 1), vqaddq_s16(v76, v52)), 6uLL);
        v163.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v76, v53), vqaddq_s16(vqdmulhq_lane_s16(v74, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v75, 0x3408191366254A85, 3))), 6uLL);
        v163.val[0] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v74, v51), vqaddq_s16(v76, v54)), v74), 6uLL);
        v77 = &a7[v72];
        vst3_s8(v77, v163);
        v55 = 8;
        v67 = 0;
      }

      while ((v70 & 1) != 0);
      if (a2)
      {
        v78 = 0;
        v79 = &a2[v68];
        v80 = 1;
        do
        {
          v81 = v80;
          v82 = *&v79[v78];
          v83 = 3 * (v78 | v69);
          v84 = &v158[v78 - 16];
          v85 = vshll_n_u8(*v84, 7uLL);
          v86 = vshll_n_u8(v84[2], 7uLL);
          v87 = vqdmulhq_lane_s16(vshll_n_u8(v82, 7uLL), 0x3408191366254A85, 0);
          v164.val[2] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v86, 0x3408191366254A85, 1), vqaddq_s16(v87, v52)), 6uLL);
          v164.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v87, v53), vqaddq_s16(vqdmulhq_lane_s16(v85, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v86, 0x3408191366254A85, 3))), 6uLL);
          v164.val[0] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v85, v51), vqaddq_s16(v87, v54)), v85), 6uLL);
          v88 = &a8[v83];
          vst3_s8(v88, v164);
          v78 = 8;
          v80 = 0;
        }

        while ((v81 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v48;
    }

    while (v48 != v152);
  }

  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v89 = 9 - v150;
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v90 = *(v153 + 1);
  v91 = vaddl_u8(*(v153 + 1), v154[0]);
  v92 = vaddl_u8(v153[0], *(v154 + 1));
  v93 = vaddq_s16(v91, v92);
  *v91.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v91, v91)), 3uLL);
  *v92.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v92, v92)), 3uLL);
  *v93.i8 = vrhadd_u8(v154[0], *v92.i8);
  v94 = vrhadd_u8(*(v154 + 1), *v91.i8);
  v160.val[0] = vrhadd_u8(v153[0], *v91.i8);
  v95 = &v155;
  vst2_s8(v95, v93);
  v160.val[1] = vrhadd_u8(v90, *v92.i8);
  v97 = &v157;
  vst2_s8(v97, v160);
  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  result = memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v99 = *(v153 + 1);
  v100 = vaddl_u8(*(v153 + 1), v154[0]);
  v101 = vaddl_u8(v153[0], *(v154 + 1));
  v102 = vaddq_s16(v100, v101);
  *v100.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v100, v100)), 3uLL);
  *v101.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v101, v101)), 3uLL);
  *v102.i8 = vrhadd_u8(v154[0], *v101.i8);
  v103 = vrhadd_u8(*(v154 + 1), *v100.i8);
  v161.val[0] = vrhadd_u8(v153[0], *v100.i8);
  v96 = &v156;
  vst2_s8(v96, v102);
  v161.val[1] = vrhadd_u8(v99, *v101.i8);
  v104 = v158;
  vst2_s8(v104, v161);
  v105 = (a9 - v151);
  if (v105 >= 1)
  {
    v106 = &a1[v151];
    v107 = &v156;
    v108 = &a7[48 * v152 + 5];
    result = 255;
    v109 = (a9 - v151);
    do
    {
      v111 = *v106++;
      v110 = v111;
      v112 = *(v107 - 16);
      v114 = *v107++;
      v113 = v114;
      v115 = 19077 * v110;
      v116 = ((33050 * v112) >> 8) + (v115 >> 8);
      v117 = v116 - 17685;
      v118 = (v116 - 17685) >> 6;
      if (v116 >= 0x4515)
      {
        v119 = -1;
      }

      else
      {
        v119 = 0;
      }

      if (v117 < 0x4000)
      {
        v119 = v118;
      }

      *(v108 - 2) = v119;
      v120 = (v115 >> 8) - (((6419 * v112) >> 8) + ((13320 * v113) >> 8));
      v121 = v120 + 8708;
      v122 = (v120 + 8708) >> 6;
      if (v120 >= -8708)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v108 - 1) = v123;
      v124 = ((26149 * v113) >> 8) + (v115 >> 8);
      v125 = v124 - 14234;
      v126 = (v124 - 14234) >> 6;
      if (v124 >= 0x379A)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *v108 = v127;
      v108 += 3;
      --v109;
    }

    while (v109);
    if (a2)
    {
      v128 = &a2[v151];
      v129 = v158;
      v130 = &a8[48 * v152 + 5];
      result = 13320;
      do
      {
        v132 = *v128++;
        v131 = v132;
        v133 = *(v129 - 16);
        v135 = *v129++;
        v134 = v135;
        v136 = 19077 * v131;
        v137 = ((33050 * v133) >> 8) + (v136 >> 8);
        v138 = v137 - 17685;
        v139 = (v137 - 17685) >> 6;
        if (v137 >= 0x4515)
        {
          v140 = -1;
        }

        else
        {
          v140 = 0;
        }

        if (v138 < 0x4000)
        {
          v140 = v139;
        }

        *(v130 - 2) = v140;
        v141 = (v136 >> 8) - (((6419 * v133) >> 8) + ((13320 * v134) >> 8));
        v142 = v141 + 8708;
        v143 = (v141 + 8708) >> 6;
        if (v141 >= -8708)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v130 - 1) = v144;
        v145 = ((26149 * v134) >> 8) + (v136 >> 8);
        v146 = v145 - 14234;
        v147 = (v145 - 14234) >> 6;
        if (v145 >= 0x379A)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *v130 = v148;
        v130 += 3;
        --v105;
      }

      while (v105);
    }
  }

  return result;
}