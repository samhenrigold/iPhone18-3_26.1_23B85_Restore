uint64_t SnippetUI::ImageElement_Source::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 > 3)
  {
    if (v2 != 4 && v2 != 5 && v2 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v2 != 1 && v2 != 2 && v2 != 3)
  {
    goto LABEL_11;
  }

  this = *(this + 16);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_11:
  *(v1 + 28) = 0;
  return this;
}

void google::protobuf::internal::AssignDescriptors(uint64_t a1)
{
  v2 = a1;
  v1 = *(a1 + 32);
  if (atomic_load_explicit(v1, memory_order_acquire) != -1)
  {
    v4[1] = &v2;
    v3 = v4;
    std::__call_once(v1, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(google::protobuf::internal::DescriptorTable const*),google::protobuf::internal::DescriptorTable const*&>>);
  }
}

void siri::dialogengine::GetListInfo(uint64_t **this, siri::dialogengine::Context *a2, const google::protobuf::Message *a3)
{
  this[1] = 0;
  this[2] = 0;
  *this = (this + 1);
  siri::dialogengine::GetStoredItems(&v15, a3);
  v3 = v15;
  if (v15 != v16)
  {
    do
    {
      v11 = *(v3 + 8);
      siri::dialogengine::CatBinary::vcat_item::vcat_item(v12, (v3 + 5));
      if (v14 == 3)
      {
        memset(v9, 0, sizeof(v9));
        memset(&__p, 0, sizeof(__p));
        std::string::operator=(v9, v13[3]);
        v4 = &siri::dialogengine::CatBinary::_vcat_item_repetition_default_instance_;
        if (v14 == 3)
        {
          v4 = v13;
        }

        std::string::operator=(&v9[1], v4[4]);
        v5 = &siri::dialogengine::CatBinary::_vcat_item_repetition_default_instance_;
        if (v14 == 3)
        {
          v5 = v13;
        }

        std::string::operator=(&__p, v5[5]);
        siri::dialogengine::StringSplit(v9, ".");
      }

      siri::dialogengine::CatBinary::vcat_item::~vcat_item(v12);
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v16);
  }

  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v16[0]);
}

void sub_1BFBDEFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  *(v38 - 144) = v38 - 120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v38 - 144));
  siri::dialogengine::ListInfo::~ListInfo(&a16);
  siri::dialogengine::CatBinary::vcat_item::~vcat_item(&a29);
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(a37);
  std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(*a12);
  _Unwind_Resume(a1);
}

siri::dialogengine::CatBinary::vcat_item *siri::dialogengine::CatBinary::vcat_item::vcat_item(siri::dialogengine::CatBinary::vcat_item *this)
{
  *this = &unk_1F3F18AC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_vcat_item_CatBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_vcat_item_CatBinary_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = 0;
  return this;
}

unint64_t google::protobuf::Reflection::GetUnknownFields(google::protobuf::Reflection *this, const google::protobuf::Message *a2)
{
  v2 = *(a2 + *(this + 9));
  if (v2)
  {
    return v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    return google::protobuf::UnknownFieldSet::default_instance(this);
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      siri::dialogengine::CatBinary::vcat_item::~vcat_item((v2 + 40));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,siri::dialogengine::ListInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::ListInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::ListInfo>>>::destroy(*(a1 + 1));
    if (a1[151] < 0)
    {
      operator delete(*(a1 + 16));
    }

    if (a1[127] < 0)
    {
      operator delete(*(a1 + 13));
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    v2 = *(a1 + 9);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void siri::dialogengine::GetConditionInfo(siri::dialogengine *this, const google::protobuf::Message *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  siri::dialogengine::GetStoredItems(&v12, a2);
  v4 = v12;
  if (v12 != v13)
  {
    while (1)
    {
      v8 = *(v4 + 8);
      siri::dialogengine::CatBinary::vcat_item::vcat_item(v9, (v4 + 5));
      if (v11 != 2 && (v9[16] & 2) != 0)
      {
        break;
      }

      siri::dialogengine::CatBinary::vcat_item::~vcat_item(v9);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == v13)
      {
        goto LABEL_12;
      }
    }

    std::string::operator=(v3, __str);
    *this = v8;
    siri::dialogengine::CatBinary::vcat_item::~vcat_item(v9);
  }

LABEL_12:
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v13[0]);
}

void sub_1BFBDF384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  siri::dialogengine::CatBinary::vcat_item::~vcat_item(&a11);
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(a19);
  if (*(v19 + 31) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::ConditionIsTrue(siri::dialogengine *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    v8 = 1;
    return v8 & 1;
  }

  v6 = *(a1 + 63);
  v5 = *(a1 + 64);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 63);
    v5 = *(a1 + 64);
    v8 = v5 == 0;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 63);
    v8 = 1;
  }

  v9 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(v7 + 272, a2);
  if (v7 + 280 == v9)
  {
    v11 = 0;
    v12 = 0;
    if ((v8 & 1) == 0)
    {
LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v12 = *(v9 + 56);
    v11 = *(v9 + 64);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    goto LABEL_20;
  }

  v13 = *(v12 + 144);
  if (v13 != *(v12 + 152))
  {
    v8 = siri::dialogengine::EvaluateConditionEntry(a1, *v13, 0, v10);
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = 0;
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v12)
  {
    return v8 & 1;
  }

LABEL_21:
  siri::dialogengine::ResolveType(&__s1, 0, a1, a2);
  v14 = strlen(siri::dialogengine::TYPE_UNKNOWN);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v14 == __s1.__r_.__value_.__l.__size_)
    {
      if (v14 == -1)
      {
        std::basic_string<char32_t>::__throw_out_of_range[abi:ne200100]();
      }

      v16 = __s1.__r_.__value_.__r.__words[0];
      v17 = memcmp(__s1.__r_.__value_.__l.__data_, siri::dialogengine::TYPE_UNKNOWN, v14);
      operator delete(v16);
      if (!v17)
      {
        goto LABEL_32;
      }
    }

    else
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

LABEL_39:
    _ZNSt3__115allocate_sharedB8ne200100IN4siri12dialogengine9ConditionENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v20);
  }

  if (v14 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]) || memcmp(&__s1, siri::dialogengine::TYPE_UNKNOWN, v14))
  {
    goto LABEL_39;
  }

LABEL_32:
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  siri::dialogengine::Log::Info("Could not resolve type for condition '%s', result will be false", v15, v18);
  v8 = 0;
  return v8 & 1;
}

void sub_1BFBDF6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::ClearUnknownField(google::protobuf::Message *this, google::protobuf::Message *a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  (*(*this + 168))(this);
  if (v4)
  {
    google::protobuf::Reflection::MutableUnknownFields(v4, this);
    if (v5)
    {

      google::protobuf::UnknownFieldSet::DeleteByNumber(v5, v2);
      return;
    }

    v6 = "Could not get unknown field set";
  }

  else
  {
    v6 = "Could not get message reflection";
  }

  siri::dialogengine::Log::Error(v6, v4);
}

siri::dialogengine::TemporaryVariable *siri::dialogengine::TemporaryVariable::TemporaryVariable(siri::dialogengine::TemporaryVariable *this, siri::dialogengine::Context *a2, const siri::dialogengine::ListInfo *a3)
{
  *this = a2;
  siri::dialogengine::ListInfo::ListInfo(this + 8, a3);
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  if (a2)
  {
    v6 = *(a3 + 71);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 7);
    }

    if (v6)
    {
      siri::dialogengine::Context::FindVariable(a2, a3 + 48, &v9);
      v7 = *(this + 16);
      *(this + 120) = v9;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  return this;
}

void sub_1BFBDFB0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 112);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  siri::dialogengine::ListInfo::~ListInfo((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::ListInfo::ListInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
  }

  return a1;
}

void sub_1BFBDFBF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::TemporaryVariable::SetIndex(siri::dialogengine::TemporaryVariable *this, const char *a2)
{
  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (!*(this + 5))
    {
      return;
    }
  }

  else if (!*(this + 55))
  {
    return;
  }

  if ((*(this + 79) & 0x8000000000000000) != 0)
  {
    if (!*(this + 8))
    {
      return;
    }
  }

  else if (!*(this + 79))
  {
    return;
  }

  if (*this)
  {
    siri::dialogengine::TemporaryVariable::RemoveFromContext(this);
    v5 = *(this + 2);
    if (!v5)
    {
      return;
    }

    v7 = v5 + 72;
    v6 = *(v5 + 72);
    v33 = 0u;
    if (a2 >= (*(v7 + 8) - v6) >> 4)
    {
      goto LABEL_22;
    }

    v8 = *(v6 + 16 * a2);
    v33 = v8;
    v9 = *(v6 + 16 * a2 + 8);
    if (*(&v8 + 1))
    {
      atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
LABEL_22:
      siri::dialogengine::Log::Error("Could not get item %zu for iterator", v4, a2);
      v9 = *(&v33 + 1);
LABEL_99:
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      return;
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v8 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(v8 + 32), *(v8 + 40));
    }

    else
    {
      v37 = *(v8 + 32);
    }

    v10 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v37.__r_.__value_.__l.__size_ != 12)
      {
        if (v37.__r_.__value_.__l.__size_ != 13)
        {
          if (v37.__r_.__value_.__l.__size_ == 14)
          {
            v11 = v37.__r_.__value_.__r.__words[0];
            v12 = *v37.__r_.__value_.__l.__data_;
LABEL_33:
            v13 = *(v11->__r_.__value_.__r.__words + 6);
            if (v12 == 0x422E676F6C616964 && v13 == 0x6E61656C6F6F422ELL)
            {
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              operator new();
            }
          }

LABEL_75:
          if (*(v33 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v33 + 8), *(v33 + 16));
            v10 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = *(v33 + 8);
            __str.__r_.__value_.__r.__words[2] = *(v33 + 24);
            *&__str.__r_.__value_.__l.__data_ = v25;
          }

          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v27 = v10 < 0;
          v28 = &v37;
          if (v27)
          {
            v28 = v37.__r_.__value_.__r.__words[0];
          }

          siri::dialogengine::Log::Error("Unable to duplicate variable '%s' of type '%s'", v4, p_str, v28);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

LABEL_84:
          if (*(v33 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v33 + 32), *(v33 + 40));
          }

          else
          {
            __str = *(v33 + 32);
          }

          std::string::operator=(0x20, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          MEMORY[0x38] = *(v33 + 56);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          v29 = *(this + 14);
          *(this + 13) = 0;
          *(this + 14) = 0;
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          std::string::operator=((*(this + 13) + 8), (this + 56));
          v30 = *(this + 13);
          *(v30 + 64) = 1;
          v31 = *this;
          v32 = *(this + 14);
          v34[0] = v30;
          v34[1] = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::dialogengine::Context::AddVariable(v31, v34);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          goto LABEL_99;
        }

        v11 = v37.__r_.__value_.__r.__words[0];
        if (*v37.__r_.__value_.__l.__data_ != 0x532E676F6C616964 || *(v37.__r_.__value_.__r.__words[0] + 5) != 0x676E697274532E67)
        {
          if (*v37.__r_.__value_.__l.__data_ != 0x4E2E676F6C616964 || *(v37.__r_.__value_.__r.__words[0] + 5) != 0x7265626D754E2E67)
          {
            v17 = *v37.__r_.__value_.__l.__data_;
LABEL_60:
            v20 = *(v11->__r_.__value_.__r.__words + 5);
            if (v17 == 0x4F2E676F6C616964 && v20 == 0x7463656A624F2E67)
            {
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              operator new();
            }

            goto LABEL_75;
          }

LABEL_104:
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          operator new();
        }

LABEL_69:
        operator new();
      }

      v11 = v37.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = &v37;
      if (HIBYTE(v37.__r_.__value_.__r.__words[2]) != 12)
      {
        if (HIBYTE(v37.__r_.__value_.__r.__words[2]) != 13)
        {
          if (HIBYTE(v37.__r_.__value_.__r.__words[2]) == 14)
          {
            v12 = v37.__r_.__value_.__r.__words[0];
            goto LABEL_33;
          }

          goto LABEL_75;
        }

        if (v37.__r_.__value_.__r.__words[0] != 0x532E676F6C616964 || *(v37.__r_.__value_.__r.__words + 5) != 0x676E697274532E67)
        {
          if (v37.__r_.__value_.__r.__words[0] != 0x4E2E676F6C616964 || *(v37.__r_.__value_.__r.__words + 5) != 0x7265626D754E2E67)
          {
            v17 = v37.__r_.__value_.__r.__words[0];
            goto LABEL_60;
          }

          goto LABEL_104;
        }

        goto LABEL_69;
      }
    }

    v22 = v11->__r_.__value_.__r.__words[0];
    v23 = v11->__r_.__value_.__r.__words[1];
    if (v22 == 0x412E676F6C616964 && v23 == 2036429426)
    {
      std::dynamic_pointer_cast[abi:ne200100]<siri::dialogengine::VariableArray,siri::dialogengine::Variable>(&v36, v33, v9);
      if (v36.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      if (v36.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36.__r_.__value_.__l.__size_);
      }

      goto LABEL_84;
    }

    goto LABEL_75;
  }

  siri::dialogengine::Log::Error("Context must not be null when setting temporary value", a2);
}

