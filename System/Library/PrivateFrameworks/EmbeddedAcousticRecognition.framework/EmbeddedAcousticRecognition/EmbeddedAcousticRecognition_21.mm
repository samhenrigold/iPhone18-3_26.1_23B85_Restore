void sub_1B51869F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  quasar::SystemConfig::~SystemConfig(&a50);

  sdapi::SdapiUtil::LocaleInfo::~LocaleInfo(&STACK[0x700]);
  std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::destroy(v57 - 136, *(v57 - 128));

  _Unwind_Resume(a1);
}

void sub_1B5186CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v21 - 40) = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v19, v18);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::LmeDataFactory>::operator=[abi:ne200100]<quasar::LmeDataFactory,std::default_delete<quasar::LmeDataFactory>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::LmeDataFactory>::shared_ptr[abi:ne200100]<quasar::LmeDataFactory,std::default_delete<quasar::LmeDataFactory>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1B518788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  MEMORY[0x1B8C85350](v38, 0x1093C402D7449D9, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(&a38, 8);
  quasar::SystemConfig::~SystemConfig((v39 + 48));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&STACK[0x770]);

  _Unwind_Resume(a1);
}

void sub_1B5187C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::PronCache<std::string,std::vector<std::string>>>::operator=[abi:ne200100]<quasar::GlobalLRUCache<std::string,std::vector<std::string>>,std::default_delete<quasar::GlobalLRUCache<std::string,std::vector<std::string>>>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::PronCache<std::string,std::vector<std::string>>>::shared_ptr[abi:ne200100]<quasar::GlobalLRUCache<std::string,std::vector<std::string>>,std::default_delete<quasar::GlobalLRUCache<std::string,std::vector<std::string>>>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1B5188078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 65) < 0)
  {
    operator delete(*(v37 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5188C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char **a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, std::__shared_weak_count *a53, char *a54, void *a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a19 = &a22;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a19);
  a22 = &a34;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a53);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a54, a55);
  a54 = &a57;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a54);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

BOOL quasar::LmeDataFactory::isContactTemplate(uint64_t a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a1 + 1903);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 1888);
  }

  if (v5 == v6)
  {
    v8 = v4 >= 0 ? a2 : *a2;
    v9 = v7 >= 0 ? (a1 + 1880) : *(a1 + 1880);
    if (!memcmp(v8, v9, v5))
    {
      return 1;
    }
  }

  v10 = *(a1 + 1927);
  if (v10 < 0)
  {
    if (!*(a1 + 1912))
    {
      return 0;
    }
  }

  else if (!*(a1 + 1927))
  {
    return 0;
  }

  v11 = *(a1 + 1912);
  if (v10 >= 0)
  {
    v11 = *(a1 + 1927);
  }

  if (v5 != v11)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v10 >= 0)
  {
    v13 = (a1 + 1904);
  }

  else
  {
    v13 = *(a1 + 1904);
  }

  return memcmp(v12, v13, v5) == 0;
}

void sub_1B51891B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B5189F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char *a44, uint64_t a45, uint64_t a46, char *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a37);
  std::__tree<std::string>::destroy(&a43, a44);
  std::__tree<std::string>::destroy(&a46, a47);
  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  _Unwind_Resume(a1);
}

void sub_1B518A2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

void sub_1B518A8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Block_object_dispose(&a33, 8);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  _Block_object_dispose(&a49, 8);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(v50);

  _Unwind_Resume(a1);
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](void *a1, void *a2)
{
  a1[22] = 0;
  a1[16] = MEMORY[0x1E69E5590] + 16;
  v3 = MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 24);
  v5 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  a1[1] = a2[1];
  a2[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  v7 = (a2 + *(*a2 - 24));
  std::ios_base::move(v6, v7);
  v6[1].__vftable = v7[1].__vftable;
  v7[1].__vftable = 0;
  v6[1].__fmtflags_ = v7[1].__fmtflags_;
  v8 = v3[5];
  v9 = v3[4];
  a1[2] = v9;
  *(a1 + *(v9 - 24) + 16) = v8;
  v10 = v3[1];
  *a1 = v10;
  *(a1 + *(v10 - 24)) = v3[6];
  *a1 = MEMORY[0x1E69E5560] + 24;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  *(a1 + *(*a1 - 24) + 40) = std::stringbuf::basic_stringbuf();
  return a1;
}

void sub_1B518AC84(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__96(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *(a1 + 48) = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 64) = v4;
  *(a1 + 72) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 72) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 80));
  std::iostream::~basic_iostream();

  JUMPOUT(0x1B8C85200);
}

void sub_1B518B008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v5;
  }
}

void sub_1B518B144(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void __copy_helper_block_ea8_56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v5 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v5;
  }
}

void sub_1B518B23C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

void sub_1B518B4B4(_Unwind_Exception *a1)
{
  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
  }

  v4 = *(v2 - 72);
  *(v2 - 72) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1B518B808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a52, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x2D0]);

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B518BE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, void *a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(&a21, a22);
  quasar::SystemConfig::~SystemConfig(&a27);

  _Unwind_Resume(a1);
}

void sub_1B518C060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v33 - 80, *(v33 - 72));

  _Unwind_Resume(a1);
}

void sub_1B518CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 137) < 0)
  {
    operator delete(*(v62 - 160));
  }

  a61 = (v62 - 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  _Unwind_Resume(a1);
}

void quasar::LmeDataFactoryBase::Word::~Word(quasar::LmeDataFactoryBase::Word *this)
{
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(this + 56, *(this + 8));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_1B518D304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  quasar::LmeDataFactoryBase::Word::~Word((v45 - 160));
  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1B518D484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B518E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, void *a24)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(&__p, a24);
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(v25 - 144, *(v25 - 136));

  _Unwind_Resume(a1);
}

void sub_1B518EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a16);

  _Unwind_Resume(a1);
}

void sub_1B518F2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B518F564(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  quasar::SystemConfig::~SystemConfig(va);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v17 - 176);
  v20 = __cxa_begin_catch(a1);
  v21 = MEMORY[0x1E695DF30];
  v22 = *MEMORY[0x1E695D930];
  if (a2 == 2)
  {
    (*(*v20 + 16))(v20);
    [v21 raise:v22 format:@"Quasar internal C++ exception: %s"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Quasar internal unknown exception"];
  }

  __cxa_end_catch();
  JUMPOUT(0x1B518F500);
}

void sub_1B518F6B4(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B518FE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }

    v23 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v24 = EARLogger::QuasarOSLogger(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_EARUserProfileContainer initWithPath:userId:error:];
      }
    }

    else
    {
      v24 = EARLogger::QuasarOSLogger(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_EARUserProfileContainer initWithPath:userId:error:];
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1B518F958);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5190408(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x1B8C85350](v17, 0x10A0C40D10DC8F6, a3, a4, a5, a6, a7, a8);
  std::mutex::unlock((v16 + 24));

  _Unwind_Resume(a1);
}

std::string *sdapi::SdapiUtil::LocaleInfo::LocaleInfo(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = *(a2 + 12);
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    *&this[2].__r_.__value_.__r.__words[1] = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v7 = a2[5];
    this[4].__r_.__value_.__r.__words[0] = *(a2 + 12);
    *&this[3].__r_.__value_.__r.__words[1] = v7;
  }

  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v8 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v8;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v9 = a2[8];
    this[6].__r_.__value_.__r.__words[0] = *(a2 + 18);
    *&this[5].__r_.__value_.__r.__words[1] = v9;
  }

  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v10 = *(a2 + 152);
    this[7].__r_.__value_.__r.__words[0] = *(a2 + 21);
    *&this[6].__r_.__value_.__r.__words[1] = v10;
  }

  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v11 = a2[11];
    this[8].__r_.__value_.__r.__words[0] = *(a2 + 24);
    *&this[7].__r_.__value_.__r.__words[1] = v11;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v12 = *(a2 + 200);
    this[9].__r_.__value_.__r.__words[0] = *(a2 + 27);
    *&this[8].__r_.__value_.__r.__words[1] = v12;
  }

  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external((this + 224), *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v13 = a2[14];
    this[10].__r_.__value_.__r.__words[0] = *(a2 + 30);
    *&this[9].__r_.__value_.__r.__words[1] = v13;
  }

  if (*(a2 + 271) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v14 = *(a2 + 248);
    this[11].__r_.__value_.__r.__words[0] = *(a2 + 33);
    *&this[10].__r_.__value_.__r.__words[1] = v14;
  }

  this[11].__r_.__value_.__s.__data_[8] = *(a2 + 272);
  return this;
}

void sub_1B5190700(_Unwind_Exception *exception_object)
{
  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sdapi::SdapiUtil::LocaleInfo::~LocaleInfo(void **this)
{
  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__init_with_size[abi:ne200100]<std::vector<quasar::LmeDataFactoryBase::Word>*,std::vector<quasar::LmeDataFactoryBase::Word>*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_1B5190940(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__init_with_size[abi:ne200100]<std::vector<quasar::LmeDataFactoryBase::Word>*,std::vector<quasar::LmeDataFactoryBase::Word>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51909C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::LmeDataFactoryBase::Word>>,std::vector<quasar::LmeDataFactoryBase::Word>*,std::vector<quasar::LmeDataFactoryBase::Word>*,std::vector<quasar::LmeDataFactoryBase::Word>*>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word*,quasar::LmeDataFactoryBase::Word*>(v4, *v6, v6[1], 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 4));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmeDataFactoryBase::Word>>,std::vector<quasar::LmeDataFactoryBase::Word>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmeDataFactoryBase::Word>>,std::vector<quasar::LmeDataFactoryBase::Word>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmeDataFactoryBase::Word>>,std::vector<quasar::LmeDataFactoryBase::Word>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::LmeDataFactoryBase::Word>>,std::vector<quasar::LmeDataFactoryBase::Word>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,char const*&,int const&>(uint64_t *a1, uint64_t a2, char **a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,char const*&,int const&>(a1, (80 * v4), a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5190CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,char const*&,int const&>(uint64_t a1, std::string *a2, uint64_t a3, char **a4, unsigned int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *a4);
  quasar::LmeDataFactoryBase::Word::Word(a2, &v10, __p, *a5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B5190D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmePackedWord>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::LmePackedWord>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::vector<quasar::LmePackedWord>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<std::vector<quasar::LmePackedWord>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::LmePackedWord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::LmePackedWord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::LmePackedWord>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        *(v3 - 2) = v4;
        operator delete(v4);
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v5 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v5);
      }

      v3 -= 10;
    }

    while (v5 != v2);
  }

  a1[1] = v2;
}

uint64_t **std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,long long>,std::__tree_node<std::__value_type<std::string,long long>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v8[7] = v9[7];
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__emplace_multi<std::pair<std::string const,long long> const&>(v5);
  }

  return result;
}

void sub_1B519115C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B519121C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

char *utf8::find_invalid<std::__wrap_iter<char const*>>(char *result, unsigned __int8 *a2)
{
  v4 = result;
  if (result != a2)
  {
    do
    {
      v3 = utf8::internal::validate_next<std::__wrap_iter<char const*>>(&v4, a2, 0);
      result = v4;
    }

    while (!v3 && v4 != a2);
  }

  return result;
}

uint64_t utf8::internal::validate_next<std::__wrap_iter<char const*>>(char **a1, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = *a1;
  v13 = 0;
  v6 = *v5;
  if (*v5 < 0)
  {
    if ((v6 & 0xE0) == 0xC0)
    {
      if (v5 == a2 || (*a1 = (v5 + 1), v5 + 1 == a2))
      {
        result = 1;
        goto LABEL_37;
      }

      v10 = v5[1];
      if ((v10 & 0xC0) != 0x80)
      {
        result = 3;
        goto LABEL_37;
      }

      v11 = v10 & 0x3F | ((v6 & 0x1F) << 6);
      v8 = 2;
      v6 = v11;
    }

    else
    {
      if ((v6 & 0xF0) == 0xE0)
      {
        result = utf8::internal::get_sequence_3<std::__wrap_iter<char const*>>(a1, a2, &v13);
        v8 = 3;
        if (result)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((v6 & 0xF8) != 0xF0)
        {
          return 2;
        }

        result = utf8::internal::get_sequence_4<std::__wrap_iter<char const*>>(a1, a2, &v13);
        v8 = 4;
        if (result)
        {
          goto LABEL_37;
        }
      }

      v6 = v13;
    }
  }

  else
  {
    result = 1;
    if (v5 == a2)
    {
      goto LABEL_37;
    }

    v8 = 1;
  }

  if (HIWORD(v6) > 0x10u || (v6 & 0xFFFFF800) == 55296)
  {
    result = 5;
  }

  else
  {
    if (v6 > 0x7F)
    {
      if (v6 > 0x7FF)
      {
        if (HIWORD(v6))
        {
          v12 = 1;
        }

        else
        {
          v12 = v8 == 3;
        }

        if (v12)
        {
          goto LABEL_17;
        }
      }

      else if (v8 == 2)
      {
        goto LABEL_17;
      }
    }

    else if (v8 == 1)
    {
LABEL_17:
      if (a3)
      {
        *a3 = v6;
      }

      result = 0;
      v5 = (*a1 + 1);
      goto LABEL_37;
    }

    result = 4;
  }

LABEL_37:
  *a1 = v5;
  return result;
}

uint64_t utf8::internal::get_sequence_3<std::__wrap_iter<char const*>>(char **a1, char *a2, int *a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return 1;
  }

  v4 = *v3;
  *a1 = v3 + 1;
  if (v3 + 1 == a2)
  {
    return 1;
  }

  v5 = v3[1];
  if ((v5 & 0xC0) != 0x80)
  {
    return 3;
  }

  v6 = v3 + 2;
  *a1 = v6;
  if (v6 == a2)
  {
    return 1;
  }

  v7 = *v6;
  if ((v7 & 0xC0) != 0x80)
  {
    return 3;
  }

  result = 0;
  if (a3)
  {
    *a3 = ((v4 & 0xF) << 12) | ((v5 & 0x3F) << 6) | v7 & 0x3F;
  }

  return result;
}

uint64_t utf8::internal::get_sequence_4<std::__wrap_iter<char const*>>(char **a1, char *a2, int *a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return 1;
  }

  v4 = *v3;
  *a1 = v3 + 1;
  if (v3 + 1 == a2)
  {
    return 1;
  }

  v5 = v3[1];
  if ((v5 & 0xC0) != 0x80)
  {
    return 3;
  }

  *a1 = v3 + 2;
  if (v3 + 2 == a2)
  {
    return 1;
  }

  v6 = v3[2];
  if ((v6 & 0xC0) != 0x80)
  {
    return 3;
  }

  v7 = v3 + 3;
  *a1 = v7;
  if (v7 == a2)
  {
    return 1;
  }

  v8 = *v7;
  if ((v8 & 0xC0) != 0x80)
  {
    return 3;
  }

  result = 0;
  if (a3)
  {
    *a3 = ((v4 & 7) << 18) | ((v5 & 0x3F) << 12) | ((v6 & 0x3F) << 6) | v8 & 0x3F;
  }

  return result;
}

