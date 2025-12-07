void sub_29828A3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  *v10 = 0;
  _Unwind_Resume(a1);
}

uint64_t eUICC::getPairingIdentifier(eUICC *this, const __CFDictionary **a2)
{
  if (this)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v5 = *gBBULogMaskGet(Mutable, v4) & (gBBULogVerbosity > 0);
    if (Mutable)
    {
      if (v5)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Return 16 byte zero EID as pairing identifier\n");
      }

      CFDictionarySetValue(Mutable, @"EID", @"00000000000000000000000000000000");
      v6 = 0;
      *this = Mutable;
    }

    else
    {
      if (v5)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Failed to allocate shared info dict\n");
      }

      return 19;
    }
  }

  else
  {
    v6 = 1;
    if ((*gBBULogMaskGet(0, a2) & 1) != 0 && gBBULogVerbosity >= 1)
    {
      _BBULog(0, 1, "eUICCVinylFactory", "", "Client rsp data is not valid\n");
    }
  }

  return v6;
}

uint64_t eUICC::getEID()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v26 = *MEMORY[0x29EDCA608];
  (*(**v1 + 8))(v24);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (LODWORD(v24[0]) == (RadioVendor - 5) < 0xFFFFFFFD)
  {
    stringifyDataBuffer(&__p, v24 + 7, 16);
    gBBULogMaskGet(v4, v5);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "EID: %s\n", p_p);
    v7 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = __p;
      }

      v12 = copyAsCFString(&v20);
      v21 = v12;
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(Mutable, @"EID", v12);
      *v0 = Mutable;
      v13 = CFStringCreateWithFormat(v7, 0, @"%@", Mutable);
      v14 = v13;
      if (v13)
      {
        CString = CFStringGetCString(v13, buffer, 0x2000, 0x8000100u);
        if (CString)
        {
          gBBULogMaskGet(CString, v16);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "client rsp data: %s\n", buffer);
        }

        CFRelease(v14);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      v17 = gBBULogMaskGet(0, v8);
      EID = eUICC::getEID(v17);
      if (EID)
      {
        EID = _BBULog(1, 6, "eUICCVinylFactory", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCCommon.cpp", 125, "eidSharedRef");
      }

      if ((*gBBULogMaskGet(EID, v19) & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Failed to allocate shared info dict\n");
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = v25;
    gBBULogMaskGet(RadioVendor, v3);
    if ((v10 & 1) == 0)
    {
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "Error: GetData() output not valid and isAbsentOK = false. kBBUReturnGetEIDFailure will be reported as kVinylResultDataMissing!\n");
      return 107;
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "eUICC not stuffed but that's ok!\n");
  }

  return 0;
}

void sub_29828A868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::checkEOSDev(_BYTE *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v4 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(v14);
    v5 = v14[0];
    v14[0] = 0uLL;
    v6 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v14[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14[0] + 1));
      }
    }

    v4 = xmmword_2A13A8CA0;
  }

  v7 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v8 = BBUCapabilities::supportsEuiccViaEOS(v4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  (*(**a2 + 8))(v14);
  if (LODWORD(v14[0]) == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    stringifyDataBuffer(&__p, v14 + 7, 16);
    gBBULogMaskGet(v9, v10);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "EID: %s\n", p_p);
    if (HIBYTE(v14[0]) == 99)
    {
      *a1 = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  return 107;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, size_t __sz)
{
  if (__sz >= 0x100)
  {
    v4 = operator new(__sz);
    v5 = v4;
    v6 = *(a1 + 296);
    v7 = *(a1 + 16);
    if (v7)
    {
      memmove(v4, *(a1 + 296), v7);
    }

    if (v6 != (a1 + 40))
    {
      operator delete(v6);
    }

    *(a1 + 296) = v5;
    *a1 = v5;
    *(a1 + 8) = __sz;
  }
}

unsigned __int8 *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_29828AC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, unsigned __int8 **a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v20 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = &v20;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v22) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = &a4[2][32 * v8];
    v16 = *(v15 + 1);
    v21 = *v15;
    v22 = v16;
  }

  else
  {
    v11 = &a4[2][16 * v8];
    v13 = *v11;
    v12 = *(v11 + 1);
    v14 = (a4[3] >> (5 * v8)) & 0x1F;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    LOBYTE(v22) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v19, &v21);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1EB39C8;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
  }

  return std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
}

uint64_t *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 ***a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = a1[1];
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v27 = *a1;
        v28 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v60, "a character");
        *v27 = v28;
      }

      v6 = a1[1];
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v30 = *a1;
        v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v30 = v31;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v17 = *a1;
        v18 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v17 = v18;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v37 = *a1;
        v38 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v37 = v38;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v33 = *a1;
        v34 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v33 = v34;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v43 = *a1;
        v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v43 = v44;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v24 = *a1;
        v25 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v24 = v25;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = a1[1];
        v54 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = a1[1];
        v58 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = a1[1];
      v56 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v49 = *a1;
        *v49 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = a1[1];
      result = std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = a1[1];
      v13 = *v6;
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = a1[1];
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = a1[1];

      return v52(v50, v53, v51);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:ne200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_BYTE *std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(_BYTE *result, const char *a2)
{
  v2 = result[1];
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v15) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = (v4 + 1);
    *a2 = (v4 + 1);
    if ((v4 + 1) == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = (v4 + 2);
      v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>((v4 + 2), a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 > 0x62)
  {
    if (**a2 <= 0x66u)
    {
      if (**a2 > 0x64u)
      {
        if (v3 == 101)
        {
          v4 = 13;
        }

        else
        {
          v4 = 15;
        }
      }

      else if (v3 == 99)
      {
        v4 = 10;
      }

      else
      {
        if (v3 != 100)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x46u)
  {
    if (**a2 > 0x44u)
    {
      if (v3 == 69)
      {
        v4 = 14;
      }

      else
      {
        v4 = 16;
      }
    }

    else if (v3 == 65)
    {
      v4 = 12;
    }

    else
    {
      if (v3 != 66)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else if (**a2 <= 0x57u)
  {
    if (v3 == 71)
    {
      v4 = 18;
    }

    else
    {
      if (v3 != 80)
      {
        return result;
      }

      v4 = 9;
    }
  }

  else
  {
    switch(v3)
    {
      case 'X':
        v4 = 7;
        break;
      case 'a':
        v4 = 11;
        break;
      case 'b':
        v4 = 2;
        break;
      default:
        return result;
    }
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_29828C1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_29828C3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v17);
    v12 = std::locale::use_facet(&v17, MEMORY[0x29EDC93F8]);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }
}

void sub_29828C5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, v13, v5, 8u);
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100]@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    MEMORY[0x29C286BB0](&v5);
    std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

unint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(char *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, a2);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v9, v10);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = v4[1] - v10;
    if (v11 < v8 + 1)
    {
      result = (v4[3])(v4, v8 + 2);
      v10 = v4[2];
      v11 = v4[1] - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = v4[2];
    }

    v10 += v12;
    v4[2] = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t std::__width_estimation_table::__estimated_width[abi:ne200100](unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = &std::__width_estimation_table::__entries[abi:ne200100];
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != &std::__width_estimation_table::__entries[abi:ne200100])
  {
    if ((*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = a2;
  v4 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = std::__indic_conjunct_break::__get_property[abi:ne200100](a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = v5[1] - v10;
      if (v11 < v4 + 1)
      {
        result = (v5[3])(v5, v4 + 2);
        v10 = v5[2];
        v11 = v5[1] - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = v5[2];
      }

      v10 += v12;
      v5[2] = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 2) & 0x4000) == 0)
  {
    return *(a1 + 4);
  }

  v4 = *(a1 + 4);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    return *(a1 + 8);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, char *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_29828D784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t *a1, char *__src, char *a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *a5 + a5[1];
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v13, v11, &v11[v29], std::__formatter::__hex_to_upper[abi:ne200100]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](v13, v9);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v19, v15);
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v12, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v14, a1, a2, a6);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v14, v10, v11);
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v16 = a4;
      v17 = a3;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = (v4 - 1);
      v13 = v17;
      do
      {
        *v12-- = a0123456789abcd[v13 % v16];
        v14 = v13 >= v16;
        v13 /= v16;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 a2, uint64_t **a3)
{
  v5 = *(a1 + 1);
  if (v5 == 10 || v5 == 0)
  {
    v7 = *a3;
    v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
    __src = a2;
    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v7, v8, v9, 1);
  }

  else
  {
    v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v11, v12, 0);
  }
}

