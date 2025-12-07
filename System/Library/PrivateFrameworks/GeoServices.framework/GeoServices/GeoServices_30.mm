void sub_1868934D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *__s, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  addr_obj::AddressObjectProto::~AddressObjectProto(&a10);
  if (a2 == 4)
  {
    v67 = __cxa_begin_catch(a1);
    std::string::basic_string[abi:ne200100]<0>(&a10, "Exception: ");
    v68 = (*(*v67 + 16))(v67);
    std::string::basic_string[abi:ne200100]<0>(&__p, v68);
    addr_obj::Json::append(&a39, &a10, &__p);
    if (a37 < 0)
    {
      operator delete(__p);
    }

    if (a15 < 0)
    {
      operator delete(a10);
    }

    __cxa_end_catch();
    JUMPOUT(0x1868932FCLL);
  }

  std::ostringstream::~ostringstream(&a39);
  std::ostringstream::~ostringstream(&a65);
  __cxa_call_unexpected(a1);
}

void sub_1868941C8(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 113, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 113, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186894198);
}

void sub_186894494(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868941C0);
}

void sub_1868947A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868940C8);
}

void sub_1868948E4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 113, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 113, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186893F6CLL);
}

void sub_186894B38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186893F9CLL);
}

void sub_186894C6C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 113, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 113, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186893E08);
}

void sub_186894EC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186893E6CLL);
}

void sub_1868954F0(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 112, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 112, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868954C0);
}

void sub_1868957BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868954E8);
}

void sub_186895AD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868953F0);
}

void sub_186895C0C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 112, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 112, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186895294);
}

void sub_186895E60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868952C4);
}

void sub_186895F94(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 112, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 112, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186895130);
}

void sub_1868961EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186895194);
}

void sub_186896818(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 111, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 111, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868967E8);
}

void sub_186896AE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186896810);
}

void sub_186896DF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186896718);
}

void sub_186896F34(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 111, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 111, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868965BCLL);
}

void sub_186897188(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868965ECLL);
}

void sub_1868972BC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 111, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 111, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186896458);
}

void sub_186897514(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868964BCLL);
}

void sub_186897B40(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 110, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 110, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186897B10);
}

void sub_186897E0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186897B38);
}

void sub_186898120(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186897A40);
}

void sub_18689825C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 110, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 110, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868978E4);
}

void sub_1868984B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186897914);
}

void sub_1868985E4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 110, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 110, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186897780);
}

void sub_18689883C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868977E4);
}

void sub_186898E68(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 109, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 109, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186898E38);
}

void sub_186899134(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186898E60);
}

void sub_186899448(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186898D68);
}

void sub_186899584(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 109, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 109, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186898C0CLL);
}

void sub_1868997D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186898C3CLL);
}

void sub_18689990C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 109, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 109, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186898AA8);
}

void sub_186899B64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186898B0CLL);
}

void sub_18689A190(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 108, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 108, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689A160);
}

void sub_18689A45C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689A188);
}

void sub_18689A770(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689A090);
}

void sub_18689A8AC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 108, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 108, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186899F34);
}

void sub_18689AB00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186899F64);
}

void sub_18689AC34(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 108, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 108, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186899DD0);
}

void sub_18689AE8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186899E34);
}

void sub_18689B4B8(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 107, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 107, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689B488);
}

void sub_18689B784(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689B4B0);
}

void sub_18689BA98(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689B3B8);
}

void sub_18689BBD4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 107, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 107, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689B25CLL);
}

void sub_18689BE28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689B28CLL);
}

void sub_18689BF5C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 107, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 107, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689B0F8);
}

void sub_18689C1B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689B15CLL);
}

void sub_18689C7E0(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 106, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 106, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689C7B0);
}

void sub_18689CAAC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689C7D8);
}

void sub_18689CDC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689C6E0);
}

void sub_18689CEFC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 106, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 106, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689C584);
}

void sub_18689D150(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689C5B4);
}

void sub_18689D284(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 106, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 106, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689C420);
}

void sub_18689D4DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689C484);
}

void sub_18689DB08(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 105, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 105, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689DAD8);
}

void sub_18689DDD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689DB00);
}

void sub_18689E0E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689DA08);
}

void sub_18689E224(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 105, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 105, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689D8ACLL);
}

void sub_18689E478(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689D8DCLL);
}

void sub_18689E5AC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 105, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 105, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689D748);
}

void sub_18689E804(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689D7ACLL);
}

void sub_18689EE30(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 104, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 104, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689EE00);
}