void sub_1BFBE0618(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1C68D4E80](v22, 0x10B3C40C1072A30, a3, a4, a5, a6, a7, a8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::Message::GetTypeName(google::protobuf::Message *this@<X0>, std::string *a2@<X8>)
{
  v3 = *((*(*this + 168))(this) + 8);
  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
    v6 = *(v3 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void siri::dialogengine::GetMessageCondition(std::string *this, const google::protobuf::Message *a2)
{
  siri::dialogengine::GetConditionInfo(&v3, a2);
  if (SHIBYTE(v5) < 0)
  {
    std::string::__init_copy_ctor_external(this, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = *__p;
    this->__r_.__value_.__r.__words[2] = v5;
  }
}

void sub_1BFBE09A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double google::protobuf::Reflection::MutableUnknownFields(google::protobuf::Reflection *this, google::protobuf::Message *a2)
{
  v2 = *(this + 9);
  if ((*(a2 + v2) & 1) == 0)
  {
    return google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::mutable_unknown_fields_slow((a2 + v2));
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::Message const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<google::protobuf::FieldDescriptor const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::Message const*>>(a1, a2);
    }

    std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t google::protobuf::UnknownFieldSet::default_instance(google::protobuf::UnknownFieldSet *this)
{
  {
    operator new();
  }

  return google::protobuf::UnknownFieldSet::default_instance(void)::instance;
}

uint64_t *siri::dialogengine::vcat::GetRequiredFields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v698 = *MEMORY[0x1E69E9840];
  {
    std::string::basic_string[abi:ne200100]<0>(v368, "SnippetUI.ActionElement");
    std::string::basic_string[abi:ne200100]<0>(v589, "command");
    std::set<std::string>::set[abi:ne200100](v367, v589, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v591, v368, v367);
    std::string::basic_string[abi:ne200100]<0>(v365, "SnippetUI.ActionProperty");
    std::string::basic_string[abi:ne200100]<0>(v587, "actions");
    std::set<std::string>::set[abi:ne200100](v364, v587, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v592, v365, v364);
    std::string::basic_string[abi:ne200100]<0>(v362, "SnippetUI.BackgroundElement");
    std::string::basic_string[abi:ne200100]<0>(v585, "is_hidden_on_idioms");
    std::string::basic_string[abi:ne200100]<0>(v586, "visual");
    std::set<std::string>::set[abi:ne200100](v361, v585, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v593, v362, v361);
    std::string::basic_string[abi:ne200100]<0>(v359, "SnippetUI.BinaryButton");
    std::string::basic_string[abi:ne200100]<0>(v583, "primary_button");
    std::string::basic_string[abi:ne200100]<0>(v584, "secondary_button");
    std::set<std::string>::set[abi:ne200100](v358, v583, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v594, v359, v358);
    std::string::basic_string[abi:ne200100]<0>(v356, "SnippetUI.Button");
    std::string::basic_string[abi:ne200100]<0>(v581, "action");
    std::string::basic_string[abi:ne200100]<0>(v582, "label");
    std::set<std::string>::set[abi:ne200100](v355, v581, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v595, v356, v355);
    std::string::basic_string[abi:ne200100]<0>(v353, "SnippetUI.Color.HexValue");
    std::string::basic_string[abi:ne200100]<0>(v579, "rgba");
    std::set<std::string>::set[abi:ne200100](v352, v579, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v596, v353, v352);
    std::string::basic_string[abi:ne200100]<0>(v350, "SnippetUI.Color");
    std::string::basic_string[abi:ne200100]<0>(v577, "value");
    std::set<std::string>::set[abi:ne200100](v349, v577, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v597, v350, v349);
    std::string::basic_string[abi:ne200100]<0>(v347, "SnippetUI.ColorElement");
    std::string::basic_string[abi:ne200100]<0>(v575, "color");
    std::set<std::string>::set[abi:ne200100](v346, v575, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v598, v347, v346);
    std::string::basic_string[abi:ne200100]<0>(v344, "SnippetUI.Command.AppPunchout");
    std::string::basic_string[abi:ne200100]<0>(v573, "punch_out_uri");
    std::set<std::string>::set[abi:ne200100](v343, v573, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v599, v344, v343);
    std::string::basic_string[abi:ne200100]<0>(v341, "SnippetUI.Command.ChangeBackground");
    std::string::basic_string[abi:ne200100]<0>(v571, "background");
    std::set<std::string>::set[abi:ne200100](v340, v571, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v600, v341, v340);
    std::string::basic_string[abi:ne200100]<0>(v338, "SnippetUI.Command.ResponseGroup");
    std::string::basic_string[abi:ne200100]<0>(v569, "group_id");
    std::set<std::string>::set[abi:ne200100](v337, v569, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v601, v338, v337);
    std::string::basic_string[abi:ne200100]<0>(v335, "SnippetUI.Command");
    std::string::basic_string[abi:ne200100]<0>(v567, "value");
    std::set<std::string>::set[abi:ne200100](v334, v567, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v602, v335, v334);
    std::string::basic_string[abi:ne200100]<0>(v332, "SnippetUI.Control_PlayerButton");
    std::string::basic_string[abi:ne200100]<0>(v565, "label_1");
    std::string::basic_string[abi:ne200100]<0>(v566, "player");
    std::set<std::string>::set[abi:ne200100](v331, v565, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v603, v332, v331);
    std::string::basic_string[abi:ne200100]<0>(v329, "SnippetUI.Control_Slider");
    std::string::basic_string[abi:ne200100]<0>(v563, "slider");
    std::set<std::string>::set[abi:ne200100](v328, v563, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v604, v329, v328);
    std::string::basic_string[abi:ne200100]<0>(v326, "SnippetUI.Control_Switch");
    std::string::basic_string[abi:ne200100]<0>(v561, "switch");
    std::string::basic_string[abi:ne200100]<0>(v562, "text_1");
    std::set<std::string>::set[abi:ne200100](v325, v561, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v605, v326, v325);
    std::string::basic_string[abi:ne200100]<0>(v323, "SnippetUI.CoreChart");
    std::string::basic_string[abi:ne200100]<0>(v559, "data");
    std::set<std::string>::set[abi:ne200100](v322, v559, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v606, v323, v322);
    std::string::basic_string[abi:ne200100]<0>(v320, "SnippetUI.CoreChartElement");
    std::string::basic_string[abi:ne200100]<0>(v557, "chart");
    std::set<std::string>::set[abi:ne200100](v319, v557, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v607, v320, v319);
    std::string::basic_string[abi:ne200100]<0>(v317, "SnippetUI.CustomCanvas");
    std::string::basic_string[abi:ne200100]<0>(v554, "bundle_name");
    std::string::basic_string[abi:ne200100]<0>(v555, "view_data");
    std::string::basic_string[abi:ne200100]<0>(v556, "view_id");
    std::set<std::string>::set[abi:ne200100](v316, v554, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v608, v317, v316);
    std::string::basic_string[abi:ne200100]<0>(v314, "SnippetUI.CustomElement");
    std::string::basic_string[abi:ne200100]<0>(v552, "canvas");
    std::set<std::string>::set[abi:ne200100](v313, v552, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v609, v314, v313);
    std::string::basic_string[abi:ne200100]<0>(v311, "SnippetUI.FactItem_Button");
    std::string::basic_string[abi:ne200100]<0>(v550, "button_1");
    std::string::basic_string[abi:ne200100]<0>(v551, "text_1");
    std::set<std::string>::set[abi:ne200100](v310, v550, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v610, v311, v310);
    std::string::basic_string[abi:ne200100]<0>(v308, "SnippetUI.FactItem_HeroNumber");
    std::string::basic_string[abi:ne200100]<0>(v548, "number");
    std::set<std::string>::set[abi:ne200100](v307, v548, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v611, v308, v307);
    std::string::basic_string[abi:ne200100]<0>(v305, "SnippetUI.FactItem_ShortNumber");
    std::string::basic_string[abi:ne200100]<0>(v546, "number");
    std::string::basic_string[abi:ne200100]<0>(v547, "text_1");
    std::set<std::string>::set[abi:ne200100](v304, v546, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v612, v305, v304);
    std::string::basic_string[abi:ne200100]<0>(v302, "SnippetUI.FactItem_Standard");
    std::string::basic_string[abi:ne200100]<0>(v544, "text_1");
    std::set<std::string>::set[abi:ne200100](v301, v544, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v613, v302, v301);
    std::string::basic_string[abi:ne200100]<0>(v299, "SnippetUI.HeroHeader");
    std::string::basic_string[abi:ne200100]<0>(v542, "banner");
    std::string::basic_string[abi:ne200100]<0>(v543, "text_1");
    std::set<std::string>::set[abi:ne200100](v298, v542, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v614, v299, v298);
    std::string::basic_string[abi:ne200100]<0>(v296, "SnippetUI.HorizontalList_Standard.Item");
    std::string::basic_string[abi:ne200100]<0>(v539, "style");
    std::string::basic_string[abi:ne200100]<0>(v540, "text_1");
    std::string::basic_string[abi:ne200100]<0>(v541, "thumbnail");
    std::set<std::string>::set[abi:ne200100](v295, v539, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v615, v296, v295);
    std::string::basic_string[abi:ne200100]<0>(v293, "SnippetUI.HorizontalList_Standard");
    std::string::basic_string[abi:ne200100]<0>(v537, "items");
    std::set<std::string>::set[abi:ne200100](v292, v537, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v616, v293, v292);
    std::string::basic_string[abi:ne200100]<0>(v290, "SnippetUI.ImageElement.AppIcon");
    std::string::basic_string[abi:ne200100]<0>(v535, "application_bundle_identifier");
    std::set<std::string>::set[abi:ne200100](v289, v535, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v617, v290, v289);
    std::string::basic_string[abi:ne200100]<0>(v287, "SnippetUI.ImageElement.AspectRatio");
    std::string::basic_string[abi:ne200100]<0>(v533, "height");
    std::string::basic_string[abi:ne200100]<0>(v534, "width");
    std::set<std::string>::set[abi:ne200100](v286, v533, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v618, v287, v286);
    std::string::basic_string[abi:ne200100]<0>(v284, "SnippetUI.ImageElement.Bundle");
    std::string::basic_string[abi:ne200100]<0>(v531, "name");
    std::set<std::string>::set[abi:ne200100](v283, v531, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v619, v284, v283);
    std::string::basic_string[abi:ne200100]<0>(v281, "SnippetUI.ImageElement.Contact.Avatar");
    std::string::basic_string[abi:ne200100]<0>(v529, "contact_ids");
    std::set<std::string>::set[abi:ne200100](v280, v529, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v620, v281, v280);
    std::string::basic_string[abi:ne200100]<0>(v278, "SnippetUI.ImageElement.Contact.Monogram");
    std::string::basic_string[abi:ne200100]<0>(v527, "letters");
    std::set<std::string>::set[abi:ne200100](v277, v527, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v621, v278, v277);
    std::string::basic_string[abi:ne200100]<0>(v275, "SnippetUI.ImageElement.Contact");
    std::string::basic_string[abi:ne200100]<0>(v525, "content");
    std::set<std::string>::set[abi:ne200100](v274, v525, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v622, v275, v274);
    std::string::basic_string[abi:ne200100]<0>(v272, "SnippetUI.ImageElement.Data");
    std::string::basic_string[abi:ne200100]<0>(v523, "png_data");
    std::set<std::string>::set[abi:ne200100](v271, v523, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v623, v272, v271);
    std::string::basic_string[abi:ne200100]<0>(v269, "SnippetUI.ImageElement.Source");
    std::string::basic_string[abi:ne200100]<0>(v521, "value");
    std::set<std::string>::set[abi:ne200100](v268, v521, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v624, v269, v268);
    std::string::basic_string[abi:ne200100]<0>(v266, "SnippetUI.ImageElement.Symbol");
    std::string::basic_string[abi:ne200100]<0>(v519, "name");
    std::set<std::string>::set[abi:ne200100](v265, v519, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v625, v266, v265);
    std::string::basic_string[abi:ne200100]<0>(v263, "SnippetUI.ImageElement.Url");
    std::string::basic_string[abi:ne200100]<0>(v517, "source");
    std::set<std::string>::set[abi:ne200100](v262, v517, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v626, v263, v262);
    std::string::basic_string[abi:ne200100]<0>(v260, "SnippetUI.ImageElement");
    std::string::basic_string[abi:ne200100]<0>(v515, "sources");
    std::set<std::string>::set[abi:ne200100](v259, v515, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v627, v260, v259);
    std::string::basic_string[abi:ne200100]<0>(v257, "SnippetUI.IntentsUI_Standard.Slot");
    std::string::basic_string[abi:ne200100]<0>(v513, "fallback");
    std::string::basic_string[abi:ne200100]<0>(v514, "parameter_key_paths");
    std::set<std::string>::set[abi:ne200100](v256, v513, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v628, v257, v256);
    std::string::basic_string[abi:ne200100]<0>(v254, "SnippetUI.IntentsUI_Standard");
    std::string::basic_string[abi:ne200100]<0>(v511, "interaction");
    std::string::basic_string[abi:ne200100]<0>(v512, "slots");
    std::set<std::string>::set[abi:ne200100](v253, v511, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v629, v254, v253);
    std::string::basic_string[abi:ne200100]<0>(v251, "SnippetUI.LongItem_Text");
    std::string::basic_string[abi:ne200100]<0>(v509, "text_1");
    std::set<std::string>::set[abi:ne200100](v250, v509, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v630, v251, v250);
    std::string::basic_string[abi:ne200100]<0>(v248, "SnippetUI.MultilineTextProperty.Line");
    std::string::basic_string[abi:ne200100]<0>(v507, "text_elements");
    std::set<std::string>::set[abi:ne200100](v247, v507, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v631, v248, v247);
    std::string::basic_string[abi:ne200100]<0>(v245, "SnippetUI.MultilineTextProperty");
    std::string::basic_string[abi:ne200100]<0>(v505, "lines");
    std::set<std::string>::set[abi:ne200100](v244, v505, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v632, v245, v244);
    std::string::basic_string[abi:ne200100]<0>(v242, "SnippetUI.OptionalBool");
    std::string::basic_string[abi:ne200100]<0>(v503, "value");
    std::set<std::string>::set[abi:ne200100](v241, v503, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v633, v242, v241);
    std::string::basic_string[abi:ne200100]<0>(v239, "SnippetUI.OptionalDouble");
    std::string::basic_string[abi:ne200100]<0>(v501, "value");
    std::set<std::string>::set[abi:ne200100](v238, v501, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v634, v239, v238);
    std::string::basic_string[abi:ne200100]<0>(v236, "SnippetUI.OptionalInt");
    std::string::basic_string[abi:ne200100]<0>(v499, "value");
    std::set<std::string>::set[abi:ne200100](v235, v499, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v635, v236, v235);
    std::string::basic_string[abi:ne200100]<0>(v233, "SnippetUI.OrnamentElement");
    std::string::basic_string[abi:ne200100]<0>(v497, "is_hidden_on_idioms");
    std::string::basic_string[abi:ne200100]<0>(v498, "visual");
    std::set<std::string>::set[abi:ne200100](v232, v497, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v636, v233, v232);
    std::string::basic_string[abi:ne200100]<0>(v230, "SnippetUI.Player");
    std::string::basic_string[abi:ne200100]<0>(v495, "control");
    std::set<std::string>::set[abi:ne200100](v229, v495, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v637, v230, v229);
    std::string::basic_string[abi:ne200100]<0>(v227, "SnippetUI.PlayerButton");
    std::string::basic_string[abi:ne200100]<0>(v493, "pause_button");
    std::string::basic_string[abi:ne200100]<0>(v494, "play_button");
    std::set<std::string>::set[abi:ne200100](v226, v493, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v638, v227, v226);
    std::string::basic_string[abi:ne200100]<0>(v224, "SnippetUI.PrimaryHeader_Marquee");
    std::string::basic_string[abi:ne200100]<0>(v491, "text_1");
    std::set<std::string>::set[abi:ne200100](v223, v491, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v639, v224, v223);
    std::string::basic_string[abi:ne200100]<0>(v221, "SnippetUI.PrimaryHeader_Rich");
    std::string::basic_string[abi:ne200100]<0>(v489, "text_1");
    std::set<std::string>::set[abi:ne200100](v220, v489, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v640, v221, v220);
    std::string::basic_string[abi:ne200100]<0>(v218, "SnippetUI.PrimaryHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v487, "text_1");
    std::set<std::string>::set[abi:ne200100](v217, v487, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v641, v218, v217);
    std::string::basic_string[abi:ne200100]<0>(v215, "SnippetUI.Reference_Button");
    std::string::basic_string[abi:ne200100]<0>(v485, "label");
    std::set<std::string>::set[abi:ne200100](v214, v485, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v642, v215, v214);
    std::string::basic_string[abi:ne200100]<0>(v212, "SnippetUI.Reference_Footnote");
    std::string::basic_string[abi:ne200100]<0>(v483, "text_1");
    std::set<std::string>::set[abi:ne200100](v211, v483, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v643, v212, v211);
    std::string::basic_string[abi:ne200100]<0>(v209, "SnippetUI.Reference_Logo");
    std::string::basic_string[abi:ne200100]<0>(v481, "thumbnail");
    std::set<std::string>::set[abi:ne200100](v208, v481, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v644, v209, v208);
    std::string::basic_string[abi:ne200100]<0>(v206, "SnippetUI.Reference_Rich");
    std::string::basic_string[abi:ne200100]<0>(v479, "text_1");
    std::set<std::string>::set[abi:ne200100](v205, v479, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v645, v206, v205);
    std::string::basic_string[abi:ne200100]<0>(v203, "SnippetUI.Reference_Standard");
    std::string::basic_string[abi:ne200100]<0>(v477, "text_1");
    std::set<std::string>::set[abi:ne200100](v202, v477, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v646, v203, v202);
    std::string::basic_string[abi:ne200100]<0>(v200, "SnippetUI.Response.Group");
    std::string::basic_string[abi:ne200100]<0>(v475, "components");
    std::string::basic_string[abi:ne200100]<0>(v476, "id");
    std::set<std::string>::set[abi:ne200100](v199, v475, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v647, v200, v199);
    std::string::basic_string[abi:ne200100]<0>(v197, "SnippetUI.Response.Section");
    std::string::basic_string[abi:ne200100]<0>(v472, "component_list");
    std::string::basic_string[abi:ne200100]<0>(v473, "is_hidden_on_idioms");
    std::string::basic_string[abi:ne200100]<0>(v474, "level_of_detail");
    std::set<std::string>::set[abi:ne200100](v196, v472, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v648, v197, v196);
    std::string::basic_string[abi:ne200100]<0>(v194, "SnippetUI.Response");
    std::string::basic_string[abi:ne200100]<0>(v470, "hide_redacted_elements");
    std::string::basic_string[abi:ne200100]<0>(v471, "sections");
    std::set<std::string>::set[abi:ne200100](v193, v470, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v649, v194, v193);
    std::string::basic_string[abi:ne200100]<0>(v191, "SnippetUI.Sash_Standard");
    std::string::basic_string[abi:ne200100]<0>(v468, "title");
    std::set<std::string>::set[abi:ne200100](v190, v468, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v650, v191, v190);
    std::string::basic_string[abi:ne200100]<0>(v188, "SnippetUI.SecondaryHeader_Emphasized");
    std::string::basic_string[abi:ne200100]<0>(v466, "text_1");
    std::set<std::string>::set[abi:ne200100](v187, v466, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v651, v188, v187);
    std::string::basic_string[abi:ne200100]<0>(v185, "SnippetUI.SecondaryHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v464, "text_1");
    std::set<std::string>::set[abi:ne200100](v184, v464, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v652, v185, v184);
    std::string::basic_string[abi:ne200100]<0>(v182, "SnippetUI.SectionHeader_Rich");
    std::string::basic_string[abi:ne200100]<0>(v462, "text_1");
    std::set<std::string>::set[abi:ne200100](v181, v462, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v653, v182, v181);
    std::string::basic_string[abi:ne200100]<0>(v179, "SnippetUI.SectionHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v460, "text_1");
    std::set<std::string>::set[abi:ne200100](v178, v460, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v654, v179, v178);
    std::string::basic_string[abi:ne200100]<0>(v176, "SnippetUI.SimpleItem_Player");
    std::string::basic_string[abi:ne200100]<0>(v458, "player");
    std::string::basic_string[abi:ne200100]<0>(v459, "text_1");
    std::set<std::string>::set[abi:ne200100](v175, v458, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v655, v176, v175);
    std::string::basic_string[abi:ne200100]<0>(v173, "SnippetUI.SimpleItem_ReverseRich");
    std::string::basic_string[abi:ne200100]<0>(v456, "text_1");
    std::set<std::string>::set[abi:ne200100](v172, v456, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v656, v173, v172);
    std::string::basic_string[abi:ne200100]<0>(v170, "SnippetUI.SimpleItem_Rich");
    std::string::basic_string[abi:ne200100]<0>(v454, "text_1");
    std::set<std::string>::set[abi:ne200100](v169, v454, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v657, v170, v169);
    std::string::basic_string[abi:ne200100]<0>(v167, "SnippetUI.SimpleItem_RichSearchResult");
    std::string::basic_string[abi:ne200100]<0>(v452, "text_1");
    std::set<std::string>::set[abi:ne200100](v166, v452, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v658, v167, v166);
    std::string::basic_string[abi:ne200100]<0>(v164, "SnippetUI.SimpleItem_Standard");
    std::string::basic_string[abi:ne200100]<0>(v450, "text_1");
    std::set<std::string>::set[abi:ne200100](v163, v450, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v659, v164, v163);
    std::string::basic_string[abi:ne200100]<0>(v161, "SnippetUI.SimpleItem_Visual");
    std::string::basic_string[abi:ne200100]<0>(v448, "thumbnails");
    std::set<std::string>::set[abi:ne200100](v160, v448, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v660, v161, v160);
    std::string::basic_string[abi:ne200100]<0>(v158, "SnippetUI.Slider");
    std::string::basic_string[abi:ne200100]<0>(v445, "identifier");
    std::string::basic_string[abi:ne200100]<0>(v446, "maximum");
    std::string::basic_string[abi:ne200100]<0>(v447, "minimum");
    std::set<std::string>::set[abi:ne200100](v157, v445, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v661, v158, v157);
    std::string::basic_string[abi:ne200100]<0>(v155, "SnippetUI.StandardPlayerButton");
    std::string::basic_string[abi:ne200100]<0>(v443, "pause_action");
    std::string::basic_string[abi:ne200100]<0>(v444, "play_action");
    std::set<std::string>::set[abi:ne200100](v154, v443, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v662, v155, v154);
    std::string::basic_string[abi:ne200100]<0>(v152, "SnippetUI.StatusIndicator_Cancelled");
    std::string::basic_string[abi:ne200100]<0>(v441, "text");
    std::set<std::string>::set[abi:ne200100](v151, v441, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v663, v152, v151);
    std::string::basic_string[abi:ne200100]<0>(v149, "SnippetUI.StatusIndicator_Error");
    std::string::basic_string[abi:ne200100]<0>(v439, "text");
    std::set<std::string>::set[abi:ne200100](v148, v439, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v664, v149, v148);
    std::string::basic_string[abi:ne200100]<0>(v146, "SnippetUI.StatusIndicator_InProgress");
    std::string::basic_string[abi:ne200100]<0>(v437, "text");
    std::set<std::string>::set[abi:ne200100](v145, v437, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v665, v146, v145);
    std::string::basic_string[abi:ne200100]<0>(v143, "SnippetUI.StatusIndicator_Success");
    std::string::basic_string[abi:ne200100]<0>(v435, "text");
    std::set<std::string>::set[abi:ne200100](v142, v435, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v666, v143, v142);
    std::string::basic_string[abi:ne200100]<0>(v140, "SnippetUI.SummaryItem_Button");
    std::string::basic_string[abi:ne200100]<0>(v433, "button_1");
    std::string::basic_string[abi:ne200100]<0>(v434, "text_1");
    std::set<std::string>::set[abi:ne200100](v139, v433, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v667, v140, v139);
    std::string::basic_string[abi:ne200100]<0>(v137, "SnippetUI.SummaryItem_DetailedText");
    std::string::basic_string[abi:ne200100]<0>(v431, "text_1");
    std::string::basic_string[abi:ne200100]<0>(v432, "text_3");
    std::set<std::string>::set[abi:ne200100](v136, v431, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v668, v137, v136);
    std::string::basic_string[abi:ne200100]<0>(v134, "SnippetUI.SummaryItem_LargeText");
    std::string::basic_string[abi:ne200100]<0>(v429, "text_1");
    std::set<std::string>::set[abi:ne200100](v133, v429, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v669, v134, v133);
    std::string::basic_string[abi:ne200100]<0>(v131, "SnippetUI.SummaryItem_Pair");
    std::string::basic_string[abi:ne200100]<0>(v427, "text_4");
    std::string::basic_string[abi:ne200100]<0>(v428, "text_6");
    std::set<std::string>::set[abi:ne200100](v130, v427, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v670, v131, v130);
    std::string::basic_string[abi:ne200100]<0>(v128, "SnippetUI.SummaryItem_PairNumber");
    std::string::basic_string[abi:ne200100]<0>(v425, "number_1");
    std::string::basic_string[abi:ne200100]<0>(v426, "number_2");
    std::set<std::string>::set[abi:ne200100](v127, v425, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v671, v128, v127);
    std::string::basic_string[abi:ne200100]<0>(v125, "SnippetUI.SummaryItem_PairNumberV2");
    std::string::basic_string[abi:ne200100]<0>(v423, "number_1");
    std::string::basic_string[abi:ne200100]<0>(v424, "number_2");
    std::set<std::string>::set[abi:ne200100](v124, v423, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v672, v125, v124);
    std::string::basic_string[abi:ne200100]<0>(v122, "SnippetUI.SummaryItem_PairV2");
    std::string::basic_string[abi:ne200100]<0>(v420, "text_1");
    std::string::basic_string[abi:ne200100]<0>(v421, "thumbnail_1");
    std::string::basic_string[abi:ne200100]<0>(v422, "thumbnail_2");
    std::set<std::string>::set[abi:ne200100](v121, v420, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v673, v122, v121);
    std::string::basic_string[abi:ne200100]<0>(v119, "SnippetUI.SummaryItem_Player");
    std::string::basic_string[abi:ne200100]<0>(v418, "player");
    std::string::basic_string[abi:ne200100]<0>(v419, "text_1");
    std::set<std::string>::set[abi:ne200100](v118, v418, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v674, v119, v118);
    std::string::basic_string[abi:ne200100]<0>(v116, "SnippetUI.SummaryItem_ShortNumber");
    std::string::basic_string[abi:ne200100]<0>(v416, "number");
    std::string::basic_string[abi:ne200100]<0>(v417, "text_2");
    std::set<std::string>::set[abi:ne200100](v115, v416, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v675, v116, v115);
    std::string::basic_string[abi:ne200100]<0>(v113, "SnippetUI.SummaryItem_Standard");
    std::string::basic_string[abi:ne200100]<0>(v414, "text_1");
    std::set<std::string>::set[abi:ne200100](v112, v414, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v676, v113, v112);
    std::string::basic_string[abi:ne200100]<0>(v110, "SnippetUI.SummaryItem_Switch");
    std::string::basic_string[abi:ne200100]<0>(v412, "switch");
    std::string::basic_string[abi:ne200100]<0>(v413, "text_1");
    std::set<std::string>::set[abi:ne200100](v109, v412, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v677, v110, v109);
    std::string::basic_string[abi:ne200100]<0>(v107, "SnippetUI.SummaryItem_SwitchV2");
    std::string::basic_string[abi:ne200100]<0>(v410, "switch");
    std::string::basic_string[abi:ne200100]<0>(v411, "text_1");
    std::set<std::string>::set[abi:ne200100](v106, v410, 2);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v678, v107, v106);
    std::string::basic_string[abi:ne200100]<0>(v104, "SnippetUI.SummaryItem_Text");
    std::string::basic_string[abi:ne200100]<0>(v408, "text_2");
    std::set<std::string>::set[abi:ne200100](v103, v408, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v679, v104, v103);
    std::string::basic_string[abi:ne200100]<0>(v101, "SnippetUI.Switch");
    std::string::basic_string[abi:ne200100]<0>(v406, "identifier");
    std::set<std::string>::set[abi:ne200100](v100, v406, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v680, v101, v100);
    std::string::basic_string[abi:ne200100]<0>(v98, "SnippetUI.SystemText_ClarificationTitle");
    std::string::basic_string[abi:ne200100]<0>(v404, "text_1");
    std::set<std::string>::set[abi:ne200100](v97, v404, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v681, v98, v97);
    std::string::basic_string[abi:ne200100]<0>(v95, "SnippetUI.Table.Header");
    std::string::basic_string[abi:ne200100]<0>(v402, "cells");
    std::set<std::string>::set[abi:ne200100](v94, v402, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v682, v95, v94);
    std::string::basic_string[abi:ne200100]<0>(v92, "SnippetUI.Table.Row");
    std::string::basic_string[abi:ne200100]<0>(v400, "cells");
    std::set<std::string>::set[abi:ne200100](v91, v400, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v683, v92, v91);
    std::string::basic_string[abi:ne200100]<0>(v89, "SnippetUI.Table");
    std::string::basic_string[abi:ne200100]<0>(v397, "columns");
    std::string::basic_string[abi:ne200100]<0>(v398, "rows");
    std::string::basic_string[abi:ne200100]<0>(v399, "separator_lines");
    std::set<std::string>::set[abi:ne200100](v88, v397, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v684, v89, v88);
    std::string::basic_string[abi:ne200100]<0>(v86, "SnippetUI.TertiaryHeader_Standard");
    std::string::basic_string[abi:ne200100]<0>(v395, "text_1");
    std::set<std::string>::set[abi:ne200100](v85, v395, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v685, v86, v85);
    std::string::basic_string[abi:ne200100]<0>(v83, "SnippetUI.TextElement.Font.SystemFont");
    std::string::basic_string[abi:ne200100]<0>(v392, "design");
    std::string::basic_string[abi:ne200100]<0>(v393, "size");
    std::string::basic_string[abi:ne200100]<0>(v394, "weight");
    std::set<std::string>::set[abi:ne200100](v82, v392, 3);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v686, v83, v82);
    std::string::basic_string[abi:ne200100]<0>(v80, "SnippetUI.TextElement.Font");
    std::string::basic_string[abi:ne200100]<0>(v390, "value");
    std::set<std::string>::set[abi:ne200100](v79, v390, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v687, v80, v79);
    std::string::basic_string[abi:ne200100]<0>(v77, "SnippetUI.TextElement.FontWeight");
    std::string::basic_string[abi:ne200100]<0>(v388, "value");
    std::set<std::string>::set[abi:ne200100](v76, v388, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v688, v77, v76);
    std::string::basic_string[abi:ne200100]<0>(v74, "SnippetUI.TextElement");
    std::string::basic_string[abi:ne200100]<0>(v386, "value");
    std::set<std::string>::set[abi:ne200100](v73, v386, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v689, v74, v73);
    std::string::basic_string[abi:ne200100]<0>(v71, "SnippetUI.TextInput");
    std::string::basic_string[abi:ne200100]<0>(v384, "identifier");
    std::set<std::string>::set[abi:ne200100](v70, v384, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v690, v71, v70);
    std::string::basic_string[abi:ne200100]<0>(v68, "SnippetUI.TextProperty");
    std::string::basic_string[abi:ne200100]<0>(v382, "text_elements");
    std::set<std::string>::set[abi:ne200100](v67, v382, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v691, v68, v67);
    std::string::basic_string[abi:ne200100]<0>(v65, "SnippetUI.VisualElement");
    std::string::basic_string[abi:ne200100]<0>(v380, "element");
    std::set<std::string>::set[abi:ne200100](v64, v380, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v692, v65, v64);
    std::string::basic_string[abi:ne200100]<0>(v62, "SnippetUI.VisualProperty");
    std::string::basic_string[abi:ne200100]<0>(v378, "visuals");
    std::set<std::string>::set[abi:ne200100](v61, v378, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v693, v62, v61);
    std::string::basic_string[abi:ne200100]<0>(v59, "SnippetUI.Visualization_Chart");
    std::string::basic_string[abi:ne200100]<0>(v376, "visual");
    std::set<std::string>::set[abi:ne200100](v58, v376, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v694, v59, v58);
    std::string::basic_string[abi:ne200100]<0>(v56, "SnippetUI.Visualization_Image");
    std::string::basic_string[abi:ne200100]<0>(v374, "visual");
    std::set<std::string>::set[abi:ne200100](v55, v374, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v695, v56, v55);
    std::string::basic_string[abi:ne200100]<0>(v53, "SnippetUI.Visualization_Map");
    std::string::basic_string[abi:ne200100]<0>(v372, "map_property");
    std::set<std::string>::set[abi:ne200100](v52, v372, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v696, v53, v52);
    v14 = v697;
    std::string::basic_string[abi:ne200100]<0>(v50, "SnippetUI.WatchListButton");
    std::string::basic_string[abi:ne200100]<0>(__p, "canonical_id");
    std::set<std::string>::set[abi:ne200100](v49, __p, 1);
    std::pair<std::string const,std::set<std::string> const>::pair[abi:ne200100]<true,0>(v697, v50, v49);
    std::map<std::string const,std::set<std::string> const,std::less<std::string const>,std::allocator<std::pair<std::string const,std::set<std::string> const>>>::map[abi:ne200100](&v591[0].__r_.__value_.__l.__data_, 107);
    v15 = -5136;
    do
    {
      Category::~Category(v14);
      v14 -= 6;
      v15 += 48;
    }

    while (v15);
    std::__tree<std::string>::destroy(v49, v49[1]);
    if (v371 < 0)
    {
      operator delete(__p[0]);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    std::__tree<std::string>::destroy(v52, v52[1]);
    if (v373 < 0)
    {
      operator delete(v372[0]);
    }

    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    std::__tree<std::string>::destroy(v55, v55[1]);
    if (v375 < 0)
    {
      operator delete(v374[0]);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    std::__tree<std::string>::destroy(v58, v58[1]);
    if (v377 < 0)
    {
      operator delete(v376[0]);
    }

    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    std::__tree<std::string>::destroy(v61, v61[1]);
    if (v379 < 0)
    {
      operator delete(v378[0]);
    }

    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    std::__tree<std::string>::destroy(v64, v64[1]);
    if (v381 < 0)
    {
      operator delete(v380[0]);
    }

    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    std::__tree<std::string>::destroy(v67, v67[1]);
    if (v383 < 0)
    {
      operator delete(v382[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    std::__tree<std::string>::destroy(v70, v70[1]);
    if (v385 < 0)
    {
      operator delete(v384[0]);
    }

    if (v72 < 0)
    {
      operator delete(v71[0]);
    }

    std::__tree<std::string>::destroy(v73, v73[1]);
    if (v387 < 0)
    {
      operator delete(v386[0]);
    }

    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    std::__tree<std::string>::destroy(v76, v76[1]);
    if (v389 < 0)
    {
      operator delete(v388[0]);
    }

    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    std::__tree<std::string>::destroy(v79, v79[1]);
    if (v391 < 0)
    {
      operator delete(v390[0]);
    }

    if (v81 < 0)
    {
      operator delete(v80[0]);
    }

    std::__tree<std::string>::destroy(v82, v82[1]);
    for (i = 0; i != -9; i -= 3)
    {
      if (SHIBYTE(v394[i + 2]) < 0)
      {
        operator delete(v394[i]);
      }
    }

    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    std::__tree<std::string>::destroy(v85, v85[1]);
    if (v396 < 0)
    {
      operator delete(v395[0]);
    }

    if (v87 < 0)
    {
      operator delete(v86[0]);
    }

    std::__tree<std::string>::destroy(v88, v88[1]);
    for (j = 0; j != -9; j -= 3)
    {
      if (SHIBYTE(v399[j + 2]) < 0)
      {
        operator delete(v399[j]);
      }
    }

    if (v90 < 0)
    {
      operator delete(v89[0]);
    }

    std::__tree<std::string>::destroy(v91, v91[1]);
    if (v401 < 0)
    {
      operator delete(v400[0]);
    }

    if (v93 < 0)
    {
      operator delete(v92[0]);
    }

    std::__tree<std::string>::destroy(v94, v94[1]);
    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    if (v96 < 0)
    {
      operator delete(v95[0]);
    }

    std::__tree<std::string>::destroy(v97, v97[1]);
    if (v405 < 0)
    {
      operator delete(v404[0]);
    }

    if (v99 < 0)
    {
      operator delete(v98[0]);
    }

    std::__tree<std::string>::destroy(v100, v100[1]);
    if (v407 < 0)
    {
      operator delete(v406[0]);
    }

    if (v102 < 0)
    {
      operator delete(v101[0]);
    }

    std::__tree<std::string>::destroy(v103, v103[1]);
    if (v409 < 0)
    {
      operator delete(v408[0]);
    }

    if (v105 < 0)
    {
      operator delete(v104[0]);
    }

    std::__tree<std::string>::destroy(v106, v106[1]);
    for (k = 0; k != -6; k -= 3)
    {
      if (SHIBYTE(v411[k + 2]) < 0)
      {
        operator delete(v410[k + 3]);
      }
    }

    if (v108 < 0)
    {
      operator delete(v107[0]);
    }

    std::__tree<std::string>::destroy(v109, v109[1]);
    for (m = 0; m != -6; m -= 3)
    {
      if (SHIBYTE(v413[m + 2]) < 0)
      {
        operator delete(v412[m + 3]);
      }
    }

    if (v111 < 0)
    {
      operator delete(v110[0]);
    }

    std::__tree<std::string>::destroy(v112, v112[1]);
    if (v415 < 0)
    {
      operator delete(v414[0]);
    }

    if (v114 < 0)
    {
      operator delete(v113[0]);
    }

    std::__tree<std::string>::destroy(v115, v115[1]);
    for (n = 0; n != -6; n -= 3)
    {
      if (SHIBYTE(v417[n + 2]) < 0)
      {
        operator delete(v416[n + 3]);
      }
    }

    if (v117 < 0)
    {
      operator delete(v116[0]);
    }

    std::__tree<std::string>::destroy(v118, v118[1]);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (SHIBYTE(v419[ii + 2]) < 0)
      {
        operator delete(v418[ii + 3]);
      }
    }

    if (v120 < 0)
    {
      operator delete(v119[0]);
    }

    std::__tree<std::string>::destroy(v121, v121[1]);
    for (jj = 0; jj != -9; jj -= 3)
    {
      if (SHIBYTE(v422[jj + 2]) < 0)
      {
        operator delete(v422[jj]);
      }
    }

    if (v123 < 0)
    {
      operator delete(v122[0]);
    }

    std::__tree<std::string>::destroy(v124, v124[1]);
    for (kk = 0; kk != -6; kk -= 3)
    {
      if (SHIBYTE(v424[kk + 2]) < 0)
      {
        operator delete(v423[kk + 3]);
      }
    }

    if (v126 < 0)
    {
      operator delete(v125[0]);
    }

    std::__tree<std::string>::destroy(v127, v127[1]);
    for (mm = 0; mm != -6; mm -= 3)
    {
      if (SHIBYTE(v426[mm + 2]) < 0)
      {
        operator delete(v425[mm + 3]);
      }
    }

    if (v129 < 0)
    {
      operator delete(v128[0]);
    }

    std::__tree<std::string>::destroy(v130, v130[1]);
    for (nn = 0; nn != -6; nn -= 3)
    {
      if (SHIBYTE(v428[nn + 2]) < 0)
      {
        operator delete(v427[nn + 3]);
      }
    }

    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    std::__tree<std::string>::destroy(v133, v133[1]);
    if (v430 < 0)
    {
      operator delete(v429[0]);
    }

    if (v135 < 0)
    {
      operator delete(v134[0]);
    }

    std::__tree<std::string>::destroy(v136, v136[1]);
    for (i1 = 0; i1 != -6; i1 -= 3)
    {
      if (SHIBYTE(v432[i1 + 2]) < 0)
      {
        operator delete(v431[i1 + 3]);
      }
    }

    if (v138 < 0)
    {
      operator delete(v137[0]);
    }

    std::__tree<std::string>::destroy(v139, v139[1]);
    for (i2 = 0; i2 != -6; i2 -= 3)
    {
      if (SHIBYTE(v434[i2 + 2]) < 0)
      {
        operator delete(v433[i2 + 3]);
      }
    }

    if (v141 < 0)
    {
      operator delete(v140[0]);
    }

    std::__tree<std::string>::destroy(v142, v142[1]);
    if (v436 < 0)
    {
      operator delete(v435[0]);
    }

    if (v144 < 0)
    {
      operator delete(v143[0]);
    }

    std::__tree<std::string>::destroy(v145, v145[1]);
    if (v438 < 0)
    {
      operator delete(v437[0]);
    }

    if (v147 < 0)
    {
      operator delete(v146[0]);
    }

    std::__tree<std::string>::destroy(v148, v148[1]);
    if (v440 < 0)
    {
      operator delete(v439[0]);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    std::__tree<std::string>::destroy(v151, v151[1]);
    if (v442 < 0)
    {
      operator delete(v441[0]);
    }

    if (v153 < 0)
    {
      operator delete(v152[0]);
    }

    std::__tree<std::string>::destroy(v154, v154[1]);
    for (i3 = 0; i3 != -6; i3 -= 3)
    {
      if (SHIBYTE(v444[i3 + 2]) < 0)
      {
        operator delete(v443[i3 + 3]);
      }
    }

    if (v156 < 0)
    {
      operator delete(v155[0]);
    }

    std::__tree<std::string>::destroy(v157, v157[1]);
    for (i4 = 0; i4 != -9; i4 -= 3)
    {
      if (SHIBYTE(v447[i4 + 2]) < 0)
      {
        operator delete(v447[i4]);
      }
    }

    if (v159 < 0)
    {
      operator delete(v158[0]);
    }

    std::__tree<std::string>::destroy(v160, v160[1]);
    if (v449 < 0)
    {
      operator delete(v448[0]);
    }

    if (v162 < 0)
    {
      operator delete(v161[0]);
    }

    std::__tree<std::string>::destroy(v163, v163[1]);
    if (v451 < 0)
    {
      operator delete(v450[0]);
    }

    if (v165 < 0)
    {
      operator delete(v164[0]);
    }

    std::__tree<std::string>::destroy(v166, v166[1]);
    if (v453 < 0)
    {
      operator delete(v452[0]);
    }

    if (v168 < 0)
    {
      operator delete(v167[0]);
    }

    std::__tree<std::string>::destroy(v169, v169[1]);
    if (v455 < 0)
    {
      operator delete(v454[0]);
    }

    if (v171 < 0)
    {
      operator delete(v170[0]);
    }

    std::__tree<std::string>::destroy(v172, v172[1]);
    if (v457 < 0)
    {
      operator delete(v456[0]);
    }

    if (v174 < 0)
    {
      operator delete(v173[0]);
    }

    std::__tree<std::string>::destroy(v175, v175[1]);
    for (i5 = 0; i5 != -6; i5 -= 3)
    {
      if (SHIBYTE(v459[i5 + 2]) < 0)
      {
        operator delete(v458[i5 + 3]);
      }
    }

    if (v177 < 0)
    {
      operator delete(v176[0]);
    }

    std::__tree<std::string>::destroy(v178, v178[1]);
    if (v461 < 0)
    {
      operator delete(v460[0]);
    }

    if (v180 < 0)
    {
      operator delete(v179[0]);
    }

    std::__tree<std::string>::destroy(v181, v181[1]);
    if (v463 < 0)
    {
      operator delete(v462[0]);
    }

    if (v183 < 0)
    {
      operator delete(v182[0]);
    }

    std::__tree<std::string>::destroy(v184, v184[1]);
    if (v465 < 0)
    {
      operator delete(v464[0]);
    }

    if (v186 < 0)
    {
      operator delete(v185[0]);
    }

    std::__tree<std::string>::destroy(v187, v187[1]);
    if (v467 < 0)
    {
      operator delete(v466[0]);
    }

    if (v189 < 0)
    {
      operator delete(v188[0]);
    }

    std::__tree<std::string>::destroy(v190, v190[1]);
    if (v469 < 0)
    {
      operator delete(v468[0]);
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    std::__tree<std::string>::destroy(v193, v193[1]);
    for (i6 = 0; i6 != -6; i6 -= 3)
    {
      if (SHIBYTE(v471[i6 + 2]) < 0)
      {
        operator delete(v470[i6 + 3]);
      }
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    std::__tree<std::string>::destroy(v196, v196[1]);
    for (i7 = 0; i7 != -9; i7 -= 3)
    {
      if (SHIBYTE(v474[i7 + 2]) < 0)
      {
        operator delete(v474[i7]);
      }
    }

    if (v198 < 0)
    {
      operator delete(v197[0]);
    }

    std::__tree<std::string>::destroy(v199, v199[1]);
    for (i8 = 0; i8 != -6; i8 -= 3)
    {
      if (SHIBYTE(v476[i8 + 2]) < 0)
      {
        operator delete(v475[i8 + 3]);
      }
    }

    if (v201 < 0)
    {
      operator delete(v200[0]);
    }

    std::__tree<std::string>::destroy(v202, v202[1]);
    if (v478 < 0)
    {
      operator delete(v477[0]);
    }

    if (v204 < 0)
    {
      operator delete(v203[0]);
    }

    std::__tree<std::string>::destroy(v205, v205[1]);
    if (v480 < 0)
    {
      operator delete(v479[0]);
    }

    if (v207 < 0)
    {
      operator delete(v206[0]);
    }

    std::__tree<std::string>::destroy(v208, v208[1]);
    if (v482 < 0)
    {
      operator delete(v481[0]);
    }

    if (v210 < 0)
    {
      operator delete(v209[0]);
    }

    std::__tree<std::string>::destroy(v211, v211[1]);
    if (v484 < 0)
    {
      operator delete(v483[0]);
    }

    if (v213 < 0)
    {
      operator delete(v212[0]);
    }

    std::__tree<std::string>::destroy(v214, v214[1]);
    if (v486 < 0)
    {
      operator delete(v485[0]);
    }

    if (v216 < 0)
    {
      operator delete(v215[0]);
    }

    std::__tree<std::string>::destroy(v217, v217[1]);
    if (v488 < 0)
    {
      operator delete(v487[0]);
    }

    if (v219 < 0)
    {
      operator delete(v218[0]);
    }

    std::__tree<std::string>::destroy(v220, v220[1]);
    if (v490 < 0)
    {
      operator delete(v489[0]);
    }

    if (v222 < 0)
    {
      operator delete(v221[0]);
    }

    std::__tree<std::string>::destroy(v223, v223[1]);
    if (v492 < 0)
    {
      operator delete(v491[0]);
    }

    if (v225 < 0)
    {
      operator delete(v224[0]);
    }

    std::__tree<std::string>::destroy(v226, v226[1]);
    for (i9 = 0; i9 != -6; i9 -= 3)
    {
      if (SHIBYTE(v494[i9 + 2]) < 0)
      {
        operator delete(v493[i9 + 3]);
      }
    }

    if (v228 < 0)
    {
      operator delete(v227[0]);
    }

    std::__tree<std::string>::destroy(v229, v229[1]);
    if (v496 < 0)
    {
      operator delete(v495[0]);
    }

    if (v231 < 0)
    {
      operator delete(v230[0]);
    }

    std::__tree<std::string>::destroy(v232, v232[1]);
    for (i10 = 0; i10 != -6; i10 -= 3)
    {
      if (SHIBYTE(v498[i10 + 2]) < 0)
      {
        operator delete(v497[i10 + 3]);
      }
    }

    if (v234 < 0)
    {
      operator delete(v233[0]);
    }

    std::__tree<std::string>::destroy(v235, v235[1]);
    if (v500 < 0)
    {
      operator delete(v499[0]);
    }

    if (v237 < 0)
    {
      operator delete(v236[0]);
    }

    std::__tree<std::string>::destroy(v238, v238[1]);
    if (v502 < 0)
    {
      operator delete(v501[0]);
    }

    if (v240 < 0)
    {
      operator delete(v239[0]);
    }

    std::__tree<std::string>::destroy(v241, v241[1]);
    if (v504 < 0)
    {
      operator delete(v503[0]);
    }

    if (v243 < 0)
    {
      operator delete(v242[0]);
    }

    std::__tree<std::string>::destroy(v244, v244[1]);
    if (v506 < 0)
    {
      operator delete(v505[0]);
    }

    if (v246 < 0)
    {
      operator delete(v245[0]);
    }

    std::__tree<std::string>::destroy(v247, v247[1]);
    if (v508 < 0)
    {
      operator delete(v507[0]);
    }

    if (v249 < 0)
    {
      operator delete(v248[0]);
    }

    std::__tree<std::string>::destroy(v250, v250[1]);
    if (v510 < 0)
    {
      operator delete(v509[0]);
    }

    if (v252 < 0)
    {
      operator delete(v251[0]);
    }

    std::__tree<std::string>::destroy(v253, v253[1]);
    for (i11 = 0; i11 != -6; i11 -= 3)
    {
      if (SHIBYTE(v512[i11 + 2]) < 0)
      {
        operator delete(v511[i11 + 3]);
      }
    }

    if (v255 < 0)
    {
      operator delete(v254[0]);
    }

    std::__tree<std::string>::destroy(v256, v256[1]);
    for (i12 = 0; i12 != -6; i12 -= 3)
    {
      if (SHIBYTE(v514[i12 + 2]) < 0)
      {
        operator delete(v513[i12 + 3]);
      }
    }

    if (v258 < 0)
    {
      operator delete(v257[0]);
    }

    std::__tree<std::string>::destroy(v259, v259[1]);
    if (v516 < 0)
    {
      operator delete(v515[0]);
    }

    if (v261 < 0)
    {
      operator delete(v260[0]);
    }

    std::__tree<std::string>::destroy(v262, v262[1]);
    if (v518 < 0)
    {
      operator delete(v517[0]);
    }

    if (v264 < 0)
    {
      operator delete(v263[0]);
    }

    std::__tree<std::string>::destroy(v265, v265[1]);
    if (v520 < 0)
    {
      operator delete(v519[0]);
    }

    if (v267 < 0)
    {
      operator delete(v266[0]);
    }

    std::__tree<std::string>::destroy(v268, v268[1]);
    if (v522 < 0)
    {
      operator delete(v521[0]);
    }

    if (v270 < 0)
    {
      operator delete(v269[0]);
    }

    std::__tree<std::string>::destroy(v271, v271[1]);
    if (v524 < 0)
    {
      operator delete(v523[0]);
    }

    if (v273 < 0)
    {
      operator delete(v272[0]);
    }

    std::__tree<std::string>::destroy(v274, v274[1]);
    if (v526 < 0)
    {
      operator delete(v525[0]);
    }

    if (v276 < 0)
    {
      operator delete(v275[0]);
    }

    std::__tree<std::string>::destroy(v277, v277[1]);
    if (v528 < 0)
    {
      operator delete(v527[0]);
    }

    if (v279 < 0)
    {
      operator delete(v278[0]);
    }

    std::__tree<std::string>::destroy(v280, v280[1]);
    if (v530 < 0)
    {
      operator delete(v529[0]);
    }

    if (v282 < 0)
    {
      operator delete(v281[0]);
    }

    std::__tree<std::string>::destroy(v283, v283[1]);
    if (v532 < 0)
    {
      operator delete(v531[0]);
    }

    if (v285 < 0)
    {
      operator delete(v284[0]);
    }

    std::__tree<std::string>::destroy(v286, v286[1]);
    for (i13 = 0; i13 != -6; i13 -= 3)
    {
      if (SHIBYTE(v534[i13 + 2]) < 0)
      {
        operator delete(v533[i13 + 3]);
      }
    }

    if (v288 < 0)
    {
      operator delete(v287[0]);
    }

    std::__tree<std::string>::destroy(v289, v289[1]);
    if (v536 < 0)
    {
      operator delete(v535[0]);
    }

    if (v291 < 0)
    {
      operator delete(v290[0]);
    }

    std::__tree<std::string>::destroy(v292, v292[1]);
    if (v538 < 0)
    {
      operator delete(v537[0]);
    }

    if (v294 < 0)
    {
      operator delete(v293[0]);
    }

    std::__tree<std::string>::destroy(v295, v295[1]);
    for (i14 = 0; i14 != -9; i14 -= 3)
    {
      if (SHIBYTE(v541[i14 + 2]) < 0)
      {
        operator delete(v541[i14]);
      }
    }

    if (v297 < 0)
    {
      operator delete(v296[0]);
    }

    std::__tree<std::string>::destroy(v298, v298[1]);
    for (i15 = 0; i15 != -6; i15 -= 3)
    {
      if (SHIBYTE(v543[i15 + 2]) < 0)
      {
        operator delete(v542[i15 + 3]);
      }
    }

    if (v300 < 0)
    {
      operator delete(v299[0]);
    }

    std::__tree<std::string>::destroy(v301, v301[1]);
    if (v545 < 0)
    {
      operator delete(v544[0]);
    }

    if (v303 < 0)
    {
      operator delete(v302[0]);
    }

    std::__tree<std::string>::destroy(v304, v304[1]);
    for (i16 = 0; i16 != -6; i16 -= 3)
    {
      if (SHIBYTE(v547[i16 + 2]) < 0)
      {
        operator delete(v546[i16 + 3]);
      }
    }

    if (v306 < 0)
    {
      operator delete(v305[0]);
    }

    std::__tree<std::string>::destroy(v307, v307[1]);
    if (v549 < 0)
    {
      operator delete(v548[0]);
    }

    if (v309 < 0)
    {
      operator delete(v308[0]);
    }

    std::__tree<std::string>::destroy(v310, v310[1]);
    for (i17 = 0; i17 != -6; i17 -= 3)
    {
      if (SHIBYTE(v551[i17 + 2]) < 0)
      {
        operator delete(v550[i17 + 3]);
      }
    }

    if (v312 < 0)
    {
      operator delete(v311[0]);
    }

    std::__tree<std::string>::destroy(v313, v313[1]);
    if (v553 < 0)
    {
      operator delete(v552[0]);
    }

    if (v315 < 0)
    {
      operator delete(v314[0]);
    }

    std::__tree<std::string>::destroy(v316, v316[1]);
    for (i18 = 0; i18 != -9; i18 -= 3)
    {
      if (SHIBYTE(v556[i18 + 2]) < 0)
      {
        operator delete(v556[i18]);
      }
    }

    if (v318 < 0)
    {
      operator delete(v317[0]);
    }

    std::__tree<std::string>::destroy(v319, v319[1]);
    if (v558 < 0)
    {
      operator delete(v557[0]);
    }

    if (v321 < 0)
    {
      operator delete(v320[0]);
    }

    std::__tree<std::string>::destroy(v322, v322[1]);
    if (v560 < 0)
    {
      operator delete(v559[0]);
    }

    if (v324 < 0)
    {
      operator delete(v323[0]);
    }

    std::__tree<std::string>::destroy(v325, v325[1]);
    for (i19 = 0; i19 != -6; i19 -= 3)
    {
      if (SHIBYTE(v562[i19 + 2]) < 0)
      {
        operator delete(v561[i19 + 3]);
      }
    }

    if (v327 < 0)
    {
      operator delete(v326[0]);
    }

    std::__tree<std::string>::destroy(v328, v328[1]);
    if (v564 < 0)
    {
      operator delete(v563[0]);
    }

    if (v330 < 0)
    {
      operator delete(v329[0]);
    }

    std::__tree<std::string>::destroy(v331, v331[1]);
    for (i20 = 0; i20 != -6; i20 -= 3)
    {
      if (SHIBYTE(v566[i20 + 2]) < 0)
      {
        operator delete(v565[i20 + 3]);
      }
    }

    if (v333 < 0)
    {
      operator delete(v332[0]);
    }

    std::__tree<std::string>::destroy(v334, v334[1]);
    if (v568 < 0)
    {
      operator delete(v567[0]);
    }

    if (v336 < 0)
    {
      operator delete(v335[0]);
    }

    std::__tree<std::string>::destroy(v337, v337[1]);
    if (v570 < 0)
    {
      operator delete(v569[0]);
    }

    if (v339 < 0)
    {
      operator delete(v338[0]);
    }

    std::__tree<std::string>::destroy(v340, v340[1]);
    if (v572 < 0)
    {
      operator delete(v571[0]);
    }

    if (v342 < 0)
    {
      operator delete(v341[0]);
    }

    std::__tree<std::string>::destroy(v343, v343[1]);
    if (v574 < 0)
    {
      operator delete(v573[0]);
    }

    if (v345 < 0)
    {
      operator delete(v344[0]);
    }

    std::__tree<std::string>::destroy(v346, v346[1]);
    if (v576 < 0)
    {
      operator delete(v575[0]);
    }

    if (v348 < 0)
    {
      operator delete(v347[0]);
    }

    std::__tree<std::string>::destroy(v349, v349[1]);
    if (v578 < 0)
    {
      operator delete(v577[0]);
    }

    if (v351 < 0)
    {
      operator delete(v350[0]);
    }

    std::__tree<std::string>::destroy(v352, v352[1]);
    if (v580 < 0)
    {
      operator delete(v579[0]);
    }

    if (v354 < 0)
    {
      operator delete(v353[0]);
    }

    std::__tree<std::string>::destroy(v355, v355[1]);
    for (i21 = 0; i21 != -6; i21 -= 3)
    {
      if (SHIBYTE(v582[i21 + 2]) < 0)
      {
        operator delete(v581[i21 + 3]);
      }
    }

    if (v357 < 0)
    {
      operator delete(v356[0]);
    }

    std::__tree<std::string>::destroy(v358, v358[1]);
    for (i22 = 0; i22 != -6; i22 -= 3)
    {
      if (SHIBYTE(v584[i22 + 2]) < 0)
      {
        operator delete(v583[i22 + 3]);
      }
    }

    if (v360 < 0)
    {
      operator delete(v359[0]);
    }

    std::__tree<std::string>::destroy(v361, v361[1]);
    for (i23 = 0; i23 != -6; i23 -= 3)
    {
      if (SHIBYTE(v586[i23 + 2]) < 0)
      {
        operator delete(v585[i23 + 3]);
      }
    }

    if (v363 < 0)
    {
      operator delete(v362[0]);
    }

    std::__tree<std::string>::destroy(v364, v364[1]);
    if (v588 < 0)
    {
      operator delete(v587[0]);
    }

    if (v366 < 0)
    {
      operator delete(v365[0]);
    }

    std::__tree<std::string>::destroy(v367, v367[1]);
    if (v590 < 0)
    {
      operator delete(v589[0]);
    }

    if (v369 < 0)
    {
      operator delete(v368[0]);
    }

    __cxa_atexit(std::map<std::string const,std::set<std::string> const,std::less<std::string const>,std::allocator<std::pair<std::string const,std::set<std::string> const>>>::~map[abi:ne200100], &siri::dialogengine::vcat::GetRequiredFields(std::string const&)::fullNameToRequiredFields, &dword_1BFB68000);
  }

  {
    qword_1EBE03ED0 = 0;
    qword_1EBE03EC8 = 0;
    siri::dialogengine::vcat::GetRequiredFields(std::string const&)::empty = &qword_1EBE03EC8;
    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &siri::dialogengine::vcat::GetRequiredFields(std::string const&)::empty, &dword_1BFB68000);
  }

  v9 = qword_1EBE03EA8;
  if (!qword_1EBE03EA8)
  {
    goto LABEL_13;
  }

  v10 = &qword_1EBE03EA8;
  do
  {
    v11 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>((v9 + 32), v8);
    if (v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (!v11)
    {
      v10 = v9;
    }

    v9 = *(v9 + v12);
  }

  while (v9);
  if (v10 == &qword_1EBE03EA8 || std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v8, v10 + 4))
  {
LABEL_13:
    v10 = &qword_1EBE03EA8;
  }

  if (v10 == &qword_1EBE03EA8)
  {
    return &siri::dialogengine::vcat::GetRequiredFields(std::string const&)::empty;
  }

  else
  {
    return v10 + 7;
  }
}

void sub_1BFBE4C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char *a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char *a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char *a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char *a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  v85 = -5136;
  v86 = v81;
  do
  {
    Category::~Category(v86);
    v86 = (v87 - 48);
    v85 += 48;
  }

  while (v85);
  std::__tree<std::string>::destroy(&a9, a10);
  if (v82[1199] < 0)
  {
    operator delete(STACK[0x1410]);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::__tree<std::string>::destroy(&a18, a19);
  if (v82[1223] < 0)
  {
    operator delete(STACK[0x1428]);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::__tree<std::string>::destroy(&a27, a28);
  if (v82[1247] < 0)
  {
    operator delete(STACK[0x1440]);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::__tree<std::string>::destroy(&a36, a37);
  if (v82[1271] < 0)
  {
    operator delete(STACK[0x1458]);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::__tree<std::string>::destroy(&a45, a46);
  if (v82[1295] < 0)
  {
    operator delete(STACK[0x1470]);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::__tree<std::string>::destroy(&a54, a55);
  if (v82[1319] < 0)
  {
    operator delete(STACK[0x1488]);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  std::__tree<std::string>::destroy(&a63, a64);
  if (v82[1343] < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  std::__tree<std::string>::destroy(&a67, a68);
  if (v82[1367] < 0)
  {
    operator delete(STACK[0x14B8]);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  std::__tree<std::string>::destroy(&a71, a72);
  if (v82[1391] < 0)
  {
    operator delete(STACK[0x14D0]);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  std::__tree<std::string>::destroy(&a75, a76);
  if (v82[1415] < 0)
  {
    operator delete(STACK[0x14E8]);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  std::__tree<std::string>::destroy(&a79, a80);
  if (v82[1439] < 0)
  {
    operator delete(STACK[0x1500]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a81);
  }

  std::__tree<std::string>::destroy(&STACK[0x210], STACK[0x218]);
  v88 = &STACK[0x155F];
  v89 = -72;
  v90 = &STACK[0x155F];
  while (1)
  {
    v91 = *v90;
    v90 -= 3;
    if (v91 < 0)
    {
      operator delete(*(v88 - 23));
    }

    v88 = v90;
    v89 += 24;
    if (!v89)
    {
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        operator delete(STACK[0x228]);
      }

      std::__tree<std::string>::destroy(&STACK[0x240], STACK[0x248]);
      if (v82[1535] < 0)
      {
        operator delete(STACK[0x1560]);
      }

      if (SLOBYTE(STACK[0x26F]) < 0)
      {
        operator delete(STACK[0x258]);
      }

      std::__tree<std::string>::destroy(&STACK[0x270], STACK[0x278]);
      v92 = &STACK[0x15BF];
      v93 = -72;
      v94 = &STACK[0x15BF];
      while (1)
      {
        v95 = *v94;
        v94 -= 3;
        if (v95 < 0)
        {
          operator delete(*(v92 - 23));
        }

        v92 = v94;
        v93 += 24;
        if (!v93)
        {
          if (SLOBYTE(STACK[0x29F]) < 0)
          {
            operator delete(STACK[0x288]);
          }

          std::__tree<std::string>::destroy(&STACK[0x2A0], STACK[0x2A8]);
          if (v82[1631] < 0)
          {
            operator delete(STACK[0x15C0]);
          }

          if (SLOBYTE(STACK[0x2CF]) < 0)
          {
            operator delete(STACK[0x2B8]);
          }

          std::__tree<std::string>::destroy(&STACK[0x2D0], STACK[0x2D8]);
          if (v82[1655] < 0)
          {
            operator delete(STACK[0x15D8]);
          }

          if (SLOBYTE(STACK[0x2FF]) < 0)
          {
            operator delete(STACK[0x2E8]);
          }

          std::__tree<std::string>::destroy(&STACK[0x300], STACK[0x308]);
          if (v82[1679] < 0)
          {
            operator delete(STACK[0x15F0]);
          }

          if (SLOBYTE(STACK[0x32F]) < 0)
          {
            operator delete(STACK[0x318]);
          }

          std::__tree<std::string>::destroy(&STACK[0x330], STACK[0x338]);
          if (v82[1703] < 0)
          {
            operator delete(STACK[0x1608]);
          }

          if (SLOBYTE(STACK[0x35F]) < 0)
          {
            operator delete(STACK[0x348]);
          }

          std::__tree<std::string>::destroy(&STACK[0x360], STACK[0x368]);
          if (v82[1727] < 0)
          {
            operator delete(STACK[0x1620]);
          }

          if (SLOBYTE(STACK[0x38F]) < 0)
          {
            operator delete(STACK[0x378]);
          }

          std::__tree<std::string>::destroy(&STACK[0x390], STACK[0x398]);
          v96 = &STACK[0x1667];
          v97 = -48;
          v98 = &STACK[0x1667];
          while (1)
          {
            v99 = *v98;
            v98 -= 3;
            if (v99 < 0)
            {
              operator delete(*(v96 - 23));
            }

            v96 = v98;
            v97 += 24;
            if (!v97)
            {
              if (SLOBYTE(STACK[0x3BF]) < 0)
              {
                operator delete(STACK[0x3A8]);
              }

              std::__tree<std::string>::destroy(&STACK[0x3C0], STACK[0x3C8]);
              v100 = &STACK[0x1697];
              v101 = -48;
              v102 = &STACK[0x1697];
              while (1)
              {
                v103 = *v102;
                v102 -= 3;
                if (v103 < 0)
                {
                  operator delete(*(v100 - 23));
                }

                v100 = v102;
                v101 += 24;
                if (!v101)
                {
                  if (SLOBYTE(STACK[0x3EF]) < 0)
                  {
                    operator delete(STACK[0x3D8]);
                  }

                  std::__tree<std::string>::destroy(&STACK[0x3F0], STACK[0x3F8]);
                  if (v82[1847] < 0)
                  {
                    operator delete(STACK[0x1698]);
                  }

                  if (SLOBYTE(STACK[0x41F]) < 0)
                  {
                    operator delete(STACK[0x408]);
                  }

                  std::__tree<std::string>::destroy(&STACK[0x420], STACK[0x428]);
                  v104 = &STACK[0x16DF];
                  v105 = -48;
                  v106 = &STACK[0x16DF];
                  while (1)
                  {
                    v107 = *v106;
                    v106 -= 3;
                    if (v107 < 0)
                    {
                      operator delete(*(v104 - 23));
                    }

                    v104 = v106;
                    v105 += 24;
                    if (!v105)
                    {
                      if (SLOBYTE(STACK[0x44F]) < 0)
                      {
                        operator delete(STACK[0x438]);
                      }

                      std::__tree<std::string>::destroy(&STACK[0x450], STACK[0x458]);
                      v108 = &STACK[0x170F];
                      v109 = -48;
                      v110 = &STACK[0x170F];
                      while (1)
                      {
                        v111 = *v110;
                        v110 -= 3;
                        if (v111 < 0)
                        {
                          operator delete(*(v108 - 23));
                        }

                        v108 = v110;
                        v109 += 24;
                        if (!v109)
                        {
                          if (SLOBYTE(STACK[0x47F]) < 0)
                          {
                            operator delete(STACK[0x468]);
                          }

                          std::__tree<std::string>::destroy(&STACK[0x480], STACK[0x488]);
                          v112 = &STACK[0x1757];
                          v113 = -72;
                          v114 = &STACK[0x1757];
                          while (1)
                          {
                            v115 = *v114;
                            v114 -= 3;
                            if (v115 < 0)
                            {
                              operator delete(*(v112 - 23));
                            }

                            v112 = v114;
                            v113 += 24;
                            if (!v113)
                            {
                              if (SLOBYTE(STACK[0x4AF]) < 0)
                              {
                                operator delete(STACK[0x498]);
                              }

                              std::__tree<std::string>::destroy(&STACK[0x4B0], STACK[0x4B8]);
                              v116 = &STACK[0x1787];
                              v117 = -48;
                              v118 = &STACK[0x1787];
                              while (1)
                              {
                                v119 = *v118;
                                v118 -= 3;
                                if (v119 < 0)
                                {
                                  operator delete(*(v116 - 23));
                                }

                                v116 = v118;
                                v117 += 24;
                                if (!v117)
                                {
                                  if (SLOBYTE(STACK[0x4DF]) < 0)
                                  {
                                    operator delete(STACK[0x4C8]);
                                  }

                                  std::__tree<std::string>::destroy(&STACK[0x4E0], STACK[0x4E8]);
                                  v120 = &STACK[0x17B7];
                                  v121 = -48;
                                  v122 = &STACK[0x17B7];
                                  while (1)
                                  {
                                    v123 = *v122;
                                    v122 -= 3;
                                    if (v123 < 0)
                                    {
                                      operator delete(*(v120 - 23));
                                    }

                                    v120 = v122;
                                    v121 += 24;
                                    if (!v121)
                                    {
                                      if (SLOBYTE(STACK[0x50F]) < 0)
                                      {
                                        operator delete(STACK[0x4F8]);
                                      }

                                      std::__tree<std::string>::destroy(&STACK[0x510], STACK[0x518]);
                                      v124 = &STACK[0x17E7];
                                      v125 = -48;
                                      v126 = &STACK[0x17E7];
                                      while (1)
                                      {
                                        v127 = *v126;
                                        v126 -= 3;
                                        if (v127 < 0)
                                        {
                                          operator delete(*(v124 - 23));
                                        }

                                        v124 = v126;
                                        v125 += 24;
                                        if (!v125)
                                        {
                                          if (SLOBYTE(STACK[0x53F]) < 0)
                                          {
                                            operator delete(STACK[0x528]);
                                          }

                                          std::__tree<std::string>::destroy(&STACK[0x540], STACK[0x548]);
                                          if (v82[2183] < 0)
                                          {
                                            operator delete(STACK[0x17E8]);
                                          }

                                          if (SLOBYTE(STACK[0x56F]) < 0)
                                          {
                                            operator delete(STACK[0x558]);
                                          }

                                          std::__tree<std::string>::destroy(&STACK[0x570], STACK[0x578]);
                                          v128 = &STACK[0x182F];
                                          v129 = -48;
                                          v130 = &STACK[0x182F];
                                          while (1)
                                          {
                                            v131 = *v130;
                                            v130 -= 3;
                                            if (v131 < 0)
                                            {
                                              operator delete(*(v128 - 23));
                                            }

                                            v128 = v130;
                                            v129 += 24;
                                            if (!v129)
                                            {
                                              if (SLOBYTE(STACK[0x59F]) < 0)
                                              {
                                                operator delete(STACK[0x588]);
                                              }

                                              std::__tree<std::string>::destroy(&STACK[0x5A0], STACK[0x5A8]);
                                              v132 = &STACK[0x185F];
                                              v133 = -48;
                                              v134 = &STACK[0x185F];
                                              while (1)
                                              {
                                                v135 = *v134;
                                                v134 -= 3;
                                                if (v135 < 0)
                                                {
                                                  operator delete(*(v132 - 23));
                                                }

                                                v132 = v134;
                                                v133 += 24;
                                                if (!v133)
                                                {
                                                  if (SLOBYTE(STACK[0x5CF]) < 0)
                                                  {
                                                    operator delete(STACK[0x5B8]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x5D0], STACK[0x5D8]);
                                                  if (v82[2303] < 0)
                                                  {
                                                    operator delete(STACK[0x1860]);
                                                  }

                                                  if (SLOBYTE(STACK[0x5FF]) < 0)
                                                  {
                                                    operator delete(STACK[0x5E8]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x600], STACK[0x608]);
                                                  if (v82[2327] < 0)
                                                  {
                                                    operator delete(STACK[0x1878]);
                                                  }

                                                  if (SLOBYTE(STACK[0x62F]) < 0)
                                                  {
                                                    operator delete(STACK[0x618]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x630], STACK[0x638]);
                                                  if (v82[2351] < 0)
                                                  {
                                                    operator delete(STACK[0x1890]);
                                                  }

                                                  if (SLOBYTE(STACK[0x65F]) < 0)
                                                  {
                                                    operator delete(STACK[0x648]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x660], STACK[0x668]);
                                                  if (v82[2375] < 0)
                                                  {
                                                    operator delete(STACK[0x18A8]);
                                                  }

                                                  if (SLOBYTE(STACK[0x68F]) < 0)
                                                  {
                                                    operator delete(STACK[0x678]);
                                                  }

                                                  std::__tree<std::string>::destroy(&STACK[0x690], STACK[0x698]);
                                                  v136 = &STACK[0x18EF];
                                                  v137 = -48;
                                                  v138 = &STACK[0x18EF];
                                                  while (1)
                                                  {
                                                    v139 = *v138;
                                                    v138 -= 3;
                                                    if (v139 < 0)
                                                    {
                                                      operator delete(*(v136 - 23));
                                                    }

                                                    v136 = v138;
                                                    v137 += 24;
                                                    if (!v137)
                                                    {
                                                      if (SLOBYTE(STACK[0x6BF]) < 0)
                                                      {
                                                        operator delete(STACK[0x6A8]);
                                                      }

                                                      std::__tree<std::string>::destroy(&STACK[0x6C0], STACK[0x6C8]);
                                                      v140 = &STACK[0x1937];
                                                      v141 = -72;
                                                      v142 = &STACK[0x1937];
                                                      while (1)
                                                      {
                                                        v143 = *v142;
                                                        v142 -= 3;
                                                        if (v143 < 0)
                                                        {
                                                          operator delete(*(v140 - 23));
                                                        }

                                                        v140 = v142;
                                                        v141 += 24;
                                                        if (!v141)
                                                        {
                                                          if (SLOBYTE(STACK[0x6EF]) < 0)
                                                          {
                                                            operator delete(STACK[0x6D8]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x6F0], STACK[0x6F8]);
                                                          if (v82[2519] < 0)
                                                          {
                                                            operator delete(STACK[0x1938]);
                                                          }

                                                          if (SLOBYTE(STACK[0x71F]) < 0)
                                                          {
                                                            operator delete(STACK[0x708]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x720], STACK[0x728]);
                                                          if (v82[2543] < 0)
                                                          {
                                                            operator delete(STACK[0x1950]);
                                                          }

                                                          if (SLOBYTE(STACK[0x74F]) < 0)
                                                          {
                                                            operator delete(STACK[0x738]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x750], STACK[0x758]);
                                                          if (v82[2567] < 0)
                                                          {
                                                            operator delete(STACK[0x1968]);
                                                          }

                                                          if (SLOBYTE(STACK[0x77F]) < 0)
                                                          {
                                                            operator delete(STACK[0x768]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x780], STACK[0x788]);
                                                          if (v82[2591] < 0)
                                                          {
                                                            operator delete(STACK[0x1980]);
                                                          }

                                                          if (SLOBYTE(STACK[0x7AF]) < 0)
                                                          {
                                                            operator delete(STACK[0x798]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x7B0], STACK[0x7B8]);
                                                          if (v82[2615] < 0)
                                                          {
                                                            operator delete(STACK[0x1998]);
                                                          }

                                                          if (SLOBYTE(STACK[0x7DF]) < 0)
                                                          {
                                                            operator delete(STACK[0x7C8]);
                                                          }

                                                          std::__tree<std::string>::destroy(&STACK[0x7E0], STACK[0x7E8]);
                                                          v144 = &STACK[0x19DF];
                                                          v145 = -48;
                                                          v146 = &STACK[0x19DF];
                                                          while (1)
                                                          {
                                                            v147 = *v146;
                                                            v146 -= 3;
                                                            if (v147 < 0)
                                                            {
                                                              operator delete(*(v144 - 23));
                                                            }

                                                            v144 = v146;
                                                            v145 += 24;
                                                            if (!v145)
                                                            {
                                                              if (SLOBYTE(STACK[0x80F]) < 0)
                                                              {
                                                                operator delete(STACK[0x7F8]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x810], STACK[0x818]);
                                                              if (v82[2687] < 0)
                                                              {
                                                                operator delete(STACK[0x19E0]);
                                                              }

                                                              if (SLOBYTE(STACK[0x83F]) < 0)
                                                              {
                                                                operator delete(STACK[0x828]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x840], STACK[0x848]);
                                                              if (v82[2711] < 0)
                                                              {
                                                                operator delete(STACK[0x19F8]);
                                                              }

                                                              if (SLOBYTE(STACK[0x86F]) < 0)
                                                              {
                                                                operator delete(STACK[0x858]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x870], STACK[0x878]);
                                                              if (v82[2735] < 0)
                                                              {
                                                                operator delete(STACK[0x1A10]);
                                                              }

                                                              if (SLOBYTE(STACK[0x89F]) < 0)
                                                              {
                                                                operator delete(STACK[0x888]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x8A0], STACK[0x8A8]);
                                                              if (v82[2759] < 0)
                                                              {
                                                                operator delete(STACK[0x1A28]);
                                                              }

                                                              if (SLOBYTE(STACK[0x8CF]) < 0)
                                                              {
                                                                operator delete(STACK[0x8B8]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x8D0], STACK[0x8D8]);
                                                              if (v82[2783] < 0)
                                                              {
                                                                operator delete(STACK[0x1A40]);
                                                              }

                                                              if (SLOBYTE(STACK[0x8FF]) < 0)
                                                              {
                                                                operator delete(STACK[0x8E8]);
                                                              }

                                                              std::__tree<std::string>::destroy(&STACK[0x900], STACK[0x908]);
                                                              v148 = &STACK[0x1A87];
                                                              v149 = -48;
                                                              v150 = &STACK[0x1A87];
                                                              while (1)
                                                              {
                                                                v151 = *v150;
                                                                v150 -= 3;
                                                                if (v151 < 0)
                                                                {
                                                                  operator delete(*(v148 - 23));
                                                                }

                                                                v148 = v150;
                                                                v149 += 24;
                                                                if (!v149)
                                                                {
                                                                  if (SLOBYTE(STACK[0x92F]) < 0)
                                                                  {
                                                                    operator delete(STACK[0x918]);
                                                                  }

                                                                  std::__tree<std::string>::destroy(&STACK[0x930], STACK[0x938]);
                                                                  v152 = &STACK[0x1ACF];
                                                                  v153 = -72;
                                                                  v154 = &STACK[0x1ACF];
                                                                  while (1)
                                                                  {
                                                                    v155 = *v154;
                                                                    v154 -= 3;
                                                                    if (v155 < 0)
                                                                    {
                                                                      operator delete(*(v152 - 23));
                                                                    }

                                                                    v152 = v154;
                                                                    v153 += 24;
                                                                    if (!v153)
                                                                    {
                                                                      if (SLOBYTE(STACK[0x95F]) < 0)
                                                                      {
                                                                        operator delete(STACK[0x948]);
                                                                      }

                                                                      std::__tree<std::string>::destroy(&STACK[0x960], STACK[0x968]);
                                                                      v156 = &STACK[0x1AFF];
                                                                      v157 = -48;
                                                                      v158 = &STACK[0x1AFF];
                                                                      while (1)
                                                                      {
                                                                        v159 = *v158;
                                                                        v158 -= 3;
                                                                        if (v159 < 0)
                                                                        {
                                                                          operator delete(*(v156 - 23));
                                                                        }

                                                                        v156 = v158;
                                                                        v157 += 24;
                                                                        if (!v157)
                                                                        {
                                                                          if (SLOBYTE(STACK[0x98F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x978]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0x990], STACK[0x998]);
                                                                          if (v82[2975] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B00]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0x9BF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x9A8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0x9C0], STACK[0x9C8]);
                                                                          if (v82[2999] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B18]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0x9EF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0x9D8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0x9F0], STACK[0x9F8]);
                                                                          if (v82[3023] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B30]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xA1F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA08]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xA20], STACK[0xA28]);
                                                                          if (v82[3047] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B48]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xA4F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA38]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xA50], STACK[0xA58]);
                                                                          if (v82[3071] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B60]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xA7F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA68]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xA80], STACK[0xA88]);
                                                                          if (v82[3095] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B78]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xAAF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xA98]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xAB0], STACK[0xAB8]);
                                                                          if (v82[3119] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1B90]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xADF]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xAC8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xAE0], STACK[0xAE8]);
                                                                          if (v82[3143] < 0)
                                                                          {
                                                                            operator delete(STACK[0x1BA8]);
                                                                          }

                                                                          if (SLOBYTE(STACK[0xB0F]) < 0)
                                                                          {
                                                                            operator delete(STACK[0xAF8]);
                                                                          }

                                                                          std::__tree<std::string>::destroy(&STACK[0xB10], STACK[0xB18]);
                                                                          v160 = &STACK[0x1BEF];
                                                                          v161 = -48;
                                                                          v162 = &STACK[0x1BEF];
                                                                          while (1)
                                                                          {
                                                                            v163 = *v162;
                                                                            v162 -= 3;
                                                                            if (v163 < 0)
                                                                            {
                                                                              operator delete(*(v160 - 23));
                                                                            }

                                                                            v160 = v162;
                                                                            v161 += 24;
                                                                            if (!v161)
                                                                            {
                                                                              if (SLOBYTE(STACK[0xB3F]) < 0)
                                                                              {
                                                                                operator delete(STACK[0xB28]);
                                                                              }

                                                                              std::__tree<std::string>::destroy(&STACK[0xB40], STACK[0xB48]);
                                                                              if (v82[3215] < 0)
                                                                              {
                                                                                operator delete(STACK[0x1BF0]);
                                                                              }

                                                                              if (SLOBYTE(STACK[0xB6F]) < 0)
                                                                              {
                                                                                operator delete(STACK[0xB58]);
                                                                              }

                                                                              std::__tree<std::string>::destroy(&STACK[0xB70], STACK[0xB78]);
                                                                              v164 = &STACK[0x1C37];
                                                                              v165 = -48;
                                                                              v166 = &STACK[0x1C37];
                                                                              while (1)
                                                                              {
                                                                                v167 = *v166;
                                                                                v166 -= 3;
                                                                                if (v167 < 0)
                                                                                {
                                                                                  operator delete(*(v164 - 23));
                                                                                }

                                                                                v164 = v166;
                                                                                v165 += 24;
                                                                                if (!v165)
                                                                                {
                                                                                  if (SLOBYTE(STACK[0xB9F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xB88]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xBA0], STACK[0xBA8]);
                                                                                  if (v82[3287] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C38]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xBCF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xBB8]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xBD0], STACK[0xBD8]);
                                                                                  if (v82[3311] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C50]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xBFF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xBE8]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC00], STACK[0xC08]);
                                                                                  if (v82[3335] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C68]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xC2F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xC18]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC30], STACK[0xC38]);
                                                                                  if (v82[3359] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C80]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xC5F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xC48]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC60], STACK[0xC68]);
                                                                                  if (v82[3383] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1C98]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xC8F]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xC78]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xC90], STACK[0xC98]);
                                                                                  if (v82[3407] < 0)
                                                                                  {
                                                                                    operator delete(STACK[0x1CB0]);
                                                                                  }

                                                                                  if (SLOBYTE(STACK[0xCBF]) < 0)
                                                                                  {
                                                                                    operator delete(STACK[0xCA8]);
                                                                                  }

                                                                                  std::__tree<std::string>::destroy(&STACK[0xCC0], STACK[0xCC8]);
                                                                                  v168 = &STACK[0x1CF7];
                                                                                  v169 = -48;
                                                                                  v170 = &STACK[0x1CF7];
                                                                                  while (1)
                                                                                  {
                                                                                    v171 = *v170;
                                                                                    v170 -= 3;
                                                                                    if (v171 < 0)
                                                                                    {
                                                                                      operator delete(*(v168 - 23));
                                                                                    }

                                                                                    v168 = v170;
                                                                                    v169 += 24;
                                                                                    if (!v169)
                                                                                    {
                                                                                      if (SLOBYTE(STACK[0xCEF]) < 0)
                                                                                      {
                                                                                        operator delete(STACK[0xCD8]);
                                                                                      }

                                                                                      std::__tree<std::string>::destroy(&STACK[0xCF0], STACK[0xCF8]);
                                                                                      v172 = &STACK[0x1D27];
                                                                                      v173 = -48;
                                                                                      v174 = &STACK[0x1D27];
                                                                                      while (1)
                                                                                      {
                                                                                        v175 = *v174;
                                                                                        v174 -= 3;
                                                                                        if (v175 < 0)
                                                                                        {
                                                                                          operator delete(*(v172 - 23));
                                                                                        }

                                                                                        v172 = v174;
                                                                                        v173 += 24;
                                                                                        if (!v173)
                                                                                        {
                                                                                          if (SLOBYTE(STACK[0xD1F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD08]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xD20], STACK[0xD28]);
                                                                                          if (v82[3527] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D28]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xD4F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD38]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xD50], STACK[0xD58]);
                                                                                          if (v82[3551] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D40]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xD7F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD68]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xD80], STACK[0xD88]);
                                                                                          if (v82[3575] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D58]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xDAF]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xD98]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xDB0], STACK[0xDB8]);
                                                                                          if (v82[3599] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D70]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xDDF]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xDC8]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xDE0], STACK[0xDE8]);
                                                                                          if (v82[3623] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1D88]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE0F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xDF8]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xE10], STACK[0xE18]);
                                                                                          if (v82[3647] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DA0]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE3F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xE28]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xE40], STACK[0xE48]);
                                                                                          if (v82[3671] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DB8]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE6F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xE58]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xE70], STACK[0xE78]);
                                                                                          if (v82[3695] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DD0]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xE9F]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xE88]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xEA0], STACK[0xEA8]);
                                                                                          if (v82[3719] < 0)
                                                                                          {
                                                                                            operator delete(STACK[0x1DE8]);
                                                                                          }

                                                                                          if (SLOBYTE(STACK[0xECF]) < 0)
                                                                                          {
                                                                                            operator delete(STACK[0xEB8]);
                                                                                          }

                                                                                          std::__tree<std::string>::destroy(&STACK[0xED0], STACK[0xED8]);
                                                                                          v176 = &STACK[0x1E2F];
                                                                                          v177 = -48;
                                                                                          v178 = &STACK[0x1E2F];
                                                                                          while (1)
                                                                                          {
                                                                                            v179 = *v178;
                                                                                            v178 -= 3;
                                                                                            if (v179 < 0)
                                                                                            {
                                                                                              operator delete(*(v176 - 23));
                                                                                            }

                                                                                            v176 = v178;
                                                                                            v177 += 24;
                                                                                            if (!v177)
                                                                                            {
                                                                                              if (SLOBYTE(STACK[0xEFF]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0xEE8]);
                                                                                              }

                                                                                              std::__tree<std::string>::destroy(&STACK[0xF00], STACK[0xF08]);
                                                                                              if (v82[3791] < 0)
                                                                                              {
                                                                                                operator delete(STACK[0x1E30]);
                                                                                              }

                                                                                              if (SLOBYTE(STACK[0xF2F]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0xF18]);
                                                                                              }

                                                                                              std::__tree<std::string>::destroy(&STACK[0xF30], STACK[0xF38]);
                                                                                              if (v82[3815] < 0)
                                                                                              {
                                                                                                operator delete(STACK[0x1E48]);
                                                                                              }

                                                                                              if (SLOBYTE(STACK[0xF5F]) < 0)
                                                                                              {
                                                                                                operator delete(STACK[0xF48]);
                                                                                              }

                                                                                              std::__tree<std::string>::destroy(&STACK[0xF60], STACK[0xF68]);
                                                                                              v180 = &STACK[0x1EA7];
                                                                                              v181 = -72;
                                                                                              v182 = &STACK[0x1EA7];
                                                                                              while (1)
                                                                                              {
                                                                                                v183 = *v182;
                                                                                                v182 -= 3;
                                                                                                if (v183 < 0)
                                                                                                {
                                                                                                  operator delete(*(v180 - 23));
                                                                                                }

                                                                                                v180 = v182;
                                                                                                v181 += 24;
                                                                                                if (!v181)
                                                                                                {
                                                                                                  if (v82[23] < 0)
                                                                                                  {
                                                                                                    operator delete(STACK[0xF78]);
                                                                                                  }

                                                                                                  std::__tree<std::string>::destroy(&STACK[0xF90], STACK[0xF98]);
                                                                                                  v184 = &STACK[0x1ED7];
                                                                                                  v185 = -48;
                                                                                                  v186 = &STACK[0x1ED7];
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v187 = *v186;
                                                                                                    v186 -= 3;
                                                                                                    if (v187 < 0)
                                                                                                    {
                                                                                                      operator delete(*(v184 - 23));
                                                                                                    }

                                                                                                    v184 = v186;
                                                                                                    v185 += 24;
                                                                                                    if (!v185)
                                                                                                    {
                                                                                                      if (v82[71] < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0xFA8]);
                                                                                                      }

                                                                                                      std::__tree<std::string>::destroy(&STACK[0xFC0], STACK[0xFC8]);
                                                                                                      if (v82[3959] < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0x1ED8]);
                                                                                                      }

                                                                                                      if (v82[119] < 0)
                                                                                                      {
                                                                                                        operator delete(STACK[0xFD8]);
                                                                                                      }

                                                                                                      std::__tree<std::string>::destroy(&STACK[0xFF0], STACK[0xFF8]);
                                                                                                      v188 = &STACK[0x1F1F];
                                                                                                      v189 = -48;
                                                                                                      v190 = &STACK[0x1F1F];
                                                                                                      while (1)
                                                                                                      {
                                                                                                        v191 = *v190;
                                                                                                        v190 -= 3;
                                                                                                        if (v191 < 0)
                                                                                                        {
                                                                                                          operator delete(*(v188 - 23));
                                                                                                        }

                                                                                                        v188 = v190;
                                                                                                        v189 += 24;
                                                                                                        if (!v189)
                                                                                                        {
                                                                                                          if (v82[167] < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x1008]);
                                                                                                          }

                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1020], STACK[0x1028]);
                                                                                                          if (v82[4031] < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x1F20]);
                                                                                                          }

                                                                                                          if (v82[215] < 0)
                                                                                                          {
                                                                                                            operator delete(STACK[0x1038]);
                                                                                                          }

                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1050], STACK[0x1058]);
                                                                                                          v192 = &STACK[0x1F67];
                                                                                                          v193 = -48;
                                                                                                          v194 = &STACK[0x1F67];
                                                                                                          while (1)
                                                                                                          {
                                                                                                            v195 = *v194;
                                                                                                            v194 -= 3;
                                                                                                            if (v195 < 0)
                                                                                                            {
                                                                                                              operator delete(*(v192 - 23));
                                                                                                            }

                                                                                                            v192 = v194;
                                                                                                            v193 += 24;
                                                                                                            if (!v193)
                                                                                                            {
                                                                                                              if (v82[263] < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x1068]);
                                                                                                              }

                                                                                                              std::__tree<std::string>::destroy(&STACK[0x1080], STACK[0x1088]);
                                                                                                              if (v83[23] < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x1F68]);
                                                                                                              }

                                                                                                              if (v82[311] < 0)
                                                                                                              {
                                                                                                                operator delete(STACK[0x1098]);
                                                                                                              }

                                                                                                              std::__tree<std::string>::destroy(&STACK[0x10B0], STACK[0x10B8]);
                                                                                                              v196 = &STACK[0x1FC7];
                                                                                                              v197 = -72;
                                                                                                              v198 = &STACK[0x1FC7];
                                                                                                              while (1)
                                                                                                              {
                                                                                                                v199 = *v198;
                                                                                                                v198 -= 3;
                                                                                                                if (v199 < 0)
                                                                                                                {
                                                                                                                  operator delete(*(v196 - 23));
                                                                                                                }

                                                                                                                v196 = v198;
                                                                                                                v197 += 24;
                                                                                                                if (!v197)
                                                                                                                {
                                                                                                                  if (v82[359] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x10C8]);
                                                                                                                  }

                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x10E0], STACK[0x10E8]);
                                                                                                                  if (v83[119] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x1FC8]);
                                                                                                                  }

                                                                                                                  if (v82[407] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x10F8]);
                                                                                                                  }

                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x1110], STACK[0x1118]);
                                                                                                                  if (v83[143] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x1FE0]);
                                                                                                                  }

                                                                                                                  if (v82[455] < 0)
                                                                                                                  {
                                                                                                                    operator delete(STACK[0x1128]);
                                                                                                                  }

                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x1140], STACK[0x1148]);
                                                                                                                  v200 = &STACK[0x2027];
                                                                                                                  v201 = -48;
                                                                                                                  v202 = &STACK[0x2027];
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    v203 = *v202;
                                                                                                                    v202 -= 3;
                                                                                                                    if (v203 < 0)
                                                                                                                    {
                                                                                                                      operator delete(*(v200 - 23));
                                                                                                                    }

                                                                                                                    v200 = v202;
                                                                                                                    v201 += 24;
                                                                                                                    if (!v201)
                                                                                                                    {
                                                                                                                      if (v82[503] < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x1158]);
                                                                                                                      }

                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x1170], STACK[0x1178]);
                                                                                                                      if (v83[215] < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x2028]);
                                                                                                                      }

                                                                                                                      if (v82[551] < 0)
                                                                                                                      {
                                                                                                                        operator delete(STACK[0x1188]);
                                                                                                                      }

                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x11A0], STACK[0x11A8]);
                                                                                                                      v204 = &STACK[0x206F];
                                                                                                                      v205 = -48;
                                                                                                                      v206 = &STACK[0x206F];
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        v207 = *v206;
                                                                                                                        v206 -= 3;
                                                                                                                        if (v207 < 0)
                                                                                                                        {
                                                                                                                          operator delete(*(v204 - 23));
                                                                                                                        }

                                                                                                                        v204 = v206;
                                                                                                                        v205 += 24;
                                                                                                                        if (!v205)
                                                                                                                        {
                                                                                                                          if (v82[599] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x11B8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x11D0], STACK[0x11D8]);
                                                                                                                          if (v83[287] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x2070]);
                                                                                                                          }

                                                                                                                          if (v82[647] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x11E8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1200], STACK[0x1208]);
                                                                                                                          if (v83[311] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x2088]);
                                                                                                                          }

                                                                                                                          if (v82[695] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1218]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1230], STACK[0x1238]);
                                                                                                                          if (v83[335] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20A0]);
                                                                                                                          }

                                                                                                                          if (v82[743] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1248]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1260], STACK[0x1268]);
                                                                                                                          if (v83[359] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20B8]);
                                                                                                                          }

                                                                                                                          if (v82[791] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1278]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1290], STACK[0x1298]);
                                                                                                                          if (v83[383] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20D0]);
                                                                                                                          }

                                                                                                                          if (v82[839] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x12A8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x12C0], STACK[0x12C8]);
                                                                                                                          if (v83[407] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x20E8]);
                                                                                                                          }

                                                                                                                          if (v82[887] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x12D8]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x12F0], STACK[0x12F8]);
                                                                                                                          if (v83[431] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x2100]);
                                                                                                                          }

                                                                                                                          if (v82[935] < 0)
                                                                                                                          {
                                                                                                                            operator delete(STACK[0x1308]);
                                                                                                                          }

                                                                                                                          std::__tree<std::string>::destroy(&STACK[0x1320], STACK[0x1328]);
                                                                                                                          v208 = &STACK[0x2147];
                                                                                                                          v209 = -48;
                                                                                                                          v210 = &STACK[0x2147];
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            v211 = *v210;
                                                                                                                            v210 -= 3;
                                                                                                                            if (v211 < 0)
                                                                                                                            {
                                                                                                                              operator delete(*(v208 - 23));
                                                                                                                            }

                                                                                                                            v208 = v210;
                                                                                                                            v209 += 24;
                                                                                                                            if (!v209)
                                                                                                                            {
                                                                                                                              if (v82[983] < 0)
                                                                                                                              {
                                                                                                                                operator delete(STACK[0x1338]);
                                                                                                                              }

                                                                                                                              std::__tree<std::string>::destroy(&STACK[0x1350], STACK[0x1358]);
                                                                                                                              v212 = &STACK[0x2177];
                                                                                                                              v213 = -48;
                                                                                                                              v214 = &STACK[0x2177];
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                v215 = *v214;
                                                                                                                                v214 -= 3;
                                                                                                                                if (v215 < 0)
                                                                                                                                {
                                                                                                                                  operator delete(*(v212 - 23));
                                                                                                                                }

                                                                                                                                v212 = v214;
                                                                                                                                v213 += 24;
                                                                                                                                if (!v213)
                                                                                                                                {
                                                                                                                                  if (v82[1031] < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(STACK[0x1368]);
                                                                                                                                  }

                                                                                                                                  std::__tree<std::string>::destroy(&STACK[0x1380], STACK[0x1388]);
                                                                                                                                  v216 = &STACK[0x21A7];
                                                                                                                                  v217 = -48;
                                                                                                                                  v218 = &STACK[0x21A7];
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    v219 = *v218;
                                                                                                                                    v218 -= 3;
                                                                                                                                    if (v219 < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(*(v216 - 23));
                                                                                                                                    }

                                                                                                                                    v216 = v218;
                                                                                                                                    v217 += 24;
                                                                                                                                    if (!v217)
                                                                                                                                    {
                                                                                                                                      if (v82[1079] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x1398]);
                                                                                                                                      }

                                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x13B0], STACK[0x13B8]);
                                                                                                                                      if (v83[599] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x21A8]);
                                                                                                                                      }

                                                                                                                                      if (v82[1127] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x13C8]);
                                                                                                                                      }

                                                                                                                                      std::__tree<std::string>::destroy(&STACK[0x13E0], STACK[0x13E8]);
                                                                                                                                      if (v83[623] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x21C0]);
                                                                                                                                      }

                                                                                                                                      if (v82[1175] < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(STACK[0x13F8]);
                                                                                                                                      }

                                                                                                                                      _Unwind_Resume(a1);
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BFBE772C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1578])
    {
      JUMPOUT(0x1BFBE7754);
    }
  }
}