_BYTE *std::__format_spec::__process_parsed_char[abi:ne200100]<char>(_BYTE *result, const char *a2)
{
  v2 = result[1];
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v6 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, int a2, uint64_t **a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

_BYTE *std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(_BYTE *result, const char *a2)
{
  v2 = result[1];
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v4 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, uint64_t a2, uint64_t **a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *a6, char *a7, char *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_29828EAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v14 = a4;
      v15 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = v5 - 1;
      do
      {
        *v16-- = a0123456789abcd[(v4 % v14)];
        v17 = v4 >= v14;
        v4 /= v14;
      }

      while (v17);
      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  v2 %= 0x2710u;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t **a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x29EDCA608];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 0xAu);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 0xAu);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v12, v14, v6, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t **a3, unint64_t a4, unint64_t a5, char a6, char *a7, char *a8, char *a9, unsigned int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:ne200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a3, &v44);
  v22 = std::locale::use_facet(&v44, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_29828F574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned __int128>(char *a1, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v16 = a5;
      v17 = a1;
      v18 = a2 - a1;
      v19 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = v7 - 1;
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= v16;
          *v20-- = a0123456789abcd[(v6 - v21 * v16)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v11]) + 1)
      {
        return v7;
      }
    }

    return std::__itoa::__base_10_u128[abi:ne200100](a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (std::__itoa::__pow10_64[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v6);
  }

  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *std::__itoa::__base_10_u128[abi:ne200100](char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = std::__itoa::__digits_base_10[v7 % 0x5F5E100 / 0xF4240uLL];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = std::__itoa::__digits_base_10[v8 / 0x2710uLL];
    v8 %= 0x2710u;
    *(v3 + 3) = std::__itoa::__digits_base_10[v8 / 0x64u];
    *(v3 + 4) = std::__itoa::__digits_base_10[v8 % 0x64u];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
  v14 %= 0xF4240u;
  *(v12 + 3) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
  v14 %= 0x2710u;
  *(v12 + 5) = std::__itoa::__digits_base_10[v14 / 0x64u];
  *(v12 + 7) = std::__itoa::__digits_base_10[v14 % 0x64u];

  return std::__itoa::__append10[abi:ne200100]<unsigned long long>(v12 + 9, v13 % 0x2540BE400);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, uint64_t a2, uint64_t **a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, uint64_t **a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, unint64_t a3, uint64_t **a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, a4, v8, v7, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t **a1, unint64_t a2, unint64_t a3, float a4)
{
  v46[32] = *MEMORY[0x29EDCA608];
  v7 = LODWORD(a4) >> 31;
  if ((LODWORD(a4) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v8 = a2 >> 8;
    v9 = fabsf(a4);
    if (a3 == -1)
    {
      v10 = 149;
    }

    else
    {
      v10 = a3;
    }

    v42 = v10;
    v43 = 0;
    if (v10 < 150)
    {
      v44 = v10 + 45;
      if ((v10 + 45) >= 0x101)
      {
        v11 = operator new(v10 + 45);
LABEL_10:
        __p = v11;
        std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v42, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v38, v9);
        if ((a2 & 0x20) != 0)
        {
          v12 = v39;
          v13 = *v41;
          if (v39 == *v41)
          {
            ++*v41;
            *v13 = 46;
            v14 = v40;
            v15 = (*v41 - 1);
            if (v40 != (*v41 - 1))
            {
              if (v40 + 1 == v15)
              {
                v17 = *v40;
                *v40 = v40[1];
                v14[1] = v17;
              }

              else
              {
                v16 = *(*v41 - 1);
                memmove(v40 + 1, v40, v15 - v40);
                *v14 = v16;
              }
            }

            v12 = v40;
            v39 = v40++;
          }

          if ((BYTE1(a2) - 17) <= 1u)
          {
            if (a3 <= 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = a3;
            }

            if ((a3 & 0x80000000) != 0)
            {
              v18 = 6;
            }

            if (v40 == *v41)
            {
              v19 = v38 - v12;
            }

            else
            {
              v19 = -1;
            }

            v20 = v19 + v18;
            v21 = &v40[~v12];
            if (v21 < v20)
            {
              v43 += v20 - v21;
            }
          }
        }

        if ((a2 & 0x40) != 0)
        {
          v29 = *a1;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v37);
          v30 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v29, &v42, &v38, &v37, a2, a3);
          std::locale::~locale(&v37);
        }

        else
        {
          v22 = *v41;
          v23 = __p;
          v24 = *v41 - __p;
          v25 = v43;
          if (*v41 - __p + v43 >= a2 >> 32)
          {
            if (!v43 || (v31 = v40, v40 == *v41))
            {
              v30 = *a1;
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v41 - __p);
              std::__format::__output_buffer<char>::__fill[abi:ne200100](v30, v25, 48);
            }

            else
            {
              v30 = *a1;
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v40 - __p);
              std::__format::__output_buffer<char>::__fill[abi:ne200100](v30, v25, 48);
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v30, v31, v22 - v31);
            }
          }

          else
          {
            v26 = *a1;
            if ((a2 & 7) == 4)
            {
              if (__p != v38)
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v26, *__p);
                ++v23;
              }

              v27 = a2 & 0xB8 | 3;
              v28 = 48;
            }

            else
            {
              v28 = BYTE4(a3);
              v27 = a2;
            }

            v32 = a2 & 0xFFFFFFFFFFFFFF00 | v27;
            v33 = a3 & 0xFFFFFF00FFFFFFFFLL | (v28 << 32);
            if (v25)
            {
              v34 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v23, *v41, v26, v32, v33, v24, v40, v25);
            }

            else
            {
              v34 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v23, *v41 - v23, v26, v32, v33, v24);
            }

            v30 = v34;
          }
        }

        if (v44 >= 0x101)
        {
          operator delete(__p);
        }

        return v30;
      }
    }

    else
    {
      v42 = 149;
      v43 = v10 - 149;
      v44 = 194;
    }

    v11 = v46;
    goto LABEL_10;
  }

  v36 = *a1;

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v36, a2, a3, a4 < 0.0, 0);
}