uint64_t *std::shared_ptr<quasar::LmeDataFactory>::shared_ptr[abi:ne200100]<quasar::LmeDataFactory,std::default_delete<quasar::LmeDataFactory>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<quasar::LmeDataFactory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::LmeDataFactory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::LmeDataFactory  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,sdapi::SdapiUtil::LocaleInfo>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,sdapi::SdapiUtil::LocaleInfo>,0>(uint64_t a1)
{
  sdapi::SdapiUtil::LocaleInfo::~LocaleInfo((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,sdapi::SdapiUtil::LocaleInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,sdapi::SdapiUtil::LocaleInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_1B5191ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::shared_ptr<quasar::PronCache<std::string,std::vector<std::string>>>::shared_ptr[abi:ne200100]<quasar::GlobalLRUCache<std::string,std::vector<std::string>>,std::default_delete<quasar::GlobalLRUCache<std::string,std::vector<std::string>>>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<quasar::GlobalLRUCache<std::string,std::vector<std::string>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::GlobalLRUCache<std::string,std::vector<std::string>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::GlobalLRUCache<std::string,std::vector<std::string>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<quasar::PersonalizationRecipe>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::destroy(v2 + 8, *(v2 + 16));

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 20);
    *(a2 + 20) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,std::string &,unsigned long,std::set<std::string> &>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,unsigned long,std::set<std::string> &>(a1, (80 * v5), a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5191EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,unsigned long,std::set<std::string> &>(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v11, &__p, *a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B5191F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string&,unsigned long,std::set<std::string> &>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string&,unsigned long,std::set<std::string> &>(a1, (80 * v5), a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B51920F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string&,unsigned long,std::set<std::string> &>(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v11, &__p, *a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B51921C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(a1, (80 * v5), a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B519233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string &,int &,quasar::LmeDataFactoryBase::PronSet &>(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v10, &__p, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B5192414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(a1, *a2);
    std::__tree<std::vector<std::string>,quasar::NameEnumerator::EnumComparator,std::allocator<std::vector<std::string>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 32);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,long long>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,long long>,std::__map_value_compare<std::string,std::__value_type<std::string,long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long long>>>::__construct_node<std::pair<std::string const,long long> const&>();
  }

  return result;
}

void _ZNSt3__120__shared_ptr_emplaceIN6quasar7LmeDataENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D01FC0;
  quasar::LmeData::LmeData((a1 + 3), 0);
}

void std::__shared_ptr_emplace<quasar::LmeData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D01FC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::LmeData::LmeData(quasar::LmeData *this, int a2)
{
  *this = &unk_1F2D1F590;
  *(this + 2) = &unk_1F2D1F570;
  fst::SymbolTable::SymbolTable((this + 24));
}

void std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::__shared_ptr_emplace[abi:ne200100]<fst::SymbolTable,quasar::TextEncoding,std::allocator<quasar::QsrTextSymbolTable>,0>(void *a1, const fst::SymbolTable *a2, TextEncoding *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD0D0;
  quasar::QsrTextSymbolTable::QsrTextSymbolTable((a1 + 3), a2, *a3);
}

void quasar::QsrTextSymbolTable::QsrTextSymbolTable(quasar::QsrTextSymbolTable *this, const fst::SymbolTable *a2, int a3)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}

void sub_1B519295C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  quasar::QsrTextSymbolTable::QsrTextSymbolTable(v1, v2, (v1 + 24));
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::pair<std::string const,int> const&>();
  }

  return result;
}

char *std::map<std::string,std::map<std::string,int>>::map[abi:ne200100](char *a1, const void ***a2)
{
  *(a1 + 2) = 0;
  *(a1 + 1) = 0;
  *a1 = a1 + 8;
  std::map<std::string,std::map<std::string,int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,int>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,int>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

char *std::map<std::string,std::map<std::string,int>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,int>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,int>>,void *> *,long>>>(char *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,int>> const&>(v5, (v5 + 1), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,int>> const&>(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::__construct_node<std::pair<std::string const,std::map<std::string,int>> const&>();
  }

  return v4;
}

std::string *std::pair<std::string const,std::map<std::string,int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::map<std::string,int>::map[abi:ne200100](&this[1], a2 + 3);
  return this;
}

void sub_1B5192C54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string const&,std::string const&,int const&>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v8);
  }

  v15 = 0;
  v16 = 80 * v4;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,int const&>(a1, (80 * v4), a2, a3, a4);
  v17 = 80 * v4 + 80;
  v9 = a1[1];
  v10 = 80 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5192DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string const&,std::string const&,int const&>(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v9, &__p, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B5192E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10EARHelpers24DictionaryToUnorderedMapINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES7_Z57___EARUserProfileConfig_initWithConfiguration_overrides__E3__0S8_EENS1_13unordered_mapIT_T0_NS1_4hashISA_EENS1_8equal_toISA_EENS5_INS1_4pairIKSA_SB_EEEEEEP12NSDictionaryT1_T2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    objc_msgSend_ear_toString(v7);
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
  }

  v9 = v6;
  v10 = v9;
  if (v9)
  {
    objc_msgSend_ear_toString(v9);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  v11 = *(*(a1 + 32) + 8);
  v17 = v14;
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v11 + 48), v14, &std::piecewise_construct, &v17, &v16);
  std::string::operator=((v12 + 5), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1B5192FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<std::ifstream>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<std::ifstream>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D02010;
  std::ifstream::basic_ifstream(a1 + 3, a2, 8);
  return a1;
}

void std::__shared_ptr_emplace<std::ifstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D02010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *_ZNSt3__120__shared_ptr_emplaceINS_18basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne200100IJES7_Li0EEES7_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D02060;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D02060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void ***std::unique_ptr<quasar::LmeDataSearch>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v2 + 6));
    v3 = v2 + 3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = v2;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1B8C85350](v2, 0x10A0C40D10DC8F6);
  }

  return result;
}

void std::vector<kaldi::Matrix<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<kaldi::Matrix<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      v3 = kaldi::Matrix<float>::~Matrix(v3 - 40);
    }

    a1[1] = v7;
  }
}

void std::vector<kaldi::Vector<float>>::resize(char **a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<kaldi::Vector<float>>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](a1, &(*a1)[24 * a2]);
  }
}

void std::vector<kaldi::Matrix<float>>::__append(uint64_t *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 40 * a2;
      v11 = 40 * a2;
      do
      {
        kaldi::Matrix<float>::Matrix(v5);
        v5 += 40;
        v11 -= 40;
      }

      while (v11);
      v5 = v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v23 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(a1, v9);
    }

    v12 = 40 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 5 * a2;
    v14 = v12 + 40 * a2;
    v15 = 8 * v13;
    do
    {
      kaldi::Matrix<float>::Matrix(v12);
      v12 += 40;
      v15 -= 40;
    }

    while (v15);
    *&v22 = v14;
    v16 = a1[1];
    v17 = v21 + *a1 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(&v20);
  }
}

void sub_1B519356C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::Matrix<float>::Matrix(a4, v8);
      v8 += 10;
      a4 += 40;
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = kaldi::Matrix<float>::~Matrix(v6);
      v6 += 10;
    }
  }

  return result;
}

void sub_1B5193670(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = kaldi::Matrix<float>::~Matrix(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    kaldi::Matrix<float>::~Matrix(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<kaldi::Vector<float>>::__append(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, v9);
    }

    v16 = 0;
    v17 = 24 * v6;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v18 = 24 * v6 + v11;
    v12 = a1[1];
    v13 = (24 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = a1[2];
    *(a1 + 1) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(&v16);
  }
}

void sub_1B519385C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      kaldi::Vector<float>::Resize(v7, *(v8 + 8), 1);
      kaldi::VectorBase<float>::CopyFromVec(v7, v8);
      v8 += 24;
      v7 = v13 + 24;
      v13 += 24;
    }

    while (v8 != a3);
  }

  v11 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*,kaldi::Vector<float>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*,kaldi::Vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      kaldi::Vector<float>::Destroy(v4);
      v4 += 24;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 24;
    kaldi::Vector<float>::Destroy(v1);
  }
}

uint64_t std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::Vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::Vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 24;
    kaldi::Vector<float>::Destroy(v4 - 24);
  }
}

void *std::vector<std::vector<std::pair<int,float>>>::push_back[abi:ne200100](uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::pair<int,float>>>::__emplace_back_slow_path<std::vector<std::pair<int,float>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::pair<int,float>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<int,float>> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::pair<int,kaldi::Vector<float>>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::pair<int,kaldi::Vector<float>>>::__base_destruct_at_end[abi:ne200100](result, *result + 32 * a2);
    }
  }

  else
  {
    std::vector<std::pair<int,kaldi::Vector<float>>>::__append(result, a2 - v2);
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t *std::vector<std::vector<std::pair<int,float>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<int,float>> const&>(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<std::pair<int,float>>>::__emplace_back_slow_path<std::vector<std::pair<int,float>> const&>(char **a1, uint64_t **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>((24 * v2), *a2, a2[1], a2[1] - *a2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5193DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5193E48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,kaldi::Vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<int,kaldi::Vector<float>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<int,kaldi::Vector<float>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v5 = i - 24;
    kaldi::Vector<float>::Destroy(v5);
  }

  *(a1 + 8) = a2;
}

uint64_t *std::vector<std::pair<int,kaldi::Vector<float>>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 8) = 0;
        v4 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,kaldi::Vector<float>>>>(result, v10);
    }

    v12 = 32 * v8;
    v18 = 0;
    v19 = 32 * v8;
    *(&v20 + 1) = 0;
    v13 = 32 * v8;
    do
    {
      *v13 = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      v13 += 32;
    }

    while (v13 != 32 * v8 + 32 * a2);
    *&v20 = v12 + 32 * a2;
    v14 = result[1];
    v15 = v12 + *result - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*>(result, *result, v14, v15);
    v16 = *v3;
    *v3 = v15;
    v17 = v3[2];
    *(v3 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::pair<int,kaldi::Vector<float>>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B519403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<int,kaldi::Vector<float>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,kaldi::Vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*>(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = 0;
      v8 = a4 + 8;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      kaldi::Vector<float>::Resize((a4 + 8), v7[4], 1);
      v9 = (v7 + 2);
      kaldi::VectorBase<float>::CopyFromVec(v8, v9);
      a4 = v14 + 32;
      v14 += 32;
      v7 = v9 + 3;
    }

    while (v7 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*,std::pair<int,kaldi::Vector<float>>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*,std::pair<int,kaldi::Vector<float>>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      kaldi::Vector<float>::Destroy(v4 + 8);
      v4 += 32;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<int,kaldi::Vector<float>>>,std::pair<int,kaldi::Vector<float>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = v1 - 24;
    v1 -= 32;
    kaldi::Vector<float>::Destroy(v3);
  }
}

uint64_t std::__split_buffer<std::pair<int,kaldi::Vector<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<int,kaldi::Vector<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<int,kaldi::Vector<float>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 32;
    kaldi::Vector<float>::Destroy(v4 - 24);
  }
}

char *std::vector<std::pair<int,float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,float> const*>,std::__wrap_iter<std::pair<int,float> const*>>(void *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - a2) >> 3;
    if (v16 >= a5)
    {
      v20 = &a2[8 * a5];
      v21 = &v9[-8 * a5];
      if (v21 >= v9)
      {
        v23 = a1[1];
      }

      else
      {
        v22 = &v9[-8 * a5];
        v23 = a1[1];
        do
        {
          v24 = *v22;
          v22 += 8;
          *v23++ = v24;
        }

        while (v22 < v9);
      }

      a1[1] = v23;
      if (v9 != v20)
      {
        v44 = 0;
        v45 = v20 - v9;
        do
        {
          v46 = &v9[v44];
          *(v46 - 2) = *&v21[v44 - 8];
          *(v46 - 1) = *&v21[v44 - 4];
          v44 -= 8;
        }

        while (v45 != v44);
      }

      v47 = a2;
      do
      {
        *v47 = *v7;
        *(v47 + 1) = *(v7++ + 1);
        v47 += 8;
      }

      while (v7 != &a3[a5]);
    }

    else
    {
      v17 = (a3 + v9 - a2);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v34 = (a3 + v9 - a2);
        v19 = a1[1];
        do
        {
          v35 = *v34++;
          *v19++ = v35;
          v18 += 8;
        }

        while (v34 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v36 = &a2[8 * a5];
        v37 = &v18[-8 * a5];
        v38 = v18;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 8;
          *v38 = v39;
          v38 += 8;
        }

        a1[1] = v38;
        if (v19 != v36)
        {
          v40 = 0;
          v41 = -8 * a5;
          do
          {
            v42 = &v18[v40];
            *(v42 - 2) = *&v18[v41 - 8];
            *(v42 - 1) = *&v18[v41 - 4];
            v40 -= 8;
            v41 -= 8;
            v36 += 8;
          }

          while (v18 != v36);
        }

        if (v9 != a2)
        {
          v43 = a2;
          do
          {
            *v43 = *v7;
            *(v43 + 1) = *(v7++ + 1);
            v43 += 8;
          }

          while (v7 != v17);
        }
      }
    }

    return a2;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = a2 - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
  }

  v25 = 8 * (v13 >> 3);
  v26 = 8 * a5;
  v27 = v25;
  do
  {
    v28 = *v7++;
    *v27++ = v28;
    v26 -= 8;
  }

  while (v26);
  memcpy((v25 + 8 * a5), a2, a1[1] - a2);
  v29 = *a1;
  v30 = v25 + 8 * a5 + a1[1] - a2;
  a1[1] = a2;
  v31 = (a2 - v29);
  v32 = (v25 - (a2 - v29));
  memcpy(v32, v29, v31);
  v33 = *a1;
  *a1 = v32;
  a1[1] = v30;
  a1[2] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  return v25;
}

void std::__introsort<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
LABEL_1:
  MemberOf = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = MemberOf;
    v12 = v11;
    v13 = &a2[-MemberOf] >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v68 = *(a2 - 2);
        v69 = *MemberOf;
        if (v68 >= *MemberOf)
        {
          return;
        }

        *MemberOf = v68;
        *(a2 - 2) = v69;