void sub_1BFBE775C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1710])
    {
      JUMPOUT(0x1BFBE7784);
    }
  }
}

void sub_1BFBE778C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x18F0])
    {
      JUMPOUT(0x1BFBE77B4);
    }
  }
}

void sub_1BFBE77BC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1A88])
    {
      JUMPOUT(0x1BFBE77E4);
    }
  }
}

void sub_1BFBE77EC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1E60])
    {
      JUMPOUT(0x1BFBE7814);
    }
  }
}

void sub_1BFBE781C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1F80])
    {
      JUMPOUT(0x1BFBE7844);
    }
  }
}

void std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void siri::dialogengine::TemporaryVariable::~TemporaryVariable(siri::dialogengine::TemporaryVariable *this)
{
  siri::dialogengine::TemporaryVariable::RemoveFromContext(this);
  v2 = *(this + 15);
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v2 + 8), *(v2 + 16));
      v2 = *(this + 15);
    }

    else
    {
      v3 = *(v2 + 8);
      __str.__r_.__value_.__r.__words[2] = *(v2 + 24);
      *&__str.__r_.__value_.__l.__data_ = v3;
    }

    std::string::operator=((v2 + 8), (this + 56));
    v4 = *this;
    v5 = *(this + 16);
    v11[0] = *(this + 15);
    v11[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::dialogengine::Context::AddVariable(v4, v11);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::string::operator=((*(this + 15) + 8), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v6 = *(this + 16);
  *(this + 15) = 0;
  *(this + 16) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = 0;
  v8 = *(this + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 14);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v10 = *(this + 3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void siri::dialogengine::TemporaryVariable::RemoveFromContext(siri::dialogengine::TemporaryVariable *this)
{
  if (*this)
  {
    v2 = *(this + 13);
    if (v2)
    {
      std::string::operator=((v2 + 8), (this + 56));
      v3 = *this;
      v4 = *(this + 13);
      v5 = *(this + 14);
      v6[0] = v4;
      v6[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::dialogengine::Context::RemoveVariable(v3, v6);
      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_1BFBE7A6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Descriptor::FindFieldByName(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 144);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = (v4 + 1);
    do
    {
      v6 = 5 * v6 + v5;
      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v9 = v3[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = v6 ^ (16777619 * a1);
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6 ^ (16777619 * a1);
    if (v10 >= *&v9)
    {
      v13 = v10 % *&v9;
    }
  }

  else
  {
    v13 = (*&v9 - 1) & v10;
  }

  v14 = *(*v3 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (!*v14)
  {
    return 0;
  }

  while (1)
  {
    v16 = v15[1];
    if (v10 == v16)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v9)
      {
        v16 %= *&v9;
      }
    }

    else
    {
      v16 &= *&v9 - 1;
    }

    if (v16 != v13)
    {
      return 0;
    }

LABEL_25:
    v15 = *v15;
    if (!v15)
    {
      return 0;
    }
  }

  if (v15[2] != a1 || strcmp(v15[3], v4))
  {
    goto LABEL_25;
  }

  if (*(v15 + 8) != 2)
  {
    return 0;
  }

  if (*(v15[5] + 66))
  {
    return 0;
  }

  else
  {
    return v15[5];
  }
}

uint64_t google::protobuf::Reflection::HasField(const std::string::value_type ***this, const google::protobuf::Message *a2, const std::string::value_type **a3, uint64_t a4, const char *a5)
{
  v8 = *this;
  if (a3[10] != v8)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  if (*(a3 + 66) == 1)
  {
    v9 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1)));
    v10 = *(a3 + 17);

    return google::protobuf::internal::ExtensionSet::Has(v9, v10);
  }

  else
  {
    v12 = a3[11];
    if (v12)
    {
      return *(a2 + *(this + 11) - 1431655764 * (&v12[-*(*(v12 + 2) + 48)] >> 4)) == *(a3 + 17);
    }

    else
    {

      return google::protobuf::Reflection::HasBit(this, a2, a3);
    }
  }
}

void siri::dialogengine::SetField(uint64_t a1, char *a2, const std::string::value_type ***a3, google::protobuf::FieldDescriptor *this, const std::string *a5)
{
  v126 = *MEMORY[0x1E69E9840];
  {
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[8],0>(__str);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[8],0>(__str[2].__r_.__value_.__r.__words);
    std::map<std::string,std::string>::map[abi:ne200100](&siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms, &__str[0].__r_.__value_.__l.__data_, 2);
    for (i = 48; i != -48; i -= 48)
    {
      std::pair<std::string const,std::string>::~pair(&__str[i / 0x18]);
    }

    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms, &dword_1BFB68000);
  }

  if (!a2 || !a3)
  {
    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = a5->__r_.__value_.__r.__words[0];
    }

    siri::dialogengine::Log::Debug("Null value attempting to set field to '%s'", a2, v19);
    return;
  }

  v10 = *(this + 15);
  v11 = *(this + 6);
  if (v11)
  {
    v121.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v120.__r_.__value_.__r.__words[0] = this;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      __str[0].__r_.__value_.__r.__words[0] = &v121;
      __str[0].__r_.__value_.__l.__size_ = &v120;
      __p.__r_.__value_.__r.__words[0] = __str;
      std::__call_once(v11, &__p, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v41 = siri::dialogengine::StringToUInt(a5, 0, 0);
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddUInt32(a3, a2, this, v41, v40);
          v43 = *(this + 1);
          if (*(v43 + 23) < 0)
          {
            v43 = *v43;
          }

          siri::dialogengine::Log::Debug("Added UInt32 to repeated field '%s': %u", v42, v43, v41);
        }

        else
        {
          google::protobuf::Reflection::SetUInt32(a3, a2, this, v41, v40);
          v77 = *(this + 1);
          if (*(v77 + 23) < 0)
          {
            v77 = *v77;
          }

          siri::dialogengine::Log::Debug("Set UInt32 field '%s' to %u", v76, v77, v41);
        }
      }

      else if (v12 == 4)
      {
        v51 = siri::dialogengine::StringToIntegralType<unsigned long long>(a5, 0, 0);
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddUInt64(a3, a2, this, v51, v50);
          v53 = *(this + 1);
          if (*(v53 + 23) < 0)
          {
            v53 = *v53;
          }

          siri::dialogengine::Log::Debug("Added UInt64 to repeated field '%s': %llu", v52, v53, v51);
        }

        else
        {
          google::protobuf::Reflection::SetUInt64(a3, a2, this, v51, v50);
          v81 = *(this + 1);
          if (*(v81 + 23) < 0)
          {
            v81 = *v81;
          }

          siri::dialogengine::Log::Debug("Set UInt64 field '%s' to %llu", v80, v81, v51);
        }
      }

      else
      {
        v15 = siri::dialogengine::StringToDouble(a5, 0);
        v16 = v15;
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddDouble(a3, a2, this, v15, v13, v14);
          v18 = *(this + 1);
          if (*(v18 + 23) < 0)
          {
            v18 = *v18;
          }

          siri::dialogengine::Log::Debug("Added Double to repeated field '%s': %g", v17, v18, *&v16);
        }

        else
        {
          google::protobuf::Reflection::SetDouble(a3, a2, this, v15, v13, v14);
          v79 = *(this + 1);
          if (*(v79 + 23) < 0)
          {
            v79 = *v79;
          }

          siri::dialogengine::Log::Debug("Set Double field '%s' to %g", v78, v79, *&v16);
        }
      }

      return;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v22 = siri::dialogengine::StringToInt64(a5, 0, 0);
        if (v10 == 3)
        {
          google::protobuf::Reflection::AddInt64(a3, a2, this, v22, v21);
          v24 = *(this + 1);
          if (*(v24 + 23) < 0)
          {
            v24 = *v24;
          }

          siri::dialogengine::Log::Debug("Added Int64 to repeated field '%s': %lld", v23, v24, v22);
        }

        else
        {
          google::protobuf::Reflection::SetInt64(a3, a2, this, v22, v21);
          v68 = *(this + 1);
          if (*(v68 + 23) < 0)
          {
            v68 = *v68;
          }

          siri::dialogengine::Log::Debug("Set Int64 field '%s' to %lld", v67, v68, v22);
        }

        return;
      }

      goto LABEL_90;
    }

    v30 = siri::dialogengine::StringToInt(a5, 0, 0);
    if (v10 == 3)
    {
      google::protobuf::Reflection::AddInt32(a3, a2, this, v30, v29);
      v32 = *(this + 1);
      if (*(v32 + 23) < 0)
      {
        v32 = *v32;
      }

      siri::dialogengine::Log::Debug("Added Int32 to repeated field '%s': %d", v31, v32, v30);
    }

    else
    {
      google::protobuf::Reflection::SetInt32(a3, a2, this, v30, v29);
      v72 = *(this + 1);
      if (*(v72 + 23) < 0)
      {
        v72 = *v72;
      }

      siri::dialogengine::Log::Debug("Set Int32 field '%s' to %d", v71, v72, v30);
    }

    return;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      v35 = siri::dialogengine::StringToDouble(a5, 0);
      v36 = v35;
      if (v10 == 3)
      {
        v37 = v35;
        google::protobuf::Reflection::AddFloat(a3, a2, this, v37, v33, v34);
        v39 = *(this + 1);
        if (*(v39 + 23) < 0)
        {
          v39 = *v39;
        }

        siri::dialogengine::Log::Debug("Added Float to repeated field '%s': %g", v38, v39, v36);
      }

      else
      {
        v73 = v35;
        google::protobuf::Reflection::SetFloat(a3, a2, this, v73, v33, v34);
        v75 = *(this + 1);
        if (*(v75 + 23) < 0)
        {
          v75 = *v75;
        }

        siri::dialogengine::Log::Debug("Set Float field '%s' to %g", v74, v75, v36);
      }
    }

    else
    {
      v26 = siri::dialogengine::StringToBool(a5);
      if (v10 == 3)
      {
        google::protobuf::Reflection::AddBool(a3, a2, this, v26, v25);
        v28 = *(this + 1);
        if (*(v28 + 23) < 0)
        {
          v28 = *v28;
        }

        siri::dialogengine::Log::Debug("Added Bool to repeated field '%s': %d", v27, v28, v26);
      }

      else
      {
        google::protobuf::Reflection::SetBool(a3, a2, this, v26, v25);
        v70 = *(this + 1);
        if (*(v70 + 23) < 0)
        {
          v70 = *v70;
        }

        siri::dialogengine::Log::Debug("Set Bool field '%s' to %d", v69, v70, v26);
      }
    }

    return;
  }

  if (v12 == 8)
  {
    v44 = google::protobuf::FieldDescriptor::enum_type(this);
    if (!v44)
    {
      std::operator+<char>();
      siri::dialogengine::Log::LogWithLevel(__str, 3);
      goto LABEL_182;
    }

    siri::dialogengine::StringTrim(" \t\n\r", a5, __str);
    v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&siri::dialogengine::SetField(siri::dialogengine::Context *,google::protobuf::Message *,google::protobuf::Reflection const*,google::protobuf::FieldDescriptor const*,std::string const&)::sEnumSynonyms, __str);
    if (v45 != &unk_1EBE04728)
    {
      std::string::operator=(__str, (v45 + 56));
    }

    ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v44, __str);
    if (!ValueByName)
    {
      std::operator+<char>();
      v96 = std::string::append(&v119, " for field '");
      v97 = *&v96->__r_.__value_.__l.__data_;
      v120.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&v120.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;
      v98 = *(this + 1);
      v99 = *(v98 + 23);
      if (v99 >= 0)
      {
        v100 = *(this + 1);
      }

      else
      {
        v100 = *v98;
      }

      if (v99 >= 0)
      {
        v101 = *(v98 + 23);
      }

      else
      {
        v101 = *(v98 + 8);
      }

      v102 = std::string::append(&v120, v100, v101);
      v103 = *&v102->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = v103;
      v102->__r_.__value_.__l.__size_ = 0;
      v102->__r_.__value_.__r.__words[2] = 0;
      v102->__r_.__value_.__r.__words[0] = 0;
      v104 = std::string::append(&v121, "'");
      v105 = *&v104->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v105;
      v104->__r_.__value_.__l.__size_ = 0;
      v104->__r_.__value_.__r.__words[2] = 0;
      v104->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::Context::AddValidationError(a1, &__p, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_182;
      }

      v106 = v119.__r_.__value_.__r.__words[0];
LABEL_181:
      operator delete(v106);
LABEL_182:
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__data_);
      }

      return;
    }

    if (v10 == 3)
    {
      google::protobuf::Reflection::AddEnum(a3, a2, this, ValueByName);
      v48 = *(this + 1);
      v49 = "Added to repeated enum '%s': %d";
      if (*(v48 + 23) < 0)
      {
        goto LABEL_161;
      }
    }

    else
    {
      google::protobuf::Reflection::SetEnum(a3, a2, this, ValueByName);
      v48 = *(this + 1);
      v49 = "Set enum field '%s' to %d";
      if (*(v48 + 23) < 0)
      {
LABEL_161:
        v48 = *v48;
      }
    }

    siri::dialogengine::Log::Debug(v49, v47, v48, ValueByName[4]);
    goto LABEL_182;
  }

  if (v12 == 9)
  {
    siri::dialogengine::StringTrim(" \t\n\r", a5, __str);
    siri::dialogengine::StringTrim(" \t\n\r", __str, &__p);
    if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0 && __str[0].__r_.__value_.__l.__size_ >= 0x400)
    {
      std::string::basic_string(&v120, __str, 0, 0x28uLL, &v119);
      v55 = std::string::append(&v120, "...");
      v56 = *&v55->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str[0].__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&v119, __str, size - 40, 0xFFFFFFFFFFFFFFFFLL, &v123);
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v119;
      }

      else
      {
        v58 = v119.__r_.__value_.__r.__words[0];
      }

      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v119.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v121, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[0];
      v124[0] = v60->__r_.__value_.__l.__size_;
      *(v124 + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
      v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v61;
      __p.__r_.__value_.__l.__size_ = v124[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v124 + 7);
      *(&__p.__r_.__value_.__s + 23) = v62;
      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }
    }

    v63 = *(this + 1);
    if ((*(v63 + 23) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v82 = *(v63 + 8);
    if (v82 == 37)
    {
      if (memcmp(*v63, "SnippetUI.Response.Component.group_id", 0x25uLL) || (siri::dialogengine::ResponseHasGroup(*(a1 + 504), *(a1 + 512), __str) & 1) != 0)
      {
LABEL_80:
        v64 = *(this + 6);
        if (v64)
        {
          v119.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v124[0] = this;
          if (atomic_load_explicit(v64, memory_order_acquire) != -1)
          {
            v121.__r_.__value_.__r.__words[0] = &v119;
            v121.__r_.__value_.__l.__size_ = v124;
            v120.__r_.__value_.__r.__words[0] = &v121;
            std::__call_once(v64, &v120, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }
        }

        if (*(this + 14) == 12)
        {
          siri::dialogengine::DecodeBase64(__str, &v121);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          __str[0] = v121;
        }

        if (v10 == 3)
        {
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v118, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v118 = __str[0];
          }

          *&v108 = google::protobuf::Reflection::AddString(a3, a2, this, &v118, v54).n128_u64[0];
          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }

          v109 = *(this + 1);
          if (*(v109 + 23) < 0)
          {
            v109 = *v109;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v111 = "Added to repeated string '%s': '%s'";
        }

        else
        {
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v117, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v117 = __str[0];
          }

          google::protobuf::Reflection::SetString(a3, a2, this, &v117, v54);
          if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v117.__r_.__value_.__l.__data_);
          }

          v109 = *(this + 1);
          if (*(v109 + 23) < 0)
          {
            v109 = *v109;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v111 = "Set string field '%s' to '%s'";
        }

        siri::dialogengine::Log::Debug(v111, v107, v108, v109, p_p);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_182;
        }

        v106 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_181;
      }
    }

    else
    {
      if (v82 != 27)
      {
        goto LABEL_80;
      }

      v83 = *v63;
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = *(v83 + 19);
      v88 = v84 == 0x5574657070696E53 && v85 == 0x6E6F707365522E49;
      v89 = v88 && v86 == 0x70756F72472E6573;
      if (!v89 || v87 != 0x64692E70756F7247)
      {
        goto LABEL_80;
      }

      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = __str;
      }

      else
      {
        v91 = __str[0].__r_.__value_.__r.__words[0];
      }

      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v92 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v92 = __str[0].__r_.__value_.__l.__size_;
      }

      if (v92 >= 1)
      {
        v93 = v91 + v92;
        v94 = v91;
        do
        {
          v95 = memchr(v94, 35, v92);
          if (!v95)
          {
            break;
          }

          if (*v95 == 35)
          {
            if (v95 != v93 && v95 - v91 != -1)
            {
              std::operator+<char>();
              v112 = std::string::append(&v120, "'");
              v113 = *&v112->__r_.__value_.__l.__data_;
              v121.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
              *&v121.__r_.__value_.__l.__data_ = v113;
              v112->__r_.__value_.__l.__size_ = 0;
              v112->__r_.__value_.__r.__words[2] = 0;
              v112->__r_.__value_.__r.__words[0] = 0;
              siri::dialogengine::Context::AddValidationError(a1, &v121, 0);
              if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v121.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v120.__r_.__value_.__l.__data_);
              }
            }

            break;
          }

          v94 = (v95 + 1);
          v92 = v93 - v94;
        }

        while (v93 - v94 >= 1);
      }

      if (!siri::dialogengine::ResponseHasGroup(*(a1 + 504), *(a1 + 512), __str))
      {
        goto LABEL_80;
      }
    }

    std::operator+<char>();
    v114 = std::string::append(&v120, "'");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v121.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v121.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::Context::AddValidationError(a1, &v121, 0);
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    goto LABEL_80;
  }

  if (v12 != 10)
  {
LABEL_90:
    v65 = *(this + 1);
    if (*(v65 + 23) < 0)
    {
      v65 = *v65;
    }

    v66 = *(this + 6);
    if (v66)
    {
      v121.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v120.__r_.__value_.__r.__words[0] = this;
      if (atomic_load_explicit(v66, memory_order_acquire) != -1)
      {
        __str[0].__r_.__value_.__r.__words[0] = &v121;
        __str[0].__r_.__value_.__l.__size_ = &v120;
        __p.__r_.__value_.__r.__words[0] = __str;
        std::__call_once(v66, &__p, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }

      v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 14)];
    }

    siri::dialogengine::Log::Error("Field '%s' is of unhandled cpp type '%s'", a2, v65, google::protobuf::FieldDescriptor::kCppTypeToName[v12]);
    return;
  }

  v20 = *(this + 1);
  if (*(v20 + 23) < 0)
  {
    v20 = *v20;
  }

  siri::dialogengine::Log::Error("Field '%s' is of type Message and should not be handled here", a2, v20);
}