void sub_298290474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

std::__1 *std::__formatter::__format_buffer[abi:ne200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x29C286C90](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = (result - v14);
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<float,float>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(uint64_t *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_298290B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C286C90](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if ((a3 + 1) == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (v6[v10] != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = &v6[v10];
    if (v10)
    {
      if (*result == 46)
      {
        v6 = (a3 + 1);
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<float,float>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x29C286C90](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 5), 112, 3uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x29C286C90](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

uint64_t *std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t *result, char a2)
{
  v2 = result[4];
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = result[2];
    result[2] = v6 + 1;
    *(v5 + v6) = a2;
    if (result[2] == result[1])
    {
      return (result[3])(result, 2);
    }
  }

  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t **a1, unint64_t a2, unint64_t a3, double a4)
{
  v47[128] = *MEMORY[0x29EDCA608];
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v43 = v10;
    v44 = 0;
    if (v10 < 1075)
    {
      v11 = v10 + 316;
      v45 = v11;
      if ((v10 + 316) < 0x401)
      {
        v12 = v47;
        goto LABEL_10;
      }
    }

    else
    {
      v43 = 1074;
      v44 = v10 - 1074;
      v11 = 1390;
      v45 = 1390;
    }

    v12 = operator new(v11);
LABEL_10:
    __p = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v43, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v39, v9);
    if ((a2 & 0x20) != 0)
    {
      v13 = v40;
      v14 = *v42;
      if (v40 == *v42)
      {
        ++*v42;
        *v14 = 46;
        v15 = v41;
        v16 = (*v42 - 1);
        if (v41 != (*v42 - 1))
        {
          if (v41 + 1 == v16)
          {
            v18 = *v41;
            *v41 = v41[1];
            v15[1] = v18;
          }

          else
          {
            v17 = *(*v42 - 1);
            memmove(v41 + 1, v41, v16 - v41);
            *v15 = v17;
          }
        }

        v13 = v41;
        v40 = v41++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v19 = 6;
        }

        if (v41 == *v42)
        {
          v20 = v39 - v13;
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 + v19;
        v22 = &v41[~v13];
        if (v22 < v21)
        {
          v44 += v21 - v22;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v30 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v38);
      v31 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v30, &v43, &v39, &v38, a2, a3);
      std::locale::~locale(&v38);
    }

    else
    {
      v23 = *v42;
      v24 = __p;
      v25 = *v42 - __p;
      v26 = v44;
      if (*v42 - __p + v44 >= a2 >> 32)
      {
        if (!v44 || (v32 = v41, v41 == *v42))
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v42 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
        }

        else
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v41 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v31, v32, v23 - v32);
        }
      }

      else
      {
        v27 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v39)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v27, *__p);
            ++v24;
          }

          v28 = a2 & 0xB8 | 3;
          v29 = 48;
        }

        else
        {
          v29 = BYTE4(a3);
          v28 = a2;
        }

        v33 = a2 & 0xFFFFFFFFFFFFFF00 | v28;
        v34 = a3 & 0xFFFFFF00FFFFFFFFLL | (v29 << 32);
        if (v26)
        {
          v35 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42, v27, v33, v34, v25, v41, v26);
        }

        else
        {
          v35 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42 - v24, v27, v33, v34, v25);
        }

        v31 = v35;
      }
    }

    if (v45 >= 0x401)
    {
      operator delete(__p);
    }

    return v31;
  }

  v37 = *a1;

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v37, a2, a3, a4 < 0.0, 0);
}

void sub_298291408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__1 *std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x29C286C30](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = (result - v14);
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_298291A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C286C30](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if ((a3 + 1) == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (v6[v10] != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = &v6[v10];
    if (v10)
    {
      if (*result == 46)
      {
        v6 = (a3 + 1);
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x29C286C30](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x29C286C30](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t **a1, unint64_t a2, unint64_t a3, double a4)
{
  v47[128] = *MEMORY[0x29EDCA608];
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v43 = v10;
    v44 = 0;
    if (v10 < 1075)
    {
      v11 = v10 + 316;
      v45 = v11;
      if ((v10 + 316) < 0x401)
      {
        v12 = v47;
        goto LABEL_10;
      }
    }

    else
    {
      v43 = 1074;
      v44 = v10 - 1074;
      v11 = 1390;
      v45 = 1390;
    }

    v12 = operator new(v11);
LABEL_10:
    __p = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v43, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v39, v9);
    if ((a2 & 0x20) != 0)
    {
      v13 = v40;
      v14 = *v42;
      if (v40 == *v42)
      {
        ++*v42;
        *v14 = 46;
        v15 = v41;
        v16 = (*v42 - 1);
        if (v41 != (*v42 - 1))
        {
          if (v41 + 1 == v16)
          {
            v18 = *v41;
            *v41 = v41[1];
            v15[1] = v18;
          }

          else
          {
            v17 = *(*v42 - 1);
            memmove(v41 + 1, v41, v16 - v41);
            *v15 = v17;
          }
        }

        v13 = v41;
        v40 = v41++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v19 = 6;
        }

        if (v41 == *v42)
        {
          v20 = v39 - v13;
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 + v19;
        v22 = &v41[~v13];
        if (v22 < v21)
        {
          v44 += v21 - v22;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v30 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v38);
      v31 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v30, &v43, &v39, &v38, a2, a3);
      std::locale::~locale(&v38);
    }

    else
    {
      v23 = *v42;
      v24 = __p;
      v25 = *v42 - __p;
      v26 = v44;
      if (*v42 - __p + v44 >= a2 >> 32)
      {
        if (!v44 || (v32 = v41, v41 == *v42))
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v42 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
        }

        else
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v41 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v31, v32, v23 - v32);
        }
      }

      else
      {
        v27 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v39)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v27, *__p);
            ++v24;
          }

          v28 = a2 & 0xB8 | 3;
          v29 = 48;
        }

        else
        {
          v29 = BYTE4(a3);
          v28 = a2;
        }

        v33 = a2 & 0xFFFFFFFFFFFFFF00 | v28;
        v34 = a3 & 0xFFFFFF00FFFFFFFFLL | (v29 << 32);
        if (v26)
        {
          v35 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42, v27, v33, v34, v25, v41, v26);
        }

        else
        {
          v35 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42 - v24, v27, v33, v34, v25);
        }

        v31 = v35;
      }
    }

    if (v45 >= 0x401)
    {
      operator delete(__p);
    }

    return v31;
  }

  v37 = *a1;

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v37, a2, a3, a4 < 0.0, 0);
}