LABEL_80:
        v70 = *(MemberOf + 4);
        *(MemberOf + 4) = *(a2 - 1);
        goto LABEL_81;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v71 = *(MemberOf + 8);
      v72 = *MemberOf;
      v73 = *(MemberOf + 16);
      if (SLODWORD(v71) >= *MemberOf)
      {
        if (v73 < SLODWORD(v71))
        {
          *(MemberOf + 8) = v73;
          *(MemberOf + 16) = v71;
          v79 = *(MemberOf + 12);
          v80 = *(MemberOf + 20);
          *(MemberOf + 12) = v80;
          *(MemberOf + 20) = v79;
          if (v73 < SLODWORD(v72))
          {
            *MemberOf = v73;
            *(MemberOf + 8) = v72;
            v81 = *(MemberOf + 4);
            *(MemberOf + 4) = v80;
            *(MemberOf + 12) = v81;
          }

          goto LABEL_108;
        }
      }

      else
      {
        if (v73 < SLODWORD(v71))
        {
          *MemberOf = v73;
          *(MemberOf + 16) = v72;
          v74 = *(MemberOf + 4);
          *(MemberOf + 4) = *(MemberOf + 20);
          goto LABEL_106;
        }

        *MemberOf = v71;
        *(MemberOf + 8) = v72;
        v74 = *(MemberOf + 4);
        *(MemberOf + 4) = *(MemberOf + 12);
        *(MemberOf + 12) = v74;
        if (v73 < SLODWORD(v72))
        {
          *(MemberOf + 8) = v73;
          *(MemberOf + 16) = v72;
          *(MemberOf + 12) = *(MemberOf + 20);
LABEL_106:
          *(MemberOf + 20) = v74;
          v71 = v72;
LABEL_108:
          v83 = *(a2 - 2);
          if (v83 < SLODWORD(v71))
          {
            *(MemberOf + 16) = v83;
            *(a2 - 2) = v71;
            v84 = *(MemberOf + 20);
            *(MemberOf + 20) = *(a2 - 1);
            *(a2 - 1) = v84;
            v85 = *(MemberOf + 16);
            v86 = *(MemberOf + 8);
            if (v85 < v86)
            {
              *(MemberOf + 8) = v85;
              *(MemberOf + 16) = v86;
              v87 = *(MemberOf + 12);
              v88 = *(MemberOf + 20);
              *(MemberOf + 12) = v88;
              *(MemberOf + 20) = v87;
              v89 = *MemberOf;
              if (v85 < *MemberOf)
              {
                *MemberOf = v85;
                *(MemberOf + 8) = v89;
                v90 = *(MemberOf + 4);
                *(MemberOf + 4) = v88;
                *(MemberOf + 12) = v90;
              }
            }
          }

          return;
        }
      }

      v71 = *&v73;
      goto LABEL_108;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,0>(MemberOf, (MemberOf + 8), (MemberOf + 16), (MemberOf + 24), a2 - 2, a6);
      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(MemberOf, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(MemberOf, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (MemberOf != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,std::pair<int,float> *>(MemberOf, a2, a2, a3);
      }

      return;
    }

    v14 = (MemberOf + 8 * (v13 >> 1));
    v15 = v14;
    v16 = *(a2 - 2);
    if (v13 >= 0x81)
    {
      v17 = *v14;
      v18 = *MemberOf;
      if (*v14 >= *MemberOf)
      {
        if (v16 < v17)
        {
          *v14 = v16;
          *(a2 - 2) = v17;
          v23 = v14[1];
          v14[1] = *(a2 - 1);
          *(a2 - 1) = v23;
          v24 = *MemberOf;
          if (*v14 < *MemberOf)
          {
            *MemberOf = *v14;
            *v14 = v24;
            v25 = *(MemberOf + 4);
            *(MemberOf + 4) = v14[1];
            v14[1] = v25;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          *MemberOf = v16;
          *(a2 - 2) = v18;
          v19 = *(MemberOf + 4);
          *(MemberOf + 4) = *(a2 - 1);
          goto LABEL_28;
        }

        *MemberOf = v17;
        *v14 = v18;
        v19 = *(MemberOf + 4);
        *(MemberOf + 4) = v14[1];
        v14[1] = v19;
        v29 = *(a2 - 2);
        if (v29 < SLODWORD(v18))
        {
          *v14 = v29;
          *(a2 - 2) = v18;
          v14[1] = *(a2 - 1);
LABEL_28:
          *(a2 - 1) = v19;
        }
      }

      v30 = v14 - 2;
      v31 = *(v14 - 2);
      v32 = *(MemberOf + 8);
      v33 = *(a2 - 4);
      if (v31 >= v32)
      {
        if (v33 < v31)
        {
          *v30 = v33;
          *(a2 - 4) = v31;
          v35 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v35;
          v36 = *(MemberOf + 8);
          if (*v30 < v36)
          {
            *(MemberOf + 8) = *v30;
            *v30 = v36;
            v37 = *(MemberOf + 12);
            *(MemberOf + 12) = *(v14 - 1);
            *(v14 - 1) = v37;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          *(MemberOf + 8) = v33;
          *(a2 - 4) = v32;
          v34 = *(MemberOf + 12);
          *(MemberOf + 12) = *(a2 - 3);
          goto LABEL_42;
        }

        *(MemberOf + 8) = v31;
        *v30 = v32;
        v34 = *(MemberOf + 12);
        *(MemberOf + 12) = *(v14 - 1);
        *(v14 - 1) = v34;
        v39 = *(a2 - 4);
        if (v39 < v32)
        {
          *v30 = v39;
          *(a2 - 4) = v32;
          *(v14 - 1) = *(a2 - 3);
LABEL_42:
          *(a2 - 3) = v34;
        }
      }

      v42 = v14[2];
      v40 = v14 + 2;
      v41 = v42;
      v43 = *(MemberOf + 16);
      v44 = *(a2 - 6);
      if (v42 >= v43)
      {
        if (v44 < v41)
        {
          *v40 = v44;
          *(a2 - 6) = v41;
          v46 = v40[1];
          v40[1] = *(a2 - 5);
          *(a2 - 5) = v46;
          v47 = *(MemberOf + 16);
          if (*v40 < v47)
          {
            *(MemberOf + 16) = *v40;
            *v40 = v47;
            v48 = *(MemberOf + 20);
            *(MemberOf + 20) = v40[1];
            v40[1] = v48;
          }
        }
      }

      else
      {
        if (v44 < v41)
        {
          *(MemberOf + 16) = v44;
          *(a2 - 6) = v43;
          v45 = *(MemberOf + 20);
          *(MemberOf + 20) = *(a2 - 5);
          goto LABEL_51;
        }

        *(MemberOf + 16) = v41;
        *v40 = v43;
        v45 = *(MemberOf + 20);
        *(MemberOf + 20) = v40[1];
        v40[1] = v45;
        v49 = *(a2 - 6);
        if (v49 < v43)
        {
          *v40 = v49;
          *(a2 - 6) = v43;
          v40[1] = *(a2 - 5);
LABEL_51:
          *(a2 - 5) = v45;
        }
      }

      v50 = *v15;
      v51 = *v30;
      v52 = *v40;
      if (*v15 >= *v30)
      {
        if (v52 >= SLODWORD(v50))
        {
LABEL_58:
          v51 = v50;
        }

        else
        {
          *v15 = v52;
          *v40 = v50;
          v54 = v15[1];
          v55 = v40[1];
          v15[1] = v55;
          v40[1] = v54;
          if (v52 >= SLODWORD(v51))
          {
            goto LABEL_61;
          }

          *v30 = v52;
          *v15 = v51;
          v56 = v30[1];
          v30[1] = v55;
          v15[1] = v56;
        }
      }

      else
      {
        if (v52 < SLODWORD(v50))
        {
          *v30 = v52;
          *v40 = v51;
          v53 = v30[1];
          v30[1] = v40[1];
          v40[1] = v53;
          goto LABEL_58;
        }

        *v30 = v50;
        *v15 = v51;
        v57 = v30[1];
        v30[1] = v15[1];
        v15[1] = v57;
        if (v52 < SLODWORD(v51))
        {
          *v15 = v52;
          *v40 = v51;
          v15[1] = v40[1];
          v40[1] = v57;
LABEL_61:
          v51 = *&v52;
        }
      }

      v58 = *MemberOf;
      *MemberOf = v51;
      *v15 = v58;
      v59 = *(MemberOf + 4);
      *(MemberOf + 4) = v15[1];
      v15[1] = v59;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v20 = *MemberOf;
    v21 = *v14;
    if (*MemberOf < *v15)
    {
      if (v16 < SLODWORD(v20))
      {
        *v15 = v16;
        *(a2 - 2) = v21;
        v22 = v15[1];
        v15[1] = *(a2 - 1);
        goto LABEL_37;
      }

      *v15 = v20;
      *MemberOf = v21;
      v22 = v15[1];
      v15[1] = *(MemberOf + 4);
      *(MemberOf + 4) = v22;
      v38 = *(a2 - 2);
      if (v38 < v21)
      {
        *MemberOf = v38;
        *(a2 - 2) = v21;
        *(MemberOf + 4) = *(a2 - 1);
LABEL_37:
        *(a2 - 1) = v22;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v16 >= SLODWORD(v20))
    {
      goto LABEL_38;
    }

    *MemberOf = v16;
    *(a2 - 2) = v20;
    v26 = *(MemberOf + 4);
    *(MemberOf + 4) = *(a2 - 1);
    *(a2 - 1) = v26;
    v27 = *v15;
    if (*MemberOf >= *v15)
    {
      goto LABEL_38;
    }

    *v15 = *MemberOf;
    *MemberOf = v27;
    v28 = v15[1];
    v15[1] = *(MemberOf + 4);
    *(MemberOf + 4) = v28;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(MemberOf - 8) >= *MemberOf)
    {
      MemberOf = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::CompareFirstMemberOfPair<int,float> &>(MemberOf, a2);
      goto LABEL_69;
    }

LABEL_64:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::CompareFirstMemberOfPair<int,float> &>(MemberOf, a2);
    if ((v62 & 1) == 0)
    {
      goto LABEL_67;
    }

    v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(MemberOf, v60, v61);
    MemberOf = (v60 + 2);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>((v60 + 2), a2, v64))
    {
      a4 = -v12;
      a2 = v60;
      if (v63)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v63)
    {
LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,false>(result, v60, a3, -v12, a5 & 1);
      MemberOf = (v60 + 2);
LABEL_69:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v65 = *(MemberOf + 8);
  v66 = *MemberOf;
  v67 = *(a2 - 2);
  if (v65 < *MemberOf)
  {
    if (v67 < v65)
    {
      *MemberOf = v67;
      *(a2 - 2) = v66;
      goto LABEL_80;
    }

    *MemberOf = v65;
    *(MemberOf + 8) = v66;
    v70 = *(MemberOf + 4);
    *(MemberOf + 4) = *(MemberOf + 12);
    *(MemberOf + 12) = v70;
    v82 = *(a2 - 2);
    if (v82 >= SLODWORD(v66))
    {
      return;
    }

    *(MemberOf + 8) = v82;
    *(a2 - 2) = v66;
    *(MemberOf + 12) = *(a2 - 1);
LABEL_81:
    *(a2 - 1) = v70;
    return;
  }

  if (v67 < v65)
  {
    *(MemberOf + 8) = v67;
    *(a2 - 2) = v65;
    v75 = *(MemberOf + 12);
    *(MemberOf + 12) = *(a2 - 1);
    *(a2 - 1) = v75;
    v76 = *(MemberOf + 8);
    v77 = *MemberOf;
    if (v76 < *MemberOf)
    {
      *MemberOf = v76;
      *(MemberOf + 8) = v77;
      v78 = *(MemberOf + 4);
      *(MemberOf + 4) = *(MemberOf + 12);
      *(MemberOf + 12) = v78;
    }
  }
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,0>(float *a1, float *a2, float *a3, float *a4, float *a5, float result)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *a3;
  if (*a2 >= *a1)
  {
    if (v8 >= v6)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v6;
      result = a2[1];
      a2[1] = a3[1];
      a3[1] = result;
      v9 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v9;
        result = a1[1];
        a1[1] = a2[1];
        a2[1] = result;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v8 < v6)
    {
      *a1 = v8;
      *a3 = v7;
      result = a1[1];
      a1[1] = a3[1];
LABEL_9:
      a3[1] = result;
      v6 = v7;
      goto LABEL_11;
    }

    *a1 = v6;
    *a2 = v7;
    result = a1[1];
    a1[1] = a2[1];
    a2[1] = result;
    v6 = *a3;
    if (*a3 < v7)
    {
      *a2 = v6;
      *a3 = v7;
      a2[1] = a3[1];
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v6)
  {
    *a3 = *a4;
    *a4 = v6;
    result = a3[1];
    a3[1] = a4[1];
    a4[1] = result;
    v10 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v10;
      result = a2[1];
      a2[1] = a3[1];
      a3[1] = result;
      v11 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v11;
        result = a1[1];
        a1[1] = a2[1];
        a2[1] = result;
      }
    }
  }

  v12 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v12;
    result = a4[1];
    a4[1] = a5[1];
    a5[1] = result;
    v13 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v13;
      result = a3[1];
      a3[1] = a4[1];
      a4[1] = result;
      v14 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v14;
        result = a2[1];
        a2[1] = a3[1];
        a3[1] = result;
        v15 = *a1;
        if (*a2 < *a1)
        {
          *a1 = *a2;
          *a2 = v15;
          result = a1[1];
          a1[1] = a2[1];
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        v7 = *v4;
        if (v6 < *v4)
        {
          v8 = v4[3];
          v9 = v3;
          while (1)
          {
            v10 = result + v9;
            *(v10 + 2) = v7;
            *(v10 + 3) = *(result + v9 + 4);
            if (!v9)
            {
              break;
            }

            v7 = *(v10 - 2);
            v9 -= 8;
            if (v6 >= v7)
            {
              v11 = (result + v9 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v6;
          v11[1] = v8;
        }

        v2 = v5 + 2;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (v5 < *result)
        {
          v7 = result[3];
          v8 = v3;
          do
          {
            v9 = v8;
            *(v8 - 1) = v6;
            v10 = *(v8 - 2);
            v8 -= 2;
            *v9 = v10;
            v6 = *(v9 - 5);
          }

          while (v5 < v6);
          *(v8 - 1) = v5;
          *v8 = v7;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::CompareFirstMemberOfPair<int,float> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 2))
  {
    v5 = a1 + 2;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 2;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[2];
      v3 += 2;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 2);
      a2 -= 2;
    }

    while (v2 < v6);
  }

  v7 = a1[1];
  if (v3 < a2)
  {
    v8 = *v3;
    v9 = *a2;
    do
    {
      *v3 = v9;
      *a2 = v8;
      v10 = v3[1];
      v3[1] = a2[1];
      a2[1] = v10;
      do
      {
        v11 = v3[2];
        v3 += 2;
        v8 = v11;
      }

      while (v2 >= v11);
      do
      {
        v12 = *(a2 - 2);
        a2 -= 2;
        v9 = v12;
      }

      while (v2 < v12);
    }

    while (v3 < a2);
  }

  if (v3 - 2 != a1)
  {
    *a1 = *(v3 - 2);
    a1[1] = *(v3 - 1);
  }

  *(v3 - 2) = v2;
  *(v3 - 1) = v7;
  return v3;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,float> *,kaldi::CompareFirstMemberOfPair<int,float> &>(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    v2 += 2;
  }

  while (v5 < v3);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v7 >= v3);
  }

  if (v6 >= a2)
  {
    v10 = &a1[v2];
  }

  else
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v5;
      v12 = v10[1];
      v10[1] = v11[1];
      v11[1] = v12;
      do
      {
        v13 = v10[2];
        v10 += 2;
        v5 = v13;
      }

      while (v13 < v3);
      do
      {
        v14 = *(v11 - 2);
        v11 -= 2;
        v9 = v14;
      }

      while (v14 >= v3);
    }

    while (v10 < v11);
  }

  if (v10 - 2 != a1)
  {
    *a1 = *(v10 - 2);
    a1[1] = *(v10 - 1);
  }

  *(v10 - 2) = v3;
  *(v10 - 1) = v4;
  return v10 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(uint64_t a1, float *a2, float a3)
{
  v3 = (a2 - a1) >> 3;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(a1 + 8);
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 < v6)
        {
          *(a1 + 8) = v8;
          *(a2 - 2) = v6;
          v19 = *(a1 + 12);
          *(a1 + 12) = *(a2 - 1);
          *(a2 - 1) = v19;
          v20 = *(a1 + 8);
          v21 = *a1;
          if (v20 < *a1)
          {
            *a1 = v20;
            *(a1 + 8) = v21;
            v22 = *(a1 + 4);
            *(a1 + 4) = *(a1 + 12);
            *(a1 + 12) = v22;
          }
        }

        return 1;
      }

      if (v8 >= v6)
      {
        *a1 = v6;
        *(a1 + 8) = v7;
        v9 = *(a1 + 4);
        *(a1 + 4) = *(a1 + 12);
        *(a1 + 12) = v9;
        v29 = *(a2 - 2);
        if (v29 >= SLODWORD(v7))
        {
          return 1;
        }

        *(a1 + 8) = v29;
        *(a2 - 2) = v7;
        *(a1 + 12) = *(a2 - 1);
        goto LABEL_14;
      }

      *a1 = v8;
      *(a2 - 2) = v7;
