void sub_2475683B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (*(v57 - 185) < 0)
  {
    operator delete(*(v57 - 208));
  }

  if (STACK[0x858])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x858]);
  }

  if (STACK[0x518])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x518]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  std::__tree<std::string>::destroy(&STACK[0x5D0], STACK[0x5D8]);
  STACK[0x5D0] = &a57;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5D0]);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Element>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RIO_MTLX::Element::asA<RIO_MTLX::Element>(v9, &v19);
      if (v19)
      {
        v10 = *(a4 + 23);
        v11 = v10 >= 0 ? *(a4 + 23) : *(a4 + 8);
        if (!v11)
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 47);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v9 + 32);
        }

        if (v12 == v11)
        {
          v16 = *(v9 + 24);
          v15 = v9 + 24;
          v14 = v16;
          v17 = (v13 >= 0 ? v15 : v14);
          v18 = v10 >= 0 ? a4 : *a4;
          if (!memcmp(v17, v18, v11))
          {
LABEL_20:
            std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a1, &v19);
          }
        }
      }

      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

void sub_24756A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::Node>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::Node>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::Output>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::Output>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void RIO_MTLX::anonymous namespace::getShaderNodeDef(RIO_MTLX::InterfaceElement *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(a1);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v4 + 160), v5);
  if (v6)
  {
    v7 = *a2;
    v8 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(v6);
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v7 + 160), v8);
    if (v9)
    {
      v10 = (v9 + 5);
    }

    else
    {
      v10 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, *v10, v10[1]);
    }

    else
    {
      v18 = *v10;
      v56.__r_.__value_.__r.__words[2] = v10[2];
      *&v56.__r_.__value_.__l.__data_ = v18;
    }

    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(*a2, &v56, a1);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = *a2;
    v12 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(0);
    v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v11 + 160), v12);
    if (!v13)
    {
      goto LABEL_74;
    }

    v14 = *a2;
    v15 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(v13);
    v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v14 + 160), v15);
    if (v16)
    {
      v17 = (v16 + 5);
    }

    else
    {
      v17 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v17 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, *v17, v17[1]);
    }

    else
    {
      v19 = *v17;
      v56.__r_.__value_.__r.__words[2] = v17[2];
      *&v56.__r_.__value_.__l.__data_ = v19;
    }

    v20 = *a2;
    v21 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v17);
    v22 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v20 + 160), v21);
    if (v22)
    {
      v23 = (v22 + 5);
    }

    else
    {
      v23 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v23 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *v23, v23[1]);
    }

    else
    {
      v24 = *v23;
      v55.__r_.__value_.__r.__words[2] = v23[2];
      *&v55.__r_.__value_.__l.__data_ = v24;
    }

    v25 = *a2;
    v26 = RIO_MTLX::InterfaceElement::TARGET_ATTRIBUTE(v23);
    v27 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v25 + 160), v26);
    if (v27)
    {
      v28 = (v27 + 5);
    }

    else
    {
      v28 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v28 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v54, *v28, v28[1]);
    }

    else
    {
      v29 = *v28;
      v54.__r_.__value_.__r.__words[2] = v28[2];
      *&v54.__r_.__value_.__l.__data_ = v29;
    }

    v30 = *a2;
    v31 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(v28);
    v32 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v30 + 160), v31);
    if (v32)
    {
      v33 = (v32 + 5);
    }

    else
    {
      v33 = RIO_MTLX::EMPTY_STRING(0);
    }

    if (*(v33 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, *v33, v33[1]);
    }

    else
    {
      v34 = *v33;
      v53.__r_.__value_.__r.__words[2] = v33[2];
      *&v53.__r_.__value_.__l.__data_ = v34;
    }

    RIO_MTLX::Element::getDocument(&p_p, *a2);
    p_data = &p_p->__r_.__value_.__l.__data_;
    RIO_MTLX::Element::getQualifiedName(*a2, &v56, &__p);
    RIO_MTLX::Document::getMatchingNodeDefs(p_data, &__p, &v51);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    RIO_MTLX::Element::getDocument(&p_p, *a2);
    RIO_MTLX::Document::getMatchingNodeDefs(p_p, &v56, &__p);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>,std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>>(&v51, v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4);
    v36 = v51;
    v37 = v52;
    if (v51 == v52)
    {
LABEL_64:
      v47 = 1;
    }

    else
    {
      while (1)
      {
        v38 = *v36;
        *a1 = *v36;
        v39 = *(v36 + 1);
        *(a1 + 1) = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Target = RIO_MTLX::InterfaceElement::getTarget(v38);
        if (RIO_MTLX::targetStringsMatch(Target, &v54) && RIO_MTLX::NodeDef::isVersionCompatible(v38, &v53))
        {
          size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v55.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            break;
          }

          v42 = (*(*v38 + 56))(v38);
          v43 = *(v42 + 23);
          if (v43 >= 0)
          {
            v44 = *(v42 + 23);
          }

          else
          {
            v44 = v42[1];
          }

          v45 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v45 = v55.__r_.__value_.__l.__size_;
          }

          if (v44 == v45)
          {
            if (v43 < 0)
            {
              v42 = *v42;
            }

            v46 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
            if (!memcmp(v42, v46, v44))
            {
              break;
            }
          }
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        v36 += 16;
        if (v36 == v37)
        {
          goto LABEL_64;
        }
      }

      v47 = 0;
    }

    p_p = &__p;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&p_p);
    __p.__r_.__value_.__r.__words[0] = &v51;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v47)
    {
LABEL_74:
      *a1 = 0;
      *(a1 + 1) = 0;
    }
  }
}

void sub_24756A744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char **a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  a15 = &a9;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a9 = &a17;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  _Unwind_Resume(a1);
}