void sub_298292168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__1 *std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x29C286C60](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = (result - v14);
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v17, v9, a6);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C286C60](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if ((a3 + 1) == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (v6[v10] != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = &v6[v10];
    if (v10)
    {
      if (*result == 46)
      {
        v6 = (a3 + 1);
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x29C286C60](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x29C286C60](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

  return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, v6, v7, v9, v8);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
  }

  return result;
}

void *std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, uint64_t **a3)
{
  v5 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *a6, char *a7, char *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_298292D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

void VinylICECommunication::statusCallback(const void *a1, uint64_t a2, int a3)
{
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "transport %p, status: %d\n", a1, a3);
  }

  if (a3 == 1)
  {
    Controller = TelephonyBasebandCreateController();
    v6 = TelephonyBasebandResetModem();
    v7 = v6;
    if ((*gBBULogMaskGet(v6, v8) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = "failure";
      if (v7)
      {
        v9 = "success";
      }

      _BBULog(2, 0, "BBUICE16Communication", "", "Resetting modem: %s\n", v9);
    }

    if (Controller)
    {
      CFRelease(Controller);
    }
  }
}

void sub_298292EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylICECommunication::freeTransportSync(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (v2 == a2)
  {
    v6 = *(a1 + 40);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = a1;
    dispatch_sync(v6, block);
    v5 = TelephonyUtilTransportFree();
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_8;
    v10 = v5;
    v9[4] = a1;
    v9[5] = a2;
    dispatch_sync(v7, v9);
  }

  else
  {
    v5 = 0;
    if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(2, 0, "BBUICE16Communication", "", "call with %p different from fTransportCreated(%p)\n", a2, *(a1 + 48));
      return 0;
    }
  }

  return v5;
}

uint64_t ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(v2 + 24) = 0;
  if (*(result + 48) == 1)
  {
    *(v2 + 48) = 0;
  }

  else
  {
    v3 = result;
    result = gBBULogMaskGet(result, a2);
    if ((*result & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(2, 0, "BBUICE16Communication", "", "fail to free transport: %p\n", *(v3 + 40));
    }
  }

  return result;
}

uint64_t VinylICECommunication::openChannel(uint64_t a1, uint64_t a2)
{
  gBBULogMaskGet(a1, a2);
  _BBULog(0, 0xFFFFFFFFLL, "BBUICE16Communication", "", " Initializing KTL options struct, opening ARI channel\n");
  IceAriGetContext();
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v2 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    v2 = xmmword_2A13A8CA0;
  }

  v5 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  BBUCapabilities::getARICommandTimeout(v2);
  v6 = KTLInitOptions();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v6)
  {
    IceAriGetContext();
    v7 = KTLOpenChannel();
    IceAriSetContextValid(1);
    if (v7)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  else
  {
    IceAriSetContextValid(1);
    return 11;
  }
}