LABEL_13:
      v9 = *(a1 + 4);
      *(a1 + 4) = *(a2 - 1);
LABEL_14:
      *(a2 - 1) = v9;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 2, a3);
        return 1;
      }

      goto LABEL_15;
    }

    v15 = *(a1 + 8);
    v16 = *a1;
    v17 = *(a1 + 16);
    if (SLODWORD(v15) >= *a1)
    {
      if (v17 < SLODWORD(v15))
      {
        *(a1 + 8) = v17;
        *(a1 + 16) = v15;
        v26 = *(a1 + 12);
        v27 = *(a1 + 20);
        *(a1 + 12) = v27;
        *(a1 + 20) = v26;
        if (v17 < SLODWORD(v16))
        {
          *a1 = v17;
          *(a1 + 8) = v16;
          v28 = *(a1 + 4);
          *(a1 + 4) = v27;
          *(a1 + 12) = v28;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v17 < SLODWORD(v15))
      {
        *a1 = v17;
        *(a1 + 16) = v16;
        v18 = *(a1 + 4);
        *(a1 + 4) = *(a1 + 20);
LABEL_48:
        *(a1 + 20) = v18;
        v15 = v16;
LABEL_50:
        v39 = *(a2 - 2);
        if (v39 < SLODWORD(v15))
        {
          *(a1 + 16) = v39;
          *(a2 - 2) = v15;
          v40 = *(a1 + 20);
          *(a1 + 20) = *(a2 - 1);
          *(a2 - 1) = v40;
          v41 = *(a1 + 16);
          v42 = *(a1 + 8);
          if (v41 < v42)
          {
            *(a1 + 8) = v41;
            *(a1 + 16) = v42;
            v43 = *(a1 + 12);
            v44 = *(a1 + 20);
            *(a1 + 12) = v44;
            *(a1 + 20) = v43;
            v45 = *a1;
            if (v41 < *a1)
            {
              *a1 = v41;
              *(a1 + 8) = v45;
              v46 = *(a1 + 4);
              *(a1 + 4) = v44;
              *(a1 + 12) = v46;
            }
          }
        }

        return 1;
      }

      *a1 = v15;
      *(a1 + 8) = v16;
      v18 = *(a1 + 4);
      *(a1 + 4) = *(a1 + 12);
      *(a1 + 12) = v18;
      if (v17 < SLODWORD(v16))
      {
        *(a1 + 8) = v17;
        *(a1 + 16) = v16;
        *(a1 + 12) = *(a1 + 20);
        goto LABEL_48;
      }
    }

    v15 = *&v17;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 2);
    v5 = *a1;
    if (v4 < *a1)
    {
      *a1 = v4;
      *(a2 - 2) = v5;
      goto LABEL_13;
    }

    return 1;
  }

LABEL_15:
  v10 = (a1 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 8);
  v13 = *a1;
  if (v12 >= *a1)
  {
    if (v11 < v12)
    {
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      v23 = *(a1 + 12);
      v24 = *(a1 + 20);
      *(a1 + 12) = v24;
      *(a1 + 20) = v23;
      if (v11 < SLODWORD(v13))
      {
        *a1 = v11;
        *(a1 + 8) = v13;
        v25 = *(a1 + 4);
        *(a1 + 4) = v24;
        *(a1 + 12) = v25;
      }
    }
  }

  else
  {
    if (v11 >= v12)
    {
      *a1 = v12;
      *(a1 + 8) = v13;
      v14 = *(a1 + 4);
      *(a1 + 4) = *(a1 + 12);
      *(a1 + 12) = v14;
      if (v11 >= SLODWORD(v13))
      {
        goto LABEL_35;
      }

      *(a1 + 8) = v11;
      *(a1 + 16) = v13;
      *(a1 + 12) = *(a1 + 20);
    }

    else
    {
      *a1 = v11;
      *(a1 + 16) = v13;
      v14 = *(a1 + 4);
      *(a1 + 4) = *(a1 + 20);
    }

    *(a1 + 20) = v14;
  }