void sub_1BFBE8AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v60 = v58 + 48;
  v61 = -96;
  do
  {
    v60 = std::pair<std::string const,std::string>::~pair(v60) - 48;
    v61 += 48;
  }

  while (v61);
  _Unwind_Resume(a1);
}

void google::protobuf::Reflection::SetBool(const std::string::value_type ***this, google::protobuf::Message *a2, const std::string::value_type **a3, char a4, const char *a5)
{
  v9 = *this;
  if (a3[10] != v9)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  v10 = a3[6];
  if (v10)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v10, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
  }

  if (*(a3 + 66) == 1)
  {
    v11 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1)));
    v12 = *(a3 + 17);
    v13 = a3[6];
    if (v13)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v13, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    google::protobuf::internal::ExtensionSet::SetBool(v11, v12, *(a3 + 56), a4, a3);
  }

  else
  {
    v14 = a3[11];
    if (v14 && *(a2 + *(this + 11) - 1431655764 * ((v14 - *(*(v14 + 16) + 48)) >> 4)) != *(a3 + 17))
    {
      google::protobuf::Reflection::ClearOneof(this, a2, v14);
    }

    *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3)) = a4;
    v15 = a3[11];
    if (v15)
    {
      *(a2 + *(this + 11) - 1431655764 * (&v15[-*(*(v15 + 2) + 48)] >> 4)) = *(a3 + 17);
    }

    else
    {
      google::protobuf::Reflection::SetBit(this, a2, a3);
    }
  }
}