const void **RIO_MTLX::NodeDef::getNodeString(RIO_MTLX::NodeDef *this)
{
  v2 = RIO_MTLX::NodeDef::NODE_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return v3 + 5;
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

const void **RIO_MTLX::PortElement::getOutputString(RIO_MTLX::PortElement *this)
{
  v2 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return v3 + 5;
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void sub_24756A920(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::upgradeVersion(void)::$_0::operator()(uint64_t a1, std::string **a2, std::string *a3)
{
  if (*a2)
  {
    RIO_MTLX::Element::setName(*a2, a3);
    v5 = *a2;
    RIO_MTLX::STRING_TYPE_STRING(v6);
    RIO_MTLX::InterfaceElement::addInput(v5, a1);
  }
}

void sub_24756AA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v22 = *(v20 - 24);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Document::upgradeVersion(void)::$_1::operator()(const std::string *a1, std::string **a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(*a2, &a1[1], &v16);
  if (v16)
  {
    (*(*v16 + 64))(&v14);
    if (v14)
    {
      v4 = *a2;
      v5 = (*a2)[9].__r_.__value_.__r.__words[2];
      if (v5)
      {
        v5 = std::__shared_weak_count::lock(v5);
        v6 = v5;
        if (v5)
        {
          v5 = *(v4 + 224);
        }
      }

      else
      {
        v6 = 0;
      }

      RIO_MTLX::Element::asA<RIO_MTLX::GraphElement>(v5, &v13);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = *a2;
      if (SHIBYTE((*a2)[2].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, v7[2].__r_.__value_.__l.__data_, v7[2].__r_.__value_.__l.__size_);
        v7 = *a2;
      }

      else
      {
        v12 = v7[2];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, size + 11);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v12;
        }

        else
        {
          v10 = v12.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v10, size);
      }

      strcpy(p_p + size, "__layer_top");
      RIO_MTLX::Element::setName(v7, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      RIO_MTLX::GraphElement::addNode(v13, a1 + 2, &v12);
    }

    RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Input>(*a2, &a1[1]);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_24756AD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v29 - 88));
  }

  v31 = *(v29 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void ***a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::ValueElement>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::ValueElement>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756AFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

const void **RIO_MTLX::PortElement::getNodeName(RIO_MTLX::PortElement *this)
{
  v2 = RIO_MTLX::PortElement::NODE_NAME_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return v3 + 5;
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t RIO_MTLX::Document::upgradeVersion(void)::$_1::~$_1(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24756B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::addChild<RIO_MTLX::NodeGraph>(RIO_MTLX::NodeGraph *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v5 = RIO_MTLX::NodeGraph::CATEGORY(a1);
    v6 = v5;
    if (v5[23] >= 0)
    {
      v7 = v5[23];
    }

    else
    {
      v7 = *(v5 + 1);
    }

    v8 = __p;
    std::string::basic_string[abi:ne200100](__p, v7 + 1);
    if (v11 < 0)
    {
      v8 = __p[0];
    }

    if (v7)
    {
      if (v6[23] >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      memmove(v8, v9, v7);
    }

    *(v8 + v7) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v12);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v13 = v12;
    *(&v12.__r_.__value_.__s + 23) = 0;
    v12.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v12, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::NodeGraph,std::allocator<RIO_MTLX::NodeGraph>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24756B2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::NodeGraph>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::NodeGraph>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945168;
  std::allocator<RIO_MTLX::NodeGraph>::construct[abi:ne200100]<RIO_MTLX::NodeGraph,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::NodeGraph>::construct[abi:ne200100]<RIO_MTLX::NodeGraph,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::NodeGraph *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  RIO_MTLX::NodeGraph::NodeGraph(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24756B4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::setTypedAttribute<BOOL>(RIO_MTLX::Element *a1, __int128 *a2, RIO_MTLX *a3)
{
  RIO_MTLX::toValueString<BOOL>(a3, &__p);
  RIO_MTLX::Element::setAttribute(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24756B514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Output>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756B634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::addChild<RIO_MTLX::Output>(RIO_MTLX::Output *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v5 = RIO_MTLX::Output::CATEGORY(a1);
    v6 = v5;
    if (v5[23] >= 0)
    {
      v7 = v5[23];
    }

    else
    {
      v7 = *(v5 + 1);
    }

    v8 = __p;
    std::string::basic_string[abi:ne200100](__p, v7 + 1);
    if (v11 < 0)
    {
      v8 = __p[0];
    }

    if (v7)
    {
      if (v6[23] >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      memmove(v8, v9, v7);
    }

    *(v8 + v7) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v12);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v13 = v12;
    *(&v12.__r_.__value_.__s + 23) = 0;
    v12.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v12, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::Output,std::allocator<RIO_MTLX::Output>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24756B828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::Output>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::Output>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2859451B8;
  std::allocator<RIO_MTLX::Output>::construct[abi:ne200100]<RIO_MTLX::Output,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2);
  return a1;
}

void std::allocator<RIO_MTLX::Output>::construct[abi:ne200100]<RIO_MTLX::Output,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::Output *a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0uLL;
  RIO_MTLX::Output::Output(a2, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_24756B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(uint64_t a1, const void **a2)
{
  RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(a1, &v15);
  v4 = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

const void **RIO_MTLX::Implementation::getNodeGraph(RIO_MTLX::Implementation *this)
{
  v2 = RIO_MTLX::PortElement::NODE_GRAPH_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return v3 + 5;
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_24756BBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Element>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::GeomProp>(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 96), a3);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::GeomProp>(v6, a1);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24756BC90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeGraph>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756BDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>,std::__wrap_iter<std::shared_ptr<RIO_MTLX::NodeDef>*>>(void *a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__move_range(a1, a2, a1[1], &a2[16 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__move_range(a1, v5, v10, &v5[16 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v13 = &a2[-v11];
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void *std::vector<std::shared_ptr<RIO_MTLX::NodeDef>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(&v11, a2, v7, v6);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*,std::shared_ptr<RIO_MTLX::NodeDef>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<RIO_MTLX::NodeDef>>,std::shared_ptr<RIO_MTLX::NodeDef>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>,std::shared_ptr<realityio::DirtyStageDescriptor const>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *,std::shared_ptr<RIO_MTLX::NodeDef> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeDef>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756C2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Output>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24756C388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::removeChildOfType<RIO_MTLX::NodeDef>(void *a1, uint64_t *a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    RIO_MTLX::Element::removeChild(a1, a2);
  }
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Input>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24756C47C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Node>(void *a1, uint64_t *a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Node>(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    RIO_MTLX::Element::removeChild(a1, a2);
  }
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_24756C524(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::addChild<RIO_MTLX::Input>(RIO_MTLX::Input *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v5 = RIO_MTLX::Input::CATEGORY(a1);
    v6 = v5;
    if (v5[23] >= 0)
    {
      v7 = v5[23];
    }

    else
    {
      v7 = *(v5 + 1);
    }

    v8 = __p;
    std::string::basic_string[abi:ne200100](__p, v7 + 1);
    if (v11 < 0)
    {
      v8 = __p[0];
    }

    if (v7)
    {
      if (v6[23] >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      memmove(v8, v9, v7);
    }

    *(v8 + v7) = 49;
    RIO_MTLX::Element::createValidChildName(a1, __p, &v12);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v13 = v12;
    *(&v12.__r_.__value_.__s + 23) = 0;
    v12.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v12, a1 + 1);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::Input,std::allocator<RIO_MTLX::Input>,std::shared_ptr<RIO_MTLX::Element>,std::string &,0>();
}

void sub_24756C6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<RIO_MTLX::Input>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string &,std::allocator<RIO_MTLX::Input>,0>(void *a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2859455C0;
  std::allocator<RIO_MTLX::Input>::construct[abi:ne200100]<RIO_MTLX::Input,std::shared_ptr<RIO_MTLX::Element>,std::string &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<RIO_MTLX::Input>::construct[abi:ne200100]<RIO_MTLX::Input,std::shared_ptr<RIO_MTLX::Element>,std::string &>(uint64_t a1, RIO_MTLX::Input *a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  RIO_MTLX::Input::Input(a2, &v4, a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_24756C8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[16],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_24756C900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(void *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 3, a3);
  return a1;
}

void sub_24756C954(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::removeChildOfType<RIO_MTLX::Input>(void *a1, uint64_t *a2)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(a1, a2, &v5);
  v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v4)
  {
    RIO_MTLX::Element::removeChild(a1, a2);
  }
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Input>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24756CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::Document>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>,std::string const&,std::allocator<RIO_MTLX::Document>,0>(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945410;
  std::allocator<RIO_MTLX::Document>::construct[abi:ne200100]<RIO_MTLX::Document,std::shared_ptr<RIO_MTLX::Element>,std::string const&>(&v3, (a1 + 3), a2, a3);
}

void std::allocator<RIO_MTLX::Document>::construct[abi:ne200100]<RIO_MTLX::Document,std::shared_ptr<RIO_MTLX::Element>,std::string const&>(uint64_t a1, RIO_MTLX::Document *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v5[0] = *a3;
  v5[1] = v4;
  *a3 = 0;
  a3[1] = 0;
  RIO_MTLX::Document::Document(a2, v5, a4);
}

void sub_24756CC6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::PortElement>>>>::__equal_range_multi<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      v6 = *v6;
    }

    while (v6 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v6 + 2, a2));
  }

  return v5;
}

uint64_t std::vector<std::shared_ptr<RIO_MTLX::Element>>::__init_with_size[abi:ne200100]<std::shared_ptr<RIO_MTLX::Element>*,std::shared_ptr<RIO_MTLX::Element>*>(uint64_t result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void RIO_MTLX::ValueElement::setValue<std::string>(RIO_MTLX::TypedElement *a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    a1 = RIO_MTLX::TypedValue<std::string>::TYPE();
    v3 = RIO_MTLX::TypedValue<std::string>::TYPE(void)::v;
  }

  v7 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(a1);
  RIO_MTLX::Element::setAttribute(v5, v7, v3);
  v8 = RIO_MTLX::toValueString<std::string>(&__p, a2);
  v9 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v8);
  RIO_MTLX::Element::setAttribute(v5, v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_24756CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_24756D0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::meshAttributeRateForInterpolation(realityio *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v3 = atomic_load(MEMORY[0x277D86550]);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
  }

  if ((*(v3 + 136) ^ *this) >= 8)
  {
    v5 = atomic_load(MEMORY[0x277D86550]);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
    }

    if ((*(v5 + 1168) ^ *this) >= 8)
    {
      v6 = atomic_load(MEMORY[0x277D86550]);
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      if ((*(v6 + 1216) ^ *this) < 8)
      {
        return 1;
      }

      v7 = atomic_load(MEMORY[0x277D86550]);
      if (!v7)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
      }

      if ((*(v7 + 1232) ^ *this) >= 8)
      {
        v8 = atomic_load(MEMORY[0x277D86550]);
        if (!v8)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData(MEMORY[0x277D86550]);
        }

        if ((*(v8 + 320) ^ *this) >= 8)
        {
          return -1;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::isTexCoord2(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v10[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  v10[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v10);
  v2 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::isTexCoord3(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v10[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  v10[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v10);
  v2 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::isScalar2(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a2)
{
  v7[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  v7[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v7);
  v2 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v2))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::addUsdAttributeToGeomModelDescriptor(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdAttribute *this, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v119 = *MEMORY[0x277D85DE8];
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&TypeName);
  v8 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_19;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_19:
    IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
    if (IsPrimvar)
    {
      MEMORY[0x24C1A5200](&v109, this);
      pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v109);
    }

    else
    {
      v109 = 3;
      v110 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v112 = 0;
      v113 = 0;
      v17 = *a4;
      __sz[0] = v17;
      if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        __sz[0] &= 0xFFFFFFFFFFFFFFF8;
      }
    }

    v18 = realityio::meshAttributeRateForInterpolation(__sz, v16);
    if ((__sz[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v102 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&v102))
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&v102))
      {
        goto LABEL_88;
      }

      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(this, __sz);
      if (LOBYTE(__sz[0]) != 1)
      {
        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_88;
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
      v106 = *&__sz[1];
      v107 = *&__sz[3];
      memset(&__sz[1], 0, 32);
      v108 = v101;
      v101 = 0;
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 4 * (v106 > 1);
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(__sz);
LABEL_54:
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v103, v106);
      v31 = v103;
      if (v106)
      {
        v32 = v108;
        v33 = 12 * v106;
        do
        {
          *&v30 = *v32;
          DWORD2(v30) = *(v32 + 2);
          *v31++ = v30;
          v32 = (v32 + 12);
          v33 -= 12;
        }

        while (v33);
        v31 = v103;
      }

      if (IsPrimvar)
      {
        memset(__sz, 0, sizeof(__sz));
        Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
        v35 = Indices;
        if (Indices)
        {
          memset(&v114, 0, sizeof(v114));
          std::vector<int>::resize(&v114, __sz[0]);
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
          v36 = __sz[4];
          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
          v37 = __sz[4] + 4 * __sz[0];
          if (v36 != v37)
          {
            begin = v114.__begin_;
            do
            {
              v39 = *v36++;
              *begin++ = v39;
            }

            while (v36 != v37);
          }

          if (!a3)
          {
            Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
            if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
            {
              pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
            }
          }

          v41 = REGeomModelDescriptorAddIndexedAttributeVector3F();
          if (v114.__begin_)
          {
            v114.__end_ = v114.__begin_;
            operator delete(v114.__begin_);
          }
        }

        else
        {
          v41 = 0;
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
        if (v35)
        {
          goto LABEL_89;
        }
      }

      IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&v102);
      if (v18 == 4)
      {
        v43 = 1;
      }

      else
      {
        v43 = IsArray;
      }

      if ((v43 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&v102), !v18) ? (v45 = IsScalar) : (v45 = 0), v45 == 1))
      {
        if (!a3)
        {
          v46 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          a3 = (*v46 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v46 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v46);
          if (*(a3 + 23) < 0)
          {
            a3 = *a3;
          }
        }

        if (MEMORY[0x24C1A3800](a1, a3, v18, v106, v31))
        {
          v41 = 1;
LABEL_89:
          if (v103)
          {
            v104 = v103;
            operator delete(v103);
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
          if ((v113 & 7) != 0)
          {
            atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v112 & 7) != 0)
          {
            atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v111);
          if (v110)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v110);
          }

          return v41;
        }
      }

LABEL_88:
      v41 = 0;
      goto LABEL_89;
    }

    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(this, __sz);
    if (LOBYTE(__sz[0]) == 1)
    {
      if (!DWORD2(v106))
      {
        v19 = v106;
        if (!*(&v107 + 1))
        {
          v20 = v108;
          if (!v108)
          {
            v22 = 0;
LABEL_45:
            if (v106 != v22)
            {
              v27 = __sz[1];
              v28 = v20 + 12 * v106;
              *(v28 + 8) = __sz[2];
              *v28 = v27;
LABEL_50:
              *&v106 = v106 + 1;
LABEL_51:
              if ((__sz[0] & 1) == 0 && SHIBYTE(v101) < 0)
              {
                operator delete(__sz[3]);
              }

              goto LABEL_54;
            }

            goto LABEL_125;
          }

          v21 = atomic_load(v108 - 2);
          if (v21 == 1)
          {
            v20 = v108;
            v22 = *(v108 - 1);
            goto LABEL_45;
          }
        }

LABEL_125:
        v57 = v108;
        v58 = 1;
        do
        {
          v59 = v58;
          v58 *= 2;
        }

        while (v59 < v106 + 1);
        New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(&v106, v59);
        v61 = New;
        if (v19)
        {
          v62 = 12 * v19;
          v63 = New;
          do
          {
            v64 = *v57;
            *(v63 + 2) = *(v57 + 2);
            *v63 = v64;
            v63 = (v63 + 12);
            v57 = (v57 + 12);
            v62 -= 12;
          }

          while (v62);
        }

        v65 = __sz[1];
        v66 = New + 12 * v19;
        *(v66 + 2) = __sz[2];
        *v66 = v65;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
LABEL_137:
        v108 = v61;
        goto LABEL_50;
      }

      v114.__begin_ = "vt/array.h";
      v114.__end_ = "emplace_back";
      v114.__end_cap_.__value_ = 416;
      v115 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3f, Args = <const pxrInternal__aapl__pxrReserved__::GfVec3f &>]";
      v116 = 0;
      if (v107)
      {
        v75 = 4;
      }

      else
      {
        v75 = 3;
      }

      if (HIDWORD(v106))
      {
        v76 = v75;
      }

      else
      {
        v76 = 2;
      }

LABEL_144:
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v114, 1, "Array rank %u != 1", v76);
      goto LABEL_51;
    }

    v118 = 0;
    v117 = 0;
    if (DWORD2(v106))
    {
      v114.__begin_ = "vt/array.h";
      v114.__end_ = "emplace_back";
      v114.__end_cap_.__value_ = 416;
      v115 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3f, Args = <pxrInternal__aapl__pxrReserved__::GfVec3f>]";
      v116 = 0;
      if (v107)
      {
        v77 = 4;
      }

      else
      {
        v77 = 3;
      }

      if (HIDWORD(v106))
      {
        v76 = v77;
      }

      else
      {
        v76 = 2;
      }

      goto LABEL_144;
    }

    v23 = v106;
    if (!*(&v107 + 1))
    {
      v24 = v108;
      if (!v108)
      {
        v26 = 0;
LABEL_48:
        if (v106 != v26)
        {
          v29 = v24 + 12 * v106;
          *v29 = v117;
          *(v29 + 8) = v118;
          goto LABEL_50;
        }

        goto LABEL_131;
      }

      v25 = atomic_load(v108 - 2);
      if (v25 == 1)
      {
        v24 = v108;
        v26 = *(v108 - 1);
        goto LABEL_48;
      }
    }

LABEL_131:
    v67 = v108;
    v68 = 1;
    do
    {
      v69 = v68;
      v68 *= 2;
    }

    while (v69 < v106 + 1);
    v70 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(&v106, v69);
    v61 = v70;
    if (v23)
    {
      v71 = 12 * v23;
      v72 = v70;
      do
      {
        v73 = *v67;
        *(v72 + 2) = *(v67 + 2);
        *v72 = v73;
        v72 = (v72 + 12);
        v67 = (v67 + 12);
        v71 -= 12;
      }

      while (v71);
    }

    v74 = v70 + 12 * v23;
    *v74 = v117;
    *(v74 + 2) = v118;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
    goto LABEL_137;
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2fEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2fEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2dEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2dEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2hEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2hEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return realityio::convertAndAddAttributeToModelDescriptor<int,int>(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return realityio::convertAndAddAttributeToModelDescriptor<unsigned int,unsigned int>(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return realityio::convertAndAddAttributeToModelDescriptor<unsigned char,unsigned char>(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return realityio::convertAndAddAttributeToModelDescriptor<float,float>(a1, this, a3, a4);
  }

  if (!atomic_load(v8))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 0;
  }

  return realityio::convertAndAddAttributeToModelDescriptor<double,double>(a1, this, a3, a4);
}

void sub_24756E3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if ((a13 & 1) == 0 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a26);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a32);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2fEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v65, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v65);
  }

  else
  {
    v65 = 3;
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v68 = 0;
    v69 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v62);
        v62 = *&__sz[1];
        v63 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v64 = v57;
        v57 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v62 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_70:
    v31 = 0;
    goto LABEL_71;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v62))
    {
      v70.__begin_ = "vt/array.h";
      v70.__end_ = "emplace_back";
      v70.__end_cap_.__value_ = 416;
      v71 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2f, Args = <pxrInternal__aapl__pxrReserved__::GfVec2f>]";
      v72 = 0;
      if (v63)
      {
        v55 = 4;
      }

      else
      {
        v55 = 3;
      }

      if (HIDWORD(v62))
      {
        v54 = v55;
      }

      else
      {
        v54 = 2;
      }

      goto LABEL_99;
    }

    v16 = v62;
    if (!*(&v63 + 1))
    {
      v17 = v64;
      if (!v64)
      {
        v19 = 0;
LABEL_30:
        if (v62 != v19)
        {
          v17[v62] = 0;
          goto LABEL_32;
        }

        goto LABEL_86;
      }

      v18 = atomic_load(v64 - 2);
      if (v18 == 1)
      {
        v17 = v64;
        v19 = *(v64 - 1);
        goto LABEL_30;
      }
    }

LABEL_86:
    v46 = v64;
    v47 = 1;
    do
    {
      v48 = v47;
      v47 *= 2;
    }

    while (v48 < v62 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v62, v48);
    v42 = New;
    if (v16)
    {
      v50 = 8 * v16;
      v51 = New;
      do
      {
        v52 = *v46++;
        *v51++ = v52;
        v50 -= 8;
      }

      while (v50);
    }

    New[v16] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v62);
    goto LABEL_92;
  }

  if (DWORD2(v62))
  {
    v70.__begin_ = "vt/array.h";
    v70.__end_ = "emplace_back";
    v70.__end_cap_.__value_ = 416;
    v71 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2f, Args = <const pxrInternal__aapl__pxrReserved__::GfVec2f &>]";
    v72 = 0;
    if (v63)
    {
      v53 = 4;
    }

    else
    {
      v53 = 3;
    }

    if (HIDWORD(v62))
    {
      v54 = v53;
    }

    else
    {
      v54 = 2;
    }

LABEL_99:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v70, 1, "Array rank %u != 1", v54);
    goto LABEL_33;
  }

  v12 = v62;
  if (*(&v63 + 1))
  {
    goto LABEL_80;
  }

  v13 = v64;
  if (v64)
  {
    v14 = atomic_load(v64 - 2);
    if (v14 != 1)
    {
      goto LABEL_80;
    }

    v13 = v64;
    v15 = *(v64 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v62 == v15)
  {
LABEL_80:
    v38 = v64;
    v39 = 1;
    do
    {
      v40 = v39;
      v39 *= 2;
    }

    while (v40 < v62 + 1);
    v41 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(&v62, v40);
    v42 = v41;
    if (v12)
    {
      v43 = 8 * v12;
      v44 = v41;
      do
      {
        v45 = *v38++;
        *v44++ = v45;
        v43 -= 8;
      }

      while (v43);
    }

    v41[v12] = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v62);
LABEL_92:
    v64 = v42;
    goto LABEL_32;
  }

  v13[v62] = __sz[1];