void sub_18689F0FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689EE28);
}

void sub_18689F410(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689ED30);
}

void sub_18689F54C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 104, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 104, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689EBD4);
}

void sub_18689F7A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689EC04);
}

void sub_18689F8D4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 104, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 104, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689EA70);
}

void sub_18689FB2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689EAD4);
}

void sub_1868A0158(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 103, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 103, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A0128);
}

void sub_1868A0424(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A0150);
}

void sub_1868A0738(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A0058);
}

void sub_1868A0874(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 103, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 103, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689FEFCLL);
}

void sub_1868A0AC8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689FF2CLL);
}

void sub_1868A0BFC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 103, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 103, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18689FD98);
}

void sub_1868A0E54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18689FDFCLL);
}

void sub_1868A1480(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 102, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 102, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A1450);
}

void sub_1868A174C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A1478);
}

void sub_1868A1A60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A1380);
}

void sub_1868A1B9C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 102, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 102, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A1224);
}

void sub_1868A1DF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A1254);
}

void sub_1868A1F24(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 102, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 102, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A10C0);
}

void sub_1868A217C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A1124);
}

void sub_1868A27A8(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 101, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 101, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A2778);
}

void sub_1868A2A74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A27A0);
}

void sub_1868A2D88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A26A8);
}

void sub_1868A2EC4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 101, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 101, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A254CLL);
}

void sub_1868A3118(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A257CLL);
}

void sub_1868A324C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 101, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 101, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A23E8);
}

void sub_1868A34A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A244CLL);
}

void sub_1868A3AD0(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 100, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 100, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A3AA0);
}

void sub_1868A3D9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A3AC8);
}

void sub_1868A40B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A39D0);
}

void sub_1868A41EC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 100, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 100, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A3874);
}

void sub_1868A4440(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A38A4);
}

void sub_1868A4574(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 100, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 100, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A3710);
}

void sub_1868A47CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A3774);
}

void sub_1868A4DF8(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 99, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 99, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A4DC8);
}

void sub_1868A50C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A4DF0);
}

void sub_1868A53D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A4CF8);
}

void sub_1868A5514(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 99, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 99, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A4B9CLL);
}

void sub_1868A5768(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A4BCCLL);
}

void sub_1868A589C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 99, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 99, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A4A38);
}

void sub_1868A5AF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A4A9CLL);
}

void sub_1868A6120(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 98, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 98, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A60F0);
}

void sub_1868A63EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A6118);
}

void sub_1868A6700(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A6020);
}

void sub_1868A683C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 98, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 98, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A5EC4);
}

void sub_1868A6A90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A5EF4);
}

void sub_1868A6BC4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 98, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 98, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A5D60);
}

void sub_1868A6E1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A5DC4);
}

void sub_1868A7448(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 97, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 97, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A7418);
}

void sub_1868A7714(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A7440);
}

void sub_1868A7A28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A7348);
}

void sub_1868A7B64(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 97, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 97, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A71ECLL);
}

void sub_1868A7DB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A721CLL);
}

void sub_1868A7EEC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 97, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 97, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A7088);
}

void sub_1868A8144(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A70ECLL);
}

void sub_1868A8770(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 96, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 96, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A8740);
}

void sub_1868A8A3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A8768);
}

void sub_1868A8D50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A8670);
}

void sub_1868A8E8C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 96, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 96, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A8514);
}

void sub_1868A90E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A8544);
}

void sub_1868A9214(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 96, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 96, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A83B0);
}

void sub_1868A946C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A8414);
}

void sub_1868A9A98(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 95, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 95, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A9A68);
}

void sub_1868A9D64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A9A90);
}

void sub_1868AA078(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A9998);
}

void sub_1868AA1B4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 95, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 95, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A983CLL);
}

void sub_1868AA408(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A986CLL);
}

void sub_1868AA53C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 95, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 95, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868A96D8);
}

void sub_1868AA794(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868A973CLL);
}

void sub_1868AADC0(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 94, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 94, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AAD90);
}

void sub_1868AB08C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AADB8);
}

void sub_1868AB3A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AACC0);
}

void sub_1868AB4DC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 94, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 94, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AAB64);
}

void sub_1868AB730(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AAB94);
}

void sub_1868AB864(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 94, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 94, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AAA00);
}

void sub_1868ABABC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AAA64);
}

void sub_1868AC0E8(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 93, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 93, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AC0B8);
}

void sub_1868AC3B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AC0E0);
}

void sub_1868AC6C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868ABFE8);
}