void google::protobuf::Reflection::SetBit(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  if (*(*(a3 + 15) + 79) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 1983);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !field->options().weak(): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 8) != -1)
  {
    HasBitIndex = google::protobuf::internal::ReflectionSchema::HasBitIndex((this + 8), a3);
    if (*(this + 8) == -1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 1873);
      v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: schema_.HasHasbits(): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    HasBitsOffset = google::protobuf::internal::ReflectionSchema::HasBitsOffset((this + 8));
    *(a2 + 4 * (HasBitIndex >> 5) + HasBitsOffset) |= 1 << HasBitIndex;
  }
}

void sub_1BFBE8FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::UnknownField::Delete(uint64_t this)
{
  v1 = *(this + 4);
  if (v1 == 4)
  {
    v3 = *(this + 8);
    if (v3)
    {
      v4 = *v3;
      if (*v3 != *(v3 + 1))
      {
        google::protobuf::UnknownFieldSet::ClearFallback(v3);
        v4 = *v3;
      }

      if (v4)
      {
        *(v3 + 1) = v4;
        operator delete(v4);
      }

LABEL_12:

      JUMPOUT(0x1C68D4E80);
    }
  }

  else if (v1 == 3)
  {
    v2 = *(this + 8);
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      goto LABEL_12;
    }
  }

  return this;
}