LABEL_32:
  *&v62 = v62 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v57) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v59, v62);
  v20 = v59;
  if (v62)
  {
    v21 = v64;
    v22 = 8 * v62;
    do
    {
      v23 = *v21++;
      *v20++ = v23;
      v22 -= 8;
    }

    while (v22);
    v20 = v59;
  }

  if (!IsPrimvar)
  {
    goto LABEL_54;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v25 = Indices;
  if (Indices)
  {
    memset(&v70, 0, sizeof(v70));
    std::vector<int>::resize(&v70, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v26 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v27 = __sz[4] + 4 * __sz[0];
    if (v26 != v27)
    {
      begin = v70.__begin_;
      do
      {
        v29 = *v26++;
        *begin++ = v29;
      }

      while (v26 != v27);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v31 = REGeomModelDescriptorAddIndexedAttributeVector2F();
    if (v70.__begin_)
    {
      v70.__end_ = v70.__begin_;
      operator delete(v70.__begin_);
    }
  }

  else
  {
    v31 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v25 & 1) == 0)
  {
LABEL_54:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v33 = 1;
    }

    else
    {
      v33 = IsArray;
    }

    if ((v33 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v35 = IsScalar) : (v35 = 0), v35 == 1))
    {
      if (!a3)
      {
        v36 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v36 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v36 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v36);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37F0](a1, a3, v11, v62, v20))
      {
        v31 = 1;
        goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

LABEL_71:
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v62);
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v67);
  if (v66)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v66);
  }

  return v31;
}

void sub_24756EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a24);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a29);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3dEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v82 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v72, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v72);
  }

  else
  {
    v72 = 3;
    v73 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v75 = 0;
    v76 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(__sz, a2);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
        v69 = *&__sz[1];
        v70 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v71 = v64;
        v64 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v69 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_70:
    v35 = 0;
    goto LABEL_71;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3d>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    v80 = 0uLL;
    v81 = 0;
    if (DWORD2(v69))
    {
      v77.__begin_ = "vt/array.h";
      v77.__end_ = "emplace_back";
      v77.__end_cap_.__value_ = 416;
      v78 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3d, Args = <pxrInternal__aapl__pxrReserved__::GfVec3d>]";
      v79 = 0;
      if (v70)
      {
        v62 = 4;
      }

      else
      {
        v62 = 3;
      }

      if (HIDWORD(v69))
      {
        v61 = v62;
      }

      else
      {
        v61 = 2;
      }

      goto LABEL_99;
    }

    v16 = v69;
    if (!*(&v70 + 1))
    {
      v17 = v71;
      if (!v71)
      {
        v19 = 0.0;
LABEL_30:
        if (v69 != *&v19)
        {
          v22 = v17 + 24 * v69;
          *v22 = v80;
          *(v22 + 16) = v81;
          goto LABEL_32;
        }

        goto LABEL_86;
      }

      v18 = atomic_load(&v71[-1]);
      if (v18 == 1)
      {
        v17 = v71;
        v19 = v71[-1].f64[1];
        goto LABEL_30;
      }
    }

LABEL_86:
    v52 = v71;
    v53 = 1;
    do
    {
      v54 = v53;
      v53 *= 2;
    }

    while (v54 < v69 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v69, v54);
    v46 = New;
    if (v16)
    {
      v56 = 24 * v16;
      v57 = New;
      do
      {
        v58 = *v52;
        v57[1].f64[0] = v52[1].f64[0];
        *v57 = v58;
        v57 = (v57 + 24);
        v52 = (v52 + 24);
        v56 -= 24;
      }

      while (v56);
    }

    v59 = &New->f64[3 * v16];
    *v59 = v80;
    v59[2] = v81;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
    goto LABEL_92;
  }

  if (DWORD2(v69))
  {
    v77.__begin_ = "vt/array.h";
    v77.__end_ = "emplace_back";
    v77.__end_cap_.__value_ = 416;
    v78 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3d, Args = <const pxrInternal__aapl__pxrReserved__::GfVec3d &>]";
    v79 = 0;
    if (v70)
    {
      v60 = 4;
    }

    else
    {
      v60 = 3;
    }

    if (HIDWORD(v69))
    {
      v61 = v60;
    }

    else
    {
      v61 = 2;
    }

LABEL_99:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v77, 1, "Array rank %u != 1", v61);
    goto LABEL_33;
  }

  v12 = v69;
  if (*(&v70 + 1))
  {
    goto LABEL_80;
  }

  v13 = v71;
  if (v71)
  {
    v14 = atomic_load(&v71[-1]);
    if (v14 != 1)
    {
      goto LABEL_80;
    }

    v13 = v71;
    v15 = v71[-1].f64[1];
  }

  else
  {
    v15 = 0.0;
  }

  if (v69 == *&v15)
  {
LABEL_80:
    v42 = v71;
    v43 = 1;
    do
    {
      v44 = v43;
      v43 *= 2;
    }

    while (v44 < v69 + 1);
    v45 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_AllocateNew(&v69, v44);
    v46 = v45;
    if (v12)
    {
      v47 = 24 * v12;
      v48 = v45;
      do
      {
        v49 = *v42;
        v48[1].f64[0] = v42[1].f64[0];
        *v48 = v49;
        v48 = (v48 + 24);
        v42 = (v42 + 24);
        v47 -= 24;
      }

      while (v47);
    }

    v50 = *&__sz[1];
    v51 = &v45->f64[3 * v12];
    v51[2] = __sz[3];
    *v51 = v50;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
LABEL_92:
    v71 = v46;
    goto LABEL_32;
  }

  v20 = *&__sz[1];
  v21 = v13 + 24 * v69;
  *(v21 + 16) = __sz[3];
  *v21 = v20;
LABEL_32:
  *&v69 = v69 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v64) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v66, v69);
  v23 = v66;
  if (v69)
  {
    v24 = v71;
    v25 = (v71 + 24 * v69);
    do
    {
      v26 = *v24;
      *&v26.f64[0] = vcvt_f32_f64(*v24);
      v27 = v24[1].f64[0];
      *&v26.f64[1] = v27;
      *v23++ = v26;
      v24 = (v24 + 24);
    }

    while (v24 != v25);
    v23 = v66;
  }

  if (!IsPrimvar)
  {
    goto LABEL_54;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v29 = Indices;
  if (Indices)
  {
    memset(&v77, 0, sizeof(v77));
    std::vector<int>::resize(&v77, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v30 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v31 = __sz[4] + 4 * __sz[0];
    if (v30 != v31)
    {
      begin = v77.__begin_;
      do
      {
        v33 = *v30++;
        *begin++ = v33;
      }

      while (v30 != v31);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v35 = REGeomModelDescriptorAddIndexedAttributeVector3F();
    if (v77.__begin_)
    {
      v77.__end_ = v77.__begin_;
      operator delete(v77.__begin_);
    }
  }

  else
  {
    v35 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v29 & 1) == 0)
  {
LABEL_54:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v37 = 1;
    }

    else
    {
      v37 = IsArray;
    }

    if ((v37 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v39 = IsScalar) : (v39 = 0), v39 == 1))
    {
      if (!a3)
      {
        v40 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v40 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v40 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3800](a1, a3, v11, v69, v23))
      {
        v35 = 1;
        goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

LABEL_71:
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v69);
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v74);
  if (v73)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v73);
  }

  return v35;
}

void sub_24756F2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a24);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a29);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2dEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, uint64_t *a4)
{
  v144 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v129, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v129);
  }

  else
  {
    v129 = 3;
    v130 = 0;
    v4 = &v129;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v132 = 0;
    v133 = 0;
    v12 = *a4;
    *__sz = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_185;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v142, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
      *&__sz[8] = v142;
      *&__sz[24] = *v143;
      *&__sz[39] = *&v143[15];
      v35 = v143[23];
      memset(v143, 0, sizeof(v143));
      __sz[0] = 0;
      __sz[47] = v35;
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v135, a2);
    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v16))
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v27);
    }

    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v135);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
    v134 = v28;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v34 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v34 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v142, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
      *&__sz[8] = v142;
      *&__sz[24] = *v143;
      *&__sz[39] = *&v143[15];
      v49 = v143[23];
      memset(v143, 0, sizeof(v143));
      __sz[0] = 0;
      __sz[47] = v49;
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v140.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(&v140))
      {
        v29 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(&v140);
        v30 = *(v29 + 16);
        v142 = *v29;
        *v143 = v30;
        v31 = *(v29 + 32);
        if (v31)
        {
          v32 = *&v143[8];
          if (!*&v143[8])
          {
            v32 = (v31 - 16);
          }

          atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v142;
        *&__sz[24] = *v143;
        v142 = 0u;
        memset(v143, 0, sizeof(v143));
        *&__sz[40] = v31;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v142);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v140);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(&v140))
        {
          v53 = &v140;
        }

        else
        {
          v53 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v140, &v142);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v142);
        }

        v74 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v139, v53);
        if (v139.__r_.__value_.__l.__size_)
        {
          v75 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(v74);
          v76 = *(v75 + 16);
          v142 = *v75;
          *v143 = v76;
          v77 = *(v75 + 32);
          if (v77)
          {
            v78 = *&v143[8];
            if (!*&v143[8])
            {
              v78 = (v77 - 16);
            }

            atomic_fetch_add_explicit(v78, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v142;
          *&__sz[24] = *v143;
          v142 = 0u;
          memset(v143, 0, sizeof(v143));
          *&__sz[40] = v77;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v142);
        }

        else
        {
          v79 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v79 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v79);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v142, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
          *&__sz[8] = v142;
          *&__sz[24] = *v143;
          *&__sz[39] = *&v143[15];
          v80 = v143[23];
          memset(v143, 0, sizeof(v143));
          __sz[0] = 0;
          __sz[47] = v80;
          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v139);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v141, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v142, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
      *&__sz[8] = v142;
      *&__sz[24] = *v143;
      *&__sz[39] = *&v143[15];
      v72 = v143[23];
      memset(v143, 0, sizeof(v143));
      __sz[0] = 0;
      __sz[47] = v72;
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v140);
LABEL_143:
        v81 = v136;
        if (v136 && atomic_fetch_add_explicit((v136 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v81 + 8))(v81);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v126);
          v126 = *&__sz[8];
          v127 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v128 = *&__sz[40];
          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = 4 * (v126 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,realityio::DetailedError>::~Result(__sz);
LABEL_185:
        v93 = 0;
        goto LABEL_186;
      }

      v71 = v141.__r_.__value_.__r.__words[0];
    }

    else
    {
      v41 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v41 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v41);
      }

      std::operator+<char>();
      v64 = std::string::append(&v137, ") at the given time: ");
      v65 = *&v64->__r_.__value_.__l.__data_;
      v139.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v139.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v138, v134);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v138;
      }

      else
      {
        v66 = v138.__r_.__value_.__r.__words[0];
      }

      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v138.__r_.__value_.__l.__size_;
      }

      v68 = std::string::append(&v139, v66, size);
      v69 = *&v68->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v142, 200, &realityio::FoundationErrorCategory(void)::instance, &v141);
      *&__sz[8] = v142;
      *&__sz[24] = *v143;
      *&__sz[39] = *&v143[15];
      v70 = v143[23];
      memset(v143, 0, sizeof(v143));
      __sz[0] = 0;
      __sz[47] = v70;
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v71 = v137.__r_.__value_.__r.__words[0];
    }

    operator delete(v71);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v142);
    v4 = *&__sz[16];
    v5 = __sz[39];
    memset(&__sz[16], 0, 24);
    if ((v143[7] & 0x80000000) != 0)
    {
      operator delete(v142);
    }

LABEL_90:
    v142 = 0uLL;
    if (DWORD2(v126))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2d, Args = <pxrInternal__aapl__pxrReserved__::GfVec2d>]";
      __sz[32] = 0;
      if (v127)
      {
        v108 = 4;
      }

      else
      {
        v108 = 3;
      }

      if (HIDWORD(v126))
      {
        v109 = v108;
      }

      else
      {
        v109 = 2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v109);
LABEL_99:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_151;
    }

    v59 = v126;
    if (*(&v127 + 1))
    {
      goto LABEL_195;
    }

    v60 = v128;
    if (v128)
    {
      v61 = atomic_load(v128 - 2);
      if (v61 != 1)
      {
        goto LABEL_195;
      }

      v60 = v128;
      v62 = *(v128 - 1);
    }

    else
    {
      v62 = 0;
    }

    if (v126 != v62)
    {
      *&v60[2 * v126] = v142;
LABEL_98:
      *&v126 = v126 + 1;
      goto LABEL_99;
    }