void sub_1868AC804(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 93, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 93, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868ABE8CLL);
}

void sub_1868ACA58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868ABEBCLL);
}

void sub_1868ACB8C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 93, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 93, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868ABD28);
}

void sub_1868ACDE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868ABD8CLL);
}

void sub_1868AD410(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 92, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 92, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AD3E0);
}

void sub_1868AD6DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AD408);
}

void sub_1868AD9F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AD310);
}

void sub_1868ADB2C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 92, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 92, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AD1B4);
}

void sub_1868ADD80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AD1E4);
}

void sub_1868ADEB4(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 92, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 92, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AD050);
}

void sub_1868AE10C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AD0B4);
}

void sub_1868AE738(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 91, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 91, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AE708);
}

void sub_1868AEA04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AE730);
}

void sub_1868AED18(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AE638);
}

void sub_1868AEE54(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 91, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 91, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AE4DCLL);
}

void sub_1868AF0A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AE50CLL);
}

void sub_1868AF1DC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 91, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 91, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AE378);
}

void sub_1868AF434(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AE3DCLL);
}

void sub_1868AFA60(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 90, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 90, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AFA30);
}

void sub_1868AFD2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AFA58);
}

void sub_1868B0040(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AF960);
}

void sub_1868B017C(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 90, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 90, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AF804);
}

void sub_1868B03D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AF834);
}

void sub_1868B0504(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, std::string::size_type a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  v49 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a40) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42);
  v51 = __cxa_begin_catch(a1);
  if (v49 == v48)
  {
    v52 = v51;
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v53 = (*(*v52 + 16))(v52);
    v54 = std::string::append(&a32, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    a40 = v54->__r_.__value_.__r.__words[2];
    *v47 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a42, 90, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a42, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a42, 90, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a40) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a47 < 0)
    {
      operator delete(a42);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868AF6A0);
}

void sub_1868B075C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868AF704);
}

void sub_1868B0D88(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, __int128 a38, std::string::size_type a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a39) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a41);
  v49 = __cxa_begin_catch(a1);
  if (v47 == v46)
  {
    v50 = v49;
    std::string::basic_string[abi:ne200100]<0>(&a41, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v51 = (*(*v50 + 16))(v50);
    v52 = std::string::append(&a32, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    a39 = v52->__r_.__value_.__r.__words[2];
    a38 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a41, 89, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a39) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a41, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a41, 89, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a39) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868B0D58);
}

void sub_1868B1058(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868B0D80);
}

void sub_1868B1370(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868B0C88);
}

void sub_1868B14AC(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, __int128 a38, std::string::size_type a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a39) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a41);
  v49 = __cxa_begin_catch(a1);
  if (v47 == v46)
  {
    v50 = v49;
    std::string::basic_string[abi:ne200100]<0>(&a41, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v51 = (*(*v50 + 16))(v50);
    v52 = std::string::append(&a32, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    a39 = v52->__r_.__value_.__r.__words[2];
    a38 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a41, 89, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a39) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a41, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a41, 89, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a39) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868B0B2CLL);
}

void sub_1868B1704(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868B0B5CLL);
}

void sub_1868B1840(void *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::string *a24, void *a25, void *__pa, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, __int128 a38, std::string::size_type a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v47 = a2;
  if (SHIBYTE(a31) < 0)
  {
    operator delete(__pa);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (SHIBYTE(a39) < 0)
  {
    operator delete(a38);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a41);
  v49 = __cxa_begin_catch(a1);
  if (v47 == v46)
  {
    v50 = v49;
    std::string::basic_string[abi:ne200100]<0>(&a41, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a32, "Exception caught during formatting of the log line: ");
    v51 = (*(*v50 + 16))(v50);
    v52 = std::string::append(&a32, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    a39 = v52->__r_.__value_.__r.__words[2];
    a38 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a41, 89, &a10, &a38, &__pa);
    if (SHIBYTE(a31) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a39) < 0)
    {
      operator delete(a38);
    }

    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a41, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a10, "toDebugJsonString");
    std::string::basic_string[abi:ne200100]<0>(&a38, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a32, "");
    addr_obj::Logger::log(16, &a41, 89, &a10, &a38, &a32);
    if (a37 < 0)
    {
      operator delete(a32);
    }

    if (SHIBYTE(a39) < 0)
    {
      operator delete(a38);
    }

    if (SHIBYTE(a12) < 0)
    {
      operator delete(a10);
    }

    if (a46 < 0)
    {
      operator delete(a41);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1868B09C0);
}

void sub_1868B1A9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1868B0A24);
}

