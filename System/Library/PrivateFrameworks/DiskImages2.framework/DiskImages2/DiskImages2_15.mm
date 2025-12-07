void sub_248F32B44(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

udif::details::run_t *udif::details::run_t::run_t(udif::details::run_t *this, const char *a2)
{
  v4 = udif::run_type::run_type(this);
  *(v4 + 9) = 0;
  *(v4 + 20) = 0u;
  *(v4 + 4) = 0u;
  udif::run_type::run_type(&v6, bswap32(*a2));
  *this = v6;
  *(this + 1) = bswap32(*(a2 + 1));
  *(this + 1) = bswap64(*(a2 + 1));
  *(this + 2) = bswap64(*(a2 + 2));
  *(this + 3) = bswap64(*(a2 + 3));
  *(this + 4) = bswap64(*(a2 + 4));
  return this;
}

const void **udif::details::create_data_wrap_dict@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int16 *a4@<X3>, void *a5@<X4>, CFDictionaryRef *a6@<X8>)
{
  v31[19] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CBECE8];
  if (*(a1 + 23) >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v12, 0x8000100u);
  cf = 0;
  v25 = v13;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    cf = CFStringCreateWithCString(v11, v14, 0x8000100u);
  }

  else
  {
    cf = &stru_285C05C28;
  }

  keys[0] = 0;
  CFAutoRelease<__CFString const*>::~CFAutoRelease(keys);
  std::to_string(&v23, a3);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v23;
  }

  else
  {
    v15 = v23.__r_.__value_.__r.__words[0];
  }

  v22 = CFStringCreateWithCString(v11, v15, 0x600u);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](keys);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "0x", 2);
  *(&v29[-1].__locale_ + *(v28 - 24)) = *(&v29[-1].__locale_ + *(v28 - 24)) & 0xFFFFFFB5 | 8;
  LOBYTE(values[0]) = 48;
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, values);
  *(&v29[1].__locale_ + *(v28 - 24)) = 4;
  MEMORY[0x24C1ED3D0](&v28, *a4);
  std::stringbuf::str[abi:ne200100](&v28 + 8, &v21);
  keys[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(keys + *(keys[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  *&v28 = v16;
  *(&v28 + 1) = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  *(&v28 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1ED6A0](v31);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v21;
  }

  else
  {
    v17 = v21.__r_.__value_.__r.__words[0];
  }

  v20 = CFStringCreateWithCString(v11, v17, 0x600u);
  *keys = xmmword_278F81338;
  v28 = *off_278F81348;
  v29[0].__locale_ = @"CFName";
  values[0] = a5;
  values[1] = v25;
  values[2] = v22;
  values[3] = v20;
  if (*(a2 + 24))
  {
    v18 = 5;
  }

  else
  {
    v18 = 4;
  }

  values[4] = cf;
  *a6 = CFDictionaryCreate(v11, keys, values, v18, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v20);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  CFAutoRelease<__CFString const*>::~CFAutoRelease(&v22);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  CFAutoRelease<__CFString const*>::~CFAutoRelease(&cf);
  return CFAutoRelease<__CFString const*>::~CFAutoRelease(&v25);
}

void sub_248F33244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31)
{
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a31);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a24);
  CFAutoRelease<__CFString const*>::~CFAutoRelease(&a25);
  _Unwind_Resume(a1);
}

void *udif::operator<<(void *a1, int *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "type: ", 6);
  v27 = *a2;
  v6 = udif::operator<<(v5, &v27);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " data: ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v7 + *(v8 - 24) + 8) |= 0x200u;
  v9 = MEMORY[0x24C1ED3E0]();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/", 1);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v10 + *(v11 - 24) + 8) &= ~0x200u;
  v12 = MEMORY[0x24C1ED3C0]();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " logical: ", 10);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  v15 = MEMORY[0x24C1ED3E0]();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/", 1);
  v17 = *v16;
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v16 + *(v17 - 24) + 8) &= ~0x200u;
  v18 = MEMORY[0x24C1ED3C0]();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " io: ", 5);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v19 + *(v20 - 24) + 8) |= 0x200u;
  v21 = MEMORY[0x24C1ED3E0]();
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ",", 1);
  v23 = *v22;
  *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v22 + *(v23 - 24) + 8) &= ~0x200u;
  v24 = MEMORY[0x24C1ED3E0]();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "/", 1);
  MEMORY[0x24C1ED3C0](v25, *(a2 + 7));
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

{
  v3 = *a2;
  if (*a2)
  {
    v4 = &unk_278F81370;
    v5 = 72;
    do
    {
      v6 = *(v4 - 4);
      if ((v6 & v3) != 0)
      {
        v3 &= ~v6;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, *(v4 - 1), *v4);
        if (v3)
        {
          v8 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v8, 1);
        }
      }

      v4 += 3;
      v5 -= 24;
    }

    while (v5);
    return a1;
  }

  else
  {

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "none", 4);
  }
}

uint64_t udif::xml_rsrc_iterator::get_type(udif::xml_rsrc_iterator *this)
{
  result = CFStringGetOSType(*(*this + 8 * *(this + 4)));
  if (!result)
  {
    v3 = this;
    exception = __cxa_allocate_exception(0x40uLL);
    std::ostringstream::basic_ostringstream[abi:ne200100](v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "UDIF: Failed converting type array string (", 43);
    MEMORY[0x24C1ED370](v5, *(*v3 + 8 * *(v3 + 4)));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") to type", 9);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v5, 0x16u);
  }

  return result;
}

void sub_248F3376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

const void *udif::xml_rsrc_iterator::get_value(CFDictionaryRef *this)
{
  result = CFDictionaryGetValue(this[2], *(*this + this[4]));
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    DiskImagesRuntimeException::DiskImagesRuntimeException(exception, "UDIF: Can't get resource array", 0x16u);
  }

  return result;
}

BOOL udif::xml_rsrc_iterator::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 == v4)
    {
      return *(a1 + 32) == *(a2 + 32);
    }

    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32);
}

void UDIF_header::UDIF_header(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = *a2;
  v2 = a2[1];
  a1[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new[]();
}

void sub_248F33B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<898ul>>::~logger(va);
  MEMORY[0x24C1ED710](v8, 0x1000C8077774924);
  v10 = v7[2];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *v7;
  *v7 = 0;
  if (v11)
  {
    MEMORY[0x24C1ED730](v11, 0x1000C407784F2AFLL);
  }

  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<898ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<898ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF8548;
  a1[45] = &unk_285BF8648;
  a1[46] = &unk_285BF8670;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF8548;
  a1[45] = &unk_285BF85D0;
  a1[46] = &unk_285BF85F8;
  return a1;
}