LABEL_195:
    v100 = v128;
    v101 = 1;
    do
    {
      v102 = v101;
      v101 *= 2;
    }

    while (v102 < v126 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v126, v102);
    v104 = New;
    if (v59)
    {
      v105 = 16 * v59;
      v106 = New;
      do
      {
        v107 = *v100;
        v100 += 2;
        *v106 = v107;
        v106 += 2;
        v105 -= 16;
      }

      while (v105);
    }

    *&New[2 * v59] = v142;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v126);
    v128 = v104;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v140, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v140);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v140);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v20);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v140);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v135 = v21;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v138.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2d>(&v138))
      {
        v22 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(&v138);
        v23 = *v22;
        v24 = v22[1];
        v25 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v138);
        goto LABEL_81;
      }

      v36 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v138);
      {
        v38 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2d>(&v138);
        v39 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v141, v38);
        v25 = v141.__r_.__value_.__l.__size_ != 0;
        if (v141.__r_.__value_.__l.__size_)
        {
          v40 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2d>(v39);
          v23 = *v40;
          v24 = v40[1];
        }

        else
        {
          v73 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v73 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v73);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v142);
          v23 = *__sz;
          v24 = *&__sz[8];
          v4 = *&__sz[16];
          v5 = __sz[39];
          memset(&__sz[16], 0, 24);
          if ((v143[7] & 0x80000000) != 0)
          {
            operator delete(v142);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v141);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v142, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v142);
      v23 = *__sz;
      v24 = *&__sz[8];
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((v143[7] & 0x80000000) == 0)
      {
LABEL_79:
        v25 = 0;
        goto LABEL_80;
      }

      v48 = v142;
    }

    else
    {
      v33 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v33 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
      }

      std::operator+<char>();
      v42 = std::string::append(&v139, ") at the given time: ");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v137, v135);
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v137;
      }

      else
      {
        v44 = v137.__r_.__value_.__r.__words[0];
      }

      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v137.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v141, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *v143 = *(&v46->__r_.__value_.__l + 2);
      v142 = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v142);
      v23 = *__sz;
      v24 = *&__sz[8];
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((v143[7] & 0x80000000) != 0)
      {
        operator delete(v142);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v48 = v139.__r_.__value_.__r.__words[0];
    }

    operator delete(v48);
    goto LABEL_79;
  }

  v26 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v26 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v142);
  v23 = *__sz;
  v24 = *&__sz[8];
  v4 = *&__sz[16];
  v5 = __sz[39];
  memset(&__sz[16], 0, 24);
  if ((v143[7] & 0x80000000) != 0)
  {
    operator delete(v142);
  }

  v25 = 0;
LABEL_81:
  type_name = v140.__type_name;
  if (v140.__type_name && atomic_fetch_add_explicit((v140.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v25)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v126))
  {
    v55 = v126;
    if (*(&v127 + 1))
    {
      goto LABEL_208;
    }

    v56 = v128;
    if (v128)
    {
      v57 = atomic_load(v128 - 2);
      if (v57 != 1)
      {
        goto LABEL_208;
      }

      v56 = v128;
      v58 = *(v128 - 1);
    }

    else
    {
      v58 = 0;
    }

    if (v126 != v58)
    {
      v63 = &v56[2 * v126];
      *v63 = v23;
      v63[1] = v24;
LABEL_104:
      *&v126 = v126 + 1;
      goto LABEL_151;
    }

LABEL_208:
    v110 = v128;
    v111 = 1;
    do
    {
      v112 = v111;
      v111 *= 2;
    }

    while (v112 < v126 + 1);
    v113 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(&v126, v112);
    v114 = v113;
    if (v55)
    {
      v115 = 16 * v55;
      v116 = v113;
      do
      {
        v117 = *v110;
        v110 += 2;
        *v116 = v117;
        v116 += 2;
        v115 -= 16;
      }

      while (v115);
    }

    v118 = &v113[2 * v55];
    *v118 = v23;
    v118[1] = v24;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v126);
    v128 = v114;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2d, Args = <const pxrInternal__aapl__pxrReserved__::GfVec2d &>]";
  __sz[32] = 0;
  if (v127)
  {
    v119 = 4;
  }

  else
  {
    v119 = 3;
  }

  if (HIDWORD(v126))
  {
    v120 = v119;
  }

  else
  {
    v120 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v120);
LABEL_151:
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v123, v126);
  v82 = v123;
  if (v126)
  {
    v83 = v128;
    v84 = 16 * v126;
    do
    {
      v85 = *v83++;
      *v82++ = vcvt_f32_f64(v85);
      v84 -= 16;
    }

    while (v84);
    v82 = v123;
  }

  if (!IsPrimvar)
  {
    goto LABEL_169;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v87 = Indices;
  if (Indices)
  {
    v142 = 0uLL;
    *v143 = 0;
    std::vector<int>::resize(&v142, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v88 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v89 = *&__sz[32] + 4 * *__sz;
    if (v88 != v89)
    {
      v90 = v142;
      do
      {
        v91 = *v88++;
        *v90++ = v91;
      }

      while (v88 != v89);
    }

    if (!a3)
    {
      v92 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v92 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v92);
      }
    }

    v93 = REGeomModelDescriptorAddIndexedAttributeVector2F();
    if (v142)
    {
      *(&v142 + 1) = v142;
      operator delete(v142);
    }
  }

  else
  {
    v93 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v87 & 1) == 0)
  {
LABEL_169:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v95 = 1;
    }

    else
    {
      v95 = IsArray;
    }

    if ((v95 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v97 = IsScalar) : (v97 = 0), v97 == 1))
    {
      if (!a3)
      {
        v98 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v98 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v98 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v98);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37F0](a1, a3, v13, v126, v82))
      {
        v93 = 1;
        goto LABEL_186;
      }
    }

    goto LABEL_185;
  }

LABEL_186:
  if (v123)
  {
    v124 = v123;
    operator delete(v123);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v126);
  if ((v133 & 7) != 0)
  {
    atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v131);
  if (v130)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v130);
  }

  return v93;
}

void sub_2475703CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec3hEDv3_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v113 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v100, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v100);
  }

  else
  {
    v100 = 3;
    v101 = 0;
    v4 = &v100;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v103 = 0;
    v104 = 0;
    v12 = *a4;
    __sz[0] = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(__sz, a2);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v97);
        v97 = *&__sz[1];
        v98 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v99 = v92;
        v92 = 0;
        if (v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = 4 * (v97 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_84;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_117:
    v61 = 0;
    goto LABEL_118;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v110);
    v4 = __sz[2];
    v5 = HIBYTE(__sz[4]);
    memset(&__sz[2], 0, 24);
    if (SHIBYTE(v110.__end_cap_.__value_) < 0)
    {
      operator delete(v110.__begin_);
    }

LABEL_69:
    WORD2(v110.__begin_) = 0;
    LODWORD(v110.__begin_) = 0;
    if (DWORD2(v97))
    {
      __sz[0] = "vt/array.h";
      __sz[1] = "emplace_back";
      __sz[2] = 416;
      __sz[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3h, Args = <pxrInternal__aapl__pxrReserved__::GfVec3h>]";
      LOBYTE(__sz[4]) = 0;
      if (v98)
      {
        v78 = 4;
      }

      else
      {
        v78 = 3;
      }

      if (HIDWORD(v97))
      {
        v79 = v78;
      }

      else
      {
        v79 = 2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v79);
LABEL_78:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_84;
    }

    v43 = v97;
    if (*(&v98 + 1))
    {
      goto LABEL_132;
    }

    v44 = v99;
    if (v99)
    {
      v45 = atomic_load(v99 - 2);
      if (v45 != 1)
      {
        goto LABEL_132;
      }

      v44 = v99;
      v46 = *(v99 - 1);
    }

    else
    {
      v46 = 0;
    }

    if (v97 != v46)
    {
      v47 = v44 + 6 * v97;
      *v47 = v110.__begin_;
      *(v47 + 4) = WORD2(v110.__begin_);
LABEL_77:
      *&v97 = v97 + 1;
      goto LABEL_78;
    }

LABEL_132:
    v69 = v99;
    v70 = 1;
    do
    {
      v71 = v70;
      v70 *= 2;
    }

    while (v71 < v97 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(&v97, v71);
    v73 = New;
    if (v43)
    {
      v74 = 6 * v43;
      v75 = New;
      do
      {
        v76 = *v69;
        *(v75 + 2) = *(v69 + 2);
        *v75 = v76;
        v75 = (v75 + 6);
        v69 = (v69 + 6);
        v74 -= 6;
      }

      while (v74);
    }

    v77 = New + 6 * v43;
    *v77 = v110.__begin_;
    *(v77 + 2) = WORD2(v110.__begin_);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v97);
    v99 = v73;
    goto LABEL_77;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v106, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v106);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v106);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v106);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v105 = v18;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v112.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3h>(&v112))
      {
        v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(&v112);
        v20 = *v19 | (*(v19 + 2) << 32);
        v21 = 1;
LABEL_59:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v112);
        goto LABEL_60;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v112);
      {
        v26 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3h>(&v112);
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v111, v26);
        v21 = v111.__r_.__value_.__l.__size_ != 0;
        if (v111.__r_.__value_.__l.__size_)
        {
          v28 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3h>(v27);
          v20 = *v28 | (*(v28 + 2) << 32);
        }

        else
        {
          v68 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v68 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v68);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v110);
          v20 = LODWORD(__sz[0]) | (WORD2(__sz[0]) << 32);
          v4 = __sz[2];
          v5 = HIBYTE(__sz[4]);
          memset(&__sz[2], 0, 24);
          if (SHIBYTE(v110.__end_cap_.__value_) < 0)
          {
            operator delete(v110.__begin_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v111);
        goto LABEL_59;
      }

      std::string::basic_string[abi:ne200100]<0>(&v110, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v110);
      v20 = LODWORD(__sz[0]) | (WORD2(__sz[0]) << 32);
      v4 = __sz[2];
      v5 = HIBYTE(__sz[4]);
      memset(&__sz[2], 0, 24);
      if ((SHIBYTE(v110.__end_cap_.__value_) & 0x80000000) == 0)
      {
LABEL_58:
        v21 = 0;
        goto LABEL_59;
      }

      begin = v110.__begin_;
    }

    else
    {
      v23 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v23 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
      }

      std::operator+<char>();
      v29 = std::string::append(&v109, ") at the given time: ");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v111.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v111.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v108, v105);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v108;
      }

      else
      {
        v31 = v108.__r_.__value_.__r.__words[0];
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v108.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v111, v31, size);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v110.__end_cap_.__value_ = v33->__r_.__value_.__r.__words[2];
      *&v110.__begin_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v110);
      v35 = WORD2(__sz[0]);
      v36 = LODWORD(__sz[0]);
      v4 = __sz[2];
      v5 = HIBYTE(__sz[4]);
      memset(&__sz[2], 0, 24);
      if (SHIBYTE(v110.__end_cap_.__value_) < 0)
      {
        operator delete(v110.__begin_);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      v20 = v36 | (v35 << 32);
      if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      begin = v109.__r_.__value_.__r.__words[0];
    }

    operator delete(begin);
    goto LABEL_58;
  }

  v22 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v22 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v110);
  v20 = LODWORD(__sz[0]) | (WORD2(__sz[0]) << 32);
  v4 = __sz[2];
  v5 = HIBYTE(__sz[4]);
  memset(&__sz[2], 0, 24);
  if (SHIBYTE(v110.__end_cap_.__value_) < 0)
  {
    operator delete(v110.__begin_);
  }

  v21 = 0;
LABEL_60:
  v38 = v107;
  if (v107 && atomic_fetch_add_explicit((v107 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v38 + 8))(v38);
  }

  if (!v21)
  {
    goto LABEL_69;
  }

  if (!DWORD2(v97))
  {
    v39 = v97;
    if (*(&v98 + 1))
    {
      goto LABEL_145;
    }

    v40 = v99;
    if (v99)
    {
      v41 = atomic_load(v99 - 2);
      if (v41 != 1)
      {
        goto LABEL_145;
      }

      v40 = v99;
      v42 = *(v99 - 1);
    }

    else
    {
      v42 = 0;
    }

    if (v97 != v42)
    {
      v48 = v40 + 6 * v97;
      *(v48 + 4) = WORD2(v20);
      *v48 = v20;
LABEL_83:
      *&v97 = v97 + 1;
      goto LABEL_84;
    }

LABEL_145:
    v80 = v99;
    v81 = 1;
    do
    {
      v82 = v81;
      v81 *= 2;
    }

    while (v82 < v97 + 1);
    v83 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(&v97, v82);
    v84 = v83;
    if (v39)
    {
      v85 = 6 * v39;
      v86 = v83;
      do
      {
        v87 = *v80;
        *(v86 + 2) = *(v80 + 2);
        *v86 = v87;
        v86 = (v86 + 6);
        v80 = (v80 + 6);
        v85 -= 6;
      }

      while (v85);
    }

    v88 = v83 + 6 * v39;
    *(v88 + 2) = WORD2(v20);
    *v88 = v20;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v97);
    v99 = v84;
    goto LABEL_83;
  }

  __sz[0] = "vt/array.h";
  __sz[1] = "emplace_back";
  __sz[2] = 416;
  __sz[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3h, Args = <const pxrInternal__aapl__pxrReserved__::GfVec3h &>]";
  LOBYTE(__sz[4]) = 0;
  if (v98)
  {
    v89 = 4;
  }

  else
  {
    v89 = 3;
  }

  if (HIDWORD(v97))
  {
    v90 = v89;
  }

  else
  {
    v90 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v90);
LABEL_84:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v94, v97);
  v50 = v94;
  if (v97)
  {
    v51 = v99;
    v52 = v99 + 3 * v97;
    v53 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v49) = *(v53 + 4 * *v51);
      DWORD1(v49) = *(v53 + 4 * v51[1]);
      DWORD2(v49) = *(v53 + 4 * v51[2]);
      *v50++ = v49;
      v51 += 3;
    }

    while (v51 != v52);
    v50 = v94;
  }

  if (!IsPrimvar)
  {
    goto LABEL_101;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v55 = Indices;
  if (Indices)
  {
    memset(&v110, 0, sizeof(v110));
    std::vector<int>::resize(&v110, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v56 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v57 = __sz[4] + 4 * __sz[0];
    if (v56 != v57)
    {
      v58 = v110.__begin_;
      do
      {
        v59 = *v56++;
        *v58++ = v59;
      }

      while (v56 != v57);
    }

    if (!a3)
    {
      v60 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v60 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v60);
      }
    }

    v61 = REGeomModelDescriptorAddIndexedAttributeVector3F();
    if (v110.__begin_)
    {
      v110.__end_ = v110.__begin_;
      operator delete(v110.__begin_);
    }
  }

  else
  {
    v61 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v55 & 1) == 0)
  {
LABEL_101:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v63 = 1;
    }

    else
    {
      v63 = IsArray;
    }

    if ((v63 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v65 = IsScalar) : (v65 = 0), v65 == 1))
    {
      if (!a3)
      {
        v66 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v66 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v66 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v66);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3800](a1, a3, v13, v97, v50))
      {
        v61 = 1;
        goto LABEL_118;
      }
    }

    goto LABEL_117;
  }