void *addr_obj::Json::operator<<<char [70]>(void *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  addr_obj::Json::escape(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *addr_obj::Json::append<addr_obj::Localization>(void *a1, uint64_t *a2, addr_obj::Localization *this)
{
  addr_obj::Localization::toDebugJsonString(&v7, this);
  v5 = addr_obj::Json::append(a1, a2, &v7);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v11);
  return v5;
}

void sub_1868B1D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *addr_obj::Json::append<addr_obj::VenueInfo>(void *a1, uint64_t *a2, uint64_t **this)
{
  addr_obj::VenueInfo::toDebugJsonString(&v7, this);
  v5 = addr_obj::Json::append(a1, a2, &v7);
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x18CFD1DA0](&v11);
  return v5;
}

void sub_1868B1EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

const std::string **addr_obj::AddressObjectBase::toProto(addr_obj::AddressObjectBase *this, addr_obj::AddressObjectProto *a2)
{
  v4 = *(a2 + 22);
  *(a2 + 20) = *(this + 3);
  *(a2 + 22) = v4 | 3;
  v5 = *(a2 + 2);
  if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  std::string::operator=(*(a2 + 2), (this + 16));
  addr_obj::Localization::toProto((this + 40), a2);

  return addr_obj::Fingerprints::toProto(this + 14, a2);
}

void addr_obj::AddressObjectBase::getRelativeFullAddress(addr_obj *a1@<X0>, addr_obj **a2@<X1>, std::string *a3@<X8>)
{
  (*(*a1 + 72))(__p);
  addr_obj::AddressObjectBase::stripSameCountry(a1, a2, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1868B2060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectBase::stripSameCountry(addr_obj *a1@<X0>, addr_obj **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*a2 && (Base = addr_obj::getBase(*a2, a2), addr_obj::sameCountry(a1, Base, v8)))
  {
    addr_obj::Debugging::stripDebug(a3, &__str);
    (*(*a1 + 168))(&__p, a1);
    addr_obj::Debugging::stripDebug(&__p, &v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    addr_obj::Formatting::stripCountry(&__p, &__str, &v17.__r_.__value_.__l.__data_);
    if (addr_obj::Debugging::addChar(v9) && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (size = HIBYTE(__p.__r_.__value_.__r.__words[2])) : (size = __p.__r_.__value_.__l.__size_), size))
    {
      std::operator+<char>();
      v11 = std::string::append(&v15, "]");
      v12 = *&v11->__r_.__value_.__l.__data_;
      a4->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&a4->__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(a4, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *a4 = __p;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a3 + 23) < 0)
  {
    v13 = *a3;
    v14 = *(a3 + 8);

    std::string::__init_copy_ctor_external(a4, v13, v14);
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }
}

void sub_1868B2240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectBase::getRelativeShortAddress(addr_obj *a1@<X0>, addr_obj **a2@<X1>, std::string *a3@<X8>)
{
  (*(*a1 + 88))(__p);
  addr_obj::AddressObjectBase::stripSameCountry(a1, a2, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1868B233C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectBase::getCityAndAbove(addr_obj::AddressObjectBase *this@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  if (a2)
  {
    v5 = (*(*this + 136))(__p);
    v6 = addr_obj::emptyString(v5);
    if (v17 >= 0)
    {
      v7 = HIBYTE(v17);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = *(v6 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v6 + 1);
    }

    if (v7 == v8 && (v17 >= 0 ? (v10 = __p) : (v10 = __p[0]), v9 >= 0 ? (v11 = v6) : (v11 = *v6), !memcmp(v10, v11, v7)))
    {
      (*(*this + 88))(this);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *__p;
      a3->__r_.__value_.__r.__words[2] = v17;
    }
  }

  else
  {
    v12 = addr_obj::emptyString(this);
    if (*(v12 + 23) < 0)
    {
      v14 = *v12;
      v15 = *(v12 + 1);

      std::string::__init_copy_ctor_external(a3, v14, v15);
    }

    else
    {
      v13 = *v12;
      a3->__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&a3->__r_.__value_.__l.__data_ = v13;
    }
  }
}

void sub_1868B24B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectBase::getRelativeCityAndAbove(addr_obj *a1@<X0>, addr_obj **a2@<X1>, std::string *a3@<X8>)
{
  (*(*a1 + 112))(__p);
  addr_obj::AddressObjectBase::stripSameCountry(a1, a2, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1868B2558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectBase::getWeatherName(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  (*(*this + 136))(__s);
  if (SHIBYTE(v5) < 0)
  {
    if (__s[1])
    {
      std::string::__init_copy_ctor_external(a2, __s[0], __s[1]);
      goto LABEL_7;
    }
  }

  else if (HIBYTE(v5))
  {
    *&a2->__r_.__value_.__l.__data_ = *__s;
    a2->__r_.__value_.__r.__words[2] = v5;
    goto LABEL_7;
  }

  (*(*this + 16))(this);
LABEL_7:
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__s[0]);
  }
}

void sub_1868B2640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t addr_obj::AddressObjectBase::getWeatherLocationName(addr_obj::AddressObjectBase *this)
{
  (*(*this + 216))(v4);
  if (v5 < 0)
  {
    v3 = v4[1];
    operator delete(v4[0]);
    if (v3)
    {
      return (*(*this + 216))(this);
    }
  }

  else if (v5)
  {
    return (*(*this + 216))(this);
  }

  return (*(*this + 224))(this);
}

void addr_obj::AddressObjectBase::getVenueShortAddress(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  v4 = addr_obj::Debugging::addChar(this);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = (*(*this + 160))(this);
  (*(*this + 136))(v20, this, 0);
  v6 = (*(*this + 152))(this);
  addr_obj::VenueInfo::getShortAddress(v5, v20, v6, &v22);
  size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = (*(*this + 160))(this);
    (*(*this + 136))(__p, this, 0);
    v9 = (*(*this + 152))(this);
    addr_obj::VenueInfo::getShortAddress(v8, __p, v9, &v18);
    v10 = std::string::insert(&v18, 0, "[");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v19, "]");
    v13 = *&v12->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&a2->__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_11:
    v14 = (*(*this + 160))(this);
    (*(*this + 136))(&v19, this, 0);
    v15 = (*(*this + 152))(this);
    addr_obj::VenueInfo::getShortAddress(v14, &v19, v15, a2);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_1868B2A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectBase::comparisonText(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  addr_obj::AddressObjectProto::AddressObjectProto(v8);
  v4 = (*(*this + 304))(this, v8);
  v5 = v9;
  if (v5 != AddrObjGoogle::protobuf::internal::kEmptyString(v4))
  {
    v6 = v9;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v6 + 23) = 0;
    }
  }

  v12 &= ~2u;
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      (*(**(v10 + 8 * i) + 32))(*(v10 + 8 * i));
    }
  }

  v11 = 0;
  AddrObjGoogle::protobuf::MessageLite::SerializeAsString(v8, a2);
  addr_obj::AddressObjectProto::~AddressObjectProto(v8);
}