void sub_248F33D04(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<898ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *UDIF_header::UDIF_header(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  v5 = *a3;
  v4 = a3[1];
  *result = v3;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<85ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<85ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<85ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<85ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<85ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF7C30;
  di_log::logger_buf<di_log::log_printer<85ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<85ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<85ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F34324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<85ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<85ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 85;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 85;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t udif::details::checksum::checksum<locks::None,checksum::None<locks::None>>(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  udif::checksum_type::checksum_type(&v3, 0);
  *a1 = v3;
  v4 = 0;
  vbuf::vbuf_t<unsigned char [128],unsigned int,8ul>::set_len(v5, &v4);
  *(a1 + 4) = v5[0];
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

uint64_t udif::details::checksum::checksum<locks::None,checksum::CRC32<locks::None>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  udif::checksum_type::checksum_type(&v6, 2);
  *a1 = v6;
  *(a1 + 4) = 0;
  LODWORD(a3) = *a3;
  v7 = 32;
  vbuf::vbuf_t<unsigned char [128],unsigned int,8ul>::set_len(&v8, &v7);
  *v9 = a3;
  memset(&v9[4], 0, 124);
  *(a1 + 4) = v8;
  *(a1 + 72) = *&v9[64];
  *(a1 + 88) = *&v9[80];
  *(a1 + 104) = *&v9[96];
  *(a1 + 120) = *&v9[112];
  *(a1 + 8) = *v9;
  *(a1 + 24) = *&v9[16];
  *(a1 + 40) = *&v9[32];
  *(a1 + 56) = *&v9[48];
  return a1;
}

unsigned int *udif::details::descriptor_special::descriptor_special(unsigned int *this, unsigned int a2)
{
  *this = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "descriptor_special";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &unk_285BF4D30;
    *(exception + 8) = a2;
  }

  return this;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<417ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<417ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<417ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<417ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<417ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF7E60;
  di_log::logger_buf<di_log::log_printer<417ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<417ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<417ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F34CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<417ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<417ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 417;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 417;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<458ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<458ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<458ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<458ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<458ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF8080;
  di_log::logger_buf<di_log::log_printer<458ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<458ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<458ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F35494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<458ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<458ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 458;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 458;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<500ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<500ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<500ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<500ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<500ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF82A0;
  di_log::logger_buf<di_log::log_printer<500ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<500ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<500ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F35C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<500ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<500ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 500;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 500;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<601ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<601ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<601ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<601ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<601ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF84C0;
  di_log::logger_buf<di_log::log_printer<601ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<601ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<601ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F363C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<601ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<601ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 601;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 601;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t udif::xml_rsrc_iterator::xml_rsrc_iterator(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  v7 = *a3;
  *(a1 + 16) = *a3;
  if (v7)
  {
    CFRetain(v7);
  }

  *(a1 + 24) = 1;
  *(a1 + 32) = a4;
  return a1;
}

void sub_248F3666C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<udif::xml_rsrc_iterator,udif::xml_rsrc_iterator>::pair[abi:ne200100]<udif::xml_rsrc_iterator,udif::xml_rsrc_iterator,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *(result + 16) = 0;
    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(result + 24) = 1;
  }

  *(result + 32) = *(a2 + 32);
  *(result + 40) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  if (*(a3 + 24) == 1)
  {
    *(result + 56) = 0;
    *(result + 56) = *(a3 + 16);
    *(a3 + 16) = 0;
    *(result + 64) = 1;
  }

  *(result + 72) = *(a3 + 32);
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<898ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<898ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<898ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<898ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<898ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF86E0;
  di_log::logger_buf<di_log::log_printer<898ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<898ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<898ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F36C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<898ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<898ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 898;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 898;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *udif::header::header_flags::header_flags(_DWORD *this, int a2)
{
  v2 = 0;
  v7 = *MEMORY[0x277D85DE8];
  *this = a2;
  v5 = 0x200000001;
  v6 = 4;
  do
  {
    a2 &= ~*(&v5 + v2);
    v2 += 4;
  }

  while (v2 != 12);
  if (a2)
  {
    v3 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "header_flags";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &unk_285BD5790;
    *(exception + 8) = v3;
  }

  return this;
}

void *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::header::header_signature>>>::serializer_exception_trait(void *a1, uint64_t a2)
{
  serializer_exception_base::serializer_exception_base((a1 + 2), a2);
  *a1 = &unk_285BF8800;
  a1[2] = &unk_285BF8868;
  a1[1] = &unk_285BF8828;
  return a1;
}

std::exception *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::header::header_signature>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void serializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::header::header_signature>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::header::header_signature>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::header::header_signature>>>::~serializer_exception_trait(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = &unk_285BE70A8;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = &unk_285BE70A8;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<85ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF7C30;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F37448(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t *print_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + *(*a1 - 24) + 8);
  if (a3 != 1)
  {
    v7 = a3 - 1;
    do
    {
      *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
      v13 = 48;
      v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, &v13);
      *(v8 + *(*v8 - 24) + 24) = 2;
      ++a2;
      v9 = MEMORY[0x24C1ED3A0]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
      --v7;
    }

    while (v7);
    v4 = *a1;
  }

  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = 48;
  v10 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, &v12);
  *(v10 + *(*v10 - 24) + 24) = 2;
  MEMORY[0x24C1ED3A0]();
  *(a1 + *(*a1 - 24) + 8) = v5;
  return a1;
}

uint64_t **std::map<udif::run_type,CompressedBackend::algo_t>::map[abi:ne200100](uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,CompressedBackend::algo_t>>>::__emplace_hint_unique_key_args<udif::run_type,std::pair<udif::run_type const,CompressedBackend::algo_t> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,CompressedBackend::algo_t>>>::__emplace_hint_unique_key_args<udif::run_type,std::pair<udif::run_type const,CompressedBackend::algo_t> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, void *a4)
{
  v4 = *std::__tree<std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,CompressedBackend::algo_t>>>::__find_equal<udif::run_type>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,CompressedBackend::algo_t>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,CompressedBackend::algo_t>>>::__find_equal<udif::run_type>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<udif::run_type,unsigned long long>,std::__map_value_compare<udif::run_type,std::__value_type<udif::run_type,unsigned long long>,std::less<udif::run_type>,true>,std::allocator<std::__value_type<udif::run_type,unsigned long long>>>::__emplace_unique_key_args<udif::run_type,std::piecewise_construct_t const&,std::tuple<udif::run_type const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t di_log::logger_buf<di_log::log_printer<417ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF7E60;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F37BC4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::find<boost::icl::discrete_interval<unsigned long long,std::less>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = (*(a2 + 16) & 2) != 0 ? *a2 : *a2 + 1;
  v6 = v2;
  do
  {
    v7 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v10 = *(v6 + 32);
  if ((*(v6 + 48) & 2) == 0)
  {
    ++v10;
  }

  if ((*(a2 + 16) & 1) + *(a2 + 8) - 1 < v10)
  {
    return v2;
  }

  return v6;
}

uint64_t *boost::icl::interval_base_map<boost::icl::split_interval_map<unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::_insert(uint64_t **a1, __int128 *a2)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  if (v14)
  {
    if (v14 == 3)
    {
      if (*(&v13 + 1) < v13)
      {
        return (a1 + 1);
      }
    }

    else if (v13 >= *(&v13 + 1))
    {
      return (a1 + 1);
    }
  }

  else if (v13 >= *(&v13 + 1) || (v13 + 1) >= *(&v13 + 1))
  {
    return (a1 + 1);
  }

  if (boost::icl::on_absorbtion<boost::icl::interval_base_map<boost::icl::split_interval_map<unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,boost::icl::inplace_plus<std::optional<udif::details::block_info>>,true>::is_absorbable(a2 + 24))
  {
    return (a1 + 1);
  }

  result = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>> const&>(a1, a2, a2);
  if ((v6 & 1) == 0)
  {
    v7 = std::__tree<boost::icl::discrete_interval<unsigned long long,std::less>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,std::allocator<boost::icl::discrete_interval<unsigned long long,std::less>>>::lower_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, &v13);
    v8 = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::upper_bound[abi:ne200100]<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, &v13);
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    v12 = v10;
    v15 = v7;
    boost::icl::interval_base_map<boost::icl::split_interval_map<unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::insert_main(a1, &v13, a2 + 3, &v15, &v12);
    return v15;
  }

  return result;
}

BOOL boost::icl::on_absorbtion<boost::icl::interval_base_map<boost::icl::split_interval_map<unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,boost::icl::inplace_plus<std::optional<udif::details::block_info>>,true>::is_absorbable(uint64_t a1)
{
  v1 = 0;
  v17 = *MEMORY[0x277D85DE8];
  LOBYTE(v6) = 0;
  v16 = 0;
  if (byte_27EECE4CC == 1)
  {
    v6 = boost::icl::identity_element<std::optional<udif::details::block_info>>::value(void)::_value;
    v7 = dword_27EECE448;
    v12 = unk_27EECE48C;
    v13 = unk_27EECE49C;
    v14 = unk_27EECE4AC;
    v15 = unk_27EECE4BC;
    v8 = *algn_27EECE44C;
    v9 = unk_27EECE45C;
    v10 = unk_27EECE46C;
    v11 = unk_27EECE47C;
    v1 = 1;
    v16 = 1;
  }

  v2 = *(a1 + 140);
  v4 = v2 == v1;
  v3 = v2 == v1;
  v4 = !v4 || v2 == 0;
  if (!v4)
  {
    return *a1 == v6 && udif::details::checksum::operator==((a1 + 4), &v6 + 1);
  }

  return v3;
}