LABEL_118:
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v97);
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
  if (v101)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v101);
  }

  return v61;
}

void sub_247571188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v41 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v41 + 8))(v41, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec2hEDv2_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, uint64_t *a4)
{
  v140 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v125, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v125);
  }

  else
  {
    v125 = 3;
    v126 = 0;
    v4 = &v125;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v128 = 0;
    v129 = 0;
    v12 = *a4;
    *__sz = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_185;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      value_high = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = value_high;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v131, a2);
    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v131);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v16))
    {
      v25 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v131);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v25);
    }

    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v131);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
    v130 = v26;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v32 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v32 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      v46 = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = v46;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v136.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(&v136))
      {
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(&v136);
        v28 = *(v27 + 16);
        v138 = *v27;
        *&v139.__begin_ = v28;
        v29 = *(v27 + 32);
        if (v29)
        {
          end = v139.__end_;
          if (!v139.__end_)
          {
            end = (v29 - 16);
          }

          atomic_fetch_add_explicit(end, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v138;
        *&__sz[24] = *&v139.__begin_;
        v138 = 0u;
        memset(&v139, 0, sizeof(v139));
        *&__sz[40] = v29;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v138);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v136);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(&v136))
        {
          v50 = &v136;
        }

        else
        {
          v50 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v136, &v138);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v138);
        }

        v70 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v135, v50);
        if (v135.__r_.__value_.__l.__size_)
        {
          v71 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(v70);
          v72 = *(v71 + 16);
          v138 = *v71;
          *&v139.__begin_ = v72;
          v73 = *(v71 + 32);
          if (v73)
          {
            v74 = v139.__end_;
            if (!v139.__end_)
            {
              v74 = (v73 - 16);
            }

            atomic_fetch_add_explicit(v74, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v138;
          *&__sz[24] = *&v139.__begin_;
          v138 = 0u;
          memset(&v139, 0, sizeof(v139));
          *&__sz[40] = v73;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v138);
        }

        else
        {
          v75 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v75 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v75);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
          *&__sz[8] = v138;
          *&__sz[24] = v139.__begin_;
          *&__sz[32] = v139.__end_;
          *&__sz[39] = *(&v139.__end_ + 7);
          v76 = HIBYTE(v139.__end_cap_.__value_);
          memset(&v139, 0, sizeof(v139));
          __sz[0] = 0;
          __sz[47] = v76;
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v135);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v137, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      v68 = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = v68;
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v136);
LABEL_143:
        v77 = v132;
        if (v132 && atomic_fetch_add_explicit((v132 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v77 + 8))(v77);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
          v122 = *&__sz[8];
          v123 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v124 = *&__sz[40];
          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = 4 * (v122 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,realityio::DetailedError>::~Result(__sz);
LABEL_185:
        v90 = 0;
        goto LABEL_186;
      }

      v67 = v137.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v38 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
      }

      std::operator+<char>();
      v60 = std::string::append(&v133, ") at the given time: ");
      v61 = *&v60->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v134, v130);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v134;
      }

      else
      {
        v62 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v134.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v134.__r_.__value_.__l.__size_;
      }

      v64 = std::string::append(&v135, v62, size);
      v65 = *&v64->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      v66 = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = v66;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v67 = v133.__r_.__value_.__r.__words[0];
    }

    operator delete(v67);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
    v4 = *&__sz[16];
    v5 = __sz[39];
    memset(&__sz[16], 0, 24);
    if (SHIBYTE(v139.__begin_) < 0)
    {
      operator delete(v138);
    }

LABEL_90:
    if (DWORD2(v122))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2h, Args = <pxrInternal__aapl__pxrReserved__::GfVec2h>]";
      __sz[32] = 0;
      if (v123)
      {
        v105 = 4;
      }

      else
      {
        v105 = 3;
      }

      if (HIDWORD(v122))
      {
        v106 = v105;
      }

      else
      {
        v106 = 2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v106);
LABEL_99:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_151;
    }

    v56 = v122;
    if (*(&v123 + 1))
    {
      goto LABEL_195;
    }

    v57 = v124;
    if (v124)
    {
      v58 = atomic_load(v124 - 2);
      if (v58 != 1)
      {
        goto LABEL_195;
      }

      v57 = v124;
      v59 = *(v124 - 1);
    }

    else
    {
      v59 = 0;
    }

    if (v122 != v59)
    {
      *(v57 + v122) = 0;
LABEL_98:
      *&v122 = v122 + 1;
      goto LABEL_99;
    }

LABEL_195:
    v97 = v124;
    v98 = 1;
    do
    {
      v99 = v98;
      v98 *= 2;
    }

    while (v99 < v122 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v122, v99);
    v101 = New;
    if (v56)
    {
      v102 = 4 * v56;
      v103 = New;
      do
      {
        v104 = *v97;
        v97 = (v97 + 4);
        *v103 = v104;
        v103 = (v103 + 4);
        v102 -= 4;
      }

      while (v102);
    }

    *(New + v56) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
    v124 = v101;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v136, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v20);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v131 = v21;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v134.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2h>(&v134))
      {
        v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(&v134);
        v23 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v134);
        goto LABEL_81;
      }

      v34 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v134);
      {
        v36 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2h>(&v134);
        v37 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v137, v36);
        v23 = v137.__r_.__value_.__l.__size_ != 0;
        if (v137.__r_.__value_.__l.__size_)
        {
          v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2h>(v37);
        }

        else
        {
          v69 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v69 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v69);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
          v22 = *__sz;
          v4 = *&__sz[16];
          v5 = __sz[39];
          memset(&__sz[16], 0, 24);
          if (SHIBYTE(v139.__begin_) < 0)
          {
            operator delete(v138);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v137);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v138, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((SHIBYTE(v139.__begin_) & 0x80000000) == 0)
      {
LABEL_79:
        v23 = 0;
        goto LABEL_80;
      }

      v45 = v138;
    }

    else
    {
      v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v31 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
      }

      std::operator+<char>();
      v39 = std::string::append(&v135, ") at the given time: ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v133, v131);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v133;
      }

      else
      {
        v41 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v133.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v137, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v139.__begin_ = v43->__r_.__value_.__r.__words[2];
      v138 = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if (SHIBYTE(v139.__begin_) < 0)
      {
        operator delete(v138);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v45 = v135.__r_.__value_.__r.__words[0];
    }

    operator delete(v45);
    goto LABEL_79;
  }

  v24 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v24 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
  v22 = *__sz;
  v4 = *&__sz[16];
  v5 = __sz[39];
  memset(&__sz[16], 0, 24);
  if (SHIBYTE(v139.__begin_) < 0)
  {
    operator delete(v138);
  }

  v23 = 0;
LABEL_81:
  type_name = v136.__type_name;
  if (v136.__type_name && atomic_fetch_add_explicit((v136.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v23)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v122))
  {
    v52 = v122;
    if (*(&v123 + 1))
    {
      goto LABEL_208;
    }

    v53 = v124;
    if (v124)
    {
      v54 = atomic_load(v124 - 2);
      if (v54 != 1)
      {
        goto LABEL_208;
      }

      v53 = v124;
      v55 = *(v124 - 1);
    }

    else
    {
      v55 = 0;
    }

    if (v122 != v55)
    {
      *(v53 + v122) = v22;
LABEL_104:
      *&v122 = v122 + 1;
      goto LABEL_151;
    }

LABEL_208:
    v107 = v124;
    v108 = 1;
    do
    {
      v109 = v108;
      v108 *= 2;
    }

    while (v109 < v122 + 1);
    v110 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(&v122, v109);
    v111 = v110;
    if (v52)
    {
      v112 = 4 * v52;
      v113 = v110;
      do
      {
        v114 = *v107;
        v107 = (v107 + 4);
        *v113 = v114;
        v113 = (v113 + 4);
        v112 -= 4;
      }

      while (v112);
    }

    *(v110 + v52) = v22;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
    v124 = v111;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec2h, Args = <const pxrInternal__aapl__pxrReserved__::GfVec2h &>]";
  __sz[32] = 0;
  if (v123)
  {
    v115 = 4;
  }

  else
  {
    v115 = 3;
  }

  if (HIDWORD(v122))
  {
    v116 = v115;
  }

  else
  {
    v116 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v116);
LABEL_151:
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v119, v122);
  v78 = v119;
  if (v122)
  {
    v79 = v124;
    v80 = v124 + 2 * v122;
    v81 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v82) = *(v81 + 4 * *v79);
      HIDWORD(v82) = *(v81 + 4 * v79[1]);
      *v78++ = v82;
      v79 += 2;
    }

    while (v79 != v80);
    v78 = v119;
  }

  if (!IsPrimvar)
  {
    goto LABEL_169;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v84 = Indices;
  if (Indices)
  {
    v138 = 0uLL;
    v139.__begin_ = 0;
    std::vector<int>::resize(&v138, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v85 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v86 = *&__sz[32] + 4 * *__sz;
    if (v85 != v86)
    {
      v87 = v138;
      do
      {
        v88 = *v85++;
        *v87++ = v88;
      }

      while (v85 != v86);
    }

    if (!a3)
    {
      v89 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v89 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
      }
    }

    v90 = REGeomModelDescriptorAddIndexedAttributeVector2F();
    if (v138)
    {
      *(&v138 + 1) = v138;
      operator delete(v138);
    }
  }

  else
  {
    v90 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v84 & 1) == 0)
  {
LABEL_169:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v92 = 1;
    }

    else
    {
      v92 = IsArray;
    }

    if ((v92 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v94 = IsScalar) : (v94 = 0), v94 == 1))
    {
      if (!a3)
      {
        v95 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v95 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v95 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v95);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37F0](a1, a3, v13, v122, v78))
      {
        v90 = 1;
        goto LABEL_186;
      }
    }

    goto LABEL_185;
  }

LABEL_186:
  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v127);
  if (v126)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v126);
  }

  return v90;
}

void sub_247572360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v64, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v64);
  }

  else
  {
    v64 = 3;
    v65 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v67 = 0;
    v68 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
        v61 = *&__sz[1];
        v62 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v63 = v56;
        v56 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v61 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_37;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_71:
    v30 = 0;
    goto LABEL_72;
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    v72 = 0uLL;
    if (DWORD2(v61))
    {
      v69.__begin_ = "vt/array.h";
      v69.__end_ = "emplace_back";
      v69.__end_cap_.__value_ = 416;
      v70 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4f, Args = <pxrInternal__aapl__pxrReserved__::GfVec4f>]";
      v71 = 0;
      if (v62)
      {
        v54 = 4;
      }

      else
      {
        v54 = 3;
      }

      if (HIDWORD(v61))
      {
        v53 = v54;
      }

      else
      {
        v53 = 2;
      }

      goto LABEL_100;
    }

    v12 = v61;
    if (!*(&v62 + 1))
    {
      v13 = v63;
      if (!v63)
      {
        v17 = 0;
LABEL_30:
        if (v61 != v17)
        {
          v18 = v72;
          goto LABEL_32;
        }

        goto LABEL_87;
      }

      v16 = atomic_load(v63 - 2);
      if (v16 == 1)
      {
        v13 = v63;
        v17 = *(v63 - 1);
        goto LABEL_30;
      }
    }

LABEL_87:
    v45 = v63;
    v46 = 1;
    do
    {
      v47 = v46;
      v46 *= 2;
    }

    while (v47 < v61 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v61, v47);
    v41 = New;
    if (v12)
    {
      v49 = 16 * v12;
      v50 = New;
      do
      {
        v51 = *v45;
        v45 += 2;
        *v50 = v51;
        v50 += 2;
        v49 -= 16;
      }

      while (v49);
    }

    *&New[2 * v12] = v72;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
    goto LABEL_93;
  }

  if (DWORD2(v61))
  {
    v69.__begin_ = "vt/array.h";
    v69.__end_ = "emplace_back";
    v69.__end_cap_.__value_ = 416;
    v70 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4f, Args = <const pxrInternal__aapl__pxrReserved__::GfVec4f &>]";
    v71 = 0;
    if (v62)
    {
      v52 = 4;
    }

    else
    {
      v52 = 3;
    }

    if (HIDWORD(v61))
    {
      v53 = v52;
    }

    else
    {
      v53 = 2;
    }