LABEL_35:
  v30 = a1 + 24;
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = *v10;
    if (*v30 < *v10)
    {
      v35 = *(v30 + 4);
      v36 = v31;
      while (1)
      {
        v37 = (a1 + v36);
        v37[6] = v34;
        v37[7] = *(a1 + v36 + 20);
        if (v36 == -16)
        {
          break;
        }

        v34 = v37[2];
        v36 -= 8;
        if (SLODWORD(v33) >= v34)
        {
          v38 = (a1 + v36 + 24);
          goto LABEL_43;
        }
      }

      v38 = a1;
LABEL_43:
      *v38 = v33;
      *(v38 + 1) = v35;
      if (++v32 == 8)
      {
        return v30 + 8 == a2;
      }
    }

    v10 = v30;
    v31 += 8;
    v30 += 8;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *,std::pair<int,float> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 1);
          *(a1 + 1) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 8;
      do
      {
        v16 = *a1;
        v17 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v16;
          *(v18 + 1) = v17;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 1) = *(v15 + 1);
          *v15 = v16;
          *(v15 + 1) = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(a1, (v18 + 8), a4, (v18 + 8 - a1) >> 3);
        }

        v15 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[2];
        if (*v8 <= v11)
        {
          v10 = v8[2];
        }

        if (*v8 < v11)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        v13 = a4[1];
        do
        {
          v14 = a4;
          a4 = v8;
          *v14 = v10;
          v14[1] = v8[1];
          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = (result + 8 * v15);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v15;
          }

          else
          {
            v10 = *v8;
            v16 = v8[2];
            if (*v8 <= v16)
            {
              v10 = v8[2];
            }

            if (*v8 >= v16)
            {
              v7 = v15;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
        a4[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v7 = *v5;
      v3 = v6;
    }

    else
    {
      v9 = v4[4];
      v8 = v4 + 4;
      v7 = v9;
      v10 = *(v8 - 2);
      v11 = v10 < v9;
      if (v10 > v9)
      {
        v7 = *(v8 - 2);
      }

      if (v11)
      {
        v5 = v8;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = v7;
    a1[1] = v5[1];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::CompareFirstMemberOfPair<int,float> &,std::pair<int,float> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    v9 = *v6;
    if (*v6 < v8)
    {
      v10 = *(a2 - 4);
      do
      {
        v11 = v7;
        v7 = v6;
        *v11 = v9;
        v11[1] = v6[1];
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
        v9 = *v6;
      }

      while (*v6 < v8);
      *v7 = v8;
      v7[1] = v10;
    }
  }

  return result;
}

void TClitics::TClitics(TClitics *this, TLexicon *a2, TTokenizerParamManager *a3)
{
  *this = &unk_1F2CFF750;
  *(this + 1) = 0;
  v6 = this + 16;
  *(this + 2) = &unk_1F2CFF750;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  TRegExp::TRegExp(this + 9, a2 + 224);
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 1) = 2;
  (*(*this + 16))(this);
  *(this + 3) = 6;
  (*(*(this + 2) + 16))(v6);
  v7 = TStringParam::get((a3 + 7984));
  if (v7)
  {
    if (*v7)
    {
      TRegExp::add(this + 9, v7, 0);
      TRegExp::doneAdding((this + 72));
    }
  }
}

void sub_1B51959D8(_Unwind_Exception *a1)
{
  TRegExp::~TRegExp((v1 + 72));
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

char *TStringParam::get(TStringParam *this)
{
  ActiveConfigHandle = TParam::getActiveConfigHandle(this);
  v3 = this + 24 * TParam::getValidConfig(this, ActiveConfigHandle);
  result = v3 + 152;
  if (v3[175] < 0)
  {
    return *result;
  }

  return result;
}

void TClitics::~TClitics(void **this)
{
  TRegExp::~TRegExp((this + 9));
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

uint64_t TClitics::isValidRoot(TClitics *this, const TWord *a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v6 = v8;
  v7 = xmmword_1B5AE2110;
  v9 = 1;
  TWord::getCategoryTag(a2, &v6);
  if (*(&v7 + 1) >= v7)
  {
    if (v9)
    {
      v10 = 0;
      TBuffer<wchar_t>::insert(&v6, *(&v7 + 1), &v10, 1uLL);
      v3 = v6;
      --*(&v7 + 1);
    }

    else
    {
      v3 = v6;
      if (v7)
      {
        v6[v7 - 1] = 0;
      }
    }
  }

  else
  {
    v3 = v6;
    v6[*(&v7 + 1)] = 0;
  }

  v4 = TRegExp::match(this + 9, v3, 0);
  if (v9 == 1 && v6 != v8 && v6)
  {
    MEMORY[0x1B8C85310]();
  }

  return v4;
}

void sub_1B5195BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    TClitics::isValidRoot(va, v3);
  }

  _Unwind_Resume(a1);
}

void TClitics::addWords(TClitics *this, const char **a2, TGraph *a3, TSegmenter *a4)
{
  Segment = TSegmenter::getSegment(a4, a2[2]);
  if (Segment)
  {
    v7 = Segment;
    if (*(Segment + 24) == 1)
    {
      v87 = wcslen(*Segment);
      if (v87 >= 4)
      {
        OutEdge = TVertex::getOutEdge(a2);
        v91 = v7;
        Vertex = TGraph::getVertex(a3, *(v7 + 8));
        if (Vertex)
        {
          v10 = OutEdge == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
LABEL_112:
          if (*(OutEdge + 24) == Vertex && (*(OutEdge + 64) & 0x35) == 0)
          {
            return;
          }

          while (1)
          {
            OutEdge = *(OutEdge + 8);
            if (!OutEdge)
            {
              break;
            }

            if ((*(OutEdge + 32) & 1) == 0)
            {
              goto LABEL_112;
            }
          }
        }

        v11 = *(this + 3);
        if (v11 + 2 > v87)
        {
          v11 = v87 - 2;
        }

        v115 = 0;
        v116 = 6;
        v113 = 0;
        v114 = 0;
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v89 = *(this + 1);
        v86 = v11 + 1;
        if (v89 < v11 + 1)
        {
          v92 = a3;
          v93 = this;
          while (1)
          {
            std::vector<TLexiconMatch>::resize(&v113, 0);
            v12 = *v91;
            v13 = *(this + 4);
            v14 = *(this + 5);
            ActiveConfigHandle = TParam::getActiveConfigHandle((v14 + 16456));
            v16 = *(v14 + 4 * TParam::getValidConfig((v14 + 16456), ActiveConfigHandle) + 16616);
            v17 = *(this + 5);
            v18 = TParam::getActiveConfigHandle((v17 + 16104));
            ValidConfig = TParam::getValidConfig((v17 + 16104), v18);
            TLexicon::findHeadClonesCollated(v13, &v12[v87 - v89], &v116, 1, v16, *(v17 + 4 * ValidConfig + 16264), &v113);
            if (v113 == v114)
            {
              goto LABEL_107;
            }

            v105 = v108;
            v106 = 256;
            v109 = 1;
            v20 = *v91;
            v107 = 0;
            TBuffer<wchar_t>::insert(&v105, 0, v20, v87 - v89);
            v21 = *(this + 5);
            v22 = TParam::getActiveConfigHandle((v21 + 7736));
            if (*(v21 + TParam::getValidConfig((v21 + 7736), v22) + 7888) != 1)
            {
              goto LABEL_24;
            }

            if ((respellRoot(&v105, *v91) & 1) == 0)
            {
              goto LABEL_23;
            }

            v23 = *(this + 4);
            if (v107 >= v106)
            {
              if (v109)
              {
                LODWORD(v102) = 0;
                TBuffer<wchar_t>::insert(&v105, v107, &v102, 1uLL);
                v24 = v105;
                --v107;
              }

              else
              {
                v24 = v105;
                if (v106)
                {
                  v105[v106 - 1] = 0;
                }
              }
            }

            else
            {
              v24 = v105;
              v105[v107] = 0;
            }

            if (TLexicon::checkName(v23, v24, 1, 0xFFFFFFFFFFFFFFFFLL))
            {
LABEL_23:
              v25 = 7;
            }

            else
            {
LABEL_24:
              std::vector<TLexiconMatch>::resize(&v110, 0);
              v26 = *(this + 4);
              if (v107 >= v106)
              {
                if (v109)
                {
                  LODWORD(v102) = 0;
                  TBuffer<wchar_t>::insert(&v105, v107, &v102, 1uLL);
                  v27 = v105;
                  --v107;
                }

                else
                {
                  v27 = v105;
                  if (v106)
                  {
                    v105[v106 - 1] = 0;
                  }
                }
              }

              else
              {
                v27 = v105;
                v105[v107] = 0;
              }

              v28 = TStringParam::get((*(this + 5) + 10736));
              v29 = *(this + 5);
              v30 = TParam::getActiveConfigHandle((v29 + 16456));
              v31 = *(v29 + 4 * TParam::getValidConfig((v29 + 16456), v30) + 16616);
              v32 = *(this + 5);
              v33 = TParam::getActiveConfigHandle((v32 + 16104));
              v34 = TParam::getValidConfig((v32 + 16104), v33);
              TLexicon::findHeadClonesCollated(v26, v27, v28, v31, *(v32 + 4 * v34 + 16264), &v110);
              v35 = *(this + 5);
              v36 = TParam::getActiveConfigHandle((v35 + 12856));
              if ((*(v35 + TParam::getValidConfig((v35 + 12856), v36) + 13008) & 1) == 0)
              {
                v69 = v110;
                if (v111 != v110)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  do
                  {
                    if (TClitics::isValidRoot(this, *&v69[v70]))
                    {
                      if (!v72)
                      {
                        v72 = TGraph::addVertex(a3, 0);
                      }

                      v73 = *&v110[v70];
                      LODWORD(v102) = 1;
                      *v103 = v73;
                      *&v103[8] = *&v110[v70 + 16];
                      TGraph::addEdge(a3, a2, v72, &v102);
                    }

                    ++v71;
                    v69 = v110;
                    v70 += 32;
                  }

                  while (v71 < (v111 - v110) >> 5);
                  if (v72)
                  {
                    v74 = TGraph::addVertex(a3, *(v91 + 8));
                    v75 = v113;
                    if (v114 != v113)
                    {
                      v76 = v74;
                      v77 = 0;
                      v78 = 0;
                      do
                      {
                        v79 = &v75[v77];
                        v80 = *v79;
                        LODWORD(v102) = 1;
                        *v103 = v80;
                        *&v103[8] = *(v79 + 1);
                        TGraph::addEdge(a3, v72, v76, &v102);
                        ++v78;
                        v75 = v113;
                        v77 += 32;
                      }

                      while (v78 < (v114 - v113) >> 5);
                    }
                  }
                }

                goto LABEL_100;
              }

              v37 = *(this + 5);
              v38 = TParam::getActiveConfigHandle((v37 + 12608));
              if (*(v37 + TParam::getValidConfig((v37 + 12608), v38) + 12760))
              {
                v102 = &v103[16];
                *v103 = xmmword_1B5AE2110;
                v104 = 1;
                v98 = v100;
                v99 = xmmword_1B5AE2110;
                v101 = 1;
                v39 = v110;
                if (v111 == v110)
                {
                  goto LABEL_78;
                }

                v40 = 0;
                do
                {
                  v90 = v40;
                  v41 = 32 * v40;
                  if (TClitics::isValidRoot(this, *&v39[32 * v40]))
                  {
                    TWord::getWrittenForm(*&v110[v41], &v105);
                    v42 = v113;
                    if (v114 != v113)
                    {
                      v43 = 0;
                      v44 = 0;
                      do
                      {
                        TWord::getWrittenForm(*&v42[v43], &v98);
                        TBuffer<wchar_t>::operator=(&v102, &v105);
                        TBuffer<wchar_t>::operator+=(&v102, &v98);
                        v45 = *(this + 5);
                        v46 = TParam::getActiveConfigHandle((v45 + 7736));
                        if (*(v45 + TParam::getValidConfig((v45 + 7736), v46) + 7888) != 1)
                        {
                          goto LABEL_45;
                        }

                        if (v107 >= v106)
                        {
                          if (v109)
                          {
                            v94 = 0;
                            TBuffer<wchar_t>::insert(&v105, v107, &v94, 1uLL);
                            v47 = v105;
                            --v107;
                          }

                          else
                          {
                            v47 = v105;
                            if (v106)
                            {
                              v105[v106 - 1] = 0;
                            }
                          }
                        }

                        else
                        {
                          v47 = v105;
                          v105[v107] = 0;
                        }

                        if (respellRoot(&v102, v47))
                        {
LABEL_45:
                          v48 = *(this + 4);
                          if (*&v103[8] >= *v103)
                          {
                            if (v104)
                            {
                              v94 = 0;
                              TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                              v49 = v102;
                              --*&v103[8];
                            }

                            else
                            {
                              v49 = v102;
                              if (*v103)
                              {
                                v102[*v103 - 1] = 0;
                              }
                            }
                          }

                          else
                          {
                            v49 = v102;
                            v102[*&v103[8]] = 0;
                          }

                          if (!TLexicon::checkName(v48, v49, 0, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            v50 = *(this + 4);
                            if (*&v103[8] >= *v103)
                            {
                              v52 = v91;
                              if (v104)
                              {
                                v94 = 0;
                                TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                v51 = v102;
                                --*&v103[8];
                              }

                              else
                              {
                                v51 = v102;
                                if (*v103)
                                {
                                  v102[*v103 - 1] = 0;
                                }
                              }
                            }

                            else
                            {
                              v51 = v102;
                              v102[*&v103[8]] = 0;
                              v52 = v91;
                            }

                            HeadClone = TLexicon::findHeadClone(v50, v51);
                            if (HeadClone)
                            {
                              v54 = 1;
                            }

                            else
                            {
                              v55 = *(this + 4);
                              if (*&v103[8] >= *v103)
                              {
                                if (v104)
                                {
                                  v94 = 0;
                                  TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                  v56 = v102;
                                  --*&v103[8];
                                }

                                else
                                {
                                  v56 = v102;
                                  if (*v103)
                                  {
                                    v102[*v103 - 1] = 0;
                                  }
                                }
                              }

                              else
                              {
                                v56 = v102;
                                v102[*&v103[8]] = 0;
                              }

                              HeadClone = TLexicon::addTempWord(v55, v56, 0, 0, 0);
                              v54 = 4;
                            }

                            v57 = TGraph::addVertex(v92, *(v52 + 8));
                            v58 = *(this + 4);
                            v59 = *v52;
                            if (*&v103[8] >= *v103)
                            {
                              if (v104)
                              {
                                v94 = 0;
                                TBuffer<wchar_t>::insert(&v102, *&v103[8], &v94, 1uLL);
                                v60 = v102;
                                --*&v103[8];
                                this = v93;
                              }

                              else
                              {
                                v60 = v102;
                                if (*v103)
                                {
                                  v102[*v103 - 1] = 0;
                                }
                              }
                            }

                            else
                            {
                              v60 = v102;
                              v102[*&v103[8]] = 0;
                            }

                            v61 = *(this + 5);
                            v62 = TParam::getActiveConfigHandle((v61 + 16456));
                            v63 = *(v61 + 4 * TParam::getValidConfig((v61 + 16456), v62) + 16616);
                            v64 = *(v93 + 5);
                            v65 = TParam::getActiveConfigHandle((v64 + 16104));
                            v66 = TParam::getValidConfig((v64 + 16104), v65);
                            Score = TLexicon::makeScore(v58, v59, v60, v63, *(v64 + 4 * v66 + 16264));
                            v94 = v54;
                            v95 = HeadClone;
                            v96 = Score;
                            v97 = v68;
                            a3 = v92;
                            TGraph::addEdge(v92, *(v92 + 8), v57, &v94);
                            this = v93;
                          }
                        }

                        ++v44;
                        v42 = v113;
                        v43 += 32;
                      }

                      while (v44 < (v114 - v113) >> 5);
                    }
                  }

                  v40 = v90 + 1;
                  v39 = v110;
                }

                while (v90 + 1 < ((v111 - v110) >> 5));
                if (v101)
                {
LABEL_78:
                  if (v98 != v100 && v98)
                  {
                    MEMORY[0x1B8C85310]();
                  }
                }

                if (v104 == 1 && v102 != &v103[16] && v102)
                {
                  MEMORY[0x1B8C85310]();
                }

LABEL_100:
                v25 = 0;
                goto LABEL_101;
              }

              v81 = v110;
              if (v111 == v110)
              {
                goto LABEL_100;
              }

              v82 = 0;
              v83 = 0;
              while ((TClitics::isValidRoot(this, *&v81[v82]) & 1) == 0)
              {
                ++v83;
                v81 = v110;
                v82 += 32;
                if (v83 >= (v111 - v110) >> 5)
                {
                  goto LABEL_100;
                }
              }

              v84 = TLexicon::findHeadClone(*(this + 4), *v91);
              if (!v84)
              {
                v84 = TLexicon::addTempWord(*(this + 4), *v91, 0, 0, 0);
              }

              v85 = TGraph::addVertex(a3, *(v91 + 8));
              LODWORD(v102) = 4;
              *v103 = v84;
              *&v103[8] = 0;
              v103[16] = 0;
              TGraph::addEdge(a3, *(a3 + 8), v85, &v102);
              v25 = 5;
            }

LABEL_101:
            if (v109 == 1 && v105 != v108 && v105)
            {
              MEMORY[0x1B8C85310]();
            }

            if (v25 != 7 && v25)
            {
LABEL_117:
              if (v110)
              {
                v111 = v110;
                operator delete(v110);
              }

              break;
            }

LABEL_107:
            if (++v89 >= v86)
            {
              goto LABEL_117;
            }
          }
        }

        if (v113)
        {
          v114 = v113;
          operator delete(v113);
        }
      }
    }
  }
}

void sub_1B5196698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (LOBYTE(STACK[0xCE8]) == 1 && STACK[0x8D0] != a14 && STACK[0x8D0] != 0)
  {
    MEMORY[0x1B8C85310]();
  }

  v17 = *(v14 - 144);
  if (v17)
  {
    *(v14 - 136) = v17;
    operator delete(v17);
  }

  v18 = *(v14 - 120);
  if (v18)
  {
    *(v14 - 112) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void std::vector<TLexiconMatch>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 32 * a2;
    }
  }

  else
  {
    std::vector<TLexiconMatch>::__append(result, a2 - v2);
  }
}

uint64_t TBuffer<wchar_t>::operator=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4 >= v5)
  {
    if (*(a2 + 1048))
    {
      v8 = 0;
      TBuffer<wchar_t>::insert(a2, v4, &v8, 1uLL);
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
      v6 = *a2;
    }

    else
    {
      v6 = *a2;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a2;
    *(*a2 + 4 * v4) = 0;
  }

  *(a1 + 16) = 0;
  TBuffer<wchar_t>::insert(a1, 0, v6, v4);
  return a1;
}

uint64_t TBuffer<wchar_t>::operator+=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4 >= v5)
  {
    if (*(a2 + 1048))
    {
      v8 = 0;
      TBuffer<wchar_t>::insert(a2, v4, &v8, 1uLL);
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
      v6 = *a2;
    }

    else
    {
      v6 = *a2;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a2;
    *(*a2 + 4 * v4) = 0;
  }

  TBuffer<wchar_t>::insert(a1, *(a1 + 16), v6, v4);
  return a1;
}

void std::vector<TLexiconMatch>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(a1, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * v8 + 32 * a2;
    v15 = 32 * a2;
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 24) = 0;
      *(v16 + 16) = 0;
      v16 += 32;
      v15 -= 32;
    }

    while (v15);
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t quasar::languageIdForLocale(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
      return 0;
    }
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  v2 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(quasar::languageIdForLocale(std::string const&)::idMap, a1);
  if (quasar::languageIdForLocale(std::string const&)::idMap + 8 != v2)
  {
    return *(v2 + 56);
  }

  if (quasar::gLogLevel >= 2)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Unknown locale specified in configuration: ", 43);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v8);
  }

  return 0;
}