void google::protobuf::UnknownFieldSet::DeleteByNumber(google::protobuf::UnknownFieldSet *this, int a2)
{
  v3 = *this;
  if (*(this + 1) == *this)
  {
    v8 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v3 + v5) == a2)
      {
        google::protobuf::UnknownField::Delete(v3 + v5);
      }

      else
      {
        if (v6 != v7)
        {
          *(v3 + 16 * v7) = *(v3 + v5);
        }

        ++v7;
      }

      ++v6;
      v3 = *this;
      v5 += 16;
    }

    while (v6 < (*(this + 1) - *this) >> 4);
    v8 = v7;
  }

  std::vector<google::protobuf::UnknownField>::resize(this, v8);
}

uint64_t google::protobuf::internal::ReflectionSchema::IsFieldInlined(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  v3 = *(a2 + 11);
  if (!v3)
  {
    if (*(a2 + 66))
    {
      v8 = *(a2 + 12);
      if (v8)
      {
        v9 = (v8 + 80);
      }

      else
      {
        v9 = (*(a2 + 5) + 128);
      }
    }

    else
    {
      v9 = (*(a2 + 10) + 40);
    }

    v4 = *(*(this + 1) + ((0x286BCA1B00000000 * ((a2 - *v9) >> 3)) >> 30));
    v10 = *(a2 + 6);
    if (v10)
    {
      v13 = a2;
      v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v10, memory_order_acquire) != -1)
      {
        v16 = &v14;
        v17 = &v13;
        v15 = &v16;
        std::__call_once(v10, &v15, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v11 = *(a2 + 14);
    if (v11 != 12 && v11 != 9)
    {
      return 0;
    }

    return v4 & 1;
  }

  v4 = *(*(this + 1) + 4 * (*(*(a2 + 10) + 104) - 1431655765 * ((v3 - *(*(v3 + 16) + 48)) >> 4)));
  v5 = *(a2 + 6);
  if (v5)
  {
    v13 = a2;
    v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v5, memory_order_acquire) != -1)
    {
      v16 = &v14;
      v17 = &v13;
      v15 = &v16;
      std::__call_once(v5, &v15, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v6 = *(a2 + 14);
  if (v6 == 12 || v6 == 9)
  {
    return v4 & 1;
  }

  return 0;
}

uint64_t google::protobuf::Reflection::MutableMessage(const std::string::value_type ***this, google::protobuf::Message *a2, const std::string::value_type **a3, google::protobuf::MessageFactory *a4, const char *a5)
{
  v9 = *this;
  if (a3[10] != v9)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  v10 = a3[6];
  if (v10)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v24[0] = &v22;
      v24[1] = &v21;
      v23 = v24;
      std::__call_once(v10, &v23, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
  }

  if (!a4)
  {
    a4 = this[8];
  }

  if (*(a3 + 66) == 1)
  {
    ExtensionSetOffset = google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((this + 1));
    return google::protobuf::internal::ExtensionSet::MutableMessage((a2 + ExtensionSetOffset), a3, a4);
  }

  FieldOffset = google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3);
  v14 = a3[11];
  if (!v14)
  {
    google::protobuf::Reflection::SetBit(this, a2, a3);
LABEL_19:
    v16 = (a2 + FieldOffset);
    result = *v16;
    if (*v16)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (*(a2 + *(this + 11) - 1431655764 * ((v14 - *(*(v14 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    goto LABEL_19;
  }

  google::protobuf::Reflection::ClearOneof(this, a2, v14);
  v15 = a3[11];
  if (v15)
  {
    *(a2 + *(this + 11) - 1431655764 * (&v15[-*(*(v15 + 2) + 48)] >> 4)) = *(a3 + 17);
  }

  else
  {
    google::protobuf::Reflection::SetBit(this, a2, a3);
  }

  v16 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((this + 1), a3));
  v19 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((this + 1), a3);
  v20 = (*(*a2 + 40))(a2);
  result = (*(*v19 + 32))(v19, v20);
  *v16 = result;
  if (!result)
  {
LABEL_20:
    v17 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((this + 1), a3);
    v18 = (*(*a2 + 40))(a2);
    result = (*(*v17 + 32))(v17, v18);
    *v16 = result;
  }

  return result;
}

siri::dialogengine::CatBinary::vcat_item_expression *google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::CatBinary::vcat_item_expression>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<siri::dialogengine::CatBinary::vcat_item_expression>);
  siri::dialogengine::CatBinary::vcat_item_expression::vcat_item_expression(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

siri::dialogengine::CatBinary::vcat_item_expression *siri::dialogengine::CatBinary::vcat_item_expression::vcat_item_expression(siri::dialogengine::CatBinary::vcat_item_expression *this)
{
  *this = &unk_1F3F189A8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_vcat_item_expression_CatBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_vcat_item_expression_CatBinary_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void siri::dialogengine::CatBinary::vcat_item_expression::~vcat_item_expression(siri::dialogengine::CatBinary::vcat_item_expression *this)
{
  siri::dialogengine::CatBinary::vcat_item_expression::~vcat_item_expression(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F189A8;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 5);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1C68D4E80](v6, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

uint64_t google::protobuf::Reflection::GetRaw<google::protobuf::RepeatedField<int>>(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  v3 = *(a3 + 11);
  if (!v3 || *(a2 + *(a1 + 44) - 1431655764 * ((v3 - *(*(v3 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 8), a3);
  }

  v5 = (a1 + 8);

  return google::protobuf::internal::ReflectionSchema::GetFieldDefault(v5, a3);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFBE99C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<google::protobuf::UnknownField>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<google::protobuf::UnknownField>::__append(result, a2 - v2);
  }
}

google::protobuf::internal *siri::dialogengine::CatBinary::vcat_item_expression::_InternalParse(siri::dialogengine::CatBinary::vcat_item_expression *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v14 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v14, *(a3 + 23)))
    {
      return v14;
    }

    TagFallback = (v14 + 1);
    LODWORD(v6) = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v14 + 2);
LABEL_6:
      v14 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v14, v6);
    v14 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v12;
LABEL_7:
    v7 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 26)
      {
        *(this + 4) |= 4u;
        v11 = *(this + 5);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 5, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_26;
      }
    }

    else if (v7 == 2)
    {
      if (v6 == 18)
      {
        *(this + 4) |= 2u;
        v11 = *(this + 4);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 4, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_26;
      }
    }

    else if (v7 == 1 && v6 == 10)
    {
      *(this + 4) |= 1u;
      v11 = *(this + 3);
      if (v11 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 3, &google::protobuf::internal::fixed_address_empty_string);
      }

LABEL_26:
      v10 = google::protobuf::internal::InlineGreedyStringParser(v11, TagFallback, a3);
      goto LABEL_27;
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::UnknownFieldParse(v6, this + 1, TagFallback, a3);
LABEL_27:
    v14 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 20) = v6 - 1;
  return TagFallback;
}

void siri::dialogengine::CatBinary::vcat_item_expression::MergeFrom(siri::dialogengine::CatBinary::vcat_item_expression *this, const siri::dialogengine::CatBinary::vcat_item_expression *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/engine/CatBinary.pb.cc", 3698);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = *(this + 3);
      *(this + 4) |= 1u;
      v8 = *(a2 + 3);
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 3, v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = *(this + 4);
      *(this + 4) |= 2u;
      v10 = *(a2 + 4);
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 4, v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v13 = *(this + 5);
      v12 = (this + 40);
      v11 = v13;
      *(v12 - 6) |= 4u;
      v14 = *(a2 + 5);
      if (v13 != v14)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v12, v14);
        }

        std::string::operator=(v11, v14);
      }
    }
  }
}

void sub_1BFBE9D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::dialogengine::ExpandField(siri::dialogengine::Context *a1, google::protobuf::Message *a2, uint64_t a3, uint64_t a4)
{
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  siri::dialogengine::GetMessageInterface(&v56, a2);
  if (v56)
  {
    v8 = v57;
    v9 = *(v57 + 8);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      v55.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v55.__r_.__value_.__l.__data_ = v10;
    }

    FieldByName = google::protobuf::Descriptor::FindFieldByName(v8, a3);
    v15 = FieldByName;
    if (FieldByName)
    {
      if (*(FieldByName + 60) == 3 || !google::protobuf::Reflection::HasField(*(&v57 + 1), a2, FieldByName, v13, v14))
      {
        siri::dialogengine::ParseSpeakableString(a4, &v53);
        memset(&v36, 0, sizeof(v36));
        std::vector<std::shared_ptr<siri::dialogengine::ChunkText>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::dialogengine::ChunkText>*,std::shared_ptr<siri::dialogengine::ChunkText>*>(&v36, v53, v54, (v54 - v53) >> 4);
        size = v36.__r_.__value_.__l.__size_;
        for (i = v36.__r_.__value_.__r.__words[0]; i != size; i += 16)
        {
          v21 = *i;
          v22 = *(i + 8);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v21)
          {
            if (v23)
            {
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v23[223] < 0)
              {
                std::string::__init_copy_ctor_external(&__str, *(v23 + 25), *(v23 + 26));
              }

              else
              {
                __str = *(v23 + 200);
              }

              siri::dialogengine::StringSplit(&__str, ".");
            }
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        __str.__r_.__value_.__r.__words[0] = &v36;
        std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&__str);
        siri::dialogengine::ChunkList::Expand(v52, a1, &v53);
        siri::dialogengine::ExpandToText(&v36, v52[0], v52[1]);
        v25 = *(v15 + 48);
        if (v25)
        {
          v50.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v49 = v15;
          if (atomic_load_explicit(v25, memory_order_acquire) != -1)
          {
            __str.__r_.__value_.__r.__words[0] = &v50;
            __str.__r_.__value_.__l.__size_ = &v49;
            v51.__r_.__value_.__r.__words[0] = &__str;
            std::__call_once(v25, &v51, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }
        }

        if (*(v15 + 56) == 9)
        {
          siri::dialogengine::Dialog::ProcessString(&v36, &__str);
        }

        v29 = *(v15 + 8);
        if (*(v29 + 23) < 0)
        {
          v29 = *v29;
        }

        siri::dialogengine::Log::Debug("String processing not appropriate for field '%s'", v24, v29);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
        }

        else
        {
          __str = v36;
        }

        v31 = *(v15 + 8);
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        if (*(a4 + 23) >= 0)
        {
          v32 = a4;
        }

        else
        {
          v32 = *a4;
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        siri::dialogengine::Log::Debug("Expanded field '%s' expression '%s' to '%s'", v30, v31, v32, p_str);
        siri::dialogengine::SetField(a1, a2, *(&v57 + 1), v15, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }

        if (v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 < 0)
        {
          operator delete(v41);
        }

        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v36.__r_.__value_.__r.__words[0] = v52;
        std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v36);
        v36.__r_.__value_.__r.__words[0] = &v53;
        std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v36);
      }

      else
      {
        v17 = &v55;
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v55.__r_.__value_.__r.__words[0];
        }

        v18 = *v15;
        if (*(*v15 + 23) < 0)
        {
          v18 = *v18;
        }

        siri::dialogengine::Log::Info("Message '%s' field '%s' has already been set", v16, v17, v18);
      }
    }

    else
    {
      if (*(a3 + 23) >= 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = *a3;
      }

      v27 = &v55;
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v55.__r_.__value_.__r.__words[0];
      }

      if (*(a4 + 23) >= 0)
      {
        v28 = a4;
      }

      else
      {
        v28 = *a4;
      }

      siri::dialogengine::Log::Error("Could not get field '%s' from message '%s' with stored expression '%s'", v12, v26, v27, v28);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    siri::dialogengine::Log::Error("Could not get message interface", v7);
  }
}

void sub_1BFBEA564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  siri::dialogengine::SpeakableString::~SpeakableString(&a38);
  a38 = v38 - 224;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&a38);
  *(v38 - 224) = v38 - 200;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100]((v38 - 224));
  if (*(v38 - 153) < 0)
  {
    operator delete(*(v38 - 176));
  }

  _Unwind_Resume(a1);
}