LABEL_100:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v69, 1, "Array rank %u != 1", v53);
    goto LABEL_34;
  }

  v12 = v61;
  if (*(&v62 + 1))
  {
    goto LABEL_81;
  }

  v13 = v63;
  if (v63)
  {
    v14 = atomic_load(v63 - 2);
    if (v14 != 1)
    {
      goto LABEL_81;
    }

    v13 = v63;
    v15 = *(v63 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v61 == v15)
  {
LABEL_81:
    v37 = v63;
    v38 = 1;
    do
    {
      v39 = v38;
      v38 *= 2;
    }

    while (v39 < v61 + 1);
    v40 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(&v61, v39);
    v41 = v40;
    if (v12)
    {
      v42 = 16 * v12;
      v43 = v40;
      do
      {
        v44 = *v37;
        v37 += 2;
        *v43 = v44;
        v43 += 2;
        v42 -= 16;
      }

      while (v42);
    }

    *&v40[2 * v12] = *&__sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
LABEL_93:
    v63 = v41;
    goto LABEL_33;
  }

  v18 = *&__sz[1];
LABEL_32:
  *&v13[2 * v12] = v18;
LABEL_33:
  *&v61 = v61 + 1;
LABEL_34:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v56) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_37:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v58, v61);
  v19 = v58;
  if (v61)
  {
    v20 = v63;
    v21 = 16 * v61;
    do
    {
      v22 = *v20;
      v20 += 2;
      *v19++ = v22;
      v21 -= 16;
    }

    while (v21);
    v19 = v58;
  }

  if (!IsPrimvar)
  {
    goto LABEL_55;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v24 = Indices;
  if (Indices)
  {
    memset(&v69, 0, sizeof(v69));
    std::vector<int>::resize(&v69, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v25 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v26 = __sz[4] + 4 * __sz[0];
    if (v25 != v26)
    {
      begin = v69.__begin_;
      do
      {
        v28 = *v25++;
        *begin++ = v28;
      }

      while (v25 != v26);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v30 = REGeomModelDescriptorAddIndexedAttributeVector4F();
    if (v69.__begin_)
    {
      v69.__end_ = v69.__begin_;
      operator delete(v69.__begin_);
    }
  }

  else
  {
    v30 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v24 & 1) == 0)
  {
LABEL_55:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v32 = 1;
    }

    else
    {
      v32 = IsArray;
    }

    if ((v32 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v34 = IsScalar) : (v34 = 0), v34 == 1))
    {
      if (!a3)
      {
        v35 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v35 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v35 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3810](a1, a3, v11, v61, v19))
      {
        v30 = 1;
        goto LABEL_72;
      }
    }

    goto LABEL_71;
  }

LABEL_72:
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v61);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
  if (v65)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65);
  }

  return v30;
}

void sub_247572C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a24);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a30);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4dEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, uint64_t *a4)
{
  v154 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v139, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v139);
  }

  else
  {
    v139 = 3;
    v140 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v142 = 0;
    v143 = 0;
    v11 = *a4;
    *__sz = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v12 = realityio::meshAttributeRateForInterpolation(__sz, v10);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_185;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v152, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
      *&__sz[8] = v152;
      *&__sz[24] = *v153;
      *&__sz[39] = *&v153[15];
      v36 = v153[23];
      memset(v153, 0, sizeof(v153));
      __sz[0] = 0;
      __sz[47] = v36;
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v145, a2);
    v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v145);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v15))
    {
      v28 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v145);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v28);
    }

    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v145);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v16);
    __p = v29;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v35 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v35 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v152, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
      *&__sz[8] = v152;
      *&__sz[24] = *v153;
      *&__sz[39] = *&v153[15];
      v52 = v153[23];
      memset(v153, 0, sizeof(v153));
      __sz[0] = 0;
      __sz[47] = v52;
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v150.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(&v150))
      {
        v30 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(&v150);
        v31 = *(v30 + 16);
        v152 = *v30;
        *v153 = v31;
        v32 = *(v30 + 32);
        if (v32)
        {
          v33 = *&v153[8];
          if (!*&v153[8])
          {
            v33 = (v32 - 16);
          }

          atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v152;
        *&__sz[24] = *v153;
        v152 = 0u;
        memset(v153, 0, sizeof(v153));
        *&__sz[40] = v32;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v152);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v150);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(&v150))
        {
          v56 = &v150;
        }

        else
        {
          v56 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v150, &v152);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v152);
        }

        v79 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v149, v56);
        if (v149.__r_.__value_.__l.__size_)
        {
          v80 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(v79);
          v81 = *(v80 + 16);
          v152 = *v80;
          *v153 = v81;
          v82 = *(v80 + 32);
          if (v82)
          {
            v83 = *&v153[8];
            if (!*&v153[8])
            {
              v83 = (v82 - 16);
            }

            atomic_fetch_add_explicit(v83, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v152;
          *&__sz[24] = *v153;
          v152 = 0u;
          memset(v153, 0, sizeof(v153));
          *&__sz[40] = v82;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v152);
        }

        else
        {
          v84 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v84 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v84);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v152, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
          *&__sz[8] = v152;
          *&__sz[24] = *v153;
          *&__sz[39] = *&v153[15];
          v86 = v153[23];
          memset(v153, 0, sizeof(v153));
          __sz[0] = 0;
          __sz[47] = v86;
          if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v151.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v149);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v151, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v152, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
      *&__sz[8] = v152;
      *&__sz[24] = *v153;
      *&__sz[39] = *&v153[15];
      v77 = v153[23];
      memset(v153, 0, sizeof(v153));
      __sz[0] = 0;
      __sz[47] = v77;
      if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v150);
LABEL_143:
        v87 = v146;
        if (v146 && atomic_fetch_add_explicit((v146 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v87 + 8))(v87);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v136);
          v136 = *&__sz[8];
          v137 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v138 = *&__sz[40];
          if (v12)
          {
            v12 = v12;
          }

          else
          {
            v12 = 4 * (v136 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,realityio::DetailedError>::~Result(__sz);
LABEL_185:
        v100 = 0;
        goto LABEL_186;
      }

      v76 = v151.__r_.__value_.__r.__words[0];
    }

    else
    {
      v43 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v43 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v43);
      }

      std::operator+<char>();
      v69 = std::string::append(&v147, ") at the given time: ");
      v70 = *&v69->__r_.__value_.__l.__data_;
      v149.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&v149.__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v148, *&__p);
      if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v148;
      }

      else
      {
        v71 = v148.__r_.__value_.__r.__words[0];
      }

      if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v148.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v148.__r_.__value_.__l.__size_;
      }

      v73 = std::string::append(&v149, v71, size);
      v74 = *&v73->__r_.__value_.__l.__data_;
      v151.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&v151.__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v152, 200, &realityio::FoundationErrorCategory(void)::instance, &v151);
      *&__sz[8] = v152;
      *&__sz[24] = *v153;
      *&__sz[39] = *&v153[15];
      v75 = v153[23];
      memset(v153, 0, sizeof(v153));
      __sz[0] = 0;
      __sz[47] = v75;
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v148.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v76 = v147.__r_.__value_.__r.__words[0];
    }

    operator delete(v76);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v17 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v17 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v152);
    v27 = *&__sz[16];
    v4 = __sz[39];
    memset(&__sz[16], 0, 24);
    __p = v27;
    if ((v153[7] & 0x80000000) != 0)
    {
      operator delete(v152);
    }

LABEL_90:
    v152 = 0u;
    *v153 = 0u;
    if (DWORD2(v136))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4d, Args = <pxrInternal__aapl__pxrReserved__::GfVec4d>]";
      __sz[32] = 0;
      if (v137)
      {
        v117 = 4;
      }

      else
      {
        v117 = 3;
      }

      if (HIDWORD(v136))
      {
        v118 = v117;
      }

      else
      {
        v118 = 2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v118);
LABEL_99:
      if (v4 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_151;
    }

    v63 = v136;
    if (*(&v137 + 1))
    {
      goto LABEL_195;
    }

    v64 = v138;
    if (v138)
    {
      v65 = atomic_load(v138 - 2);
      if (v65 != 1)
      {
        goto LABEL_195;
      }

      v64 = v138;
      v66 = *(v138 - 1);
    }

    else
    {
      v66 = 0;
    }

    if (v136 != v66)
    {
      v67 = &v64[4 * v136];
      *v67 = v152;
      *(v67 + 1) = *v153;
LABEL_98:
      *&v136 = v136 + 1;
      goto LABEL_99;
    }

LABEL_195:
    v107 = v138;
    v108 = 1;
    do
    {
      v109 = v108;
      v108 *= 2;
    }

    while (v109 < v136 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v136, v109);
    v111 = New;
    if (v63)
    {
      v112 = 32 * v63;
      v113 = New;
      do
      {
        v114 = *v107;
        v115 = *(v107 + 1);
        v107 += 4;
        *v113 = v114;
        *(v113 + 1) = v115;
        v113 += 4;
        v112 -= 32;
      }

      while (v112);
    }

    v116 = &New[4 * v63];
    *v116 = v152;
    *(v116 + 1) = *v153;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v136);
    v138 = v111;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v150, a2);
  v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v150);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v13))
  {
    v19 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v150);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v19);
  }

  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v150);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v14);
  v145 = v20;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v148.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4d>(&v148))
      {
        v21 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(&v148);
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 24);
        __p = *(v21 + 16);
        v25 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v148);
        goto LABEL_81;
      }

      v38 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v148);
      {
        v40 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4d>(&v148);
        v41 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v151, v40);
        v25 = v151.__r_.__value_.__l.__size_ != 0;
        if (v151.__r_.__value_.__l.__size_)
        {
          v42 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4d>(v41);
          v22 = *v42;
          v23 = *(v42 + 8);
          v24 = *(v42 + 24);
          __p = *(v42 + 16);
        }

        else
        {
          v78 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v78 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v78);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v152);
          v22 = *__sz;
          v23 = *&__sz[8];
          v85 = *&__sz[16];
          v24 = *&__sz[24];
          v4 = __sz[39];
          memset(&__sz[16], 0, 24);
          __p = v85;
          if ((v153[7] & 0x80000000) != 0)
          {
            operator delete(v152);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v151);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v152, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v152);
      v22 = *__sz;
      v23 = *&__sz[8];
      v57 = *&__sz[16];
      v24 = *&__sz[24];
      v4 = __sz[39];
      memset(&__sz[16], 0, 24);
      __p = v57;
      if ((v153[7] & 0x80000000) == 0)
      {
LABEL_79:
        v25 = 0;
        goto LABEL_80;
      }

      v51 = v152;
    }

    else
    {
      v34 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v34 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v34);
      }

      std::operator+<char>();
      v44 = std::string::append(&v149, ") at the given time: ");
      v45 = *&v44->__r_.__value_.__l.__data_;
      v151.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v151.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v147, v145);
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v147;
      }

      else
      {
        v46 = v147.__r_.__value_.__r.__words[0];
      }

      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v147.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v151, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      *v153 = *(&v48->__r_.__value_.__l + 2);
      v152 = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v152);
      v22 = *__sz;
      v23 = *&__sz[8];
      v50 = *&__sz[16];
      v24 = *&__sz[24];
      v4 = __sz[39];
      memset(&__sz[16], 0, 24);
      __p = v50;
      if ((v153[7] & 0x80000000) != 0)
      {
        operator delete(v152);
      }

      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v147.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v51 = v149.__r_.__value_.__r.__words[0];
    }

    operator delete(v51);
    goto LABEL_79;
  }

  v26 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v26 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v152);
  v22 = *__sz;
  v23 = *&__sz[8];
  v37 = *&__sz[16];
  v24 = *&__sz[24];
  v4 = __sz[39];
  memset(&__sz[16], 0, 24);
  __p = v37;
  if ((v153[7] & 0x80000000) != 0)
  {
    operator delete(v152);
  }

  v25 = 0;
LABEL_81:
  type_name = v150.__type_name;
  if (v150.__type_name && atomic_fetch_add_explicit((v150.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v25)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v136))
  {
    v59 = v136;
    if (*(&v137 + 1))
    {
      goto LABEL_208;
    }

    v60 = v138;
    if (v138)
    {
      v61 = atomic_load(v138 - 2);
      if (v61 != 1)
      {
        goto LABEL_208;
      }

      v60 = v138;
      v62 = *(v138 - 1);
    }

    else
    {
      v62 = 0;
    }

    if (v136 != v62)
    {
      v68 = &v60[4 * v136];
      *v68 = v22;
      v68[1] = v23;
      v68[2] = __p;
      v68[3] = v24;
LABEL_104:
      *&v136 = v136 + 1;
      goto LABEL_151;
    }

LABEL_208:
    v119 = v138;
    v120 = 1;
    do
    {
      v121 = v120;
      v120 *= 2;
    }

    while (v121 < v136 + 1);
    v122 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(&v136, v121);
    v123 = v122;
    if (v59)
    {
      v124 = 32 * v59;
      v125 = v122;
      do
      {
        v126 = *v119;
        v127 = *(v119 + 1);
        v119 += 4;
        *v125 = v126;
        *(v125 + 1) = v127;
        v125 += 4;
        v124 -= 32;
      }

      while (v124);
    }

    v128 = &v122[4 * v59];
    *v128 = v22;
    v128[1] = v23;
    v128[2] = __p;
    v128[3] = v24;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v136);
    v138 = v123;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4d, Args = <const pxrInternal__aapl__pxrReserved__::GfVec4d &>]";
  __sz[32] = 0;
  if (v137)
  {
    v129 = 4;
  }

  else
  {
    v129 = 3;
  }

  if (HIDWORD(v136))
  {
    v130 = v129;
  }

  else
  {
    v130 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v130);
LABEL_151:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v133, v136);
  v88 = v133;
  if (v136)
  {
    v89 = v138;
    v90 = 32 * v136;
    do
    {
      v92 = *v89;
      v91 = v89[1];
      v89 += 2;
      *v88++ = vcvt_hight_f32_f64(vcvt_f32_f64(v92), v91);
      v90 -= 32;
    }

    while (v90);
    v88 = v133;
  }

  if (!IsPrimvar)
  {
    goto LABEL_169;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v94 = Indices;
  if (Indices)
  {
    v152 = 0uLL;
    *v153 = 0;
    std::vector<int>::resize(&v152, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v95 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v96 = *&__sz[32] + 4 * *__sz;
    if (v95 != v96)
    {
      v97 = v152;
      do
      {
        v98 = *v95++;
        *v97++ = v98;
      }

      while (v95 != v96);
    }

    if (!a3)
    {
      v99 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v99 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v99);
      }
    }

    v100 = REGeomModelDescriptorAddIndexedAttributeVector4F();
    if (v152)
    {
      *(&v152 + 1) = v152;
      operator delete(v152);
    }
  }

  else
  {
    v100 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v94 & 1) == 0)
  {
LABEL_169:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v12 == 4)
    {
      v102 = 1;
    }

    else
    {
      v102 = IsArray;
    }

    if ((v102 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v12) ? (v104 = IsScalar) : (v104 = 0), v104 == 1))
    {
      if (!a3)
      {
        v105 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v105 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v105 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v105);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3810](a1, a3, v12, v136, v88))
      {
        v100 = 1;
        goto LABEL_186;
      }
    }

    goto LABEL_185;
  }