void sub_1B5197494(_Unwind_Exception *a1)
{
  v4 = (v2 + 2359);
  v5 = -2368;
  v6 = v4;
  while (1)
  {
    v7 = *v6;
    v6 -= 32;
    if (v7 < 0)
    {
      operator delete(*(v4 - 23));
    }

    v4 = v6;
    v5 += 32;
    if (!v5)
    {
      MEMORY[0x1B8C85350](v1, 0x1020C4062D53EE8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::map<std::string,NLLanguageID>::map[abi:ne200100](uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void quasar::NotchDetector2::NotchDetector2(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5, int a6, float a7, float a8, float a9, float a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x43FA000043340000;
  *(a1 + 32) = xmmword_1B5AE39C0;
  *(a1 + 48) = 1182400512;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0u;
  v20 = (a1 + 72);
  *(a1 + 120) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 120), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 144), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  *(a1 + 176) = 0u;
  *(a1 + 168) = a10;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a6;
  *(a1 + 48) = a9;
  v21 = log2f(a3);
  *v24.i32 = ldexpf(1.0, v21);
  v22 = *v24.i32 / 2;
  *(a1 + 32) = *v24.i32;
  *(a1 + 36) = v22;
  *(a1 + 40) = a4;
  *(a1 + 44) = v22 + 1;
  v23 = (v22 + 1);
  *v24.i32 = floorf((a8 / (a9 * 0.5)) * v23);
  v25 = floorf((a7 / (a9 * 0.5)) * v23);
  *(a1 + 24) = v24.i32[0];
  *(a1 + 28) = v25;
  if (a6)
  {
    printf("notchWidth %d, antiNotch %d, mR %d, mK %d, mN %d \n", *v24.i32, v25, v22, v22 + 1, a4);
  }

  v26 = (a2[1] - *a2) >> 2;
  LODWORD(__p[0]) = 0;
  std::vector<float>::assign(a1, v26, __p, v24);
  v29 = *a2;
  v28 = a2[1];
  if (v28 != *a2)
  {
    v30 = 0;
    do
    {
      *v27.i32 = floorf((*(v29 + 4 * v30) / (*(a1 + 48) * 0.5)) * *(a1 + 44)) + -1.0;
      *(*a1 + 4 * v30) = v27.i32[0];
      if (a6)
      {
        printf("notchVec[%d]=%d \n", v30, *v27.i32);
        v29 = *a2;
        v28 = a2[1];
      }

      ++v30;
    }

    while (v30 < (v28 - v29) >> 2);
  }

  v31 = *(a1 + 32);
  LODWORD(__p[0]) = 0;
  v32 = std::vector<float>::assign((a1 + 96), v31, __p, v27);
  quasar::NotchDetector2::magicWindow(v33, v32, (a1 + 96), *(a1 + 32));
  v34 = *(a1 + 40);
  v35 = 2 * *(a1 + 32);
  v36 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v35, &v36);
  std::vector<std::vector<float>>::assign(v20, v34, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  operator new();
}

void sub_1B51979D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v23 = *(v21 + 24);
  if (v23)
  {
    *(v17 + 208) = v23;
    operator delete(v23);
  }

  v24 = *v21;
  if (*v21)
  {
    *(v17 + 184) = v24;
    operator delete(v24);
  }

  v25 = *v20;
  if (*v20)
  {
    *(v17 + 152) = v25;
    operator delete(v25);
  }

  v26 = *v19;
  if (*v19)
  {
    *(v17 + 128) = v26;
    operator delete(v26);
  }

  v27 = *(v17 + 96);
  if (v27)
  {
    *(v17 + 104) = v27;
    operator delete(v27);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::unique_ptr<kaldi::SplitRadixComplexFft<float>>::reset[abi:ne200100](v18, 0);
  v28 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

_DWORD *std::vector<float>::assign(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<int>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1B5AE0060)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1B5AE0050)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1B5AE0060)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1B5AE0050)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

uint64x2_t quasar::NotchDetector2::magicWindow(uint64x2_t result, uint64_t a2, void *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    *result.i32 = a4;
    v44 = vdupq_lane_s32(*result.i8, 0);
    v45 = vdupq_n_s64(a4 - 1);
    v4 = (a4 + 3) & 0xFFFFFFFC;
    v5 = xmmword_1B5AE0050;
    result = xmmword_1B5AE0060;
    v6 = xmmword_1B5AE39D0;
    v7 = (*a3 + 8);
    __asm { FMOV            V1.4S, #4.0 }

    v43 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v51 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v41 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v42 = _Q4;
    v39 = vdupq_n_s64(4uLL);
    v40 = vdupq_n_s32(0x3FC90FDBu);
    do
    {
      v49 = result;
      v50 = v5;
      v15 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v45, result), vcgeq_u64(v45, v5)));
      v48 = v6;
      v16 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v6), v43), v44);
      v17 = vmovn_s32(vcgtq_f32(v51, v16));
      v18 = vbic_s8(v15, v17);
      v19.i64[0] = 0x4000000040000000;
      v19.i64[1] = 0x4000000040000000;
      v20 = vmovn_s32(vcgtq_f32(v19, v16));
      v21 = vbic_s8(v18, v20);
      v22 = vmovn_s32(vcgtq_f32(v42, v16));
      v23 = vbic_s8(v21, v22);
      v24 = vand_s8(v21, v22);
      v25.i64[0] = 0xC0000000C0000000;
      v25.i64[1] = 0xC0000000C0000000;
      v26 = vand_s8(v18, v20);
      v47 = vorr_s8(vorr_s8(v23, vorr_s8(vand_s8(v15, v17), v26)), v24);
      v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v23), 0x1FuLL)), vsubq_f32(v43, v16), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v16, v25), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), vsubq_f32(v19, v16), v16)));
      v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v23, vorr_s8(v24, v26))), 0x1FuLL));
      v55 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v27.f32), v41)), vmulq_f64(vcvt_hight_f64_f32(v27), v41)), v40);
      v52 = cosf(v55.f32[1]);
      v28.f32[0] = cosf(v55.f32[0]);
      v28.f32[1] = v52;
      v53 = v28;
      v29 = cosf(v55.f32[2]);
      v30 = v53;
      v30.f32[2] = v29;
      v54 = v30;
      v31 = cosf(v55.f32[3]);
      v32 = v54;
      v32.f32[3] = v31;
      v33.i64[0] = 0x3F0000003F000000;
      v33.i64[1] = 0x3F0000003F000000;
      v34.i64[0] = 0xBF000000BF000000;
      v34.i64[1] = 0xBF000000BF000000;
      v35 = vmlaq_f32(v33, v34, v32);
      v36 = vmulq_f32(v35, v35);
      v37 = vsqrtq_f32(vbslq_s8(v46, v36, vsubq_f32(v51, v36)));
      if (v47.i8[0])
      {
        *(v7 - 2) = v37.i32[0];
      }

      if (v47.i8[2])
      {
        *(v7 - 1) = v37.i32[1];
      }

      if (v47.i8[4])
      {
        *v7 = v37.i32[2];
      }

      if (v47.i8[6])
      {
        v7[1] = v37.i32[3];
      }

      v5 = vaddq_s64(v50, v39);
      result = vaddq_s64(v49, v39);
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v6 = vaddq_s32(v48, v38);
      v7 += 4;
      v4 -= 4;
    }

    while (v4);
  }

  return result;
}

void std::vector<std::vector<float>>::assign(uint64_t **a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a2)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * (a1[2] - *a1);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1] - v6;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = &(*a1)[3 * a2];
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<int>::__vallocate[abi:ne200100](this, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1B5AE0060)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1B5AE0050)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_1B5AE0060)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_1B5AE0050)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void quasar::NotchDetector2::computePsd(uint64_t a1, float ***a2)
{
  v4 = *(a1 + 44);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 40);
    v7 = *a2;
    v8 = **a2;
    do
    {
      if (v6 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = *(a1 + 32) + v5;
        v10 = 0.0;
        v11 = v6;
        v12 = v7;
        do
        {
          v13 = *v12;
          v12 += 3;
          v14 = (v13[v9] * v13[v9]) + (v13[v5] * v13[v5]);
          v13[v5] = v14;
          v15 = v14 + 1.0e-16;
          v10 = v10 + (log10f(v15) * 10.0);
          --v11;
        }

        while (v11);
      }

      v8[v5++] = v10 / v6;
    }

    while (v5 != v4);
  }

  if (*(a1 + 224))
  {
    v16 = std::string::basic_string[abi:ne200100]<0>(__p, "notch-detector.psd.txt");
    quasar::NotchDetector2::dumpVec1d(v16, __p, *a2);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B519858C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::NotchDetector2::dumpVec1d(uint64_t a1, uint64_t *a2, float **a3)
{
  v11[19] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(&v9, a2, 16);
  v5 = *a3;
  for (i = a3[1]; v5 != i; ++v5)
  {
    v6 = std::ostream::operator<<();
    v8 = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v8, 1);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v10[*(v9 - 24) - 8], *&v10[*(v9 - 24) + 24] | 4);
  }

  v9 = *MEMORY[0x1E69E54D0];
  *&v10[*(v9 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](v11);
}

BOOL quasar::NotchDetector2::notchDetected(quasar::NotchDetector2 *this, const float *a2, float a3, int a4, float *a5)
{
  v6 = ceilf(*(this + 12) * a3) + -1.0;
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  v8 = *(this + 10);
  if (*(this + 8) + (v8 - 1) * *(this + 9) + v6 <= a4)
  {
    if (v8 >= 1)
    {
      v12 = 0;
      do
      {
        memcpy(*(*(this + 9) + 24 * v12), &a2[v7 + *(this + 9) * v12], 4 * *(this + 8));
        v13 = *(this + 8);
        v14 = *(this + 9);
        if (v13 <= 0)
        {
          v17 = *(v14 + 24 * v12);
        }

        else
        {
          v15 = 0;
          v16 = *(this + 12);
          v17 = *(v14 + 24 * v12);
          do
          {
            v17[v15] = (*(v16 + v15 * 4) * v17[v15]) * 0.000030518;
            v17[v13 + v15++] = 0.0;
          }

          while (v13 != v15);
        }

        kaldi::SplitRadixComplexFft<float>::Compute(*(this + 7), v17, &v17[v13], *(this + 64));
        ++v12;
      }

      while (v12 < *(this + 10));
    }

    if (*(this + 224))
    {
      v18 = std::string::basic_string[abi:ne200100]<0>(__p, "notch-detector.fft.txt");
      quasar::NotchDetector2::dumpVec2d(v18, __p, this + 9);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    quasar::NotchDetector2::computePsd(this, this + 9);
    quasar::NotchDetector2::computeFeatures(this);
    v19 = *(this + 18);
    v20 = *(this + 19) - v19;
    if (v20)
    {
      v21 = v20 >> 2;
      v22 = *(this + 15);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v23 = 0.0;
      do
      {
        v24 = *v19++;
        v25 = v24;
        v26 = *v22++;
        v23 = v23 + (v25 * v26);
        --v21;
      }

      while (v21);
    }

    else
    {
      v23 = 0.0;
    }

    *a5 = v23;
    return v23 > *(this + 42);
  }

  else
  {
    result = 0;
    *a5 = -10000.0;
  }

  return result;
}

void sub_1B5198934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::NotchDetector2::dumpVec2d(uint64_t a1, uint64_t *a2, void *a3)
{
  v13[19] = *MEMORY[0x1E69E9840];
  std::ofstream::basic_ofstream(&v11, a2, 16);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (*(*a3 + 8) - **a3) >> 2;
    v7 = v4 & 0x7FFFFFFF;
    do
    {
      if (v6 >= 1)
      {
        v8 = 0;
        do
        {
          std::ostream::operator<<();
          v10 = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v10, 1);
          ++v8;
        }

        while ((v6 & 0x7FFFFFFF) != v8);
      }

      ++v5;
    }

    while (v5 != v7);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v12[*(v11 - 24) - 8], *&v12[*(v11 - 24) + 24] | 4);
  }

  v11 = *MEMORY[0x1E69E54D0];
  *&v12[*(v11 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](v13);
}