uint64_t addr_obj::AddressObjectBase::operator==(addr_obj::AddressObjectBase *a1, addr_obj *this)
{
  Base = addr_obj::getBase(this, this);
  if (Base == a1)
  {
    return 1;
  }

  v4 = Base;
  addr_obj::AddressObjectBase::comparisonText(a1, &v14);
  addr_obj::AddressObjectBase::comparisonText(v4, &__p);
  v5 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v7)
  {
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v11 = memcmp(v9, p_p, size) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v5 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
LABEL_19:
  if (v5 < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1868B2CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *addr_obj::getBase(addr_obj *this, const AddressObject *a2)
{
  if (!result)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v26);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "given AddressObject instance is not derived from AddressObjectBase", 66);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "; base64==", 10);
    (*(*this + 200))(__p, this);
    if ((v25 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v7 = v25;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; library version: ", 19);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "11.3.0", 6);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (addr_obj::Logger::isInitialized(v10))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      std::stringbuf::str();
      if ((v23 & 0x80u) == 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v12 = v23;
      }

      else
      {
        v12 = v22[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v11, v12);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "getBase");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v17, "");
      addr_obj::Logger::log(16, v22, 281, v20, &v19, v17);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      std::ostringstream::~ostringstream(__p);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "; at ", 5);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp", 91);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
    MEMORY[0x18CFD1C40](v15, 281);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "LogicError");
    std::stringbuf::str();
    addr_obj::Exception<std::logic_error>::Exception(exception, __p, v22);
  }

  return result;
}

void sub_1868B32F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