void IceAriSetContextValid(char a1)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v2 = off_2A13A8C50;
  if (!off_2A13A8C50)
  {
    v3 = operator new(0x28uLL);
    v3[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v7, v3);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(&off_2A13A8C50 + 1);
    off_2A13A8C50 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v2 = off_2A13A8C50;
  }

  v6 = *(&off_2A13A8C50 + 1);
  if (*(&off_2A13A8C50 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8C50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  *(v2 + 32) = a1;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t VinylICECommunication::createTransport(uint64_t a1, const void *a2)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  inited = TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 48))
  {
    if ((*gBBULogMaskGet(inited, v5) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(2, 0, "BBUICE16Communication", "", "Need to free transport before creating again");
    }

    inited = (*(*a1 + 40))(a1, *(a1 + 48));
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 40);
  LODWORD(v22) = v22 | 1;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 0x40000000;
  v19[2] = ___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke;
  v19[3] = &__block_descriptor_tmp_12;
  v19[4] = a2;
  *(&v20 + 1) = v6;
  *&v21 = v19;
  v7 = gBBULogMaskGet(inited, v5);
  if ((*v7 & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = _BBULog(2, 0, "BBUICE16Communication", "", "Creating transport:%p \n", a2);
  }

  LODWORD(v20) = 8;
  DWORD2(v21) = 10000;
  *(a1 + 56) = 8;
  if ((*gBBULogMaskGet(v7, v8) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating with timeout set to %u ms\n", DWORD2(v21));
  }

  v9 = *(a1 + 32);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2;
  block[3] = &unk_29EE8E908;
  block[6] = a1;
  block[7] = a2;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v13 = v20;
  v14 = v21;
  block[4] = v26;
  block[5] = &v28;
  dispatch_sync(v9, block);
  v10 = *(v29 + 6);
  if (v20 == 8 && !v10)
  {
    v10 = (*(*a1 + 24))(a1, a2);
    *(v29 + 6) = v10;
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  return v10;
}

void sub_298293618(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

_BYTE *___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 56);
  v8 = TelephonyBasebandPCITransportCreate();
  *(*(*(a1 + 32) + 8) + 24) = v8;
  result = gBBULogMaskGet(v8, v9);
  if ((*result & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v11 = "success";
    }

    else
    {
      v11 = "failure";
    }

    result = _BBULog(2, 0, "BBUICE16Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v11);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (!*(v7 + 48))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/ICE/VinylICECommunication.cpp", 0x82u, "Assertion failure(nullptr != fTransportCreated && Telephony util transport error.)");
    }

    v12 = 0;
  }

  else
  {
    result = VinylICECommunication::freeTransportSync(v7, *(a1 + 56));
    v12 = 3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
  return result;
}

void VinylICECommunication::closeChannel(VinylICECommunication *this)
{
  if (IceAriGetContextValid())
  {
    IceAriGetContext();
    KTLCloseChannel();

    IceAriSetContextValid(0);
  }
}

uint64_t IceAriGetContextValid(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v0 = off_2A13A8C50;
  if (!off_2A13A8C50)
  {
    v1 = operator new(0x28uLL);
    v1[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v7, v1);
    v2 = v7;
    v7 = 0uLL;
    v3 = *(&off_2A13A8C50 + 1);
    off_2A13A8C50 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v0 = off_2A13A8C50;
  }

  v4 = *(&off_2A13A8C50 + 1);
  if (*(&off_2A13A8C50 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8C50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v5 = *(v0 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

uint64_t VinylICECommunication::freeTransport(void *a1, const void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "request to free transport: %p\n", a2);
  }

  (*(*a1 + 32))(a1);
  v4 = a1[4];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylICECommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &unk_29EE8E930;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZN21VinylICECommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(uint64_t a1)
{
  result = VinylICECommunication::freeTransportSync(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void VinylICECommunication::~VinylICECommunication(VinylICECommunication *this)
{
  VinylICECommunication::~VinylICECommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB39F0;
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  VinylCommunication::~VinylCommunication(this);
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_21()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

void VinylEURCommunication::statusCallback(const void *a1, uint64_t a2, int a3)
{
  if ((*gBBULogMaskGet(a1, a2) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(0, 0, "VinylEURCommunication", "", "transport %p, status: %#x\n", a1, a3);
  }

  if (a3 == 1)
  {
    Controller = TelephonyBasebandCreateController();
    v6 = TelephonyBasebandResetModem();
    v7 = v6;
    if ((*gBBULogMaskGet(v6, v8) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = "failure";
      if (v7)
      {
        v9 = "success";
      }

      _BBULog(2, 0, "VinylEURCommunication", "", "Resetting modem: %s\n", v9);
    }

    if (Controller)
    {
      CFRelease(Controller);
    }
  }
}

void sub_298293C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylEURCommunication::freeTransportSync(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 1;
  }

  if (v2 == a2)
  {
    v5 = TelephonyUtilTransportFree();
    v6 = *(a1 + 32);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylEURCommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_4;
    v9 = v5;
    block[4] = a1;
    block[5] = a2;
    dispatch_sync(v6, block);
  }

  else
  {
    v5 = 0;
    if ((*gBBULogMaskGet(a1, a2) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(0, 0, "VinylEURCommunication", "", "call with %p different from fTransportCreated(%p)\n", a2, *(a1 + 40));
      return 0;
    }
  }

  return v5;
}

uint64_t ___ZN21VinylEURCommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 40) = 0;
  }

  else
  {
    result = gBBULogMaskGet(result, a2);
    if ((*result & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(0, 0, "VinylEURCommunication", "", "fail to free transport: %p\n", *(v2 + 40));
    }
  }

  return result;
}

uint64_t VinylEURCommunication::createTransport(uint64_t a1, const void *a2)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 3;
  if (capabilities::diag::preferredInterface(a1) == 8)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2000000000;
    v28 = 0;
    inited = TelephonyBasebandPCITransportInitParameters();
    if (*(a1 + 40))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Eureka/VinylEURCommunication.cpp", 0x59u, "Assertion failure(nullptr == fTransportCreated && Telephony transport error.)");
    }

    v6 = *(a1 + 32);
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 0x40000000;
    v20[2] = ___ZN21VinylEURCommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke;
    v20[3] = &__block_descriptor_tmp_11;
    v20[4] = a2;
    *(&v21 + 1) = v6;
    *&v22 = v20;
    v7 = gBBULogMaskGet(inited, v5);
    if ((*v7 & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v7 = _BBULog(0, 0, "VinylEURCommunication", "", "Creating transport:%p \n", a2);
    }

    LODWORD(v21) = 2;
    DWORD2(v22) = 2000;
    *(a1 + 48) = 2;
    if ((*gBBULogMaskGet(v7, v8) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(0, 0, "VinylEURCommunication", "", "Creating with timeout set to %u ms\n", DWORD2(v22));
    }

    v9 = *(a1 + 24);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylEURCommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2;
    block[3] = &unk_29EE8E998;
    block[6] = a1;
    block[7] = a2;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v14 = v21;
    v15 = v22;
    block[4] = v27;
    block[5] = &v29;
    dispatch_sync(v9, block);
    _Block_object_dispose(v27, 8);
  }

  v10 = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  return v10;
}

void sub_298294088(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

_BYTE *___ZN21VinylEURCommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  *(v7 + 40) = *(a1 + 56);
  v8 = TelephonyBasebandPCITransportCreate();
  *(*(*(a1 + 32) + 8) + 24) = v8;
  result = gBBULogMaskGet(v8, v9);
  if ((*result & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v11 = "success";
    }

    else
    {
      v11 = "failure";
    }

    result = _BBULog(0, 0, "VinylEURCommunication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v11);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (!*(v7 + 40))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Eureka/VinylEURCommunication.cpp", 0x76u, "Assertion failure(nullptr != fTransportCreated && Telephony Util transport error!\\n)");
    }

    v12 = 0;
  }

  else
  {
    result = VinylEURCommunication::freeTransportSync(v7, *(a1 + 56));
    v12 = 3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
  return result;
}

uint64_t VinylEURCommunication::freeTransport(uint64_t a1, const void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  if ((*gBBULogMaskGet(a1, a2) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(0, 0, "VinylEURCommunication", "", "request to free transport: %p\n", a2);
  }

  v4 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylEURCommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &unk_29EE8E9C0;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZN21VinylEURCommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(uint64_t a1)
{
  result = VinylEURCommunication::freeTransportSync(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void VinylEURCommunication::~VinylEURCommunication(VinylEURCommunication *this)
{
  VinylEURCommunication::~VinylEURCommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB3A50;
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  VinylCommunication::~VinylCommunication(this);
}

uint64_t Options::Options(uint64_t a1, const __CFDictionary **a2)
{
  v59 = *MEMORY[0x29EDCA608];
  *a1 = 255;
  *(a1 + 4) = 0;
  v4 = (a1 + 4);
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 56), "");
  *(a1 + 80) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 88), "");
  v5 = (a1 + 112);
  std::string::basic_string[abi:ne200100]<0>((a1 + 112), "");
  *(a1 + 136) = 0;
  v6 = (a1 + 144);
  std::string::basic_string[abi:ne200100]<0>((a1 + 144), "");
  *(a1 + 168) = 0;
  if (*a2)
  {
    ctu::cf::dict_adapter::dict_adapter(v49, *a2);
    Value = CFDictionaryGetValue(*a2, @"BasebandUpdater");
    ctu::cf::dict_adapter::dict_adapter(v48, Value);
    *(a1 + 11) = ctu::cf::map_adapter::getBool(v48, @"VinylForceGold");
    *(a1 + 10) = ctu::cf::map_adapter::getBool(v48, @"VinylForceMain");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = *__p;
    *(a1 + 40) = v51;
    *(a1 + 20) = ctu::cf::map_adapter::getInt(v48, @"BypassPairing");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *__p;
    *(a1 + 72) = v51;
    *(a1 + 80) = ctu::cf::map_adapter::getBool(v49, @"VinylTwoPhasePresenceCheck");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 88) = *__p;
    *(a1 + 104) = v51;
    ctu::cf::map_adapter::getString();
    if (*(a1 + 135) < 0)
    {
      operator delete(*v5);
    }

    *v5 = *__p;
    *(a1 + 128) = v51;
    v8 = *(a1 + 135);
    if (v8 < 0)
    {
      v9 = *(a1 + 112);
      v8 = *(a1 + 120);
    }

    else
    {
      v9 = (a1 + 112);
    }

    v10 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v9, &v9[v8], isblank);
    v11 = *(a1 + 135);
    if (v11 < 0)
    {
      v13 = *(a1 + 112);
      v12 = (v13 + *(a1 + 120));
    }

    else
    {
      v12 = v5 + v11;
      v13 = a1 + 112;
    }

    std::string::erase((a1 + 112), &v10[-v13], v12 - v10);
    v14 = *(a1 + 135);
    if (v14 < 0)
    {
      v15 = *(a1 + 112);
      v14 = *(a1 + 120);
    }

    else
    {
      v15 = (a1 + 112);
    }

    v16 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(v15, &v15[v14], iscntrl);
    v17 = *(a1 + 135);
    if (v17 < 0)
    {
      v19 = *(a1 + 112);
      v18 = (v19 + *(a1 + 120));
    }

    else
    {
      v18 = v5 + v17;
      v19 = a1 + 112;
    }

    std::string::erase((a1 + 112), &v16[-v19], v18 - v16);
    *(a1 + 136) = ctu::cf::map_adapter::getBool(v49, @"VinylSkipProvisioning");
    *(a1 + 137) = ctu::cf::map_adapter::getBool(v49, @"OptimizeRefurbFirmwareUpdatePath");
    ctu::cf::map_adapter::getString();
    if (*(a1 + 167) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *__p;
    *(a1 + 160) = v51;
    v20 = *(a1 + 167);
    if (v20 < 0)
    {
      v21 = *(a1 + 144);
      v22 = *(a1 + 152);
    }

    else
    {
      v21 = (a1 + 144);
      v22 = *(a1 + 167);
    }

    v23 = &v21[v22];
    if (v22 >= 2)
    {
      v24 = v21;
      do
      {
        v25 = memchr(v24, 45, v22 - 1);
        if (!v25)
        {
          break;
        }

        if (*v25 == 26157)
        {
          goto LABEL_33;
        }

        v24 = v25 + 1;
        v22 = v23 - v24;
      }

      while (v23 - v24 > 1);
    }

    v25 = v23;
LABEL_33:
    v27 = v25 != v23 && v25 - v21 != -1;
    *(a1 + 168) = v27;
    if ((v20 & 0x80000000) != 0)
    {
      v28 = *(a1 + 144);
      v20 = *(a1 + 152);
    }

    else
    {
      v28 = (a1 + 144);
    }

    v29 = &v28[v20];
    if (v20 >= 2)
    {
      v30 = v28;
      do
      {
        v31 = memchr(v30, 45, v20 - 1);
        if (!v31)
        {
          break;
        }

        if (*v31 == 25389)
        {
          goto LABEL_48;
        }

        v30 = v31 + 1;
        v20 = v29 - v30;
      }

      while (v29 - v30 > 1);
    }

    v31 = v29;
LABEL_48:
    v33 = v31 != v29 && v31 - v28 != -1;
    *(a1 + 169) = v33;
    if (ctu::cf::map_adapter::getBool(v48, @"VinylSkipAll"))
    {
      v34 = 1;
    }

    else
    {
      v34 = ctu::cf::map_adapter::getBool(v49, @"UpdateBaseband") ^ 1;
    }

    *(a1 + 8) = v34;
    *(a1 + 9) = ctu::cf::map_adapter::getBool(v48, @"VinylOnlyPerso");
    if (ctu::cf::map_adapter::getBool(v48, @"VinylUse4FF"))
    {
      *a1 = 1;
    }

    if (BBUpdaterCommon::isNVRAMKeyPresent(@"VinylForceGenericUpdate", v35))
    {
      *(a1 + 10) = 257;
    }

    *(a1 + 13) = ctu::cf::map_adapter::getBool(v49, @"VinylVerifyPairing");
    *(a1 + 12) = ctu::cf::map_adapter::getBool(v49, @"VinylInstallSealingManifest");
    *(a1 + 16) = ctu::cf::map_adapter::getInt(v49, @"VinylPairingAuthTest");
    __p[0] = 0;
    __p[1] = 0;
    v51 = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = v47;
    v37 = v47;
    if ((v47 & 0x80u) != 0)
    {
      v36 = v46[1];
    }

    if (v36)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bootstrap");
      v52 = 1;
      std::string::basic_string[abi:ne200100]<0>(v53, "All");
      v54 = 2;
      std::string::basic_string[abi:ne200100]<0>(v55, "Bootstrap Preferences");
      v56 = 3;
      std::string::basic_string[abi:ne200100]<0>(v57, "All Preferences");
      v58 = 4;
      std::map<std::string,VinylRefurbAction,BBUpdaterCommon::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,VinylRefurbAction>>>::map[abi:ne200100](v44, __p, 4);
      for (i = 0; i != -16; i -= 4)
      {
        if (SHIBYTE(v57[i + 2]) < 0)
        {
          operator delete(v57[i]);
        }
      }

      v39 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::find<std::string>(v44, v46);
      if (&v45 == v39)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        v42 = exception;
        v43 = v46;
        if ((v47 & 0x80u) != 0)
        {
          v43 = v46[0];
        }

        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Options/eUICCOptions.cpp", 0x57u, "Invalid Refurb Option %s", v43);
      }

      *v4 = *(v39 + 56);
      std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(v44, v45);
      v37 = v47;
    }

    if ((v37 & 0x80) != 0)
    {
      operator delete(v46[0]);
    }

    MEMORY[0x29C286020](v48);
    MEMORY[0x29C286020](v49);
  }

  return a1;
}

void sub_298294AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v33);
  std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C286020](&a21);
  MEMORY[0x29C286020](&a23);
  if (*(v30 + 167) < 0)
  {
    operator delete(*v32);
  }

  if (*(v30 + 135) < 0)
  {
    operator delete(*v31);
  }

  if (*(v30 + 111) < 0)
  {
    operator delete(*(v30 + 88));
  }

  if (*(v30 + 79) < 0)
  {
    operator delete(*(v30 + 56));
  }

  if (*(v30 + 47) < 0)
  {
    operator delete(*(v30 + 24));
  }

  _Unwind_Resume(a1);
}

char *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(char *a1, char *a2, unsigned int (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!a3(*v3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!a3(*i))
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

int isblank(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x29EDCA600] + 4 * _c + 60) & 0x20000;
  }

  else
  {
    v1 = __maskrune(_c, 0x20000uLL);
  }

  return v1 != 0;
}