void quasar::NotchDetector2::computeFeatures(quasar::NotchDetector2 *this)
{
  v2 = 0;
  v4 = (this + 144);
  v3 = *(this + 18);
  v5 = *this;
  v6 = (*(this + 1) - *this) >> 2;
  v7 = *(this + 22);
  v8 = *(this + 23);
  v9 = v8 - v7;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 - v7;
  }

  v11 = ((*(this + 19) - v3) >> 2) / v6;
  if (v6 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(this + 1) - *this) >> 2;
  }

  do
  {
    v13 = *(v5 + 4 * v2);
    v14 = *(this + 7);
    *v7 = (v13 - v14);
    v7[1] = v13;
    v7[2] = (v13 + v14);
    if (v8 != v7)
    {
      v15 = 0;
      v16 = *(this + 25) + 4 * v9 * v2;
      do
      {
        *(v16 + 4 * v15) = 0;
        v17 = v7[v15];
        v18 = *(this + 6);
        v19 = (v17 - v18);
        v20 = v18 + v17;
        if (v20 >= v19)
        {
          v21 = v20 - v19 + 1;
          v22 = v21;
          v23 = (**(this + 9) + 4 * v19);
          v24 = 0.0;
          do
          {
            v25 = *v23++;
            v24 = v24 + (v25 / v22);
            *(v16 + 4 * v15) = v24;
            --v21;
          }

          while (v21);
        }

        ++v15;
      }

      while (v15 != v10);
    }

    ++v2;
  }

  while (v2 != v12);
  if (v11 == v9)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4, *(this + 25), *(this + 26), (*(this + 26) - *(this + 25)) >> 2);
  }

  else
  {
    v26 = 0;
    v27 = (*(this + 25) + 4);
    v28 = 4 * v9;
    do
    {
      *(v3 + 4 * v26 * v11) = *(v27 - 1) - *v27;
      *(v3 + 4 + 4 * v26 * v11) = v27[1] - *v27;
      ++v26;
      v27 = (v27 + v28);
      --v12;
    }

    while (v12);
  }

  if (*(this + 224) == 1)
  {
    v29 = std::string::basic_string[abi:ne200100]<0>(__p, "notch-detector.feats.txt");
    quasar::NotchDetector2::dumpVec1d(v29, __p, v4);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B5198D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<kaldi::SplitRadixComplexFft<float>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::SplitRadixComplexFft<float>::~SplitRadixComplexFft(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void quasar::OnlineLASLmRescoringBeamSearchDecoder::OnlineLASLmRescoringBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D020B0;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0;
  *(v3 + 528) = 257;
  *(v3 + 532) = 0x8000001F4;
  *(v3 + 540) = 0;
  *(v3 + 548) = 32;
  std::string::basic_string[abi:ne200100]<0>((v3 + 552), "");
  *(a1 + 624) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 1;
  *(a1 + 720) = xmmword_1B5AE39E0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 1065353216;
  *(a1 + 824) = 0u;
  operator new();
}

void sub_1B5198F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100]((v3 + 832), 0);
  v9 = *(v3 + 824);
  *(v3 + 824) = 0;
  if (v9)
  {
    quasar::OnlineLASLmRescoringBeamSearchDecoder::OnlineLASLmRescoringBeamSearchDecoder(v9);
  }

  v10 = *(v3 + 808);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(v3 + 792);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(v3 + 776);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v3 + 760);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v3 + 744);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v3 + 704);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v3 + 688);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(v3 + 679) < 0)
  {
    operator delete(*(v3 + 656));
  }

  if (*(v3 + 655) < 0)
  {
    operator delete(*v7);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 599) < 0)
  {
    operator delete(*v6);
  }

  if (*(v3 + 575) < 0)
  {
    operator delete(*v4);
  }

  if (*(v3 + 527) < 0)
  {
    operator delete(*(v3 + 504));
  }

  if (*(v3 + 503) < 0)
  {
    operator delete(*(v3 + 480));
  }

  if (*(v3 + 479) < 0)
  {
    operator delete(*v5);
  }

  quasar::Decoder::~Decoder(v3);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASLmRescoringBeamSearchDecoder::~OnlineLASLmRescoringBeamSearchDecoder(void **this)
{
  *this = &unk_1F2D020B0;
  if (*(this + 967) < 0)
  {
    operator delete(this[118]);
  }

  if (*(this + 943) < 0)
  {
    operator delete(this[115]);
  }

  if (*(this + 919) < 0)
  {
    operator delete(this[112]);
  }

  v2 = this[111];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 879) < 0)
  {
    operator delete(this[107]);
  }

  v3 = this[106];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100](this + 104, 0);
  v4 = this[103];
  this[103] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = this[101];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[99];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[97];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = this[95];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = this[93];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = this[88];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = this[86];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 679) < 0)
  {
    operator delete(this[82]);
  }

  if (*(this + 655) < 0)
  {
    operator delete(this[79]);
  }

  v12 = this + 75;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (*(this + 599) < 0)
  {
    operator delete(this[72]);
  }

  if (*(this + 575) < 0)
  {
    operator delete(this[69]);
  }

  if (*(this + 527) < 0)
  {
    operator delete(this[63]);
  }

  if (*(this + 503) < 0)
  {
    operator delete(this[60]);
  }

  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineLASLmRescoringBeamSearchDecoder::~OnlineLASLmRescoringBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineLASLmRescoringBeamSearchDecoder::registerParams(quasar::QsrTextSymbolTable **this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "online-las-lm-rescoring-beam-search");
  quasar::SystemConfig::enforceMinVersion(a2, 208, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::BeamSearchDecoderOptions::Register((this + 66), a2);
  quasar::QsrTextSymbolTable::Register(this[105], a2, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(__p, "model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 57), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS encoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 60), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "decoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS decoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 63), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "batch size");
  quasar::SystemConfig::Register<int>(a2, __p, this + 548, v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "substring-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Substring delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 69), v4, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Token delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 72), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiters");
  std::string::basic_string[abi:ne200100]<0>(v4, "List of token delimiters");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, __p, (this + 75), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split-tokens-by-character");
  std::string::basic_string[abi:ne200100]<0>(v4, "split tokens by character");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 78), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lexicon-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Lexicon FST (to be used for re-tokenization)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 79), v4, 1, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "subword-sym-table-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Subword symbol table");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 107), v4, 1, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lm-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LM FST (to be used for re-tokenization)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 82), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lm-scale");
  std::string::basic_string[abi:ne200100]<0>(v4, "Scaling factor to use for LM weights");
  quasar::SystemConfig::Register<float>(a2, __p, (this + 102), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "subword-oov-symbol");
  std::string::basic_string[abi:ne200100]<0>(v4, "The subword OOV token symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 112), v4, 1, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "word-oov-symbol");
  std::string::basic_string[abi:ne200100]<0>(v4, "The word-level OOV token symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 115), v4, 1, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "word-boundary-symbol");
  std::string::basic_string[abi:ne200100]<0>(v4, "The word boundary subword token symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 118), v4, 1, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mapping-cache-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "Cache size to use for lazy FST mapping operations");
  quasar::SystemConfig::Register<long long>(a2, __p, (this + 91), v4, 0, 208, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B51999B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::BeamSearchDecoderOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "remove-eos");
  std::string::basic_string[abi:ne200100]<0>(__p, "remove EOS labels from output");
  (**a2)(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "remove-sil");
  std::string::basic_string[abi:ne200100]<0>(__p, "remove silence labels from output");
  (**a2)(a2, v6, a1 + 1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-steps");
  std::string::basic_string[abi:ne200100]<0>(__p, "maximum number of decoder steps");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "beam width (must match the model)");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "length-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "length penalty");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "coverage-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "coverage penalty");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5199D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::Register<long long>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  quasar::SystemConfig::Register(a1, a2, a3);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = (a1 + 824);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v23 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 1480), __p, &std::piecewise_construct, &v23, &v22);
  v16[7] = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v23 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 1504), __p, &std::piecewise_construct, &v23, &v22);
  v17[7] = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = (a1 + 824);
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 1528), (a1 + 824), &std::piecewise_construct, __p, &v23);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 7, __p, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5199F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLASLmRescoringBeamSearchDecoder::finishInit(quasar::OnlineLASLmRescoringBeamSearchDecoder *this)
{
  if ((*(this + 479) & 0x8000000000000000) != 0)
  {
    if (*(this + 58))
    {
LABEL_3:
      operator new();
    }
  }

  else if (*(this + 479))
  {
    goto LABEL_3;
  }

  v1 = *(this + 503);
  if (v1 < 0)
  {
    v1 = *(this + 61);
  }

  if (v1)
  {
    v2 = *(this + 527);
    if (v2 < 0)
    {
      v2 = *(this + 64);
    }

    if (v2)
    {
      operator new();
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

float quasar::OnlineLASLmRescoringBeamSearchDecoder::preProcessPath(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 24))(a2);
  if (v4 != -1)
  {
    v6 = v4;
    v7 = 0xFFFFFFFFLL;
    while (1)
    {
      (*(*a2 + 32))(&v59, a2, v6);
      LODWORD(__p) = HIDWORD(v59);
      LODWORD(v42) = v59;
      LODWORD(v39) = 2139095040;
      LODWORD(v32) = 2139095040;
      result = *&v59;
      if (*&v59 != INFINITY)
      {
        break;
      }

      result = *&__p;
      if (*&__p != *&v32)
      {
        break;
      }

      if ((*(*a2 + 40))(a2, v6, *&__p) != 1 && quasar::gLogLevel >= 1)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Invalid path FST. State ", 24);
        v10 = MEMORY[0x1B8C84C00](v9, v6);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " has ", 5);
        v12 = (*(*a2 + 40))(a2, v6);
        v13 = MEMORY[0x1B8C84C30](v11, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " arcs", 5);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v42);
      }

      *&v42 = &unk_1F2CFC800;
      *(&v43 + 1) = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a2);
      v14 = a2[1];
      *(&v42 + 1) = *(*(v14 + 64) + 8 * v6);
      *&v43 = v14 + 8;
      v15 = *(*(&v42 + 1) + 24) + 20 * *(&v43 + 1);
      v39 = *v15;
      v16 = *(v15 + 8);
      v17 = *(v15 + 12);
      v41 = *(v15 + 16);
      v18.n128_f32[0] = v16 + v17;
      LODWORD(v40) = 0;
      HIDWORD(v40) = v18.n128_u32[0];
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::SetValue(&v42, &v39, v18);
      LODWORD(__p) = *(a1 + 984);
      HIDWORD(__p) = __p;
      v36 = 0;
      v37 = v6;
      (*(*a2 + 208))(a2, v6, &__p);
      (*(**(a1 + 880) + 88))(&__p);
      v19 = *(a1 + 600);
      v20 = *(a1 + 608);
      if (v19 != v20)
      {
        if ((v38 & 0x80u) == 0)
        {
          v21 = v38;
        }

        else
        {
          v21 = v36;
        }

        if ((v38 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        while (1)
        {
          v23 = *(v19 + 23);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(v19 + 8);
          }

          if (v23 == v21)
          {
            v25 = v24 >= 0 ? v19 : *v19;
            if (!memcmp(v25, p_p, v21))
            {
              break;
            }
          }

          v19 += 24;
          if (v19 == v20)
          {
            v19 = v20;
            break;
          }
        }
      }

      (*(*a2 + 32))(&v32, a2, v41);
      v62 = *(&v32 + 1);
      v63 = v32;
      v61 = 2139095040;
      v60 = INFINITY;
      v26 = *&v32 != INFINITY || v62 != v60;
      if ((v19 != v20) | !quasar::isAscii(&__p) | v26)
      {
        if (v7 != -1)
        {
          v32 = __PAIR64__(*(a1 + 968), v39);
          v33 = v40;
          v34 = v41;
          (*(*a2 + 208))(a2, v7, &v32);
          v7 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        isAscii = quasar::isAscii(&__p);
        if (v39)
        {
          v28 = isAscii;
        }

        else
        {
          v28 = 0;
        }

        if (v28)
        {
          v29 = (*(*a2 + 200))(a2);
          v30 = v29;
          if (v7 == -1)
          {
            v31 = v6;
          }

          else
          {
            v31 = v7;
          }

          v32 = v39;
          v33 = v40;
          v34 = v29;
          (*(*a2 + 208))(a2, v31, &v32);
          v7 = v30;
        }
      }

      v6 = v41;
      if (v38 < 0)
      {
        operator delete(__p);
      }
    }
  }

  return result;
}

void sub_1B519ACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLASLmRescoringBeamSearchDecoder::composeNbestLatticePathsWithFst(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 224))(a3);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  fst::ConvertNbestToVector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2, &v10);
  v5 = v10;
  if (v10 != v11)
  {
    quasar::OnlineLASLmRescoringBeamSearchDecoder::preProcessPath(a1, v10);
    fst::ArcSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(v5);
    v6 = a1[96];
    v7[0] = FLAGS_fst_default_cache_gc;
    v8 = FLAGS_fst_default_cache_gc_limit;
    fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase(v5, v6, v7);
  }

  v9 = &v10;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1B519AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, char a18)
{
  a16 = &a18;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t fst::ConvertNbestToVector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = v4 - 16;
    v7 = (v4 - 16);
    v8 = (v4 - 16);
    do
    {
      v9 = *v8;
      v8 -= 2;
      (*v9)(v7);
      v6 -= 16;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a2[1] = v5;
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    return result;
  }

  v12 = result;
  v13 = (*(*a1 + 40))(a1, result);
  (*(*a1 + 32))(v37, a1, v12);
  LODWORD(v30[0]) = HIDWORD(v37[0]);
  LODWORD(v32) = v37[0];
  v42 = 2139095040;
  v41 = INFINITY;
  if (*v37 == INFINITY)
  {
    v14 = v41;
    if (*v30 == v41)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 + 1;
    }

    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::reserve(a2, v15);
    if (*v30 == v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::reserve(a2, v13 + 1);
  }

  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
  v16 = (*(*(a2[1] - 16) + 200))();
  v17 = a2[1];
  (*(*a1 + 32))(v37, a1, v12);
  (*(*(v17 - 16) + 184))(v17 - 16, v16, v37);
LABEL_13:
  v39 = 0;
  (*(*a1 + 136))(a1, v12, v37);
  while (1)
  {
    result = v37[0];
    if (v37[0])
    {
      break;
    }

    if (v39 >= v37[2])
    {
      goto LABEL_38;
    }

LABEL_18:
    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v18 = a2[1];
    if (v37[0])
    {
      v19 = (*(*v37[0] + 32))(v37[0]);
    }

    else
    {
      v19 = v37[1] + 20 * v39;
    }

    v21 = *(v18 - 16);
    v20 = v18 - 16;
    v22 = (*(v21 + 200))(v20);
    (*(*v20 + 176))(v20, v22);
    v23 = (*(*v20 + 200))(v20);
    v24 = *(v19 + 8);
    v32 = *v19;
    v33 = v24;
    v34 = v23;
    (*(*v20 + 208))(v20, v22, &v32);
    v25 = *(v19 + 16);
    while ((*(*a1 + 40))(a1, v25))
    {
      (*(*a1 + 32))(&v32, a1, v25);
      v42 = HIDWORD(v32);
      LODWORD(v30[0]) = v32;
      v41 = INFINITY;
      v40 = 2139095040;
      v36 = 0;
      (*(*a1 + 136))(a1, v25, &v32, INFINITY);
      if (v32)
      {
        v26 = (*(*v32 + 32))(v32);
      }

      else
      {
        v26 = v33 + 20 * v36;
      }

      v27 = (*(*v20 + 200))(v20);
      v28 = *(v26 + 8);
      v30[0] = *v26;
      v30[1] = v28;
      v31 = v27;
      (*(*v20 + 208))(v20, v23, v30);
      v25 = *(v26 + 16);
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      else if (v35)
      {
        --*v35;
      }

      v23 = v27;
    }

    (*(*a1 + 32))(&v32, a1, v25);
    v42 = HIDWORD(v32);
    LODWORD(v30[0]) = v32;
    v41 = INFINITY;
    v40 = 2139095040;
    v29.n128_u32[0] = v32;
    if (*&v32 == INFINITY)
    {
      v29.n128_u32[0] = v40;
    }

    (*(*a1 + 32))(&v32, a1, v25, v29);
    (*(*v20 + 184))(v20, v23, &v32);
    if (v37[0])
    {
      (*(*v37[0] + 40))(v37[0]);
    }

    else
    {
      ++v39;
    }
  }

  if (!(*(*v37[0] + 24))(v37[0]))
  {
    goto LABEL_18;
  }

  result = v37[0];
  if (v37[0])
  {
    return (*(*v37[0] + 8))(v37[0]);
  }

LABEL_38:
  if (v38)
  {
    --*v38;
  }

  return result;
}

void sub_1B519B608(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21)
{
  if (a18)
  {
    (*(*a18 + 8))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a21)
  {
    --*a21;
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B519B71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B519B818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  fst::AutoQueue<int>::~AutoQueue(va);
  v15 = *(v13 - 104);
  if (v15)
  {
    *(v13 - 96) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineLASLmRescoringBeamSearchDecoder::runImpl(uint64_t a1, uint64_t *a2, std::vector<std::wstring> **a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  quasar::SymbolTableList::clear((*a3)[20].__end_);
  end = (*a3)[20].__end_;
  v9 = *(a1 + 848);
  v39 = *(a1 + 840);
  v40 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(end, &v39, 0, -1);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  kaldi::quasar::OnlineLASDecodable::OnlineLASDecodable(v38, *(a1 + 824), *a2, *(a1 + 548));
  memset(&v37, 0, sizeof(v37));
  kaldi::BeamSearchDecoder::InitDecoding(*(a1 + 832));
  while (1)
  {
    v10 = kaldi::BeamSearchDecoder::Finished(*(a1 + 832));
    v13 = *(a1 + 832);
    if (v10)
    {
      break;
    }

    if (kaldi::BeamSearchDecoder::AdvanceDecoding(v13, v38, 1) >= 1)
    {
      fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst(v19);
    }
  }

  kaldi::BeamSearchDecoder::FinalizeDecoding(v13, v11, v12);
  (*(**(a1 + 824) + 72))(*(a1 + 824));
  v14 = kaldi::quasar::OnlineLASDecodable::FrameOffset(v38);
  v15 = *a3;
  while (1)
  {
    *(v15 + 592) = v14;
    if (!kaldi::OnlineFeatureMatrix::IsValidFrame(*a2, v14, 1))
    {
      break;
    }

    v15 = *a3;
    v14 = LODWORD((*a3)[24].__end_cap_.__value_) + 1;
  }

  v16 = *a3;
  *(v16 + 596) = *(*a4 + 20);
  *(v16 + 597) = 257;
  v17 = kaldi::BeamSearchDecoder::ReachedFinal(*(a1 + 832), -1);
  v18 = quasar::gLogLevel < 4 || v17;
  if ((v18 & 1) == 0)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Decoder did not reach end-state, outputting partial traceback.", 62);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B519C5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 176);
  if (v33)
  {
    *(v30 - 168) = v33;
    operator delete(v33);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a29);
  if (*(v30 - 233) < 0)
  {
    operator delete(*(v30 - 256));
  }

  if (v29)
  {
    operator delete(v29);
  }

  kaldi::quasar::OnlineLASDecodable::~OnlineLASDecodable((v30 - 232));
  _Unwind_Resume(a1);
}

__n128 std::accumulate[abi:ne200100]<std::__wrap_iter<std::string *>,std::string>@<Q0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v7, &v9);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v9;
      *(a3 + 16) = v10;
      v7 += 3;
    }

    while (v7 != a2);
  }

  result = *a3;
  *a4 = *a3;
  *(a4 + 16) = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  return result;
}