uint64_t addr_obj::AddressObjectBase::hash(addr_obj::AddressObjectBase *this)
{
  if ((*(this + 240) & 1) == 0)
  {
    addr_obj::AddressObjectBase::comparisonText(this, &__p);
    *(this + 29) = std::__string_hash<char>::operator()[abi:ne200100](&unk_1EA9052C0, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(this + 240) = 1;
  }

  return *(this + 29);
}

void *addr_obj::getBase(addr_obj *this, AddressObject *a2)
{
  if (!result)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v26);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "given AddressObject instance is not derived from AddressObjectBase", 66);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "; base64==", 10);
    (*(*this + 200))(__p, this);
    if ((v25 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v7 = v25;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; library version: ", 19);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "11.3.0", 6);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (addr_obj::Logger::isInitialized(v10))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      std::stringbuf::str();
      if ((v23 & 0x80u) == 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v12 = v23;
      }

      else
      {
        v12 = v22[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v11, v12);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
      std::string::basic_string[abi:ne200100]<0>(v20, "getBase");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v17, "");
      addr_obj::Logger::log(16, v22, 286, v20, &v19, v17);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      std::ostringstream::~ostringstream(__p);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "; at ", 5);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp", 91);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
    MEMORY[0x18CFD1C40](v15, 286);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "LogicError");
    std::stringbuf::str();
    addr_obj::Exception<std::logic_error>::Exception(exception, __p, v22);
  }

  return result;
}

void sub_1868B3A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void *addr_obj::AddressObjectBase::getVenueInfo(addr_obj::AddressObjectBase *this)
{
  if ((atomic_load_explicit(&qword_1EA9052E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9052E8))
  {
    addr_obj::VenueInfo::VenueInfo(&unk_1EA9052C8);
    __cxa_guard_release(&qword_1EA9052E8);
  }

  return &unk_1EA9052C8;
}

void addr_obj::AddressObjectBase::getLocationAddress(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  v3 = addr_obj::emptyString(this);
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

void addr_obj::AddressObjectBase::getNeighborhoodName(addr_obj::AddressObjectBase *this@<X0>, std::string *a2@<X8>)
{
  v3 = addr_obj::emptyString(this);
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

void std::__allocator_destroy[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>,std::reverse_iterator<addr_obj::Fingerprints::Fingerprint*>,std::reverse_iterator<addr_obj::Fingerprints::Fingerprint*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 6));
      }

      v7 = v6 - 10;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 10;
    }

    while (v7 != a5);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

std::logic_error *addr_obj::Exception<std::logic_error>::Exception(std::logic_error *a1, const void **a2, uint64_t a3)
{
  v6 = std::logic_error::logic_error(a1, "");
  addr_obj::AddressObjectException::AddressObjectException(&v6[1], a2, a3);
  a1->__vftable = &unk_1EF7DF938;
  return a1;
}

void addr_obj::Exception<std::logic_error>::~Exception(std::logic_error *a1)
{
  addr_obj::Exception<std::logic_error>::~Exception(a1);

  JUMPOUT(0x18CFD1E40);
}

void addr_obj::Exception<std::logic_error>::~Exception(std::logic_error *this)
{
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::logic_error::~logic_error(this);
}