void siri::dialogengine::GetMessageInterface(siri::dialogengine *this, google::protobuf::Message *a2)
{
  *this = 0;
  if (!a2)
  {
    return;
  }

  *(this + 1) = a2;
  v4 = (*(*a2 + 168))(a2);
  if (!v4)
  {
    siri::dialogengine::Log::Error("Message has null descriptor", v5);
    *(this + 2) = 0;
    v24 = "Could not get message descriptor";
LABEL_22:

    siri::dialogengine::Log::Error(v24, v23);
    return;
  }

  v6 = v4;
  *(this + 2) = v4;
  (*(*a2 + 168))(a2);
  if (!v7)
  {
    siri::dialogengine::Log::Error("Message has null Reflection", 0);
    *(this + 3) = 0;
    v24 = "Could not get message reflection";
    goto LABEL_22;
  }

  *(this + 3) = v7;
  v10 = google::protobuf::Reflection::MutableUnknownFields(v7, a2);
  *(this + 4) = v8;
  if (v8)
  {
    v11 = v8;
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    v12 = *v8;
    if (((v8[1] - *v8) >> 4) < 1)
    {
      v16 = (this + 40);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v26 = *(v12 + v13);
        std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v27, &v26, &v26);
        ++v14;
        v12 = *v11;
        v13 += 16;
      }

      while (v14 < ((v11[1] - *v11) >> 4));
      v15 = v28[0];
      v16 = (this + 40);
      if (v28[0])
      {
        for (i = 20000; ; ++i)
        {
          v18 = v28;
          v19 = v28[0];
          do
          {
            v20 = v19;
            v21 = v18;
            v22 = *(v19 + 7);
            if (v22 >= i)
            {
              v18 = v19;
            }

            v19 = *&v19[8 * (v22 < i)];
          }

          while (v19);
          if (v18 == v28)
          {
            break;
          }

          if (v22 < i)
          {
            v20 = v21;
          }

          if (i < *(v20 + 7))
          {
            break;
          }

          if (i == 32000)
          {
            *v16 = 32000;
            goto LABEL_34;
          }
        }

        *v16 = i;
        if (i >> 8 < 0x7D)
        {
          goto LABEL_30;
        }

LABEL_34:
        siri::dialogengine::Log::Error("Exceeded limit of unknown field numbers", v15);
        v15 = v28[0];
        goto LABEL_35;
      }
    }

    v15 = 0;
    *v16 = 20000;
LABEL_30:
    *this = 1;
LABEL_35:
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy(&v27, v15);
    return;
  }

  v25 = *(v6 + 8);
  if (*(v25 + 23) < 0)
  {
    v25 = *v25;
  }

  siri::dialogengine::Log::Error("UnknownFieldSet is null for message '%s'", v9, v10, v25);
}

void google::protobuf::Reflection::SetString(const std::string::value_type ***a1, google::protobuf::Message *a2, const std::string::value_type **a3, uint64_t *a4, const char *a5)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (a3[10] != v9)
  {
  }

  if (*(a3 + 15) == 3)
  {
  }

  v10 = a3[6];
  if (v10)
  {
    v31 = a3;
    v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v34 = &v32;
      v35 = &v31;
      v33 = &v34;
      std::__call_once(v10, &v33, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
  }

  if (*(a3 + 66) == 1)
  {
    ExtensionSetOffset = google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset((a1 + 1));
    v12 = *(a3 + 17);
    v13 = a3[6];
    if (v13)
    {
      v31 = a3;
      v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v34 = &v32;
        v35 = &v31;
        v33 = &v34;
        std::__call_once(v13, &v33, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
      }
    }

    v14 = (a2 + ExtensionSetOffset);
    v15 = *(a3 + 56);
    v16 = *a4;
    v36[0] = a4[1];
    *(v36 + 7) = *(a4 + 15);
    v17 = *(a4 + 23);
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v18 = google::protobuf::internal::ExtensionSet::MutableString(v14, v12, v15, a3);
    v19 = v18;
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v20 = v36[0];
    *v19 = v16;
    *(v19 + 8) = v20;
    *(v19 + 15) = *(v36 + 7);
    *(v19 + 23) = v17;
  }

  else
  {
    if (google::protobuf::internal::ReflectionSchema::IsFieldInlined((a1 + 1), a3))
    {
      v21 = a3[11];
      if (v21)
      {
        *(a2 + *(a1 + 11) - 1431655764 * (&v21[-*(*(v21 + 2) + 48)] >> 4)) = *(a3 + 17);
      }

      else
      {
        google::protobuf::Reflection::SetBit(a1, a2, a3);
      }

      v25 = a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 1), a3);
      if (v25[23] < 0)
      {
        operator delete(*v25);
      }

      v26 = *a4;
      *(v25 + 2) = a4[2];
      *v25 = v26;
    }

    else
    {
      v22 = *google::protobuf::internal::ReflectionSchema::GetFieldDefault((a1 + 1), a3);
      v23 = a3[11];
      if (!v23)
      {
        goto LABEL_31;
      }

      if (*(a2 + *(a1 + 11) - 1431655764 * ((v23 - *(*(v23 + 16) + 48)) >> 4)) == *(a3 + 17))
      {
        goto LABEL_30;
      }

      google::protobuf::Reflection::ClearOneof(a1, a2, v23);
      v24 = a3[11];
      if (v24)
      {
        *(a2 + *(a1 + 11) - 1431655764 * (&v24[-*(*(v24 + 2) + 48)] >> 4)) = *(a3 + 17);
      }

      else
      {
        google::protobuf::Reflection::SetBit(a1, a2, a3);
      }

      *(a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 1), a3)) = v22;
      v23 = a3[11];
      if (v23)
      {
LABEL_30:
        *(a2 + *(a1 + 11) - 1431655764 * ((v23 - *(*(v23 + 16) + 48)) >> 4)) = *(a3 + 17);
      }

      else
      {
LABEL_31:
        google::protobuf::Reflection::SetBit(a1, a2, a3);
      }

      v27 = (a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffset((a1 + 1), a3));
      v28 = *(a2 + *(a1 + 9));
      if (v28)
      {
        v28 = *((v28 & 0xFFFFFFFFFFFFFFFELL) + 24);
      }

      v29 = *v27;
      if (*v27 == v22)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstance(v27, v28, v22);
        v29 = *v27;
      }

      if (SHIBYTE(v29->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29->__r_.__value_.__l.__data_);
      }

      v30 = *a4;
      v29->__r_.__value_.__r.__words[2] = a4[2];
      *&v29->__r_.__value_.__l.__data_ = v30;
    }

    *(a4 + 23) = 0;
    *a4 = 0;
  }
}

void sub_1BFBEAD50(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ReflectionSchema::GetFieldDefault(google::protobuf::internal::ReflectionSchema *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 66))
  {
    v3 = *(a2 + 12);
    if (v3)
    {
      v4 = (v3 + 80);
    }

    else
    {
      v4 = (*(a2 + 5) + 128);
    }
  }

  else
  {
    v4 = (*(a2 + 10) + 40);
  }

  v5 = *this;
  v6 = *(*(this + 1) + ((0x286BCA1B00000000 * ((a2 - *v4) >> 3)) >> 30));
  v7 = *(a2 + 6);
  if (v7)
  {
    v12 = a2;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v7, &v14, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v8 = *(a2 + 14);
  v9 = v8 == 12 || v8 == 9;
  v10 = v6 & 0xFFFFFFFE;
  if (!v9)
  {
    v10 = v6;
  }

  return v5 + v10;
}

void SnippetUI::Response_Component::Clear(SnippetUI::Response_Component *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  SnippetUI::Response_Component::clear_value(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    google::protobuf::internal::InternalMetadataWithArena::DoClear(v3);
  }
}