uint64_t *boost::icl::interval_base_map<boost::icl::split_interval_map<unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>,unsigned long long,std::optional<udif::details::block_info>,boost::icl::partial_absorber,std::less,boost::icl::inplace_plus,boost::icl::inter_section,boost::icl::discrete_interval<unsigned long long,std::less>,std::allocator>::insert_main(uint64_t **a1, __int128 *a2, uint64_t *a3, uint64_t **a4, uint64_t **a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *a5;
  v9 = (*a5)[1];
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v11 = *a5;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (!v12);
  }

  v13 = *a4;
  if (*a1 == *a4)
  {
    v15 = (a1 + 1);
  }

  else
  {
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v16 = *a4;
      do
      {
        v15 = v16[2];
        v12 = *v15 == v16;
        v16 = v15;
      }

      while (v12);
    }
  }

  v27 = *a2;
  v28 = *(a2 + 2);
  *&v25 = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  *(&v25 + 1) = boost::icl::identity_element<unsigned long long>::value(void)::_value;
  v26 = 2;
  v23 = *(v8 + 2);
  for (i = v8[6]; v13 != v10; *a4 = v13)
  {
    v25 = *(v13 + 2);
    v26 = *(v13 + 48);
    v21 = v27;
    v22 = v28;
    boost::icl::right_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v21, &v25, &v29);
    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_23;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_23;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_23:
      LOBYTE(v31) = 0;
      v41 = 0;
      if (*(a3 + 140) == 1)
      {
        v31 = *a3;
        v32 = *(a3 + 2);
        v37 = *(a3 + 76);
        v38 = *(a3 + 92);
        v39 = *(a3 + 108);
        v40 = *(a3 + 124);
        v33 = *(a3 + 12);
        v34 = *(a3 + 28);
        v35 = *(a3 + 44);
        v36 = *(a3 + 60);
        v41 = 1;
      }

      *a4 = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,std::optional<udif::details::block_info>>>(a1, v15, &v29, &v29);
    }

    v21 = v27;
    v22 = v28;
    boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v21, &v25, &v29);
    v27 = v29;
    LOBYTE(v28) = v30;
    v15 = *a4;
    v17 = (*a4)[1];
    v18 = *a4;
    if (v17)
    {
      do
      {
        v13 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v13 = v18[2];
        v12 = *v13 == v18;
        v18 = v13;
      }

      while (!v12);
    }
  }

  v29 = v27;
  v30 = v28;
  result = boost::icl::left_subtract<boost::icl::discrete_interval<unsigned long long,std::less>>(&v29, &v23, &v21);
  v20 = v21;
  if (!v22)
  {
    if (v21 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    v20 = v21 + 1;
    goto LABEL_38;
  }

  if (v22 != 3)
  {
LABEL_38:
    if (v20 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (*(&v21 + 1) < v21)
  {
    goto LABEL_42;
  }

LABEL_39:
  v29 = v21;
  v30 = v22;
  LOBYTE(v31) = 0;
  v41 = 0;
  if (*(a3 + 140) == 1)
  {
    v31 = *a3;
    v32 = *(a3 + 2);
    v37 = *(a3 + 76);
    v38 = *(a3 + 92);
    v39 = *(a3 + 108);
    v40 = *(a3 + 124);
    v33 = *(a3 + 12);
    v34 = *(a3 + 28);
    v35 = *(a3 + 44);
    v36 = *(a3 + 60);
    v41 = 1;
  }

  result = std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,std::optional<udif::details::block_info>>>(a1, v15, &v29, &v29);
  v15 = result;
LABEL_42:
  *a4 = v15;
  return result;
}

void *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__emplace_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>> const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__construct_node<std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,std::optional<udif::details::block_info>>>(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>,boost::icl::exclusive_less_than<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>>>>::__construct_node<std::pair<boost::icl::discrete_interval<unsigned long long,std::less>,std::optional<udif::details::block_info>> const&>();
  }

  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<458ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF8080;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F38490(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<500ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF82A0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F38558(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **std::map<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>::map[abi:ne200100](uint64_t **a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info> const&>(a1, v4, a2, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__emplace_hint_unique_key_args<boost::icl::discrete_interval<unsigned long long,std::less>,std::pair<boost::icl::discrete_interval<unsigned long long,std::less> const,udif::details::run_info> const&>(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,udif::details::run_info>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>(a5, (a2 + 4)))
  {
    if (!boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>(a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (boost::icl::operator<<boost::icl::discrete_interval<unsigned long long,std::less>>((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::__map_value_compare<boost::icl::discrete_interval<unsigned long long,std::less>,std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>,std::less<boost::icl::discrete_interval<unsigned long long,std::less>>,true>,std::allocator<std::__value_type<boost::icl::discrete_interval<unsigned long long,std::less>,ChecksumScheduler<checksum::Any<locks::None,checksum::None,checksum::CRC32>::bind_algos,details::udif_verify::scheduler_type,locks::Std>::wrapper>>>::__find_equal<boost::icl::discrete_interval<unsigned long long,std::less>>(a1, a3, a5);
}

void boost::container::vector<udif::run_io_info,boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,udif::run_io_info*,udif::run_io_info>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 57)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(v11 << 6);
  boost::container::vector<udif::run_io_info,boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,udif::run_io_info*,udif::run_io_info>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

const char *boost::container::vector_alloc_holder<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x1FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x1FFFFFFFFFFFFFFLL - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v3];
  if (v8 < 0x1FFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<udif::run_io_info,boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<udif::run_io_info,boost::container::new_allocator<void>,void>,udif::run_io_info*,udif::run_io_info>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1 + (a1[1] << 6);
  v12 = a2;
  if (*a1 != a4)
  {
    v13 = *a1;
    v12 = a2;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 1);
      v15 = *(v13 + 3);
      v16 = *(v13 + 5);
      *(v12 + 56) = v13[7];
      *(v12 + 40) = v16;
      *(v12 + 24) = v15;
      *(v12 + 8) = v14;
      v13 += 8;
      v12 += 64;
    }

    while (v13 != a4);
  }

  *v12 = *a6;
  v17 = *(a6 + 8);
  v18 = *(a6 + 24);
  v19 = *(a6 + 40);
  *(v12 + 56) = *(a6 + 56);
  *(v12 + 40) = v19;
  *(v12 + 24) = v18;
  *(v12 + 8) = v17;
  if (v11 != a4)
  {
    v20 = v12 + (a5 << 6);
    do
    {
      *v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *(a4 + 24);
      v23 = *(a4 + 40);
      *(v20 + 56) = *(a4 + 56);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      a4 += 64;
      v20 += 64;
    }

    while (a4 != v11);
  }

  if (v10)
  {
    v24 = *a1;
    if (a1 + 3 != *a1)
    {
      operator delete(v24);
    }
  }

  v25 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v25;
  a1[2] = a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<601ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF84C0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F38B18(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t checksum::operator<<(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_285BF8890[v2])(&v5, a2 + 4);
}

void sub_248F38C50(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x24C1ED710](v1, 0x60C8044C4A2DFLL);
  }

  __cxa_rethrow();
}

void std::__shared_ptr_pointer<__CFString const* *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1ED730);
}

uint64_t std::__shared_ptr_pointer<__CFString const* *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C1ED710);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<__CFString const* *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::details::blocks::blocks_signature>>>::serializer_exception_trait(void *a1, uint64_t a2)
{
  serializer_exception_base::serializer_exception_base((a1 + 2), a2);
  *a1 = &unk_285BF89B0;
  a1[2] = &unk_285BF8A18;
  a1[1] = &unk_285BF89D8;
  return a1;
}

std::exception *serializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::details::blocks::blocks_signature>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void serializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::details::blocks::blocks_signature>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = &unk_285BE70A8;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void non-virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::details::blocks::blocks_signature>>>::~serializer_exception_trait(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v2 = a1 + 1;
  a1[1].__vftable = &unk_285BE70A8;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk toserializer_exception_trait<TraitExtractor<signature_type,print_as_string<udif::details::blocks::blocks_signature>>>::~serializer_exception_trait(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = &unk_285BE70A8;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = &unk_285BE70A8;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<898ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF86E0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F391E0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sparse_bundles::mapped_blocks_t::mapped_blocks_t(uint64_t a1, uint64_t a2, sparse_bundles *a3, uint64_t *a4, unint64_t file_size_from, char a6)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 1;
  operator new();
}

void sub_248F39344(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  v18 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sparse_bundles::mapped_blocks_t::load_file(sparse_bundles::mapped_blocks_t *this)
{
  v2 = (*(*(this + 1) + 16) + 7) >> 3;
  v3 = (*(**(this + 2) + 40))(*(this + 2));
  v4 = v3;
  v5 = v3 == v2 || v3 == v2 + 16;
  v6 = v5;
  if (v5)
  {
    v7 = v3 - v2;
    v8 = *(*(this + 1) + 8);
    v9 = *(details::get_dummy_shared_ptr() + 1);
    *&v21 = v8;
    *(&v21 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = v2;
    v23 = v7;
    v24 = v2;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v10 = (*(**(this + 2) + 128))(*(this + 2), &v21);
    if (v2 != v10)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Failed reading ", 15);
      sparse_bundles::operator<<(v18);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v18, v10);
    }

    if (DIDebugLogsEnabled())
    {
      *&v16 = "sparse_bundles::mapped_blocks_t::load_file()";
      *(&v16 + 1) = 42;
      v17 = 2;
      di_log::logger<di_log::log_printer<89ul>>::logger(v18, &v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Found a valid file for ", 23);
      sparse_bundles::operator<<(&v19);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(v18);
      MEMORY[0x24C1ED6A0](v20);
    }

    *(this + 24) = 0;
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  else if (v3)
  {
    *&v21 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v21 + 1) = 42;
    LODWORD(v22) = 16;
    di_log::logger<di_log::log_printer<93ul>>::logger(v18, &v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "invalid file size for ", 22);
    sparse_bundles::operator<<(&v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", current is ", 13);
    MEMORY[0x24C1ED3E0](&v19, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " while expected is ", 19);
    MEMORY[0x24C1ED3C0](&v19, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", truncating", 12);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(v18);
    MEMORY[0x24C1ED6A0](v20);
    v11 = (*(**(this + 2) + 56))(*(this + 2), 0);
    if (v11)
    {
      v12 = v11;
      v13 = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Failed truncating ", 18);
      sparse_bundles::operator<<(v18);
      DiskImagesRuntimeException::DiskImagesRuntimeException(v13, v18, v12);
    }
  }

  else if (DIDebugLogsEnabled())
  {
    *&v21 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v21 + 1) = 42;
    LODWORD(v22) = 2;
    di_log::logger<di_log::log_printer<99ul>>::logger(v18, &v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "file of ", 8);
    sparse_bundles::operator<<(&v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " was just created (truncated)", 29);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(v18);
    MEMORY[0x24C1ED6A0](v20);
  }

  return v6;
}

void sub_248F397C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t sparse_bundles::mapped_blocks_t::map_range(lock_free::bitmap_t **this, unint64_t a2, uint64_t a3)
{
  v6 = a2 + a3 - 1;
  result = DIDebugLogsEnabled();
  if (result)
  {
    *&v10 = "sparse_bundles::mapped_blocks_t::map_range(uint64_t, uint64_t)";
    *(&v10 + 1) = 42;
    v11 = 2;
    di_log::logger<di_log::log_printer<150ul>>::logger(v12, &v10);
    sparse_bundles::operator<<(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " - map_range: [", 15);
    v8 = v13;
    *(&v13 + *(v13 - 24) + 8) |= 0x200u;
    *(&v13 + *(v8 - 24) + 8) = *(&v13 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v13, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "-", 1);
    MEMORY[0x24C1ED3E0](&v13, v6);
    v9 = v13;
    *(&v13 + *(v13 - 24) + 8) &= ~0x200u;
    *(&v13 + *(v9 - 24) + 8) = *(&v13 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "]", 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(v12);
    result = MEMORY[0x24C1ED6A0](&v14);
  }

  if (a3)
  {
    result = lock_free::bitmap_t::update_bits(this[1], a2 >> 12, v6 >> 12, 1);
    if (result)
    {
      *(this + 24) = 1;
    }
  }

  return result;
}

void sub_248F39A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<150ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void sparse_bundles::mapped_blocks_t::open_mapped_file(void *a1, sparse_bundles *a2)
{
  (***a1)(*a1);
  sparse_bundles::band_to_filename(&__p, a2);
  operator new();
}

void sub_248F39B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_248F39C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sparse_bundles::mapped_blocks_t::mapped_blocks_t();
  }

  _Unwind_Resume(exception_object);
}

void sub_248F39CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sparse_bundles::mapped_blocks_t::mapped_blocks_t();
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<89ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<89ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF8A58;
  a1[45] = &unk_285BF8B58;
  a1[46] = &unk_285BF8B80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF8A58;
  a1[45] = &unk_285BF8AE0;
  a1[46] = &unk_285BF8B08;
  return a1;
}

void sub_248F39E0C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<89ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<93ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<93ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF8C78;
  a1[45] = &unk_285BF8D78;
  a1[46] = &unk_285BF8DA0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF8C78;
  a1[45] = &unk_285BF8D00;
  a1[46] = &unk_285BF8D28;
  return a1;
}

void sub_248F39F78(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<93ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<99ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<99ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF8E98;
  a1[45] = &unk_285BF8F98;
  a1[46] = &unk_285BF8FC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF8E98;
  a1[45] = &unk_285BF8F20;
  a1[46] = &unk_285BF8F48;
  return a1;
}

void sub_248F3A0E4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<99ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t sparse_bundles::mapped_blocks_t::flush(sparse_bundles::mapped_blocks_t *this)
{
  if (*(this + 24))
  {
    v2 = *(*(this + 1) + 16) + 7;
    if ((*(**(this + 2) + 40))(*(this + 2)) == v2 >> 3 || (v3 = (*(**(this + 2) + 56))(*(this + 2), 0), !v3))
    {
      v4 = v2 >> 3;
      *(this + 24) = 0;
      v5 = *(this + 2);
      v6 = *(*(this + 1) + 8);
      v7 = *(details::get_dummy_shared_ptr() + 1);
      v11 = v6;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v4;
      v14 = 0;
      v15 = v4;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v3 = (*(*v5 + 120))(v5, &v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v4 == v3)
      {
        v3 = (*(**(this + 2) + 16))(*(this + 2), 1);
        if (v3)
        {
          *(this + 24) = 1;
        }

        if (DIDebugLogsEnabled())
        {
          *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
          *(&v9 + 1) = 38;
          v10 = 2;
          di_log::logger<di_log::log_printer<141ul>>::logger(&v11, &v9);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Flushed ", 8);
          sparse_bundles::operator<<(&v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ", res=", 6);
          MEMORY[0x24C1ED390](&v19, v3);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(&v11);
          MEMORY[0x24C1ED6A0](v20);
        }
      }

      else
      {
        *(this + 24) = 1;
      }
    }
  }

  else
  {
    if (DIDebugLogsEnabled())
    {
      *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
      *(&v9 + 1) = 38;
      v10 = 2;
      di_log::logger<di_log::log_printer<114ul>>::logger(&v11, &v9);
      sparse_bundles::operator<<(&v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " is clean, skipping flush", 25);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(&v11);
      MEMORY[0x24C1ED6A0](v20);
    }

    return 0;
  }

  return v3;
}

void sub_248F3A3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<141ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<114ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<114ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF90B8;
  a1[45] = &unk_285BF91B8;
  a1[46] = &unk_285BF91E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF90B8;
  a1[45] = &unk_285BF9140;
  a1[46] = &unk_285BF9168;
  return a1;
}