LABEL_186:
  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v136);
  if ((v143 & 7) != 0)
  {
    atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v141);
  if (v140)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v140);
  }

  return v100;
}

void sub_247573DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t _ZN9realityio39convertAndAddAttributeToModelDescriptorIN32pxrInternal__aapl__pxrReserved__7GfVec4hEDv4_fEEbP21REGeomModelDescriptorRKNS1_12UsdAttributeEPKcRKNS1_7TfTokenEb(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, uint64_t *a4)
{
  v140 = *MEMORY[0x277D85DE8];
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v125, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v125);
  }

  else
  {
    v125 = 3;
    v126 = 0;
    v4 = &v125;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v128 = 0;
    v129 = 0;
    v12 = *a4;
    *__sz = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *__sz &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v13 = realityio::meshAttributeRateForInterpolation(__sz, v11);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__sz & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      goto LABEL_185;
    }

    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      value_high = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = value_high;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      goto LABEL_146;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v131, a2);
    v16 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v131);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v16))
    {
      v25 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v131);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v25);
    }

    v17 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v131);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v17);
    v130 = v26;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
    {
      v32 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v32 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      v46 = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = v46;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      goto LABEL_143;
    }

    v136.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(&v136))
      {
        v27 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(&v136);
        v28 = *(v27 + 16);
        v138 = *v27;
        *&v139.__begin_ = v28;
        v29 = *(v27 + 32);
        if (v29)
        {
          end = v139.__end_;
          if (!v139.__end_)
          {
            end = (v29 - 16);
          }

          atomic_fetch_add_explicit(end, 1uLL, memory_order_relaxed);
        }

        __sz[0] = 1;
        *&__sz[8] = v138;
        *&__sz[24] = *&v139.__begin_;
        v138 = 0u;
        memset(&v139, 0, sizeof(v139));
        *&__sz[40] = v29;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v138);
        goto LABEL_142;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v136);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(&v136))
        {
          v50 = &v136;
        }

        else
        {
          v50 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v136, &v138);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v138);
        }

        v70 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v135, v50);
        if (v135.__r_.__value_.__l.__size_)
        {
          v71 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(v70);
          v72 = *(v71 + 16);
          v138 = *v71;
          *&v139.__begin_ = v72;
          v73 = *(v71 + 32);
          if (v73)
          {
            v74 = v139.__end_;
            if (!v139.__end_)
            {
              v74 = (v73 - 16);
            }

            atomic_fetch_add_explicit(v74, 1uLL, memory_order_relaxed);
          }

          __sz[0] = 1;
          *&__sz[8] = v138;
          *&__sz[24] = *&v139.__begin_;
          v138 = 0u;
          memset(&v139, 0, sizeof(v139));
          *&__sz[40] = v73;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v138);
        }

        else
        {
          v75 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v75 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v75);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
          *&__sz[8] = v138;
          *&__sz[24] = v139.__begin_;
          *&__sz[32] = v139.__end_;
          *&__sz[39] = *(&v139.__end_ + 7);
          v76 = HIBYTE(v139.__end_cap_.__value_);
          memset(&v139, 0, sizeof(v139));
          __sz[0] = 0;
          __sz[47] = v76;
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v135);
        goto LABEL_142;
      }

      std::string::basic_string[abi:ne200100]<0>(&v137, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      v68 = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = v68;
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_142:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v136);
LABEL_143:
        v77 = v132;
        if (v132 && atomic_fetch_add_explicit((v132 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v77 + 8))(v77);
        }

LABEL_146:
        if (__sz[0] == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
          v122 = *&__sz[8];
          v123 = *&__sz[24];
          memset(&__sz[8], 0, 40);
          v124 = *&__sz[40];
          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = 4 * (v122 > 1);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,realityio::DetailedError>::~Result(__sz);
          goto LABEL_151;
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,realityio::DetailedError>::~Result(__sz);
LABEL_185:
        v90 = 0;
        goto LABEL_186;
      }

      v67 = v137.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v38 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
      }

      std::operator+<char>();
      v60 = std::string::append(&v133, ") at the given time: ");
      v61 = *&v60->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v134, v130);
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &v134;
      }

      else
      {
        v62 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v134.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v134.__r_.__value_.__l.__size_;
      }

      v64 = std::string::append(&v135, v62, size);
      v65 = *&v64->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v138, 200, &realityio::FoundationErrorCategory(void)::instance, &v137);
      *&__sz[8] = v138;
      *&__sz[24] = v139.__begin_;
      *&__sz[32] = v139.__end_;
      *&__sz[39] = *(&v139.__end_ + 7);
      v66 = HIBYTE(v139.__end_cap_.__value_);
      memset(&v139, 0, sizeof(v139));
      __sz[0] = 0;
      __sz[47] = v66;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      v67 = v133.__r_.__value_.__r.__words[0];
    }

    operator delete(v67);
    goto LABEL_142;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
    if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
    v4 = *&__sz[16];
    v5 = __sz[39];
    memset(&__sz[16], 0, 24);
    if (SHIBYTE(v139.__begin_) < 0)
    {
      operator delete(v138);
    }

LABEL_90:
    if (DWORD2(v122))
    {
      *__sz = "vt/array.h";
      *&__sz[8] = "emplace_back";
      *&__sz[16] = 416;
      *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4h, Args = <pxrInternal__aapl__pxrReserved__::GfVec4h>]";
      __sz[32] = 0;
      if (v123)
      {
        v105 = 4;
      }

      else
      {
        v105 = 3;
      }

      if (HIDWORD(v122))
      {
        v106 = v105;
      }

      else
      {
        v106 = 2;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v106);
LABEL_99:
      if (v5 < 0)
      {
        operator delete(v4);
      }

      goto LABEL_151;
    }

    v56 = v122;
    if (*(&v123 + 1))
    {
      goto LABEL_195;
    }

    v57 = v124;
    if (v124)
    {
      v58 = atomic_load(v124 - 2);
      if (v58 != 1)
      {
        goto LABEL_195;
      }

      v57 = v124;
      v59 = *(v124 - 1);
    }

    else
    {
      v59 = 0;
    }

    if (v122 != v59)
    {
      v57[v122] = 0;
LABEL_98:
      *&v122 = v122 + 1;
      goto LABEL_99;
    }

LABEL_195:
    v97 = v124;
    v98 = 1;
    do
    {
      v99 = v98;
      v98 *= 2;
    }

    while (v99 < v122 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v122, v99);
    v101 = New;
    if (v56)
    {
      v102 = 8 * v56;
      v103 = New;
      do
      {
        v104 = *v97++;
        *v103++ = v104;
        v102 -= 8;
      }

      while (v102);
    }

    New[v56] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
    v124 = v101;
    goto LABEL_98;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v136, a2);
  v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v14))
  {
    v20 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v20);
  }

  v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v136);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v15);
  v131 = v21;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    v134.__r_.__value_.__l.__size_ = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4h>(&v134))
      {
        v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(&v134);
        v23 = 1;
LABEL_80:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v134);
        goto LABEL_81;
      }

      v34 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v134);
      {
        v36 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4h>(&v134);
        v37 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v137, v36);
        v23 = v137.__r_.__value_.__l.__size_ != 0;
        if (v137.__r_.__value_.__l.__size_)
        {
          v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4h>(v37);
        }

        else
        {
          v69 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
          if ((*v69 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v69);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
          v22 = *__sz;
          v4 = *&__sz[16];
          v5 = __sz[39];
          memset(&__sz[16], 0, 24);
          if (SHIBYTE(v139.__begin_) < 0)
          {
            operator delete(v138);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v137);
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(&v138, "Value is not of the given type");
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if ((SHIBYTE(v139.__begin_) & 0x80000000) == 0)
      {
LABEL_79:
        v23 = 0;
        goto LABEL_80;
      }

      v45 = v138;
    }

    else
    {
      v31 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v31 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v31);
      }

      std::operator+<char>();
      v39 = std::string::append(&v135, ") at the given time: ");
      v40 = *&v39->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v133, v131);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v133;
      }

      else
      {
        v41 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v133.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v137, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v139.__begin_ = v43->__r_.__value_.__r.__words[2];
      v138 = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
      v22 = *__sz;
      v4 = *&__sz[16];
      v5 = __sz[39];
      memset(&__sz[16], 0, 24);
      if (SHIBYTE(v139.__begin_) < 0)
      {
        operator delete(v138);
      }

      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      v45 = v135.__r_.__value_.__r.__words[0];
    }

    operator delete(v45);
    goto LABEL_79;
  }

  v24 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*v24 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v24);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(__sz, 200, &realityio::FoundationErrorCategory(void)::instance, &v138);
  v22 = *__sz;
  v4 = *&__sz[16];
  v5 = __sz[39];
  memset(&__sz[16], 0, 24);
  if (SHIBYTE(v139.__begin_) < 0)
  {
    operator delete(v138);
  }

  v23 = 0;
LABEL_81:
  type_name = v136.__type_name;
  if (v136.__type_name && atomic_fetch_add_explicit((v136.__type_name + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*type_name + 8))(type_name);
  }

  if (!v23)
  {
    goto LABEL_90;
  }

  if (!DWORD2(v122))
  {
    v52 = v122;
    if (*(&v123 + 1))
    {
      goto LABEL_208;
    }

    v53 = v124;
    if (v124)
    {
      v54 = atomic_load(v124 - 2);
      if (v54 != 1)
      {
        goto LABEL_208;
      }

      v53 = v124;
      v55 = *(v124 - 1);
    }

    else
    {
      v55 = 0;
    }

    if (v122 != v55)
    {
      v53[v122] = v22;
LABEL_104:
      *&v122 = v122 + 1;
      goto LABEL_151;
    }

LABEL_208:
    v107 = v124;
    v108 = 1;
    do
    {
      v109 = v108;
      v108 *= 2;
    }

    while (v109 < v122 + 1);
    v110 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(&v122, v109);
    v111 = v110;
    if (v52)
    {
      v112 = 8 * v52;
      v113 = v110;
      do
      {
        v114 = *v107++;
        *v113++ = v114;
        v112 -= 8;
      }

      while (v112);
    }

    v110[v52] = v22;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
    v124 = v111;
    goto LABEL_104;
  }

  *__sz = "vt/array.h";
  *&__sz[8] = "emplace_back";
  *&__sz[16] = 416;
  *&__sz[24] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec4h, Args = <const pxrInternal__aapl__pxrReserved__::GfVec4h &>]";
  __sz[32] = 0;
  if (v123)
  {
    v115 = 4;
  }

  else
  {
    v115 = 3;
  }

  if (HIDWORD(v122))
  {
    v116 = v115;
  }

  else
  {
    v116 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__sz, 1, "Array rank %u != 1", v116);
LABEL_151:
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v119, v122);
  v78 = v119;
  if (v122)
  {
    v79 = v124;
    v80 = &v124[v122];
    v81 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v82) = *(v81 + 4 * *v79);
      DWORD1(v82) = *(v81 + 4 * v79[1]);
      DWORD2(v82) = *(v81 + 4 * v79[2]);
      HIDWORD(v82) = *(v81 + 4 * v79[3]);
      *v78++ = v82;
      v79 += 4;
    }

    while (v79 != v80);
    v78 = v119;
  }

  if (!IsPrimvar)
  {
    goto LABEL_169;
  }

  memset(__sz, 0, 40);
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v84 = Indices;
  if (Indices)
  {
    v138 = 0uLL;
    v139.__begin_ = 0;
    std::vector<int>::resize(&v138, *__sz);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v85 = *&__sz[32];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v86 = *&__sz[32] + 4 * *__sz;
    if (v85 != v86)
    {
      v87 = v138;
      do
      {
        v88 = *v85++;
        *v87++ = v88;
      }

      while (v85 != v86);
    }

    if (!a3)
    {
      v89 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*v89 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
      }
    }

    v90 = REGeomModelDescriptorAddIndexedAttributeVector4F();
    if (v138)
    {
      *(&v138 + 1) = v138;
      operator delete(v138);
    }
  }

  else
  {
    v90 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v84 & 1) == 0)
  {
LABEL_169:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v13 == 4)
    {
      v92 = 1;
    }

    else
    {
      v92 = IsArray;
    }

    if ((v92 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v13) ? (v94 = IsScalar) : (v94 = 0), v94 == 1))
    {
      if (!a3)
      {
        v95 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v95 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v95 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v95);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A3810](a1, a3, v13, v122, v78))
      {
        v90 = 1;
        goto LABEL_186;
      }
    }

    goto LABEL_185;
  }

LABEL_186:
  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v122);
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v127);
  if (v126)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v126);
  }

  return v90;
}