int iscntrl(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x29EDCA600] + 4 * _c + 60) & 0x200;
  }

  else
  {
    v1 = __maskrune(_c, 0x200uLL);
  }

  return v1 != 0;
}

void *Options::StringifyPostProcess@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if ((a1 - 1) > 3)
  {
    v2 = "No Action";
  }

  else
  {
    v2 = off_29EE8E9E0[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t *Options::ToString@<X0>(uint64_t *__return_ptr a1@<X8>, Options *this@<X0>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
  v4 = v88;
  *(&v88 + *(v88 - 24) + 8) |= 1u;
  *(&v88 + *(v4 - 24) + 8) = *(&v88 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "=========== Vinyl eUICC Options ============\n", 45);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "uimSlot               ", 22);
  v7 = MEMORY[0x29C286A40](v6, *this);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "skipAll               ", 22);
  v10 = MEMORY[0x29C286A30](v9, *(this + 8));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "onlyPerso             ", 22);
  v13 = MEMORY[0x29C286A30](v12, *(this + 9));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "forceMain             ", 22);
  v16 = MEMORY[0x29C286A30](v15, *(this + 10));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "forceGold             ", 22);
  v19 = MEMORY[0x29C286A30](v18, *(this + 11));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "forcePerso            ", 22);
  v22 = MEMORY[0x29C286A30](v21, *(this + 48));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n", 1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "alderHost             ", 22);
  v25 = *(this + 47);
  if (v25 >= 0)
  {
    v26 = this + 24;
  }

  else
  {
    v26 = *(this + 3);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 47);
  }

  else
  {
    v27 = *(this + 4);
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\n", 1);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "persoStatic           ", 22);
  v31 = MEMORY[0x29C286A30](v30, *(this + 49));
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "\n", 1);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "internalBuild         ", 22);
  v34 = MEMORY[0x29C286A30](v33, *(this + 50));
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "postProcess           ", 22);
  Options::StringifyPostProcess(*(this + 1), __p);
  if ((v87 & 0x80u) == 0)
  {
    v37 = __p;
  }

  else
  {
    v37 = __p[0];
  }

  if ((v87 & 0x80u) == 0)
  {
    v38 = v87;
  }

  else
  {
    v38 = __p[1];
  }

  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\n", 1);
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "twoPhaseRefurbRef     ", 22);
  v42 = *(this + 135);
  if (v42 >= 0)
  {
    v43 = this + 112;
  }

  else
  {
    v43 = *(this + 14);
  }

  if (v42 >= 0)
  {
    v44 = *(this + 135);
  }

  else
  {
    v44 = *(this + 15);
  }

  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "\n", 1);
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "twoPhaseUrl           ", 22);
  v48 = *(this + 79);
  if (v48 >= 0)
  {
    v49 = this + 56;
  }

  else
  {
    v49 = *(this + 7);
  }

  if (v48 >= 0)
  {
    v50 = *(this + 79);
  }

  else
  {
    v50 = *(this + 8);
  }

  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\n", 1);
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "twoPhasePresenceCheck ", 22);
  v54 = MEMORY[0x29C286A30](v53, *(this + 80));
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "\n", 1);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "twoPhaseEidMask       ", 22);
  v57 = *(this + 111);
  if (v57 >= 0)
  {
    v58 = this + 88;
  }

  else
  {
    v58 = *(this + 11);
  }

  if (v57 >= 0)
  {
    v59 = *(this + 111);
  }

  else
  {
    v59 = *(this + 12);
  }

  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v58, v59);
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "\n", 1);
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "eUICCSEPPairingInstallMSM ", 26);
  v63 = MEMORY[0x29C286A30](v62, *(this + 12));
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "\n", 1);
  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "eUICCSEPVerifyPairing     ", 26);
  v66 = MEMORY[0x29C286A30](v65, *(this + 13));
  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "\n", 1);
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "eUICCSepPairingBypassValue ", 27);
  v69 = MEMORY[0x29C286A40](v68, *(this + 5));
  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "\n", 1);
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "debugArgs             ", 22);
  v74 = *(this + 18);
  v73 = this + 144;
  v72 = v74;
  v75 = v73[23];
  if (v75 >= 0)
  {
    v76 = v73;
  }

  else
  {
    v76 = v72;
  }

  if (v75 >= 0)
  {
    v77 = v73[23];
  }

  else
  {
    v77 = *(v73 + 1);
  }

  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v76, v77);
  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "======================================\n", 39);
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v95 & 0x10) != 0)
  {
    v81 = v94;
    if (v94 < v91)
    {
      v94 = v91;
      v81 = v91;
    }

    locale = v90[4].__locale_;
  }

  else
  {
    if ((v95 & 8) == 0)
    {
      v80 = 0;
      *(a1 + 23) = 0;
      goto LABEL_55;
    }

    locale = v90[1].__locale_;
    v81 = v90[3].__locale_;
  }

  v80 = v81 - locale;
  if ((v81 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v80 >= 0x17)
  {
    if ((v80 | 7) == 0x17)
    {
      v83 = 25;
    }

    else
    {
      v83 = (v80 | 7) + 1;
    }

    v84 = operator new(v83);
    a1[1] = v80;
    a1[2] = v83 | 0x8000000000000000;
    *a1 = v84;
    a1 = v84;
    goto LABEL_54;
  }

  *(a1 + 23) = v80;
  if (v80)
  {
LABEL_54:
    memmove(a1, locale, v80);
  }

LABEL_55:
  *(a1 + v80) = 0;
  v88 = *MEMORY[0x29EDC9538];
  *(&v88 + *(v88 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v89 = MEMORY[0x29EDC9570] + 16;
  if (v93 < 0)
  {
    operator delete(v92);
  }

  v89 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v90);
  std::ostream::~ostream();
  return MEMORY[0x29C286CA0](&v96);
}

void sub_2982953C0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::ostringstream::~ostringstream(&a12, MEMORY[0x29EDC9538]);
  MEMORY[0x29C286CA0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_298295548(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C286CA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t ***std::map<std::string,VinylRefurbAction,BBUpdaterCommon::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,VinylRefurbAction>>>::map[abi:ne200100](uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,VinylRefurbAction> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,VinylRefurbAction> const&>(uint64_t ***a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__construct_node<std::pair<std::string const,VinylRefurbAction> const&>(a1, a4, v8);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v10, v6, v8[0]);
    return v8[0];
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(uint64_t ***a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (*(a5 + 23) >= 0 ? (v11 = a5) : (v11 = *a5), *(a2 + 55) >= 0 ? (v12 = (a2 + 4)) : (v12 = a2[4]), strcasecmp(v11, v12) < 0))
  {
    v13 = *a2;
    if (*a1 == a2)
    {
      v15 = a2;
LABEL_29:
      if (v13)
      {
        *a3 = v15;
        return v15 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v13)
    {
      v14 = *a2;
      do
      {
        v15 = v14;
        v14 = *(v14 + 8);
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v19 = *v15 == v18;
        v18 = v15;
      }

      while (v19);
    }

    if (*(v15 + 55) >= 0)
    {
      v20 = (v15 + 4);
    }

    else
    {
      v20 = v15[4];
    }

    if (*(a5 + 23) >= 0)
    {
      v21 = a5;
    }

    else
    {
      v21 = *a5;
    }

    if (strcasecmp(v20, v21) < 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((strcasecmp(v12, v11) & 0x80000000) == 0)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = a2[1];
      do
      {
        a4 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v22 = a2;
      do
      {
        a4 = v22[2];
        v19 = *a4 == v22;
        v22 = a4;
      }

      while (!v19);
    }

    if (a4 == v9 || (*(a4 + 55) >= 0 ? (v23 = (a4 + 4)) : (v23 = a4[4]), strcasecmp(v11, v23) < 0))
    {
      if (v16)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return (a2 + 1);
      }

      return a4;
    }
  }

  return std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__construct_node<std::pair<std::string const,VinylRefurbAction> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 14) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_298295A08(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,VinylRefurbAction>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__find_equal<std::string>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v10 = v4[4];
        v8 = v4 + 4;
        v9 = v10;
        v11 = (*(v8 + 23) >= 0 ? v8 : v9);
        if ((strcasecmp(v6, v11) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if ((strcasecmp(v11, v6) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_15:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,VinylRefurbAction>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__lower_bound<std::string>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 23) >= 0 ? a2 : *a2;
  v7 = *(v5 + 55) >= 0 ? (v5 + 32) : *(v5 + 32);
  if (strcasecmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__lower_bound<std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      if (*(v5 + 55) >= 0)
      {
        v7 = (v5 + 32);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = strcasecmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C286BB0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_298295F10(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C286A00](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
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

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C286A10](v13);
  return a1;
}

void sub_298296180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C286A10](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x298296160);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
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

void sub_2982963A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

VinylSecureElement *VinylSecureElement::create(VinylSecureElement *this)
{
  v1 = operator new(1uLL);
  VinylSecureElement::init(v1);
  return v1;
}

uint64_t VinylSecureElement::init(VinylSecureElement *this)
{
  v1 = dlopen("/usr/lib/libnfrestore.dylib", 261);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x2Eu, "Assertion failure(lib != __null && Could not find /usr/lib/libnfrestore.dylib)");
    goto LABEL_10;
  }

  v2 = v1;
  pfnNfRestoreOpenWithSE = dlsym(v1, "NfRestoreSEOpenWithError");
  if (!pfnNfRestoreOpenWithSE)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x31u, "Assertion failure(pfnNfRestoreOpenWithSE != __null && Could not find NfRestoreSEOpenWithError symbol\\n)");
    goto LABEL_10;
  }

  pfnNfRestoreSEClose = dlsym(v2, "NfRestoreSEClose");
  if (!pfnNfRestoreSEClose)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x34u, "Assertion failure(pfnNfRestoreSEClose != __null && Could not find NfRestoreSEClose symbol\\n)");
    goto LABEL_10;
  }

  pfnNfRestoreDumpUART = dlsym(v2, "NfRestoreDumpUART");
  if (!pfnNfRestoreDumpUART)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x37u, "Assertion failure(pfnNfRestoreDumpUART != __null && Could not find pfnNfRestoreDumpUART symbol\\n)");
LABEL_10:
  }

  return 0;
}