void sub_248F3A520(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<114ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<141ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<141ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF92D8;
  a1[45] = &unk_285BF93D8;
  a1[46] = &unk_285BF9400;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF92D8;
  a1[45] = &unk_285BF9360;
  a1[46] = &unk_285BF9388;
  return a1;
}

void sub_248F3A68C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<141ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<150ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<150ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF94F8;
  a1[45] = &unk_285BF95F8;
  a1[46] = &unk_285BF9620;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF94F8;
  a1[45] = &unk_285BF9580;
  a1[46] = &unk_285BF95A8;
  return a1;
}

void sub_248F3A7F8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<150ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t sparse_bundles::mapped_blocks_t::unmap_interval(lock_free::bitmap_t **this, unint64_t a2, unint64_t a3)
{
  result = DIDebugLogsEnabled();
  if (result)
  {
    *&v11 = "sparse_bundles::mapped_blocks_t::unmap_interval(uint64_t, uint64_t)";
    *(&v11 + 1) = 47;
    v12 = 2;
    di_log::logger<di_log::log_printer<166ul>>::logger(v13, &v11);
    sparse_bundles::operator<<(&v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " - unmap_range: [", 17);
    v7 = v14;
    *(&v14 + *(v14 - 24) + 8) |= 0x200u;
    *(&v14 + *(v7 - 24) + 8) = *(&v14 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v14, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "-", 1);
    MEMORY[0x24C1ED3E0](&v14, a3);
    v8 = v14;
    *(&v14 + *(v14 - 24) + 8) &= ~0x200u;
    *(&v14 + *(v8 - 24) + 8) = *(&v14 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "]", 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<166ul>>::~logger_buf(v13);
    result = MEMORY[0x24C1ED6A0](&v15);
  }

  if (a3 != a2)
  {
    v9 = a2 >> 12;
    v10 = a3 >> 12;
    if ((a2 & 0xFFF) != 0)
    {
      if (v9 == v10)
      {
        return result;
      }

      ++v9;
    }

    if ((~a3 & 0xFFF) != 0)
    {
      if (v9 == v10)
      {
        return result;
      }

      --v10;
    }

    result = lock_free::bitmap_t::update_bits(this[1], v9, v10, 0);
    if (result)
    {
      *(this + 24) = 1;
    }
  }

  return result;
}

void sub_248F3AA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<166ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *sparse_bundles::operator<<(void *a1)
{
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "mapped blocks of band ", 22);
  *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = MEMORY[0x24C1ED3E0]();
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  return a1;
}