uint64_t addr_obj::V0AddressObject::V0AddressObject(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
  v18 = addr_obj::AddressObjectBase::AddressObjectBase(a1, &__str, a2, a3);
  *v18 = &unk_1EF7DF960;
  *(v18 + 248) = 0u;
  v19 = (v18 + 248);
  *(v18 + 456) = 0;
  *(v18 + 264) = 0u;
  *(v18 + 280) = 0u;
  *(v18 + 296) = 0u;
  *(v18 + 312) = 0u;
  *(v18 + 328) = 0u;
  *(v18 + 344) = 0u;
  *(v18 + 360) = 0u;
  *(v18 + 376) = 0u;
  *(v18 + 392) = 0u;
  *(v18 + 408) = 0u;
  *(v18 + 424) = 0u;
  *(v18 + 440) = 0u;
  v20 = *(a4 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a4 + 8);
  }

  if (!v20)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__str);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "formattedAddress is empty", 25);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "; base64==", 10);
    (*(*a1 + 200))(&v87, a1);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v87;
    }

    else
    {
      v68 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v87.__r_.__value_.__l.__size_;
    }

    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, size);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "; library version: ", 19);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "11.3.0", 6);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (addr_obj::Logger::isInitialized(v72))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v87);
      std::stringbuf::str();
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v86;
      }

      else
      {
        v73 = v86.__r_.__value_.__r.__words[0];
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v86.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, v73, v74);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v86, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V0AddressObject.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v85, "V0AddressObject");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&v83, "");
      addr_obj::Logger::log(16, &v86, 36, &v85, &v84, &v83);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      std::ostringstream::~ostringstream(&v87);
    }

    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "; at ", 5);
    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V0AddressObject.cpp", 89);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, ":", 1);
    MEMORY[0x18CFD1C40](v77, 36);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v87, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, &v87.__r_.__value_.__l.__data_, &v86);
  }

  if (addr_obj::Debugging::addChar(v18) && (*(a4 + 23) >= 0 ? (v21 = *(a4 + 23)) : (v21 = *(a4 + 8)), v21))
  {
    std::operator+<char>();
    v22 = std::string::append(&v87, ">");
    v23 = *&v22->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
  }

  else if ((*(a4 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a4, *(a4 + 8));
    v24 = 0;
  }

  else
  {
    v24 = 0;
    __str = *a4;
  }

  v25 = std::string::operator=(v19, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  else if (!v24)
  {
    goto LABEL_19;
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

LABEL_19:
  if (addr_obj::Debugging::addChar(v25) && (*(a5 + 23) >= 0 ? (v26 = *(a5 + 23)) : (v26 = *(a5 + 8)), v26))
  {
    std::operator+<char>();
    v27 = std::string::append(&v86, ">");
    v28 = *&v27->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = 1;
  }

  else if ((*(a5 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a5, *(a5 + 8));
    v29 = 0;
  }

  else
  {
    v29 = 0;
    __str = *a5;
  }

  v30 = std::string::operator=((a1 + 272), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v29)
    {
      goto LABEL_34;
    }
  }

  else if (!v29)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

LABEL_34:
  if (addr_obj::Debugging::addChar(v30) && (*(a6 + 23) >= 0 ? (v31 = *(a6 + 23)) : (v31 = *(a6 + 8)), v31))
  {
    std::operator+<char>();
    v32 = std::string::append(&v85, ">");
    v33 = *&v32->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = 1;
  }

  else if ((*(a6 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a6, *(a6 + 8));
    v34 = 0;
  }

  else
  {
    v34 = 0;
    __str = *a6;
  }

  v35 = std::string::operator=((a1 + 296), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v34)
    {
      goto LABEL_49;
    }
  }

  else if (!v34)
  {
    goto LABEL_49;
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

LABEL_49:
  if (addr_obj::Debugging::addChar(v35) && (*(a7 + 23) >= 0 ? (v36 = *(a7 + 23)) : (v36 = *(a7 + 8)), v36))
  {
    std::operator+<char>();
    v37 = std::string::append(&v84, ">");
    v38 = *&v37->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = 1;
  }

  else if ((*(a7 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a7, *(a7 + 8));
    v39 = 0;
  }

  else
  {
    v39 = 0;
    __str = *a7;
  }

  v40 = std::string::operator=((a1 + 320), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v39)
    {
      goto LABEL_64;
    }
  }

  else if (!v39)
  {
    goto LABEL_64;
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

LABEL_64:
  if (addr_obj::Debugging::addChar(v40) && (*(a8 + 23) >= 0 ? (v41 = *(a8 + 23)) : (v41 = *(a8 + 8)), v41))
  {
    std::operator+<char>();
    v42 = std::string::append(&v83, ">");
    v43 = *&v42->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = 1;
  }

  else if ((*(a8 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a8, *(a8 + 8));
    v44 = 0;
  }

  else
  {
    v44 = 0;
    __str = *a8;
  }

  v45 = std::string::operator=((a1 + 344), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v44)
    {
      goto LABEL_79;
    }
  }

  else if (!v44)
  {
    goto LABEL_79;
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

LABEL_79:
  if (addr_obj::Debugging::addChar(v45) && (*(a9 + 23) >= 0 ? (v46 = *(a9 + 23)) : (v46 = *(a9 + 8)), v46))
  {
    std::operator+<char>();
    v47 = std::string::append(&v82, ">");
    v48 = *&v47->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    v49 = 1;
  }

  else if ((*(a9 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a9, *(a9 + 8));
    v49 = 0;
  }

  else
  {
    v49 = 0;
    *&__str.__r_.__value_.__l.__data_ = *a9;
    __str.__r_.__value_.__r.__words[2] = *(a9 + 16);
  }

  v50 = std::string::operator=((a1 + 368), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v49)
    {
      goto LABEL_94;
    }
  }

  else if (!v49)
  {
    goto LABEL_94;
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

LABEL_94:
  if (addr_obj::Debugging::addChar(v50) && (*(a10 + 23) >= 0 ? (v51 = *(a10 + 23)) : (v51 = *(a10 + 8)), v51))
  {
    std::operator+<char>();
    v52 = std::string::append(&v81, ">");
    v53 = *&v52->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = 1;
  }

  else if ((*(a10 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a10, *(a10 + 8));
    v54 = 0;
  }

  else
  {
    v54 = 0;
    *&__str.__r_.__value_.__l.__data_ = *a10;
    __str.__r_.__value_.__r.__words[2] = *(a10 + 16);
  }

  v55 = std::string::operator=((a1 + 392), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v54)
    {
      goto LABEL_109;
    }
  }

  else if (!v54)
  {
    goto LABEL_109;
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

LABEL_109:
  if (addr_obj::Debugging::addChar(v55) && (*(a11 + 23) >= 0 ? (v56 = *(a11 + 23)) : (v56 = *(a11 + 8)), v56))
  {
    std::operator+<char>();
    v57 = std::string::append(&v80, ">");
    v58 = *&v57->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = 1;
  }

  else if ((*(a11 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a11, *(a11 + 8));
    v59 = 0;
  }

  else
  {
    v59 = 0;
    *&__str.__r_.__value_.__l.__data_ = *a11;
    __str.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  v60 = std::string::operator=((a1 + 416), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v59)
    {
      goto LABEL_124;
    }
  }

  else if (!v59)
  {
    goto LABEL_124;
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

LABEL_124:
  if (addr_obj::Debugging::addChar(v60) && (*(a12 + 23) >= 0 ? (v61 = *(a12 + 23)) : (v61 = *(a12 + 8)), v61))
  {
    std::operator+<char>();
    v62 = std::string::append(&__p, ">");
    v63 = *&v62->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = 1;
  }

  else if ((*(a12 + 23) & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a12, *(a12 + 8));
    v64 = 0;
  }

  else
  {
    v64 = 0;
    *&__str.__r_.__value_.__l.__data_ = *a12;
    __str.__r_.__value_.__r.__words[2] = *(a12 + 16);
  }

  std::string::operator=((a1 + 440), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v64)
    {
      return a1;
    }
  }

  else if (!v64)
  {
    return a1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

{
  return addr_obj::V0AddressObject::V0AddressObject(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_1868B4BF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
    if ((v43 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v43)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v44);
    JUMPOUT(0x1868B4F00);
  }

  __cxa_free_exception(v42);
  goto LABEL_8;
}

void sub_1868B4C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  std::ostringstream::~ostringstream(&v66);
  if (*(v63 + 463) < 0)
  {
    operator delete(*(v63 + 440));
  }

  if (*(v63 + 439) < 0)
  {
    operator delete(*(v63 + 416));
  }

  if (*(v63 + 415) < 0)
  {
    operator delete(*(v63 + 392));
  }

  if (*(v63 + 391) < 0)
  {
    operator delete(*(v63 + 368));
  }

  if (*(v63 + 367) < 0)
  {
    operator delete(*(v63 + 344));
  }

  if (*(v63 + 343) < 0)
  {
    operator delete(*(v63 + 320));
  }

  if (*(v63 + 319) < 0)
  {
    operator delete(*(v63 + 296));
  }

  if (*(v63 + 295) < 0)
  {
    operator delete(*(v63 + 272));
  }

  if (*(v63 + 271) < 0)
  {
    operator delete(*v64);
  }

  addr_obj::AddressObjectBase::~AddressObjectBase(v63);
  _Unwind_Resume(a1);
}

void sub_1868B4D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
    if ((v68 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v68)
  {
    goto LABEL_6;
  }

  if (a14 < 0)
  {
    JUMPOUT(0x1868B4EF4);
  }

LABEL_6:
  if (*(v66 + 463) < 0)
  {
    operator delete(*(v66 + 440));
  }

  if (*(v66 + 439) < 0)
  {
    operator delete(*(v66 + 416));
  }

  if (*(v66 + 415) < 0)
  {
    operator delete(*(v66 + 392));
  }

  if (*(v66 + 391) < 0)
  {
    operator delete(*(v66 + 368));
  }

  if (*(v66 + 367) < 0)
  {
    operator delete(*(v66 + 344));
  }

  if (*(v66 + 343) < 0)
  {
    operator delete(*(v66 + 320));
  }

  if (*(v66 + 319) < 0)
  {
    operator delete(*(v66 + 296));
  }

  if (*(v66 + 295) < 0)
  {
    operator delete(*(v66 + 272));
  }

  if (*(v66 + 271) < 0)
  {
    operator delete(*v67);
  }

  addr_obj::AddressObjectBase::~AddressObjectBase(v66);
  _Unwind_Resume(a1);
}