void sub_247575058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a34;
  if (a34 && atomic_fetch_add_explicit((a34 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v47 + 8))(v47, a2, a3, a4, a5, a6, a7, a8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a21);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a26);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<int,int>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v47, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v47);
  }

  else
  {
    v47 = 3;
    v48 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v50 = 0;
    v51 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
        v44 = *&__sz[1];
        v45 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v46 = v42;
        v42 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v44 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_29;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_59:
    v24 = 0;
    goto LABEL_60;
  }

  realityio::getAttributeValue<int>(a2, __sz);
  if (LOBYTE(__sz[0]) == 1)
  {
    if (!DWORD2(v44))
    {
      v12 = v44;
      if (*(&v45 + 1))
      {
        goto LABEL_67;
      }

      v13 = v46;
      if (v46)
      {
        v14 = atomic_load(v46 - 2);
        if (v14 != 1)
        {
          goto LABEL_67;
        }

        v13 = v46;
        v15 = *(v46 - 1);
      }

      else
      {
        v15 = 0;
      }

      if (v44 != v15)
      {
        *(v13 + v44) = __sz[1];
LABEL_25:
        *&v44 = v44 + 1;
        goto LABEL_26;
      }

LABEL_67:
      v31 = v46;
      v32 = 1;
      do
      {
        v33 = v32;
        v32 *= 2;
      }

      while (v33 < v44 + 1);
      New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(&v44, v33);
      v35 = New;
      if (v12)
      {
        v36 = 4 * v12;
        v37 = New;
        do
        {
          v38 = *v31;
          v31 = (v31 + 4);
          *v37 = v38;
          v37 = (v37 + 4);
          v36 -= 4;
        }

        while (v36);
      }

      *(New + v12) = __sz[1];
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
      v46 = v35;
      goto LABEL_25;
    }

    v52.__begin_ = "vt/array.h";
    v52.__end_ = "emplace_back";
    v52.__end_cap_.__value_ = 416;
    v53 = "void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back(Args &&...) [T = int, Args = <const int &>]";
    v54 = 0;
    if (v45)
    {
      v39 = 4;
    }

    else
    {
      v39 = 3;
    }

    if (HIDWORD(v44))
    {
      v40 = v39;
    }

    else
    {
      v40 = 2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v52, 1, "Array rank %u != 1", v40);
  }

  else
  {
    LODWORD(v52.__begin_) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back<int>(&v44, &v52);
  }

LABEL_26:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v42) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_29:
  v16 = v46;
  if (!IsPrimvar)
  {
    goto LABEL_43;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v18 = Indices;
  if (Indices)
  {
    memset(&v52, 0, sizeof(v52));
    std::vector<int>::resize(&v52, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v19 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v20 = __sz[4] + 4 * __sz[0];
    if (v19 != v20)
    {
      begin = v52.__begin_;
      do
      {
        v22 = *v19++;
        *begin++ = v22;
      }

      while (v19 != v20);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v24 = REGeomModelDescriptorAddIndexedAttributeInt32();
    if (v52.__begin_)
    {
      v52.__end_ = v52.__begin_;
      operator delete(v52.__begin_);
    }
  }

  else
  {
    v24 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v18 & 1) == 0)
  {
LABEL_43:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v26 = 1;
    }

    else
    {
      v26 = IsArray;
    }

    if ((v26 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v28 = IsScalar) : (v28 = 0), v28 == 1))
    {
      if (!a3)
      {
        v29 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v29 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v29 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37A0](a1, a3, v11, v44, v16))
      {
        v24 = 1;
        goto LABEL_60;
      }
    }

    goto LABEL_59;
  }

LABEL_60:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v44);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v48);
  }

  return v24;
}

void sub_2475757AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<unsigned int,unsigned int>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v59, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v59);
  }

  else
  {
    v59 = 3;
    v60 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v62 = 0;
    v63 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
        v56 = *&__sz[1];
        v57 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v58 = v54;
        v54 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v56 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_66:
    v28 = 0;
    goto LABEL_67;
  }

  realityio::getAttributeValue<unsigned int>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v56))
    {
      v64.__begin_ = "vt/array.h";
      v64.__end_ = "emplace_back";
      v64.__end_cap_.__value_ = 416;
      v65 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::emplace_back(Args &&...) [T = unsigned int, Args = <unsigned int>]";
      v66 = 0;
      if (v57)
      {
        v52 = 4;
      }

      else
      {
        v52 = 3;
      }

      if (HIDWORD(v56))
      {
        v51 = v52;
      }

      else
      {
        v51 = 2;
      }

      goto LABEL_93;
    }

    v16 = v56;
    if (!*(&v57 + 1))
    {
      v17 = v58;
      if (!v58)
      {
        v19 = 0;
LABEL_30:
        if (v56 != v19)
        {
          *(v17 + v56) = 0;
          goto LABEL_32;
        }

        goto LABEL_80;
      }

      v18 = atomic_load(v58 - 2);
      if (v18 == 1)
      {
        v17 = v58;
        v19 = *(v58 - 1);
        goto LABEL_30;
      }
    }

LABEL_80:
    v43 = v58;
    v44 = 1;
    do
    {
      v45 = v44;
      v44 *= 2;
    }

    while (v45 < v56 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v56, v45);
    v39 = New;
    if (v16)
    {
      v47 = 4 * v16;
      v48 = New;
      do
      {
        v49 = *v43;
        v43 = (v43 + 4);
        *v48 = v49;
        v48 = (v48 + 4);
        v47 -= 4;
      }

      while (v47);
    }

    *(New + v16) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
    goto LABEL_86;
  }

  if (DWORD2(v56))
  {
    v64.__begin_ = "vt/array.h";
    v64.__end_ = "emplace_back";
    v64.__end_cap_.__value_ = 416;
    v65 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::emplace_back(Args &&...) [T = unsigned int, Args = <const unsigned int &>]";
    v66 = 0;
    if (v57)
    {
      v50 = 4;
    }

    else
    {
      v50 = 3;
    }

    if (HIDWORD(v56))
    {
      v51 = v50;
    }

    else
    {
      v51 = 2;
    }

LABEL_93:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 1, "Array rank %u != 1", v51);
    goto LABEL_33;
  }

  v12 = v56;
  if (*(&v57 + 1))
  {
    goto LABEL_74;
  }

  v13 = v58;
  if (v58)
  {
    v14 = atomic_load(v58 - 2);
    if (v14 != 1)
    {
      goto LABEL_74;
    }

    v13 = v58;
    v15 = *(v58 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v56 == v15)
  {
LABEL_74:
    v35 = v58;
    v36 = 1;
    do
    {
      v37 = v36;
      v36 *= 2;
    }

    while (v37 < v56 + 1);
    v38 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(&v56, v37);
    v39 = v38;
    if (v12)
    {
      v40 = 4 * v12;
      v41 = v38;
      do
      {
        v42 = *v35;
        v35 = (v35 + 4);
        *v41 = v42;
        v41 = (v41 + 4);
        v40 -= 4;
      }

      while (v40);
    }

    *(v38 + v12) = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
LABEL_86:
    v58 = v39;
    goto LABEL_32;
  }

  *(v13 + v56) = __sz[1];
LABEL_32:
  *&v56 = v56 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v54) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  v20 = v58;
  if (!IsPrimvar)
  {
    goto LABEL_50;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v22 = Indices;
  if (Indices)
  {
    memset(&v64, 0, sizeof(v64));
    std::vector<int>::resize(&v64, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v23 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v24 = __sz[4] + 4 * __sz[0];
    if (v23 != v24)
    {
      begin = v64.__begin_;
      do
      {
        v26 = *v23++;
        *begin++ = v26;
      }

      while (v23 != v24);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v28 = REGeomModelDescriptorAddIndexedAttributeUInt32();
    if (v64.__begin_)
    {
      v64.__end_ = v64.__begin_;
      operator delete(v64.__begin_);
    }
  }

  else
  {
    v28 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v22 & 1) == 0)
  {
LABEL_50:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v30 = 1;
    }

    else
    {
      v30 = IsArray;
    }

    if ((v30 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v32 = IsScalar) : (v32 = 0), v32 == 1))
    {
      if (!a3)
      {
        v33 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v33 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v33 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37D0](a1, a3, v11, v56, v20))
      {
        v28 = 1;
        goto LABEL_67;
      }
    }

    goto LABEL_66;
  }

LABEL_67:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
  }

  return v28;
}

void sub_247575E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a11 & 1) == 0 && a19 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a22);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::~UsdGeomPrimvar(&a27);
  _Unwind_Resume(a1);
}

uint64_t realityio::convertAndAddAttributeToModelDescriptor<unsigned char,unsigned char>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar *a2, unint64_t a3, std::vector<unsigned int>::size_type *a4)
{
  IsPrimvar = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar();
  if (IsPrimvar)
  {
    MEMORY[0x24C1A5200](&v59, a2);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetInterpolation(__sz, &v59);
  }

  else
  {
    v59 = 3;
    v60 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v62 = 0;
    v63 = 0;
    v10 = *a4;
    __sz[0] = v10;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      __sz[0] &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  v11 = realityio::meshAttributeRateForInterpolation(__sz, v9);
  if ((__sz[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__sz[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  if (!pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName))
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(a2, __sz);
      if (LOBYTE(__sz[0]) == 1)
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
        v56 = *&__sz[1];
        v57 = *&__sz[3];
        memset(&__sz[1], 0, 32);
        v58 = v54;
        v54 = 0;
        if (v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = 4 * (v56 > 1);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(__sz);
        goto LABEL_36;
      }

      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(__sz);
    }

LABEL_66:
    v28 = 0;
    goto LABEL_67;
  }

  realityio::getAttributeValue<unsigned char>(a2, __sz);
  if (LOBYTE(__sz[0]) != 1)
  {
    if (DWORD2(v56))
    {
      v64.__begin_ = "vt/array.h";
      v64.__end_ = "emplace_back";
      v64.__end_cap_.__value_ = 416;
      v65 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::emplace_back(Args &&...) [T = unsigned char, Args = <unsigned char>]";
      v66 = 0;
      if (v57)
      {
        v52 = 4;
      }

      else
      {
        v52 = 3;
      }

      if (HIDWORD(v56))
      {
        v51 = v52;
      }

      else
      {
        v51 = 2;
      }

      goto LABEL_93;
    }

    v16 = v56;
    if (!*(&v57 + 1))
    {
      v17 = v58;
      if (!v58)
      {
        v19 = 0;
LABEL_30:
        if (v56 != v19)
        {
          *(v17 + v56) = 0;
          goto LABEL_32;
        }

        goto LABEL_80;
      }

      v18 = atomic_load(v58 - 2);
      if (v18 == 1)
      {
        v17 = v58;
        v19 = *(v58 - 1);
        goto LABEL_30;
      }
    }

LABEL_80:
    v43 = v58;
    v44 = 1;
    do
    {
      v45 = v44;
      v44 *= 2;
    }

    while (v45 < v56 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v56, v45);
    v39 = New;
    if (v16)
    {
      v47 = v16;
      v48 = New;
      do
      {
        v49 = *v43;
        v43 = (v43 + 1);
        *v48 = v49;
        v48 = (v48 + 1);
        --v47;
      }

      while (v47);
    }

    *(New + v16) = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
    goto LABEL_86;
  }

  if (DWORD2(v56))
  {
    v64.__begin_ = "vt/array.h";
    v64.__end_ = "emplace_back";
    v64.__end_cap_.__value_ = 416;
    v65 = "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::emplace_back(Args &&...) [T = unsigned char, Args = <const unsigned char &>]";
    v66 = 0;
    if (v57)
    {
      v50 = 4;
    }

    else
    {
      v50 = 3;
    }

    if (HIDWORD(v56))
    {
      v51 = v50;
    }

    else
    {
      v51 = 2;
    }

LABEL_93:
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v64, 1, "Array rank %u != 1", v51);
    goto LABEL_33;
  }

  v12 = v56;
  if (*(&v57 + 1))
  {
    goto LABEL_74;
  }

  v13 = v58;
  if (v58)
  {
    v14 = atomic_load(v58 - 2);
    if (v14 != 1)
    {
      goto LABEL_74;
    }

    v13 = v58;
    v15 = *(v58 - 1);
  }

  else
  {
    v15 = 0;
  }

  if (v56 == v15)
  {
LABEL_74:
    v35 = v58;
    v36 = 1;
    do
    {
      v37 = v36;
      v36 *= 2;
    }

    while (v37 < v56 + 1);
    v38 = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(&v56, v37);
    v39 = v38;
    if (v12)
    {
      v40 = v12;
      v41 = v38;
      do
      {
        v42 = *v35;
        v35 = (v35 + 1);
        *v41 = v42;
        v41 = (v41 + 1);
        --v40;
      }

      while (v40);
    }

    *(v38 + v12) = __sz[1];
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
LABEL_86:
    v58 = v39;
    goto LABEL_32;
  }

  *(v13 + v56) = __sz[1];
LABEL_32:
  *&v56 = v56 + 1;
LABEL_33:
  if ((__sz[0] & 1) == 0 && SHIBYTE(v54) < 0)
  {
    operator delete(__sz[3]);
  }

LABEL_36:
  v20 = v58;
  if (!IsPrimvar)
  {
    goto LABEL_50;
  }

  memset(__sz, 0, sizeof(__sz));
  Indices = pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::GetIndices();
  v22 = Indices;
  if (Indices)
  {
    memset(&v64, 0, sizeof(v64));
    std::vector<int>::resize(&v64, __sz[0]);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v23 = __sz[4];
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(__sz);
    v24 = __sz[4] + 4 * __sz[0];
    if (v23 != v24)
    {
      begin = v64.__begin_;
      do
      {
        v26 = *v23++;
        *begin++ = v26;
      }

      while (v23 != v24);
    }

    if (!a3)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }
    }

    v28 = REGeomModelDescriptorAddIndexedAttributeUInt8();
    if (v64.__begin_)
    {
      v64.__end_ = v64.__begin_;
      operator delete(v64.__begin_);
    }
  }

  else
  {
    v28 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__sz);
  if ((v22 & 1) == 0)
  {
LABEL_50:
    IsArray = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsArray(&TypeName);
    if (v11 == 4)
    {
      v30 = 1;
    }

    else
    {
      v30 = IsArray;
    }

    if ((v30 & 1) != 0 || ((IsScalar = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::IsScalar(&TypeName), !v11) ? (v32 = IsScalar) : (v32 = 0), v32 == 1))
    {
      if (!a3)
      {
        v33 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
        a3 = (*v33 & 0xFFFFFFFFFFFFFFF8) != 0 ? (*v33 & 0xFFFFFFFFFFFFFFF8) + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }
      }

      if (MEMORY[0x24C1A37E0](a1, a3, v11, v56, v20))
      {
        v28 = 1;
        goto LABEL_67;
      }
    }

    goto LABEL_66;
  }

LABEL_67:
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v56);
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
  }

  return v28;
}