{
  v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "band ", 5);
  *(v1 + *(*v1 - 24) + 8) = *(v1 + *(*v1 - 24) + 8) & 0xFFFFFFB5 | 8;
  result = MEMORY[0x24C1ED3E0]();
  *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFFB5 | 2;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<89ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<89ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<89ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<89ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<89ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF8BF0;
  di_log::logger_buf<di_log::log_printer<89ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<89ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<89ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F3B084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<89ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<89ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 89;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 89;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<93ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<93ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<93ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<93ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<93ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF8E10;
  di_log::logger_buf<di_log::log_printer<93ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<93ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<93ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F3B81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<93ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<93ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 93;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 93;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<99ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<99ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<99ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<99ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<99ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF9030;
  di_log::logger_buf<di_log::log_printer<99ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<99ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<99ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F3BFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<99ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<99ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 99;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 99;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<114ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<114ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<114ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<114ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<114ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF9250;
  di_log::logger_buf<di_log::log_printer<114ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<114ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<114ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F3C74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<114ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<114ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 114;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 114;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<141ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<141ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<141ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<141ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<141ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF9470;
  di_log::logger_buf<di_log::log_printer<141ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<141ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<141ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F3CEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<141ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<141ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 141;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 141;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<150ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<150ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<150ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<150ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<150ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF9690;
  di_log::logger_buf<di_log::log_printer<150ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<150ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::ostringstream::str[abi:ne200100](v2, __p);
        di_log::log_printer<150ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F3D67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<150ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<150ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 150;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 150;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t di_log::logger_buf<di_log::log_printer<89ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF8BF0;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F3D974(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<93ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF8E10;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F3DA3C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<99ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF9030;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F3DB04(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<114ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF9250;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F3DBCC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<141ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF9470;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F3DC94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger_buf<di_log::log_printer<150ul>>::logger_buf(uint64_t a1, __int128 *a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1ED600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_285BF9690;
  if (*(a2 + 4) == 2)
  {
    v4 = DIDebugLogsEnabled();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100]((a1 + 96));
  return a1;
}

void sub_248F3DD5C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sparse_bundles::Band::Band(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_285BF9710;
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v6 = a4[4];
  *(a1 + 160) = a4[3];
  *(a1 + 168) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 0;
  v7 = a4[40];
  if (v7)
  {
    lock_free::bitmap_t::set_bit(v7, a3, 1);
  }

  return a1;
}

void sub_248F3DE3C(_Unwind_Exception *a1)
{
  sparse_bundles::Band::ContextsList::~ContextsList(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sparse_bundles::Band::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (DIDebugLogsEnabled())
  {
    *&v11 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
    *(&v11 + 1) = 38;
    LODWORD(v12) = 2;
    di_log::logger<di_log::log_printer<47ul>>::logger(v13, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Reading ", 8);
    operator<<(&v14, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " to ", 4);
    sparse_bundles::operator<<(&v14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(v13);
    MEMORY[0x24C1ED6A0](v15);
  }

  v5 = (*(**(a2 + 16) + 40))(*(a2 + 16));
  v6 = *(a3 + 24);
  if (v5 >= *(a3 + 16) + v6)
  {
    v7 = (*(**(a2 + 16) + 128))(*(a2 + 16), a3);
  }

  else if (v5 <= v6)
  {
    if (DIDebugLogsEnabled())
    {
      *&v11 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
      *(&v11 + 1) = 38;
      LODWORD(v12) = 2;
      di_log::logger<di_log::log_printer<63ul>>::logger(v13, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Band data doesn't exist, zeroing", 32);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(v13);
      MEMORY[0x24C1ED6A0](v15);
    }

    bzero(*a3, *(a3 + 16));
    v7 = *(a3 + 16);
  }

  else
  {
    sg_entry::sg_entry<sg_entry const&,void>(&v11, a3, v5 - v6, 0, v6, *(a3 + 32));
    if (DIDebugLogsEnabled())
    {
      *&v9 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
      *(&v9 + 1) = 38;
      v10 = 2;
      di_log::logger<di_log::log_printer<56ul>>::logger(v13, &v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Band data is partial, reading ", 30);
      operator<<(&v14, &v11);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v13);
      MEMORY[0x24C1ED6A0](v15);
    }

    v7 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v11);
    bzero((*a3 + v12), *(a3 + 16) - v12);
    if (v12 == v7)
    {
      v7 = *(a3 + 16);
    }

    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  if (v7 >= 0)
  {
    return *(a3 + 16);
  }

  else
  {
    return v7;
  }
}

void sub_248F3E118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<47ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<47ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF9810;
  a1[45] = &unk_285BF9910;
  a1[46] = &unk_285BF9938;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF9810;
  a1[45] = &unk_285BF9898;
  a1[46] = &unk_285BF98C0;
  return a1;
}

void sub_248F3E268(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<47ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<56ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<56ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF9A30;
  a1[45] = &unk_285BF9B30;
  a1[46] = &unk_285BF9B58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF9A30;
  a1[45] = &unk_285BF9AB8;
  a1[46] = &unk_285BF9AE0;
  return a1;
}

void sub_248F3E3D4(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<56ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<63ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<63ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF9C50;
  a1[45] = &unk_285BF9D50;
  a1[46] = &unk_285BF9D78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF9C50;
  a1[45] = &unk_285BF9CD8;
  a1[46] = &unk_285BF9D00;
  return a1;
}

void sub_248F3E540(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<63ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t sparse_bundles::Band::write(sparse_bundles::Band *a1, uint64_t a2, uint64_t a3)
{
  if (DIDebugLogsEnabled())
  {
    *&v8 = "io_result_t sparse_bundles::Band::write(DiskImage::Context &, const sg_entry &)";
    *(&v8 + 1) = 39;
    v9 = 2;
    di_log::logger<di_log::log_printer<74ul>>::logger(v10, &v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Writing ", 8);
    operator<<(&v11, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " to ", 4);
    sparse_bundles::operator<<(&v11);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(v10);
    MEMORY[0x24C1ED6A0](&v12);
  }

  mapped_blocks = sparse_bundles::Band::get_mapped_blocks(a1);
  sparse_bundles::mapped_blocks_t::write(mapped_blocks, a3);
  LODWORD(result) = (*(**(a2 + 16) + 120))(*(a2 + 16), a3);
  *(a1 + 68) = 1;
  if (result >= 0)
  {
    return *(a3 + 16);
  }

  else
  {
    return result;
  }
}

void sub_248F3E6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<74ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<74ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<74ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BF9E70;
  a1[45] = &unk_285BF9F70;
  a1[46] = &unk_285BF9F98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BF9E70;
  a1[45] = &unk_285BF9EF8;
  a1[46] = &unk_285BF9F20;
  return a1;
}

void sub_248F3E7E8(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<74ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

unint64_t sparse_bundles::Band::get_mapped_blocks(sparse_bundles::Band *this)
{
  result = atomic_load(this + 6);
  if (!result)
  {
    v5 = this;
    if (atomic_load_explicit(this + 7, memory_order_acquire) != -1)
    {
      v4[0] = &v5;
      v6 = v4;
      std::__call_once(this + 7, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<sparse_bundles::Band::get_mapped_blocks(void)::$_0 &&>>);
    }

    result = atomic_load(this + 6);
    if (!result)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      std::ostringstream::basic_ostringstream[abi:ne200100](v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Failed opening mapped blocks file for ", 38);
      sparse_bundles::operator<<(v4);
      DiskImagesRuntimeException::DiskImagesRuntimeException(exception, v4, *(this + 16));
    }
  }

  return result;
}

void sub_248F3E950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x24C1ED6A0](v5 + 112);
  if (v4)
  {
    __cxa_free_exception(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sparse_bundles::Band::unmap_extents(sparse_bundles::Band *a1, void *a2)
{
  mapped_blocks = sparse_bundles::Band::get_mapped_blocks(a1);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      if ((v5[6] & 2) != 0)
      {
        v7 = v5[4];
      }

      else
      {
        v7 = v5[4] + 1;
      }

      sparse_bundles::mapped_blocks_t::unmap_interval(mapped_blocks, v7, (v5[6] & 1) + v5[5] - 1);
      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  v11 = *(mapped_blocks + 8);

  return lock_free::bitmap_t::is_reset(v11);
}

void sparse_bundles::Band::new_band(sparse_bundles *a1, uint64_t a2, int a3, void *a4)
{
  v9 = a3;
  v7 = 0;
  v8 = 0;
  v6 = (***(a2 + 8))(*(a2 + 8));
  sparse_bundles::band_to_filename(&__p, a1);
  std::allocate_shared[abi:ne200100]<FileLocal,std::allocator<FileLocal>,int,std::string,int &,0>();
}

void sub_248F3EB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sparse_bundles::Band::erase(sparse_bundles::Band *this, const sparse_bundles::bundle_commons_t *a2)
{
  if (*(*this + 8))
  {
    *&__p = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&__p + 1) = 32;
    v14 = 0;
    di_log::logger<di_log::log_printer<116ul>>::logger(v16, &__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Skipping erase of band ", 23);
    MEMORY[0x24C1ED3E0](&v17, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", disk image is terminated", 26);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<116ul>>::~logger_buf(v16);
    MEMORY[0x24C1ED6A0](v18);
    return;
  }

  sparse_bundles::band_to_filename(&__p, a2);
  v4 = (***(this + 2))(*(this + 2));
  v5 = FileLocal::unlink_from(v4, &__p);
  v6 = v5;
  if (v5)
  {
    if (v5 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = -v5;
    }

    if (v7 != 2)
    {
      *&v11 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
      *(&v11 + 1) = 32;
      v12 = 16;
      di_log::logger<di_log::log_printer<126ul>>::logger(v16, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Failed to erase mapped file of band ", 36);
      *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v17, a2);
      *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 2;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", error ", 8);
      MEMORY[0x24C1ED390](&v17, v6);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(v16);
      goto LABEL_11;
    }

    if (DIDebugLogsEnabled())
    {
      *&v11 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
      *(&v11 + 1) = 32;
      v12 = 2;
      di_log::logger<di_log::log_printer<124ul>>::logger(v16, &v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "No mapped file for band ", 24);
      *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 8;
      MEMORY[0x24C1ED3E0](&v17, a2);
      *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 2;
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(v16);
LABEL_11:
      MEMORY[0x24C1ED6A0](v18);
    }
  }

  v8 = (***(this + 1))(*(this + 1));
  v9 = FileLocal::unlink_from(v8, &__p);
  if (v9)
  {
    *&v11 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&v11 + 1) = 32;
    v12 = 16;
    di_log::logger<di_log::log_printer<136ul>>::logger(v16, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Failed to erase band ", 21);
    *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v17, a2);
    *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 2;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", error ", 8);
    MEMORY[0x24C1ED390](&v17, v9);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<136ul>>::~logger_buf(v16);
    MEMORY[0x24C1ED6A0](v18);
  }

  else
  {
    v10 = *(this + 40);
    if (v10)
    {
      lock_free::bitmap_t::set_bit(v10, a2, 0);
    }
  }

  if (DIDebugLogsEnabled())
  {
    *&v11 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&v11 + 1) = 32;
    v12 = 2;
    di_log::logger<di_log::log_printer<139ul>>::logger(v16, &v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Completed erase of band ", 24);
    *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 8;
    MEMORY[0x24C1ED3E0](&v17, a2);
    *&v18[*(v17 - 24)] = *&v18[*(v17 - 24)] & 0xFFFFFFB5 | 2;
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<139ul>>::~logger_buf(v16);
    MEMORY[0x24C1ED6A0](v18);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }
}

void sub_248F3F0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *di_log::logger<di_log::log_printer<124ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<124ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFA090;
  a1[45] = &unk_285BFA190;
  a1[46] = &unk_285BFA1B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFA090;
  a1[45] = &unk_285BFA118;
  a1[46] = &unk_285BFA140;
  return a1;
}

void sub_248F3F230(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<124ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<126ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<126ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFA2B0;
  a1[45] = &unk_285BFA3B0;
  a1[46] = &unk_285BFA3D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFA2B0;
  a1[45] = &unk_285BFA338;
  a1[46] = &unk_285BFA360;
  return a1;
}

void sub_248F3F39C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<126ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sparse_bundles::Band::start_eviction(uint64_t this)
{
  if ((*(this + 176) & 1) == 0)
  {
    sparse_bundles::Band::ContextsList::clear((this + 72));
    sparse_bundles::open_bands_t::mark_as_placed((*(this + 40) + 184), *(this + 32), 0);
    *(this + 176) = 1;
  }
}

void sparse_bundles::Band::ContextsList::clear(sparse_bundles::Band::ContextsList *this)
{
  if (DIDebugLogsEnabled())
  {
    *&v9 = "sparse_bundles::Band::ContextsList::clear()";
    *(&v9 + 1) = 41;
    v10 = 2;
    di_log::logger<di_log::log_printer<92ul>>::logger(v11, &v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Resetting ", 10);
    MEMORY[0x24C1ED3C0](&v12, (*(this + 1) - *this) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " band contexts", 14);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<92ul>>::~logger_buf(v11);
    MEMORY[0x24C1ED6A0](&v13);
  }

  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v4 = *v2;
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(this + 11);
      v6 = *(this + 12);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(v4 + 24);
      *(v4 + 16) = v7;
      *(v4 + 24) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_248F3F570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<92ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void sparse_bundles::Band::~Band(sparse_bundles::Band *this)
{
  *this = &unk_285BF9710;
  sparse_bundles::Band::start_eviction(this);
  v2 = atomic_load(this + 6);
  if (*(this + 69))
  {
    if (!v2)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v2)
  {
    if (*(**(this + 5) + 8))
    {
      *&v7 = "sparse_bundles::Band::~Band()";
      *(&v7 + 1) = 27;
      v8 = 0;
      di_log::logger<di_log::log_printer<162ul>>::logger(v9, &v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Disk image is terminated, skipping flush of ", 44);
      sparse_bundles::operator<<(&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ", dirty=", 8);
      MEMORY[0x24C1ED380](&v10, *(this + 68) & 1);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(v9);
      MEMORY[0x24C1ED6A0](v11);
    }

    else
    {
      if (DIDebugLogsEnabled())
      {
        *&v7 = "sparse_bundles::Band::~Band()";
        *(&v7 + 1) = 27;
        v8 = 2;
        di_log::logger<di_log::log_printer<164ul>>::logger(v9, &v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "flushing and closing ", 21);
        sparse_bundles::operator<<(&v10);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(v9);
        MEMORY[0x24C1ED6A0](v11);
      }

      sparse_bundles::mapped_blocks_t::flush(v2);
      if (*(this + 68))
      {
        (*(**(this + 2) + 16))(*(this + 2), 1);
      }
    }

LABEL_13:
    v3 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    MEMORY[0x24C1ED730](v2, 0x1020C40171E6E99);
    goto LABEL_18;
  }

  if (DIDebugLogsEnabled())
  {
    *&v7 = "sparse_bundles::Band::~Band()";
    *(&v7 + 1) = 27;
    v8 = 2;
    di_log::logger<di_log::log_printer<173ul>>::logger(v9, &v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Closing an unchanged ", 21);
    sparse_bundles::operator<<(&v10);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<173ul>>::~logger_buf(v9);
    MEMORY[0x24C1ED6A0](v11);
  }

LABEL_18:
  v5 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 69) == 1)
  {
    sparse_bundles::Band::erase(*(this + 5), *(this + 4));
  }

  sparse_bundles::open_bands_t::remove((*(this + 5) + 184), *(this + 4));
  sparse_bundles::Band::ContextsList::~ContextsList((this + 72));
  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

{
  sparse_bundles::Band::~Band(this);

  JUMPOUT(0x24C1ED730);
}

void *di_log::logger<di_log::log_printer<162ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<162ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFA4D0;
  a1[45] = &unk_285BFA5D0;
  a1[46] = &unk_285BFA5F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFA4D0;
  a1[45] = &unk_285BFA558;
  a1[46] = &unk_285BFA580;
  return a1;
}

void sub_248F3F984(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<162ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<164ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<164ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFA6F0;
  a1[45] = &unk_285BFA7F0;
  a1[46] = &unk_285BFA818;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFA6F0;
  a1[45] = &unk_285BFA778;
  a1[46] = &unk_285BFA7A0;
  return a1;
}

void sub_248F3FAF0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<164ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sub_248F3FBF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sparse_bundles::Band::ContextsList::add(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<iovec>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = a1;
    if (v11)
    {
      std::allocator<std::shared_ptr<LockableResource>>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::shared_ptr<char>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
  std::mutex::unlock((a1 + 24));
}

uint64_t sparse_bundles::Band::flush(sparse_bundles::Band *this)
{
  if ((*(this + 68) & 1) == 0)
  {
    return 0;
  }

  *(this + 68) = 0;
  v2 = atomic_load(this + 6);
  v3 = sparse_bundles::mapped_blocks_t::flush(v2);
  if (v3)
  {
    v4 = v3;
LABEL_6:
    *(this + 68) = 1;
    *&v6 = "sparse_bundles::Band::flush()";
    *(&v6 + 1) = 27;
    v7 = 16;
    di_log::logger<di_log::log_printer<213ul>>::logger(v8, &v6);
    sparse_bundles::operator<<(&v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, ": flush failed (", 16);
    MEMORY[0x24C1ED390](&v9, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, ")", 1);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<213ul>>::~logger_buf(v8);
    MEMORY[0x24C1ED6A0](&v10);
    return v4;
  }

  v4 = (*(**(this + 2) + 16))(*(this + 2), 1);
  if (v4)
  {
    goto LABEL_6;
  }

  return v4;
}

void sub_248F3FE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<213ul>>::~logger(va);
  _Unwind_Resume(a1);
}

atomic_ullong *volatile *sparse_bundles::band_ptr::release(atomic_ullong *volatile *this)
{
  if (*this && atomic_fetch_add(*this, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v2 = this;
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    this = *v2;
    if (*v2)
    {

      JUMPOUT(0x24C1ED730);
    }
  }

  return this;
}

atomic_ullong *volatile *sparse_bundles::band_ptr::band_ptr(atomic_ullong *volatile *this, atomic_ullong *volatile *a2)
{
  v2 = *a2;
  *this = *a2;
  v3 = atomic_load(v2);
  if (!v3)
  {
LABEL_5:
    operator new();
  }

  v4 = v3;
  while (1)
  {
    atomic_compare_exchange_strong(*this, &v4, v3 + 1);
    if (v4 == v3)
    {
      break;
    }

    v3 = v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(a2 + 2);
  this[1] = a2[1];
  *(this + 2) = v5;
  return this;
}

uint64_t sparse_bundles::band_ptr::band_ptr(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  if (result != a2)
  {
    *a2 = 0;
  }

  return result;
}

atomic_ullong *volatile *sparse_bundles::band_ptr::operator=(atomic_ullong *volatile *this, atomic_ullong *volatile *a2)
{
  if (this != a2)
  {
    sparse_bundles::band_ptr::release(this);
    *this = *a2;
    this[2] = a2[2];
    *a2 = 0;
  }

  return this;
}

atomic_ullong *volatile *sparse_bundles::band_ptr::replace_if_evictable@<X0>(atomic_ullong *volatile *__return_ptr a1@<X8>, unint64_t **this@<X0>, sparse_bundles::Band *a3@<X1>)
{
  v6 = atomic_load(*this);
  sparse_bundles::eviction_t::increase(((*this)[1] + 56));
  if (v6 != 1 || (v7 = 1, atomic_compare_exchange_strong(*this, &v7, 0), v7 != 1))
  {
    sparse_bundles::eviction_t::decrease(((*this)[1] + 56));
    if (DIDebugLogsEnabled())
    {
      *&v13 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)";
      *(&v13 + 1) = 46;
      v14 = 2;
      di_log::logger<di_log::log_printer<341ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Missed an evictable slot", 24);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }

    operator new();
  }

  v8 = this[1];
  if (v8)
  {
    sparse_bundles::Band::start_eviction(v8);
    v9 = this[1];
    v10 = (*this)[1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN14sparse_bundles8band_ptr20replace_if_evictableEPNS_4BandE_block_invoke;
    v12[3] = &__block_descriptor_tmp_6;
    v12[4] = this;
    v12[5] = v9;
    workqueue::transaction::add((v10 + 392), v12);
  }

  else
  {
    sparse_bundles::eviction_t::decrease(((*this)[1] + 56));
    if (DIDebugLogsEnabled())
    {
      *&v13 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)";
      *(&v13 + 1) = 46;
      v14 = 2;
      di_log::logger<di_log::log_printer<357ul>>::logger(v15, &v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Replaced an empty slot", 22);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(v15);
      MEMORY[0x24C1ED6A0](v17);
    }
  }

  this[1] = a3;
  if (!a3)
  {
    this[2] = -1;
    operator new();
  }

  this[2] = *(a3 + 4);
  atomic_store(2uLL, *this);
  *(*this + 2) = std::chrono::steady_clock::now();
  result = sparse_bundles::band_ptr::band_ptr(a1, this);
  atomic_fetch_add(*this, 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

void *di_log::logger<di_log::log_printer<341ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<341ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFA910;
  a1[45] = &unk_285BFAA10;
  a1[46] = &unk_285BFAA38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFA910;
  a1[45] = &unk_285BFA998;
  a1[46] = &unk_285BFA9C0;
  return a1;
}

void sub_248F4047C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<341ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t ___ZN14sparse_bundles8band_ptr20replace_if_evictableEPNS_4BandE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (DIDebugLogsEnabled())
  {
    *&v5 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)_block_invoke";
    *(&v5 + 1) = 46;
    v6 = 2;
    di_log::logger<di_log::log_printer<350ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Background close of ", 20);
    sparse_bundles::operator<<(&v8);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(v7);
    MEMORY[0x24C1ED6A0](v9);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  sparse_bundles::eviction_t::decrease((*(*v2 + 8) + 56));
  result = DIDebugLogsEnabled();
  if (result)
  {
    *&v5 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)_block_invoke";
    *(&v5 + 1) = 46;
    v6 = 2;
    di_log::logger<di_log::log_printer<353ul>>::logger(v7, &v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Close completed", 15);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(v7);
    return MEMORY[0x24C1ED6A0](v9);
  }

  return result;
}

void sub_248F4062C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<353ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<350ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<350ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFAB30;
  a1[45] = &unk_285BFAC30;
  a1[46] = &unk_285BFAC58;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFAB30;
  a1[45] = &unk_285BFABB8;
  a1[46] = &unk_285BFABE0;
  return a1;
}

void sub_248F40754(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<350ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<353ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<353ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFAD50;
  a1[45] = &unk_285BFAE50;
  a1[46] = &unk_285BFAE78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFAD50;
  a1[45] = &unk_285BFADD8;
  a1[46] = &unk_285BFAE00;
  return a1;
}

void sub_248F408C0(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<353ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<357ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<357ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFAF70;
  a1[45] = &unk_285BFB070;
  a1[46] = &unk_285BFB098;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFAF70;
  a1[45] = &unk_285BFAFF8;
  a1[46] = &unk_285BFB020;
  return a1;
}

void sub_248F40A2C(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<357ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t sparse_bundles::band_ptr::erase_if_unmapped(sparse_bundles::band_ptr *this, uint64_t a2)
{
  v4 = atomic_load(*this);
  while (v4 == 1)
  {
    v4 = 1;
    atomic_compare_exchange_strong(*this, &v4, 0);
    if (v4 == 1)
    {
      mapped_blocks = sparse_bundles::Band::get_mapped_blocks(*(this + 1));
      if (lock_free::bitmap_t::is_reset(*(mapped_blocks + 8)))
      {
        sparse_bundles::Band::start_eviction(*(this + 1));
        v6 = *(this + 1);
        v7 = *(*this + 8);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 0x40000000;
        v11[2] = ___ZN14sparse_bundles8band_ptr17erase_if_unmappedEy_block_invoke;
        v11[3] = &__block_descriptor_tmp_40;
        v11[4] = v6;
        workqueue::transaction::add((v7 + 392), v11);
        *(this + 1) = 0;
        *(this + 2) = -1;
        v8 = *this;
        v9 = 1;
        atomic_store(1uLL, v8);
      }

      else
      {
        if (DIDebugLogsEnabled())
        {
          *&v14 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
          *(&v14 + 1) = 43;
          v15 = 2;
          di_log::logger<di_log::log_printer<409ul>>::logger(v16, &v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Skipping erase of ", 18);
          sparse_bundles::operator<<(&v17);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", band was written to", 21);
          std::ostream::~ostream();
          di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(v16);
          MEMORY[0x24C1ED6A0](v18);
        }

        return 1;
      }

      return v9;
    }
  }

  if (v4)
  {
    sparse_bundles::band_ptr::band_ptr(&v14, this);
    if (*(&v14 + 1) && *(*(&v14 + 1) + 32) == a2)
    {
      if (DIDebugLogsEnabled())
      {
        *&v12 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
        *(&v12 + 1) = 43;
        v13 = 2;
        di_log::logger<di_log::log_printer<397ul>>::logger(v16, &v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Skipping band erase (in use)", 28);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<397ul>>::~logger_buf(v16);
        MEMORY[0x24C1ED6A0](v18);
      }

      v9 = 1;
    }

    else
    {
      if (DIDebugLogsEnabled())
      {
        *&v12 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
        *(&v12 + 1) = 43;
        v13 = 2;
        di_log::logger<di_log::log_printer<400ul>>::logger(v16, &v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Band was evicted by another thread (during retain attempt), retry erase process", 79);
        std::ostream::~ostream();
        di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(v16);
        MEMORY[0x24C1ED6A0](v18);
      }

      v9 = 0;
    }

    sparse_bundles::band_ptr::release(&v14);
  }

  else
  {
    if (DIDebugLogsEnabled())
    {
      *&v14 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
      *(&v14 + 1) = 43;
      v15 = 2;
      di_log::logger<di_log::log_printer<392ul>>::logger(v16, &v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "Band was evicted by another thread, retry erase process", 55);
      std::ostream::~ostream();
      di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(v16);
      MEMORY[0x24C1ED6A0](v18);
    }

    return 0;
  }

  return v9;
}

void *di_log::logger<di_log::log_printer<392ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<392ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFB190;
  a1[45] = &unk_285BFB290;
  a1[46] = &unk_285BFB2B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFB190;
  a1[45] = &unk_285BFB218;
  a1[46] = &unk_285BFB240;
  return a1;
}

void sub_248F40E90(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<392ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<392ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<400ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<400ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFB3B0;
  a1[45] = &unk_285BFB4B0;
  a1[46] = &unk_285BFB4D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFB3B0;
  a1[45] = &unk_285BFB438;
  a1[46] = &unk_285BFB460;
  return a1;
}

void sub_248F40FFC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<400ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<400ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void *di_log::logger<di_log::log_printer<409ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<409ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFB5D0;
  a1[45] = &unk_285BFB6D0;
  a1[46] = &unk_285BFB6F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFB5D0;
  a1[45] = &unk_285BFB658;
  a1[46] = &unk_285BFB680;
  return a1;
}

void sub_248F41168(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<409ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<409ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

uint64_t ___ZN14sparse_bundles8band_ptr17erase_if_unmappedEy_block_invoke(uint64_t a1)
{
  if (DIDebugLogsEnabled())
  {
    *&v4 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)_block_invoke";
    *(&v4 + 1) = 43;
    v5 = 2;
    di_log::logger<di_log::log_printer<416ul>>::logger(v6, &v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Background erase of ", 20);
    sparse_bundles::operator<<(&v7);
    std::ostream::~ostream();
    di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(v6);
    MEMORY[0x24C1ED6A0](&v8);
  }

  v2 = *(a1 + 32);
  v2[69] = 1;
  return (*(*v2 + 16))(v2);
}

void sub_248F412A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  di_log::logger<di_log::log_printer<416ul>>::~logger(va);
  _Unwind_Resume(a1);
}

void *di_log::logger<di_log::log_printer<416ul>>::logger(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  a1[46] = MEMORY[0x277D828C0] + 16;
  di_log::logger_buf<di_log::log_printer<416ul>>::logger_buf(a1, a2);
  *a1 = &unk_285BFB7F0;
  a1[45] = &unk_285BFB8F0;
  a1[46] = &unk_285BFB918;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = &unk_285BFB7F0;
  a1[45] = &unk_285BFB878;
  a1[46] = &unk_285BFB8A0;
  return a1;
}

void sub_248F413BC(_Unwind_Exception *a1)
{
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v2);
  _Unwind_Resume(a1);
}

uint64_t di_log::logger<di_log::log_printer<416ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<416ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);
  return a1;
}

void sparse_bundles::Band::ContextsList::~ContextsList(sparse_bundles::Band::ContextsList *this)
{
  sparse_bundles::Band::ContextsList::clear(this);
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex((this + 24));
  v3 = this;
  std::vector<std::shared_ptr<char>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void non-virtual thunk todi_log::logger<di_log::log_printer<47ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<47ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<47ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<47ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<47ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF99A8;
  di_log::logger_buf<di_log::log_printer<47ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<47ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<47ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F41ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<47ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<47ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 47;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 47;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<56ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<56ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<56ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<56ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<56ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF9BC8;
  di_log::logger_buf<di_log::log_printer<56ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<56ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<56ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F42254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<56ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<56ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 56;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 56;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<63ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<63ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<63ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<63ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<63ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BF9DE8;
  di_log::logger_buf<di_log::log_printer<63ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<63ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<63ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F429EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<63ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<63ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 63;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 63;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<74ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<74ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<74ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<74ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<74ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFA008;
  di_log::logger_buf<di_log::log_printer<74ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<74ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<74ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F43184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<74ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<74ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 74;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 74;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<124ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<124ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<124ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<124ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<124ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFA228;
  di_log::logger_buf<di_log::log_printer<124ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<124ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<124ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F4391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<124ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<124ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 124;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 124;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<126ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<126ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<126ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<126ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<126ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFA448;
  di_log::logger_buf<di_log::log_printer<126ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<126ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<126ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F440B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<126ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<126ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 126;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 126;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<162ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<162ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<162ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<162ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<162ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFA668;
  di_log::logger_buf<di_log::log_printer<162ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<162ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<162ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F4484C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<162ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<162ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 162;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 162;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<164ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<164ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<164ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<164ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<164ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFA888;
  di_log::logger_buf<di_log::log_printer<164ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<164ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<164ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F44FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<164ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<164ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 164;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 164;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<341ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<341ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<341ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<341ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<341ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFAAA8;
  di_log::logger_buf<di_log::log_printer<341ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<341ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<341ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F4577C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<341ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<341ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 341;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 341;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<350ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<350ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<350ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<350ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<350ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFACC8;
  di_log::logger_buf<di_log::log_printer<350ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<350ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<350ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F45F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<350ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<350ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 350;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 350;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<353ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<353ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<353ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<353ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<353ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFAEE8;
  di_log::logger_buf<di_log::log_printer<353ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<353ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<353ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F466AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<353ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<353ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 353;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 353;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void non-virtual thunk todi_log::logger<di_log::log_printer<357ul>>::~logger(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v2 = a1 - 360;
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(v2);
  MEMORY[0x24C1ED6A0](a1 + 8);

  JUMPOUT(0x24C1ED730);
}

void virtual thunk todi_log::logger<di_log::log_printer<357ul>>::~logger(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(v1);

  JUMPOUT(0x24C1ED6A0);
}

{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(v1);
  MEMORY[0x24C1ED6A0](v1 + 368);

  JUMPOUT(0x24C1ED730);
}

void di_log::logger<di_log::log_printer<357ul>>::~logger(uint64_t a1)
{
  std::ostream::~ostream();
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(a1);
  MEMORY[0x24C1ED6A0](a1 + 368);

  JUMPOUT(0x24C1ED730);
}

uint64_t di_log::logger_buf<di_log::log_printer<357ul>>::xsputn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t di_log::logger_buf<di_log::log_printer<357ul>>::overflow(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(uint64_t a1)
{
  *a1 = &unk_285BFB108;
  di_log::logger_buf<di_log::log_printer<357ul>>::_sync(a1);
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 96) = *MEMORY[0x277D82828];
  *(a1 + 96 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 104) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 104) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  MEMORY[0x24C1ED6A0](a1 + 208);
  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t di_log::logger_buf<di_log::log_printer<357ul>>::_sync(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        di_log::log_printer<357ul>::log((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        std::stringbuf::str[abi:ne200100](a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_248F46E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(uint64_t a1)
{
  di_log::logger_buf<di_log::log_printer<357ul>>::~logger_buf(a1);

  JUMPOUT(0x24C1ED730);
}

int *di_log::log_printer<357ul>::log(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v20 = 0;
    DIOSLog = getDIOSLog(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(DIOSLog, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 357;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &dword_248DE0000, DIOSLog, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 357;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&dword_248DE0000, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}