uint64_t VinylSecureElement::PowerUpSE(VinylSecureElement *this)
{
  v6 = 0;
  if (pfnNfRestoreOpenWithSE)
  {
    v1 = pfnNfRestoreDumpUART == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = pfnNfRestoreOpenWithSE(0, 0, &v6);
  v2 = v3;
  if (v6)
  {
    gBBULogMaskGet(v3, v4);
    _BBULog(0, 0xFFFFFFFFLL, "VinylSecureElement", "", "pfnNfRestoreOpenWithSE failure, outResult: %d\n", v6);
  }

  __ns.__rep_ = 1000000000;
  std::this_thread::sleep_for (&__ns);
  return v2;
}

uint64_t VinylSecureElement::PowerDownSE(VinylSecureElement *this, void *a2)
{
  if (!pfnNfRestoreSEClose)
  {
    return 1;
  }

  v2 = pfnNfRestoreSEClose(a2);
  gBBULogMaskGet(v2, v3);
  _BBULog(0, 0xFFFFFFFFLL, "VinylSecureElement", "", "SE closed SUCCESSFULLY\n");
  return 0;
}

uint64_t _BBUException::_BBUException(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *a1 = &unk_2A1EB3AB0;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, va);
  return a1;
}

void _BBUException::constructCommon(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *this, char *a6)
{
  v8 = a2;
  ctu::LogMessageBuffer::vCreateWithFormat(&v40, this, a6, a3);
  v10 = MEMORY[0x29C285FC0](&v40);
  v11 = *v10;
  v42.__r_.__value_.__r.__words[2] = *(v10 + 16);
  *&v42.__r_.__value_.__l.__data_ = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  MEMORY[0x29C285FE0](&v40);
  *(&v35.__r_.__value_.__s + 23) = 1;
  LOWORD(v35.__r_.__value_.__l.__data_) = 32;
  v12 = BBUReturnAsString(v8);
  v13 = strlen(v12);
  v14 = std::string::append(&v35, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v36, "@", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  ctu::llvm::StringRef::StringRef(&v32, a3);
  ctu::basename();
  if ((v34 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v19 = v34;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::string::append(&v37, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ":", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v32, a4);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v32;
  }

  else
  {
    v24 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v39, v24, size);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v41 = v26->__r_.__value_.__r.__words[2];
  v40 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v41 >= 0)
  {
    v28 = &v40;
  }

  else
  {
    v28 = v40;
  }

  if (v41 >= 0)
  {
    v29 = HIBYTE(v41);
  }

  else
  {
    v29 = *(&v40 + 1);
  }

  std::string::append(&v42, v28, v29);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = 0u;
  v30 = a1 + 8;
  *(v30 + 480) = 0u;
  *(v30 + 496) = 0u;
  *(v30 + 448) = 0u;
  *(v30 + 464) = 0u;
  *(v30 + 416) = 0u;
  *(v30 + 432) = 0u;
  *(v30 + 384) = 0u;
  *(v30 + 400) = 0u;
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 256) = 0u;
  *(v30 + 272) = 0u;
  *(v30 + 224) = 0u;
  *(v30 + 240) = 0u;
  *(v30 + 192) = 0u;
  *(v30 + 208) = 0u;
  *(v30 + 160) = 0u;
  *(v30 + 176) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 144) = 0u;
  *(v30 + 96) = 0u;
  *(v30 + 112) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  v31 = &v42;
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v42.__r_.__value_.__r.__words[0];
  }

  *(v30 + 16) = 0uLL;
  snprintf(v30, 0x200uLL, "%s\n", v31);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_2982969C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v54 - 57) < 0)
  {
    operator delete(*(v54 - 80));
  }

  _Unwind_Resume(exception_object);
}