void quasar::formatWordResults(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, const void **a6@<X5>, const void **a7@<X6>, void **a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  memset(&__p, 0, sizeof(__p));
  std::vector<std::vector<std::string>>::vector[abi:ne200100](v65, 1uLL, &__p);
  v55.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (a2[1] != *a2)
  {
    v11 = 0;
    do
    {
      v12 = *a5;
      v13 = a5[1];
      v14 = *a1 + 24 * v11;
      v15 = v11 >> 6;
      if (*a5 != v13)
      {
        v16 = *(v14 + 23);
        if (v16 >= 0)
        {
          v17 = *(v14 + 23);
        }

        else
        {
          v17 = *(v14 + 8);
        }

        if (v16 >= 0)
        {
          v18 = (*a1 + 24 * v11);
        }

        else
        {
          v18 = *v14;
        }

        while (1)
        {
          v19 = *(v12 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v12 + 8);
          }

          if (v19 == v17)
          {
            v21 = v20 >= 0 ? v12 : *v12;
            if (!memcmp(v21, v18, v17))
            {
              break;
            }
          }

          v12 += 24;
          if (v12 == v13)
          {
            goto LABEL_21;
          }
        }
      }

      if (v12 == v13)
      {
LABEL_21:
        v22 = 1 << v11;
        if ((*(*a3 + 8 * v15) & (1 << v11)) == 0)
        {
          v23 = *(v14 + 23);
          if (v23 >= 0)
          {
            v24 = *(v14 + 23);
          }

          else
          {
            v24 = *(v14 + 8);
          }

          v25 = *(a6 + 23);
          v26 = v25;
          if (v25 < 0)
          {
            v25 = a6[1];
          }

          if (v24 == v25 && (v23 >= 0 ? (v27 = v14) : (v27 = *v14), v26 >= 0 ? (v28 = a6) : (v28 = *a6), !memcmp(v27, v28, v24)))
          {
            memset(&__p, 0, sizeof(__p));
            std::vector<std::vector<std::string>>::push_back[abi:ne200100](v65, &__p);
            v55.__r_.__value_.__r.__words[0] = &__p;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
          }

          else
          {
            std::vector<std::string>::push_back[abi:ne200100](v65[1] - 24, v14);
          }
        }
      }

      else
      {
        v22 = 1 << v11;
      }

      v29 = *a2;
      if ((*(*a4 + 8 * v15) & v22) == 0)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v62, (v29 + 24 * v11));
        v29 = *a2;
      }

      ++v11;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - v29) >> 3) > v11);
    v30 = v62;
    if (v63 != v62)
    {
      v31 = 0;
      v50 = *MEMORY[0x1E69E54D8];
      v32 = *(MEMORY[0x1E69E54D8] + 72);
      v47 = *(MEMORY[0x1E69E54D8] + 64);
      do
      {
        v33 = v30 + 24 * v31;
        v34 = *(v33 + 23);
        if (v34 >= 0)
        {
          v35 = *(v33 + 23);
        }

        else
        {
          v35 = *(v33 + 8);
        }

        v36 = *(a7 + 23);
        v37 = v36;
        if (v36 < 0)
        {
          v36 = a7[1];
        }

        if (v35 == v36 && (v34 >= 0 ? (v38 = v33) : (v38 = *v33), v37 >= 0 ? (v39 = a7) : (v39 = *a7), !memcmp(v38, v39, v35)))
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
          v40 = (v65[0] + 24 * v31);
          v42 = *v40;
          v41 = v40[1];
          while (v42 != v41)
          {
            if (*(v42 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v55, *v42, *(v42 + 1));
            }

            else
            {
              v43 = *v42;
              v55.__r_.__value_.__r.__words[2] = *(v42 + 2);
              *&v55.__r_.__value_.__l.__data_ = v43;
            }

            if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v44 = &v55;
            }

            else
            {
              v44 = v55.__r_.__value_.__r.__words[0];
            }

            if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v55.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], v44, size);
            if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v55.__r_.__value_.__l.__data_);
            }

            v42 = (v42 + 24);
          }

          std::stringbuf::str();
          std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(&v55, &v53, v65[0] + 3 * v31);
          std::vector<std::pair<std::string,std::vector<std::string>>>::push_back[abi:ne200100](a8, &v55);
          v66 = &v56;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v66);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (v54 < 0)
          {
            operator delete(v53);
          }

          __p.__r_.__value_.__r.__words[0] = v50;
          *(__p.__r_.__value_.__r.__words + *(v50 - 24)) = v47;
          __p.__r_.__value_.__r.__words[2] = v32;
          v58 = MEMORY[0x1E69E5548] + 16;
          if (v60 < 0)
          {
            operator delete(v59[7].__locale_);
          }

          v58 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v59);
          std::iostream::~basic_iostream();
          MEMORY[0x1B8C85200](&v61);
        }

        else
        {
          std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(&__p, v33, v65[0] + 3 * v31);
          std::vector<std::pair<std::string,std::vector<std::string>>>::push_back[abi:ne200100](a8, &__p);
          v55.__r_.__value_.__r.__words[0] = &v58;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        ++v31;
        v30 = v62;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v63 - v62) >> 3) > v31);
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = v65;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B519CE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  a20 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
  a30 = v30 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = v30 - 120;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a10;
  std::vector<std::pair<std::string,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **std::vector<std::vector<std::string>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::string>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **std::vector<std::pair<std::string,std::vector<std::string>>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<std::string>>>>(result, v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 24) = *(a2 + 24);
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::pair<std::string,std::vector<std::string>>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    v7 = (v4 + 48);
  }

  v3[1] = v7;
  return result;
}

void *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D02188;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

unint64_t fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 64))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

double fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Final@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0)
  {
    (*(*a1 + 72))(&v12, a1, a2);
    v6 = v12;
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v6;
    *(MutableState + 48) |= 9u;
  }

  v8 = a1[15];
  if (*(v8 + 76) == a2)
  {
    v9 = (v8 + 80);
  }

  else
  {
    v9 = (*(v8 + 8) + 8 * a2 + 8);
  }

  v10 = *v9;
  result = *v10;
  *a3 = *v10;
  return result;
}

uint64_t fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 88) == 1)
  {
    v5 = *(MutableState + 48);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 48) = v5 | 4;
      v6 = *(MutableState + 32) - *(MutableState + 24) + *(a1 + 112) + 56;
      *(a1 + 112) = v6;
      *(a1 + 104) = 1;
      if (v6 > *(a1 + 96))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 76);
  if (v3 == a2)
  {
    return *(a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 76) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(a1, 0);
      *(a1 + 80) = MutableState;
      *(MutableState + 48) |= 4u;
      std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::reserve((MutableState + 24), 0x80uLL);
      return *(a1 + 80);
    }

    v5 = *(a1 + 80);
    if (!v5[6].i32[1])
    {
      *(a1 + 76) = a2;
      *v5 = vneg_f32(0x7F0000007FLL);
      v5[6].i32[0] = 0;
      v5[1] = 0;
      v5[2] = 0;
      v5[4] = v5[3];
      result = *(a1 + 80);
      *(result + 48) |= 4u;
      return result;
    }

    v5[6].i32[0] &= ~4u;
    *(a1 + 72) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GC(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 104) == 1)
  {
    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v45, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v12 = MEMORY[0x1B8C84BB0](v11, a1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), free recently cached = ", 26);
      v14 = MEMORY[0x1B8C84BD0](v13, a3);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache size = ", 15);
      v16 = MEMORY[0x1B8C84C30](v15, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", cache frac = ", 15);
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", cache limit = ", 16);
      v19 = MEMORY[0x1B8C84C30](v18, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
      fst::LogMessage::~LogMessage(v45);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = (*(a1 + 96) * a4);
    v21 = *(a1 + 40);
    *(a1 + 56) = v21;
    while (v21 != a1 + 32)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v22 - 1;
      }

      else
      {
        v23 = *(a1 + 76);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::GetMutableState(a1, v23);
      v25 = *(a1 + 112);
      if (v25 > v20 && !*(MutableState + 52))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v26 = *(MutableState + 48);
LABEL_19:
            if ((v26 & 4) != 0)
            {
              v27 = *(MutableState + 32) - *(MutableState + 24) + 56;
              FstCheck(v27 <= v25, "(size) <= (cache_size_)", "../libquasar/libkaldi/tools/openfst/src/include/fst/cache.h", 730);
              *(a1 + 112) -= v27;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Delete(a1);
            v21 = *(a1 + 56);
            continue;
          }
        }

        else
        {
          v26 = *(MutableState + 48);
          if ((v26 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 48) &= ~8u;
      v21 = *(*(a1 + 56) + 8);
      *(a1 + 56) = v21;
    }

    if ((a3 & 1) != 0 || *(a1 + 112) <= v20)
    {
      v28 = *(a1 + 112);
      if (v20)
      {
        if (v28 > v20)
        {
          v29 = *(a1 + 96);
          do
          {
            v29 *= 2;
            v30 = v28 > 2 * v20;
            v20 *= 2;
          }

          while (v30);
          *(a1 + 96) = v29;
        }
      }

      else if (v28)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        }

        v31 = fst::LogMessage::LogMessage(&v48, __p);
        v32 = fst::cerr(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v48);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "INFO");
      v33 = fst::LogMessage::LogMessage(&v47, v45);
      v34 = fst::cerr(v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "GCCacheStore: Exit GC: object = ", 32);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(", 1);
      v37 = MEMORY[0x1B8C84BB0](v36, a1);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "), free recently cached = ", 26);
      v39 = MEMORY[0x1B8C84BD0](v38, a3);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", cache size = ", 15);
      v41 = MEMORY[0x1B8C84C30](v40, *(a1 + 112));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", cache frac = ", 15);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", cache limit = ", 16);
      v44 = MEMORY[0x1B8C84C30](v43, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\n", 1);
      fst::LogMessage::~LogMessage(&v47);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }
  }
}

void sub_1B519DBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2 = (a1 + 8);
  if (a2 >= ((v4 - v3) >> 3))
  {
    v6 = 0;
    std::vector<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::resize(v2, a2 + 1, &v6);
    goto LABEL_5;
  }

  if (!*(v3 + 8 * a2))
  {
LABEL_5:
    operator new();
  }

  return *(v3 + 8 * a2);
}

unint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((*(*v5 + 32) - *(*v5 + 24)) >> 2);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

std::string *std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string&,std::vector<std::string>&,0>(std::string *this, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void sub_1B519DF58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string,std::vector<std::string>&,0>(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = (a1 + 24);
  v5[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1B519DFD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

kaldi::BeamSearchDecoder *std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100](kaldi::BeamSearchDecoder **a1, kaldi::BeamSearchDecoder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::BeamSearchDecoder::~BeamSearchDecoder(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void kaldi::BeamSearchDecoder::~BeamSearchDecoder(kaldi::BeamSearchDecoder *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v10 = (this + 208);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    *(this + 6) = v9;
    operator delete(v9);
  }
}

void std::__shared_ptr_emplace<fst::StdToLatticeMapper<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D02250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::StdToLatticeMapper<float>&,fst::ArcMapFstOptions &,std::allocator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D022A0;
  fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::ArcMapFst(a1 + 3, a2, a3, a4);
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D022A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

unint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(a1, v2);
  v3 = (*(**(a1 + 136) + 120))(*(a1 + 136));
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(a1, v3);
  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    result = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    *(a1 + 8) = *(a1 + 8) & 4 | result;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B519E81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFC7C8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D02450;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

void sub_1B519E9EC(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(void *a1)
{
  *a1 = &unk_1F2D02450;
  v2 = a1[15];
  if (v2)
  {
    v3 = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorCacheStore(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C407A9BBF1FLL);
  }

  v4 = a1[9];
  if (v4)
  {
    operator delete(v4);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::~FstImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D023D0;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0xC400A2AC0F1);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>,fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D02488;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

double fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Final@<D0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 156);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      if (*(a1 + 160) == a2)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = INFINITY;
      }

      v8 = v7;
      goto LABEL_20;
    }

    v10 = *(a1 + 136);
    v9 = *(a1 + 160);
LABEL_11:
    v12 = v9 != -1 && v9 <= a2;
    v7 = (*(*v10 + 32))(v10, (a2 - v12));
    if (v7 == INFINITY)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 160);
  v7 = 0.0;
  v8 = 0.0;
  if (v9 != a2)
  {
    v10 = *(a1 + 136);
    goto LABEL_11;
  }

LABEL_20:
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  *MutableState = v7;
  *(MutableState + 4) = v8;
  *(MutableState + 48) |= 9u;
LABEL_21:
  v14 = *(a1 + 120);
  if (*(v14 + 76) == a2)
  {
    v15 = (v14 + 80);
  }

  else
  {
    v15 = (*(v14 + 8) + 8 * a2 + 8);
  }

  v16 = *v15;
  result = *v16;
  *a3 = *v16;
  return result;
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::NumArcs(uint64_t a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Expand(a1, a2, v4);
  }

  v5 = *(a1 + 120);
  if (*(v5 + 76) == a2)
  {
    v6 = v5 + 80;
  }

  else
  {
    v6 = *(v5 + 8) + 8 * a2 + 8;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((*(*v6 + 32) - *(*v6 + 24)) >> 2);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Expand(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  v5 = *(a1 + 160);
  if (v5 == a2)
  {

    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, a2);
    return;
  }

  v6 = *(a1 + 136);
  v8 = v5 != -1 && v5 <= a2;
  v36 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v32, a3);
  while (1)
  {
    if (!v32)
    {
      if (v36 >= v34)
      {
        goto LABEL_33;
      }

      goto LABEL_17;
    }

    if ((*(*v32 + 24))(v32))
    {
      break;
    }

    if (v32)
    {
      v9 = (*(*v32 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = v33 + 16 * v36;
LABEL_18:
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 12);
    v13 = *(a1 + 160);
    if (v13 != -1 && v13 <= v12)
    {
      ++v12;
    }

    if (v12 >= *(a1 + 164))
    {
      *(a1 + 164) = v12 + 1;
    }

    v39 = v11;
    v38 = INFINITY;
    if (v11 == INFINITY)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0.0;
    }

    v28 = v10;
    v29 = v11;
    v30 = v15;
    v31 = v12;
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), v3);
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100]((MutableState + 24), &v28);
    if (v32)
    {
      (*(*v32 + 40))(v32);
    }

    else
    {
      ++v36;
    }
  }

  if (v32)
  {
    (*(*v32 + 8))();
    goto LABEL_35;
  }

LABEL_33:
  if (v35)
  {
    --*v35;
  }

LABEL_35:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, v3) & 1) == 0 || (fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>::Final(a1, v3, &v32), v39 = *(&v32 + 1), LODWORD(v28) = v32, v38 = INFINITY, v37 = INFINITY, *&v32 == INFINITY) && v39 == v37)
  {
    v17 = *(a1 + 156);
    if (v17 == 2)
    {
      v21 = *(a1 + 160);
      v23 = v21 != -1 && v21 <= v3;
      v24 = (*(**(a1 + 136) + 32))(*(a1 + 136), (v3 - v23));
      *&v32 = v24;
      LODWORD(v28) = 2139095040;
      v25 = 0.0;
      if (v24 == INFINITY)
      {
        v25 = v24;
      }

      *&v32 = v24;
      *&v28 = v25;
      v39 = INFINITY;
      v38 = INFINITY;
      if (v24 != INFINITY || *&v28 != v38)
      {
        v26 = *(a1 + 160);
        v32 = 0;
        v33 = __PAIR64__(LODWORD(v25), LODWORD(v24));
        LODWORD(v34) = v26;
        v27 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), v3);
        std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100]((v27 + 24), &v32);
      }
    }

    else if (v17 == 1)
    {
      v18 = *(a1 + 160);
      v20 = v18 != -1 && v18 <= v3;
      LODWORD(v32) = (*(**(a1 + 136) + 32))(*(a1 + 136), (v3 - v20));
      LODWORD(v28) = 2139095040;
    }
  }

  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::SetArcs(a1, v3);
}