void SnippetUI::Button_Container::~Button_Container(SnippetUI::Button_Container *this)
{
  *this = &unk_1F3F1FC48;
  v1 = (this + 8);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v1);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::Button_Container_ButtonItem::~Button_Container_ButtonItem(SnippetUI::Button_Container_ButtonItem *this)
{
  SnippetUI::Button_Container_ButtonItem::~Button_Container_ButtonItem(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F1FB88;
  if (*(this + 7))
  {
    SnippetUI::Button_Container_ButtonItem::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

void SnippetUI::Button::~Button(SnippetUI::Button *this)
{
  SnippetUI::Button::~Button(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F19008;
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 3);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  if (this != &SnippetUI::_Button_default_instance_)
  {
    v6 = *(this + 4);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 5);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

void SnippetUI::ActionProperty::~ActionProperty(SnippetUI::ActionProperty *this)
{
  *this = &unk_1F3F14060;
  v2 = *(this + 5);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ActionProperty::~ActionProperty(this);

  JUMPOUT(0x1C68D4E80);
}

uint64_t google::protobuf::UnknownFieldSet::ClearFallback(google::protobuf::UnknownFieldSet *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/unknown_field_set.cc", 59);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !fields_.empty(): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v3 = *this;
    v2 = *(this + 1);
  }

  v5 = ((v2 - v3) >> 4);
  v6 = v5 + 1;
  v7 = 16 * v5 - 16;
  do
  {
    result = google::protobuf::UnknownField::Delete(*this + v7);
    --v6;
    v7 -= 16;
  }

  while (v6 > 1);
  *(this + 1) = *this;
  return result;
}

void sub_1BFBEB2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void SnippetUI::Command::~Command(SnippetUI::Command *this)
{
  *this = &unk_1F3F1B878;
  if (*(this + 9))
  {
    SnippetUI::Command::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::Command::~Command(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::TextProperty::~TextProperty(SnippetUI::TextProperty *this)
{
  *this = &unk_1F3F1CDB8;
  if (this != &SnippetUI::_TextProperty_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::TextProperty::~TextProperty(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::VisualProperty::~VisualProperty(SnippetUI::VisualProperty *this)
{
  *this = &unk_1F3F1F688;
  if (this != &SnippetUI::_VisualProperty_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::VisualProperty::~VisualProperty(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::VisualElement::~VisualElement(SnippetUI::VisualElement *this)
{
  *this = &unk_1F3F21770;
  if (*(this + 7))
  {
    SnippetUI::VisualElement::clear_element(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::VisualElement::~VisualElement(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::ImageElement::~ImageElement(SnippetUI::ImageElement *this)
{
  *this = &unk_1F3F16150;
  v2 = (this + 8);
  google::protobuf::RepeatedField<int>::~RepeatedField(this + 40);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v2);
}

{
  SnippetUI::ImageElement::~ImageElement(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::ImageElement_Symbol::~ImageElement_Symbol(SnippetUI::ImageElement_Symbol *this)
{
  *this = &unk_1F3F15FD0;
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 3);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  if (this != &SnippetUI::_ImageElement_Symbol_default_instance_)
  {
    v6 = *(this + 4);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 5);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ImageElement_Symbol::~ImageElement_Symbol(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::ImageElement_Source::~ImageElement_Source(SnippetUI::ImageElement_Source *this)
{
  *this = &unk_1F3F15910;
  if (*(this + 7))
  {
    SnippetUI::ImageElement_Source::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::ImageElement_Source::~ImageElement_Source(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::Color::~Color(SnippetUI::Color *this)
{
  *this = &unk_1F3F1E6B0;
  v2 = *(this + 7);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(this + 2);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }

    *(this + 7) = 0;
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::Color::~Color(this);

  JUMPOUT(0x1C68D4E80);
}

void google::protobuf::internal::InternalMetadataWithArena::DoClear(google::protobuf::internal::InternalMetadataWithArena *this)
{
  if (*this)
  {
    v1 = (*this & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::mutable_unknown_fields_slow(this);
  }

  if (*v1 != *(v1 + 1))
  {

    google::protobuf::UnknownFieldSet::ClearFallback(v1);
  }
}

uint64_t *google::protobuf::MutableRepeatedFieldRef<google::protobuf::Message,void>::MutableRepeatedFieldRef(uint64_t *a1, uint64_t a2, google::protobuf::FieldDescriptor *a3)
{
  (*(*a2 + 168))(a2);
  v7 = v6;
  *a1 = google::protobuf::Reflection::RepeatedFieldData(v6, a2, a3, 10, 0);
  a1[1] = google::protobuf::Reflection::RepeatedFieldAccessor(v7, a3);
  MessageFactory = google::protobuf::Reflection::GetMessageFactory(v7);
  v9 = google::protobuf::FieldDescriptor::message_type(a3);
  a1[2] = (*(*MessageFactory + 16))(MessageFactory, v9);
  return a1;
}

uint64_t google::protobuf::Reflection::RepeatedFieldData(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, int a4, uint64_t a5)
{
  if (*(a3 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 2194);
    v10 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v30, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v27[0].__r_.__value_.__r.__words[0] = &v29;
      v27[0].__r_.__value_.__l.__size_ = &v28;
      v30 = v27;
      std::__call_once(v11, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  if (v12 == a4)
  {
    goto LABEL_13;
  }

  v13 = *(a3 + 6);
  if (v13)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v13, memory_order_acquire) != -1)
    {
      v27[0].__r_.__value_.__r.__words[0] = &v29;
      v27[0].__r_.__value_.__l.__size_ = &v28;
      v30 = v27;
      std::__call_once(v13, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }

    v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  }

  if (a4 == 1 && v12 == 8)
  {
LABEL_13:
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 2197);
    v22 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: field->cpp_type() == cpp_type || (field->cpp_type() == FieldDescriptor::CPPTYPE_ENUM && cpp_type == FieldDescriptor::CPPTYPE_INT32): ");
    v23 = google::protobuf::internal::LogMessage::operator<<(v22, "The type parameter T in RepeatedFieldRef<T> API doesn't match ");
    v24 = google::protobuf::internal::LogMessage::operator<<(v23, "the actual field type (for enums T should be the generated enum ");
    v25 = google::protobuf::internal::LogMessage::operator<<(v24, "type or int32).");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v25->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (google::protobuf::FieldDescriptor::message_type(a3) != a5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/generated_message_reflection.cc", 2202);
    v14 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (message_type) == (field->message_type()): ");
    google::protobuf::internal::LogFinisher::operator=(&v30, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

LABEL_16:
  v15 = (a1 + 8);
  if (*(a3 + 66) != 1)
  {
    return a2 + google::protobuf::internal::ReflectionSchema::GetFieldOffsetNonOneof(v15, a3);
  }

  v16 = (a2 + google::protobuf::internal::ReflectionSchema::GetExtensionSetOffset(v15));
  v17 = *(a3 + 17);
  v18 = *(a3 + 6);
  if (v18)
  {
    v28 = a3;
    v29 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v18, memory_order_acquire) != -1)
    {
      v27[0].__r_.__value_.__r.__words[0] = &v29;
      v27[0].__r_.__value_.__l.__size_ = &v28;
      v30 = v27;
      std::__call_once(v18, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v19 = *(a3 + 56);
  is_packed = google::protobuf::FieldDescriptor::is_packed(a3);
  return google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v16, v17, v19, is_packed, a3);
}

void sub_1BFBEBEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::Reflection::RepeatedFieldAccessor(google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 670);
    v3 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v4, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v4, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v5 = *(a2 + 14);
  v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v5];
  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        result = &qword_1EBE03470;
        if ((atomic_load_explicit(byte_1EBE03478, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else if (v6 == 4)
      {
        result = &qword_1EBE03490;
        if ((atomic_load_explicit(byte_1EBE03498, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        result = &qword_1EBE034B0;
        if ((atomic_load_explicit(byte_1EBE034B8, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      return result;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        result = &qword_1EBE03480;
        if ((atomic_load_explicit(byte_1EBE03488, memory_order_acquire) & 1) == 0)
        {
          google::protobuf::Reflection::RepeatedFieldAccessor(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }

        return result;
      }

LABEL_40:
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 698);
      v9 = google::protobuf::internal::LogMessage::operator<<(v10, "Should not reach here.");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_31:
    return &_MergedGlobals;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      result = &qword_1EBE034A0;
      if ((atomic_load_explicit(byte_1EBE034A8, memory_order_acquire) & 1) == 0)
      {
        google::protobuf::Reflection::RepeatedFieldAccessor(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      result = &qword_1EBE034C0;
      if ((atomic_load_explicit(byte_1EBE034C8, memory_order_acquire) & 1) == 0)
      {
        google::protobuf::Reflection::RepeatedFieldAccessor(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    return result;
  }

  if (v6 == 8)
  {
    goto LABEL_31;
  }

  if (v6 == 9)
  {
    result = &qword_1EBE034D0;
    if ((atomic_load_explicit(byte_1EBE034D8, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::Reflection::RepeatedFieldAccessor(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }

    return result;
  }

  if (v6 != 10)
  {
    goto LABEL_40;
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v8, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }

    LODWORD(v5) = *(a2 + 14);
  }

  if (v5 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a2))
  {
    result = &qword_1EBE034E0;
    if ((atomic_load_explicit(byte_1EBE034E8, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::Reflection::RepeatedFieldAccessor(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    result = &qword_1EBE034F0;
    if ((atomic_load_explicit(byte_1EBE034F8, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::Reflection::RepeatedFieldAccessor(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  return result;
}

void sub_1BFBEC1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::anonymous namespace::GeneratedMessageFactory::GetPrototype(google::protobuf::_anonymous_namespace_::GeneratedMessageFactory *this, const google::protobuf::Descriptor *a2)
{
  v20 = a2;
  std::mutex::lock((this + 48));
  v3 = std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(this + 14, &v20);
  if (v3)
  {
    v4 = v3[3];
    std::mutex::unlock((this + 48));
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    std::mutex::unlock((this + 48));
  }

  v6 = *(*(v20 + 2) + 16);
  if (v6 != google::protobuf::DescriptorPool::generated_pool(v5))
  {
    return 0;
  }

  v7 = **(v20 + 2);
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v19[0].__r_.__value_.__r.__words[0] = v7;
  v8 = std::__hash_table<std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>,google::protobuf::hash<char const*>,google::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>,google::protobuf::streq,google::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,google::protobuf::internal::DescriptorTable const*>>>::find<char const*>(this + 1, &v19[0].__r_.__value_.__l.__data_);
  if (!v8 || (v9 = v8[3]) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 618);
    v15 = google::protobuf::internal::LogMessage::operator<<(v19, "File appears to be in generated pool but wasn't registered: ");
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, **(v20 + 2));
    google::protobuf::internal::LogFinisher::operator=(&v18, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    return 0;
  }

  std::mutex::lock((this + 48));
  v10 = std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(this + 14, &v20);
  if (!v10 || (v4 = v10[3]) == 0)
  {
    google::protobuf::internal::RegisterFileLevelMetadata(v9);
    v11 = std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(this + 14, &v20);
    if (!v11 || (v4 = v11[3]) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message.cc", 636);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "Type appears to be in generated pool but wasn't ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, "registered: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(v20 + 1));
      google::protobuf::internal::LogFinisher::operator=(&v18, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v4 = 0;
    }
  }

  std::mutex::unlock((this + 48));
  return v4;
}

void sub_1BFBEC3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  std::mutex::unlock((v3 + 48));
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::__unordered_map_hasher<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::hash<google::protobuf::Descriptor const*>,std::equal_to<google::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<google::protobuf::Descriptor const*,std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>,std::equal_to<google::protobuf::Descriptor const*>,std::hash<google::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<google::protobuf::Descriptor const*,google::protobuf::Message const*>>>::find<google::protobuf::Descriptor const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SnippetUI::Command::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 <= 5)
  {
    if (v2 > 3)
    {
      if (v2 != 4)
      {
        goto LABEL_14;
      }
    }

    else if (v2 != 2 && v2 != 3)
    {
      goto LABEL_25;
    }

LABEL_18:
    v3 = *(this + 24);
    if (v3 == &google::protobuf::internal::fixed_address_empty_string || v3 == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v2 <= 8)
  {
    if (v2 != 6 && v2 != 7)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (v2 != 9 && v2 != 10)
  {
    if (v2 != 11)
    {
      goto LABEL_25;
    }

    v3 = *(this + 24);
    if (v3 == &google::protobuf::internal::fixed_address_empty_string || !v3)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x1C68D4E80](v3, 0x1012C40EC159624);
    goto LABEL_25;
  }

LABEL_14:
  this = *(this + 24);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_25:
  *(v1 + 36) = 0;
  return this;
}

void siri::dialogengine::PatternFile::LoadFromId(uint64_t a1, uint64_t **a2)
{
  v14 = 0uLL;
  v15 = 0;
  if (a1)
  {
    siri::dialogengine::RequestInfo::RequestInfo(__p, (a1 + 8));
    v12 = 0uLL;
    v13 = 0;
    std::vector<siri::dialogengine::UpdatableDir>::__init_with_size[abi:ne200100]<siri::dialogengine::UpdatableDir*,siri::dialogengine::UpdatableDir*>(&v12, __p[0].__r_.__value_.__l.__size_, __p[0].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((__p[0].__r_.__value_.__r.__words[2] - __p[0].__r_.__value_.__l.__size_) >> 5));
    std::vector<siri::dialogengine::UpdatableDir>::__vdeallocate(&v14);
    v14 = v12;
    v15 = v13;
    v13 = 0;
    v12 = 0uLL;
    v10.__r_.__value_.__r.__words[0] = &v12;
    std::vector<siri::dialogengine::UpdatableDir>::__destroy_vector::operator()[abi:ne200100](&v10);
    siri::dialogengine::RequestInfo::~RequestInfo(&__p[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 23);
  v6 = *a2;
  siri::dialogengine::GetBaseDir(&v14, __p);
  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = v6;
  }

  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0].__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Debug("Attempting to load a pattern file from Id '%s' and template dir '%s'", v7, v8, v9);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  siri::dialogengine::FindPatternFile(&v14);
}

void sub_1BFBEC804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 121) < 0)
  {
    operator delete(*(v23 - 144));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = (v23 - 112);
  std::vector<siri::dialogengine::UpdatableDir>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t *siri::dialogengine::Context::GetUseCaseState@<X0>(uint64_t *__return_ptr a1@<X8>, siri::dialogengine::Context *this@<X0>, const char *a3@<X1>)
{
  if ((*(this + 960) & 1) == 0)
  {
    if (*(this + 63))
    {
      siri::dialogengine::DialogStateBase::Get();
    }

    siri::dialogengine::Log::Error("Calling GetUseCaseState() before CAT file is loaded", a3);
  }

  v5 = *(this + 840);
  *a1 = *(this + 824);
  *(a1 + 1) = v5;
  std::set<std::string>::set[abi:ne200100](a1 + 4, this + 107);
  std::set<std::string>::set[abi:ne200100](a1 + 7, this + 110);
  return std::map<std::string,siri::dialogengine::GroundingInfo>::map[abi:ne200100](a1 + 10, this + 113);
}

void sub_1BFBECB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::getCatCount(siri::dialogengine *this, siri::dialogengine::Context *a2)
{
  siri::dialogengine::Context::GetUseCaseState(&v5, this, a2);
  v2 = v5;
  v3 = v6;
  std::__tree<std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::GroundingInfo>>>::destroy(v8[4]);
  std::__tree<std::string>::destroy(v8, v8[1]);
  std::__tree<std::string>::destroy(v7, v7[1]);
  if (v3)
  {
    return v2 + 1;
  }

  else
  {
    return 1;
  }
}

void siri::dialogengine::DialogStateClient::GetUseCase(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a1[1];
  }

  if (v3)
  {
    v5 = os_log_create("com.apple.siri.DialogEngine", "DialogState");
    v6 = os_signpost_id_generate(v5);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v9;
      _os_signpost_emit_with_name_impl(&dword_1BFB68000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadState", "CAT_ID = %s", &buf, 0xCu);
    }

    v10 = +[DEBundle frameworkUserSettings];
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    v13 = [v10 dictionaryForKey:v12];
    siri::dialogengine::DialogStateUseCaseFromNSDictionary(a2, v13);
    v14 = v8;
    v15 = v14;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BFB68000, v15, OS_SIGNPOST_INTERVAL_END, v6, "LoadState", "", &buf, 2u);
    }
  }

  else
  {
    *(&buf + 1) = 0;
    v21 = 0;
    v19[1] = 0;
    *&buf = &buf + 8;
    v18 = v19;
    v19[0] = 0;
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    siri::dialogengine::DialogStateUseCase::DialogStateUseCase(a2, 0, 0, 0, 0, &buf, &v18, &v16);
    std::__tree<std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::GroundingInfo>>>::destroy(v17[0]);
    std::__tree<std::string>::destroy(&v18, v19[0]);
    std::__tree<std::string>::destroy(&buf, *(&buf + 1));
  }
}

void sub_1BFBECE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char *a16)
{
  std::__tree<std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::dialogengine::GroundingInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::dialogengine::GroundingInfo>>>::destroy(a10);
  std::__tree<std::string>::destroy(&a12, a13);
  std::__tree<std::string>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void sub_1BFBECF40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::ConditionEntry *,std::shared_ptr<siri::dialogengine::ConditionEntry>::__shared_ptr_default_delete<siri::dialogengine::ConditionEntry,siri::dialogengine::ConditionEntry>,std::allocator<siri::dialogengine::ConditionEntry>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void siri::dialogengine::GroupFirst::~GroupFirst(siri::dialogengine::GroupFirst *this)
{
  siri::dialogengine::Group::~Group(this);

  JUMPOUT(0x1C68D4E80);
}

void siri::dialogengine::PatternContext::AddEntryToPatternCache(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = 24;
  }

  else
  {
    v6 = 48;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>((a1 + v6), &v7.__r_.__value_.__l.__data_, &v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1BFBED0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::WalkNodesForDialogId(void *a1, uint64_t a2, const void *a3, const void **a4)
{
  v4 = a1;
  if (!a2)
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "");
    return;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<std::shared_ptr<siri::dialogengine::Node>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::dialogengine::Node>*,std::shared_ptr<siri::dialogengine::Node>*>(&v50, *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 4);
  v7 = v50;
  v6 = v51;
  if (v50 == v51)
  {
LABEL_59:
    v47 = &v50;
    std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v47);
    std::string::basic_string[abi:ne200100]<0>(v4, "");
    return;
  }

  v8 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v9 = "node";
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v47, v9);
    v10 = *v7;
    if (!*v7)
    {
      goto LABEL_56;
    }

    {
      MEMORY[0x1C68D49D0](&v47, "dialog");
      v11 = v8 + 1;
      v8 = (v8 + 1);
    }

    {
      MEMORY[0x1C68D49D0](&v47, "text");
      v11 = ++HIDWORD(v41);
    }

    {
      MEMORY[0x1C68D49D0](&v47, "first");
      v11 = v41 + 1;
      LODWORD(v41) = v41 + 1;
    }

    {
      MEMORY[0x1C68D49D0](&v47, "random");
      v11 = ++HIDWORD(v40);
    }

    {
      MEMORY[0x1C68D49D0](&v47, "all");
      v11 = v40 + 1;
      LODWORD(v40) = v40 + 1;
    }

    {
      MEMORY[0x1C68D49D0](&v47, "switch");
      v11 = ++v39;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == a3)
    {
      break;
    }

    if (v12)
    {
      v13 = v12;
      v14 = v6;
      v15 = v4;
      v16 = v8;
      v17 = v9;
      if (*(a4 + 23) >= 0)
      {
        v18 = *(a4 + 23);
      }

      else
      {
        v18 = a4[1];
      }

      std::string::basic_string[abi:ne200100](&v44, v18 + 1);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v44;
      }

      else
      {
        v19 = v44.__r_.__value_.__r.__words[0];
      }

      if (v18)
      {
        if (*(a4 + 23) >= 0)
        {
          v20 = a4;
        }

        else
        {
          v20 = *a4;
        }

        memmove(v19, v20, v18);
      }

      *(&v19->__r_.__value_.__l.__data_ + v18) = 35;
      if ((v49 & 0x80u) == 0)
      {
        v21 = &v47;
      }

      else
      {
        v21 = v47;
      }

      if ((v49 & 0x80u) == 0)
      {
        v22 = v49;
      }

      else
      {
        v22 = v48;
      }

      v23 = std::string::append(&v44, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v45.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v45.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v43, v11);
      v9 = v17;
      v4 = v15;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v43;
      }

      else
      {
        v25 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v45, v25, size);
      v8 = v16;
      __p = *v27;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::WalkNodesForDialogId(v15, v13, a3, &__p.__r_.__value_.__l.__data_);
      v6 = v14;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (*(v4 + 23) < 0)
      {
        if (v4[1])
        {
          goto LABEL_91;
        }

        operator delete(*v4);
      }

      else if (*(v4 + 23))
      {
        goto LABEL_91;
      }
    }

LABEL_56:
    if (v49 < 0)
    {
      operator delete(v47);
    }

    v7 += 2;
    if (v7 == v6)
    {
      goto LABEL_59;
    }
  }

  if (*(a4 + 23) >= 0)
  {
    v28 = *(a4 + 23);
  }

  else
  {
    v28 = a4[1];
  }

  v29 = &v45;
  std::string::basic_string[abi:ne200100](&v45, v28 + 1);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v45.__r_.__value_.__r.__words[0];
  }

  if (v28)
  {
    if (*(a4 + 23) >= 0)
    {
      v30 = a4;
    }

    else
    {
      v30 = *a4;
    }

    memmove(v29, v30, v28);
  }

  *(&v29->__r_.__value_.__l.__data_ + v28) = 35;
  if ((v49 & 0x80u) == 0)
  {
    v31 = &v47;
  }

  else
  {
    v31 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v32 = v49;
  }

  else
  {
    v32 = v48;
  }

  v33 = std::string::append(&v45, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v44, v11);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v44;
  }

  else
  {
    v35 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v44.__r_.__value_.__l.__size_;
  }

  v37 = std::string::append(&__p, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v4[2] = *(&v37->__r_.__value_.__l + 2);
  *v4 = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

LABEL_91:
  if (v49 < 0)
  {
    operator delete(v47);
  }

  v47 = &v50;
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&v47);
}

void sub_1BFBED6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  a38 = (v43 - 112);
  std::vector<std::shared_ptr<siri::dialogengine::PatternSchemaUsage>>::__destroy_vector::operator()[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternContext::AddPatternSetting(char *a1, void *a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    v5 = *(v4 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v4 + 24);
    *&__p.__r_.__value_.__l.__data_ = v5;
  }

  p_p = &__p;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Parameter>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Parameter>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Parameter>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p.__r_.__value_.__l.__data_, &p_p);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 64);
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BFBEDAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::PatternContext::PatternContext(siri::dialogengine::PatternContext *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 6) = this + 56;
  operator new();
}

void sub_1BFBEDC04(_Unwind_Exception *a1)
{
  v5 = *(v2 + 80);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  siri::dialogengine::PatternCache::~PatternCache(v1);
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(*v3);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t siri::dialogengine::ExecutePatternBase::GetGroups@<X0>(uint64_t this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v3 != v2)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 3);
    if (v4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>(v4);
    }

    std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

uint64_t siri::dialogengine::ExecutePatternSimple::Execute@<X0>(siri::dialogengine::ExecutePatternSimple *this@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, siri::dialogengine::VariableObject *a4@<X2>)
{
  v6 = *(this + 13);
  v7 = *(this + 14);
  while (v6 != v7)
  {
    v8 = *(v6 + 23);
    if (v8 < 0)
    {
      if (*(v6 + 8) == 4)
      {
        v9 = *v6;
LABEL_7:
        if (*v9 == 1752392019 && !siri::dialogengine::ExecutePatternBase::ShouldExecuteSashGroup(this, a3, a4))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v9 = v6;
      if (v8 == 4)
      {
        goto LABEL_7;
      }
    }

    siri::dialogengine::ExecutePatternBase::AddGroup(this, v6);
LABEL_10:
    v6 += 24;
  }

  return siri::dialogengine::ExecutePatternBase::GetGroups(this, a2);
}

void siri::dialogengine::ExecutePatternBase::AddGroup(void *a1, uint64_t a2, uint64_t *a3, const void ***a4)
{
  v8 = a1[1];
  v9 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(v8 + 208, a2);
  if (v8 + 216 == v9)
  {
    v12 = 0;
LABEL_8:
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    siri::dialogengine::Log::Debug("Pattern instance does not contain group '%s'; Ignoring it", v10, v13);
    goto LABEL_38;
  }

  v11 = *(v9 + 56);
  v12 = *(v9 + 64);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  if (*(v11 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *(v11 + 136), *(v11 + 144));
  }

  else
  {
    *v31 = *(v11 + 136);
    *&v31[16] = *(v11 + 152);
  }

  if ((v31[23] & 0x80000000) != 0)
  {
    v14 = *&v31[8];
    operator delete(*v31);
    if (v14)
    {
LABEL_15:
      if (*(v11 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(v31, *(v11 + 136), *(v11 + 144));
      }

      else
      {
        *v31 = *(v11 + 136);
        *&v31[16] = *(v11 + 152);
      }

      siri::dialogengine::ExecutePatternBase::GetNestedInstance(a1);
    }
  }

  else if (v31[23])
  {
    goto LABEL_15;
  }

  v16 = a1[8];
  v15 = a1[9];
  if (v16 >= v15)
  {
    v19 = a1[7];
    v20 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v19) >> 3);
    if ((v20 + 1) > 0x492492492492492)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v19) >> 3);
    v22 = 2 * v21;
    if (2 * v21 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x249249249249249)
    {
      v23 = 0x492492492492492;
    }

    else
    {
      v23 = v22;
    }

    v32 = a1 + 7;
    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>(v23);
    }

    *v31 = 0;
    *&v31[8] = 56 * v20;
    *&v31[16] = 56 * v20;
    *&v31[24] = 0;
    std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,std::shared_ptr<siri::dialogengine::PatternGroup> &,std::shared_ptr<siri::dialogengine::VariableObject> &,std::set<std::string> const&>((56 * v20), v11, v12, a3, a4);
    *&v31[16] += 56;
    v24 = a1[7];
    v25 = a1[8];
    v26 = *&v31[8] + v24 - v25;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>,siri::dialogengine::ExecutePatternBase::Stage*>((a1 + 7), v24, v25, v26);
    v27 = a1[7];
    a1[7] = v26;
    v28 = a1[9];
    v30 = *&v31[16];
    *(a1 + 4) = *&v31[16];
    *&v31[16] = v27;
    *&v31[24] = v28;
    *v31 = v27;
    *&v31[8] = v27;
    std::__split_buffer<siri::dialogengine::ExecutePatternBase::Stage>::~__split_buffer(v31);
    v18 = v30;
  }

  else
  {
    std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,std::shared_ptr<siri::dialogengine::PatternGroup> &,std::shared_ptr<siri::dialogengine::VariableObject> &,std::set<std::string> const&>(a1[8], v11, v12, a3, a4);
    v18 = v16 + 56;
    a1[8] = v16 + 56;
  }

  a1[8] = v18;
  if (*(v11 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(v31, *(v11 + 64), *(v11 + 72));
  }

  else
  {
    *v31 = *(v11 + 64);
    *&v31[16] = *(v11 + 80);
  }

  v29 = v31;
  if (v31[23] < 0)
  {
    v29 = *v31;
  }

  siri::dialogengine::Log::Debug("Added group: %s", v17, v29);
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

LABEL_38:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1BFBEE3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,std::shared_ptr<siri::dialogengine::PatternGroup> &,std::shared_ptr<siri::dialogengine::VariableObject> &,std::set<std::string> const&>(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, const void ***a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[2] = v6;
  a1[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::set<std::string>::set[abi:ne200100](a1 + 4, a5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (a3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }
}

void sub_1BFBEE514(_Unwind_Exception *exception_object)
{
  v5 = *(v3 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (!v2)
    {
LABEL_5:
      if (!v1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (!v1)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  goto LABEL_7;
}

void siri::dialogengine::ExecutePatternBase::AddGroup(void *a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  siri::dialogengine::ExecutePatternBase::AddGroup(a1, a2, v4, &v2);
  std::__tree<std::string>::destroy(v3[0]);
}

uint64_t siri::dialogengine::ExecutePatternBase::ShouldExecuteSashGroup(siri::dialogengine **this, uint64_t a2, siri::dialogengine::VariableObject *a3)
{
  if (siri::dialogengine::DeviceIsWatch(this[5], this[3], a3))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "true");
  if (v7 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  siri::dialogengine::Log::Info("Should execute 'Sash' group: %s", v3, p_p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  return 1;
}

void sub_1BFBEE6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::DeviceIsWatch(siri::dialogengine *this, siri::dialogengine::VariableObject *a2, siri::dialogengine::VariableObject *a3)
{
  DeviceParameter = siri::dialogengine::GetDeviceParameter(this, a2, a3);
  if (DeviceParameter)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "isWatch");
    IsTrue = siri::dialogengine::DeviceFieldIsTrue(DeviceParameter, __p);
    LOBYTE(DeviceParameter) = IsTrue;
    if (v12 < 0)
    {
      operator delete(__p[0]);
      if (DeviceParameter)
      {
        goto LABEL_4;
      }
    }

    else if (IsTrue)
    {
LABEL_4:
      v5 = "true";
      goto LABEL_7;
    }
  }

  v5 = "false";
LABEL_7:
  std::string::basic_string[abi:ne200100]<0>(v9, v5);
  if (v10 >= 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = v9[0];
  }

  siri::dialogengine::Log::Debug("Is watch (from device.isWatch): %s", v6, v7);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return DeviceParameter & 1;
}

void sub_1BFBEE798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

siri::dialogengine *siri::dialogengine::GetDeviceParameter(siri::dialogengine *this, siri::dialogengine::VariableObject *a2, siri::dialogengine::VariableObject *a3)
{
  if (this)
  {
    v3 = this;
    std::string::basic_string[abi:ne200100]<0>(__p, "device");
    v5 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(v3 + 72, __p);
    if ((v3 + 80) == v5)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = *(v5 + 56);
      v7 = *(v5 + 64);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (v6)
      {
LABEL_9:
        if (!v7)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }

    if (!v7)
    {
LABEL_11:
      if (v6)
      {
        return v3;
      }

      goto LABEL_12;
    }

LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_11;
  }

LABEL_12:
  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "device");
  v8 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(a2 + 72, __p);
  if ((a2 + 80) == v8)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = v8[7];
    v10 = v8[8];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!v9)
  {
    return 0;
  }

  return v3;
}

void siri::dialogengine::ExecutePatternBase::AddParameter(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = *(a1 + 40);
    v3 = a2[1];
    v4[0] = *a2;
    v4[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::dialogengine::VariableObject::AddProperty(v2, v4);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1BFBEE9E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<siri::dialogengine::ExecutePatternBase::Stage>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 56;
    std::allocator_traits<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>::destroy[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,0>(v3 - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>,siri::dialogengine::ExecutePatternBase::Stage*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator<siri::dialogengine::ExecutePatternBase::Stage>::construct[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,siri::dialogengine::ExecutePatternBase::Stage>(a4, v7);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<siri::dialogengine::ExecutePatternBase::Stage>>::destroy[abi:ne200100]<siri::dialogengine::ExecutePatternBase::Stage,0>(v6);
      v6 += 56;
    }

    while (v6 != a3);
  }
}

id DE_VariableToNSObject(void *a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    if (a2)
    {
      if (v4[95] < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *(v4 + 9), *(v4 + 10));
      }

      else
      {
        v31 = *(v4 + 3);
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v31;
      }

      else
      {
        v9 = v31.__r_.__value_.__r.__words[0];
      }

      v2 = [v5 stringWithUTF8String:v9];
    }

    else
    {
      (*(*v4 + 48))(&v31);
      siri::dialogengine::SpeakableString::ToMultiplexedString(&v45, &v31.__r_.__value_.__l.__data_);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v45;
      }

      else
      {
        v8 = v45.__r_.__value_.__r.__words[0];
      }

      v2 = [v5 stringWithUTF8String:v8];
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (v44 < 0)
      {
        operator delete(__p);
      }

      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v34 < 0)
      {
        operator delete(v32);
      }
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    goto LABEL_35;
  }

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6[9]];
LABEL_34:
    v2 = v7;
    goto LABEL_35;
  }

  if (v10)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v10[66]];
    goto LABEL_34;
  }

  if (v12)
  {
    v13 = v12;
    v2 = objc_opt_new();
    v14 = v13[10] - v13[9];
    if (v14)
    {
      v15 = 0;
      v16 = v14 >> 4;
      do
      {
        v17 = v13[9];
        v18 = 0uLL;
        if (v15 < (v13[10] - v17) >> 4)
        {
          v18 = *(v17 + 16 * v15);
          v19 = *(v17 + 16 * v15 + 8);
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }
        }

        v30 = *(&v18 + 1);
        v20 = DE_VariableToNSObject(v18, a2);
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (v20)
        {
          [v2 addObject:v20];
        }

        ++v15;
      }

      while (v16 != v15);
    }
  }

  else
  {
    if (v21)
    {
      v22 = v21;
      v2 = objc_opt_new();
      std::map<std::string,std::shared_ptr<siri::dialogengine::Variable>>::map[abi:ne200100](&v45, v22 + 9);
      v23 = v45.__r_.__value_.__r.__words[0];
      if (v45.__r_.__value_.__l.__data_ != &v45.__r_.__value_.__r.__words[1])
      {
        do
        {
          std::pair<std::string const,std::shared_ptr<siri::dialogengine::JSONValue>>::pair[abi:ne200100](&v31, (v23 + 32));
          v24 = DE_VariableToNSObject(v32, a2);
          if (v24)
          {
            if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v31;
            }

            else
            {
              v25 = v31.__r_.__value_.__r.__words[0];
            }

            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
            [v2 setObject:v24 forKey:v26];
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          v27 = *(v23 + 8);
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = v27->__r_.__value_.__r.__words[0];
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = *(v23 + 16);
              v29 = v28->__r_.__value_.__r.__words[0] == v23;
              v23 = v28;
            }

            while (!v29);
          }

          v23 = v28;
        }

        while (v28 != &v45.__r_.__value_.__r.__words[1]);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(v45.__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_35:

  return v2;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void siri::dialogengine::EncodeBase64(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      *&a2->__r_.__value_.__l.__data_ = 0uLL;
      a2->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_6;
    }

LABEL_24:

    std::string::basic_string[abi:ne200100]<0>(a2, "");
    return;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_24;
  }

  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = *a1;
LABEL_6:
  v5 = 0;
  v6 = &v2[v4];
  do
  {
    while (1)
    {
      v7 = v5;
      *(&v33 + v5) = *v2;
      if (v5 < 2)
      {
        break;
      }

      siri::dialogengine::GetBase64Chars(a1);
      v8 = v33;
      if (byte_1EBE0297F >= 0)
      {
        v9 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v9 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v9 + (v33 >> 2)));
      siri::dialogengine::GetBase64Chars(v10);
      v11 = v34;
      if (byte_1EBE0297F >= 0)
      {
        v12 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v12 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v12 + ((v34 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v8 & 3)))));
      siri::dialogengine::GetBase64Chars(v13);
      v14 = v35;
      if (byte_1EBE0297F >= 0)
      {
        v15 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v15 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v15 + ((v35 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v11 & 0xF)))));
      siri::dialogengine::GetBase64Chars(v16);
      if (byte_1EBE0297F >= 0)
      {
        v17 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      else
      {
        v17 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
      }

      std::string::push_back(a2, *(v17 + (v14 & 0x3F)));
      v5 = 0;
      if (++v2 == v6)
      {
        return;
      }
    }

    ++v5;
    ++v2;
  }

  while (v2 != v6);
  bzero(&v33 + v5, (2 - v7));
  siri::dialogengine::GetBase64Chars(v18);
  v20 = v33;
  if (byte_1EBE0297F >= 0)
  {
    v21 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v21 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[0] = *(v21 + (v33 >> 2));
  siri::dialogengine::GetBase64Chars(v19);
  v23 = v34;
  if (byte_1EBE0297F >= 0)
  {
    v24 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v24 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[1] = *(v24 + ((v34 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v20 & 3))));
  siri::dialogengine::GetBase64Chars(v22);
  v26 = v35;
  if (byte_1EBE0297F >= 0)
  {
    v27 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v27 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[2] = *(v27 + ((v35 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v23 & 0xF))));
  siri::dialogengine::GetBase64Chars(v25);
  v28 = 0;
  if (byte_1EBE0297F >= 0)
  {
    v29 = &siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  else
  {
    v29 = siri::dialogengine::GetBase64Chars(void)::base64Chars;
  }

  v32[3] = *(v29 + (v26 & 0x3F));
  do
  {
    std::string::push_back(a2, v32[v28++]);
  }

  while (v7 + 2 != v28);
  v30 = v7 - 3;
  while (!__CFADD__(v30++, 1))
  {
    std::string::push_back(a2, 61);
  }
}

void sub_1BFBEF344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::VerifyUtf8String(google::protobuf::internal *a1, const char *a2, int a3, google::protobuf::internal *a4)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    v7 = "serializing";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = "parsing";
    }

    google::protobuf::internal::PrintUTF8ErrorLog(a4, v8, 0);
  }

  return IsStructurallyValidUTF8;
}

const google::protobuf::UnknownFieldSet *SnippetUI::ActionElement::InternalSerializeWithCachedSizesToArray(SnippetUI::ActionElement *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  if (this != &SnippetUI::_ActionElement_default_instance_)
  {
    v7 = *(this + 8);
    if (v7)
    {
      if (*a3 <= a2)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v7 = *(this + 8);
      }

      *v5 = 10;
      v8 = *(v7 + 8);
      if (v8 > 0x7F)
      {
        v5[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v11 = v5 + 2;
          do
          {
            v12 = v11;
            *v11++ = v10 | 0x80;
            v13 = v10 >> 7;
            v14 = v10 >> 14;
            v10 >>= 7;
          }

          while (v14);
          v9 = v12 + 2;
          *v11 = v13;
        }

        else
        {
          v5[2] = v10;
          v9 = v5 + 3;
        }
      }

      else
      {
        v5[1] = v8;
        v9 = v5 + 2;
      }

      v5 = SnippetUI::Command::InternalSerializeWithCachedSizesToArray(v7, v9, a3, a4);
    }
  }

  v15 = *(this + 6);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::TextElement>::TypeHandler>(this + 16, i);
      *v5 = 18;
      v19 = *(v17 + 24);
      if (v19 > 0x7F)
      {
        v5[1] = v19 | 0x80;
        v21 = v19 >> 7;
        if (v19 >> 14)
        {
          v22 = v5 + 2;
          do
          {
            v23 = v22;
            *v22++ = v21 | 0x80;
            v24 = v21 >> 7;
            v25 = v21 >> 14;
            v21 >>= 7;
          }

          while (v25);
          v20 = (v23 + 2);
          *v22 = v24;
        }

        else
        {
          v5[2] = v21;
          v20 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v19;
        v20 = (v5 + 2);
      }

      v5 = SnippetUI::TextElement::InternalSerializeWithCachedSizesToArray(v17, v20, a3, v18);
    }
  }

  v26 = *(this + 14);
  if (v26 > 0)
  {
    v27 = *a3;
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v27 = *a3;
    }

    if (v27 <= v5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v43, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
      v28 = google::protobuf::internal::LogMessage::operator<<(v43, "CHECK failed: ptr < end_: ");
      google::protobuf::internal::LogFinisher::operator=(&v42, &v28->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v43[0].__r_.__value_.__l.__data_);
    }

    *v5 = 26;
    v29 = v5 + 1;
    if (v26 >= 0x80)
    {
      do
      {
        *v29++ = v26 | 0x80;
        v41 = v26 >> 14;
        v26 >>= 7;
      }

      while (v41);
      v5 = v29 - 1;
    }

    v5 += 2;
    *v29 = v26;
    v30 = *(this + 6);
    v31 = &v30[*(this + 10)];
    do
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v33 = *v30++;
      v32 = v33;
      if (v33 > 0x7F)
      {
        *v5 = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v35 = v5 + 1;
          do
          {
            v36 = v35;
            *v35++ = v34 | 0x80;
            v37 = v34 >> 7;
            v38 = v34 >> 14;
            v34 >>= 7;
          }

          while (v38);
          v5 = v36 + 2;
          *v35 = v37;
        }

        else
        {
          v5[1] = v34;
          v5 += 2;
        }
      }

      else
      {
        *v5++ = v32;
      }
    }

    while (v30 < v31);
  }

  v39 = *(this + 1);
  if (v39)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v39 & 0xFFFFFFFFFFFFFFFELL), v5, a3, a4);
  }

  return v5;
}