void sub_24D64DDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, GPUTools::FD::CoreFunction *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, void *a21)
{
  v23 = v21;
  v25 = v23 - 8;
  v26 = (v23 + v22 - 456);
  do
  {
    GPUTools::FD::CoreFunction::~CoreFunction(v26);
    v26 = (v27 - 456);
    v25 -= 456;
  }

  while (v25);
  _Unwind_Resume(a1);
}

void GPUTools::Playback::TDFSSegment<8192ul>::~TDFSSegment(uint64_t a1)
{
  GPUTools::Playback::TDFSSegment<8192ul>::~TDFSSegment(a1);

  JUMPOUT(0x25302FA40);
}

uint64_t GPUTools::Playback::TDFSSegment<8192ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    GPUTools::FD::CoreFunction::operator=();
    *(a1 + 7760) = *(a2 + 7760);
  }

  return a1;
}

uint64_t GPUTools::Playback::TDFSSegment<8192ul>::~TDFSSegment(uint64_t a1)
{
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 7304));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 6848));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 6392));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 5936));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 5480));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 5024));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 4568));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 4112));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 3656));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 3200));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 2744));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 2288));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 1832));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 1376));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 920));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 464));
  GPUTools::FD::CoreFunction::~CoreFunction((a1 + 8));
  return a1;
}

void sub_24D64F310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void *__GetXcodeSelectDeveloperPath_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  result = dlopen("/usr/lib/libxcselect.dylib", 1);
  if (result)
  {
    v1 = result;
    v2 = dlsym(result, "xcselect_get_developer_dir_path");
    if (v2)
    {
      v4 = 0;
      v3 = 0;
      if (v2(v5, 1024, &v4 + 1, &v4, &v3))
      {
        GetXcodeSelectDeveloperPath__XCSelectXCodePath = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      }
    }

    return dlclose(v1);
  }

  return result;
}

void std::vector<std::pair<std::string,BOOL>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

char *std::vector<std::pair<std::string,BOOL>>::__emplace_back_slow_path<std::pair<char const*,BOOL>>(const void **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  v16 = 32 * v2;
  v17 = 0;
  std::allocator_traits<std::allocator<std::pair<std::string,BOOL>>>::construct[abi:ne200100]<std::pair<std::string,BOOL>,std::pair<char const*,BOOL>,0>(a1, (32 * v2), a2);
  v8 = (32 * v2 + 32);
  v9 = a1[1] - *a1;
  v10 = (32 * v2 - v9);
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(&v14);
  return v8;
}

void sub_24D651780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

size_t std::allocator_traits<std::allocator<std::pair<std::string,BOOL>>>::construct[abi:ne200100]<std::pair<std::string,BOOL>,std::pair<char const*,BOOL>,0>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *a3;
  result = strlen(*a3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v5, result);
  }

  a2[v7] = 0;
  a2[24] = *(a3 + 8);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,BOOL>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,BOOL>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,BOOL>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,BOOL>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

GPUTools::FD::BaseFunctionStream *GPUTools::FD::BaseFunctionStream::BaseFunctionStream(GPUTools::FD::BaseFunctionStream *this, NSData *a2, _DWORD *a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 36) = 0;
  v5 = GPUTools::FD::BaseFunctionStream::_scan_state(this);
  *(this + 8) = v5;
  if ((v5 | 0x100) == 0x500)
  {
    v5 = GPUTools::FD::BaseFunctionStream::_scan_fbuf(this, a3);
    *(this + 8) = v5;
  }

  if (!*(this + 1) && !v5)
  {
    __assert_rtn("GPUTools::FD::BaseFunctionStream::BaseFunctionStream(NSData *, const void *)", "", 0, "_decoder || _error_code != 0");
  }

  return this;
}

void sub_24D651A20(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    GPUTools::FD::BaseFunctionStream::BaseFunctionStream(v3);
  }

  GPUTools::objc_wrapper<NSData *>::~objc_wrapper(v1);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::BaseFunctionStream::_scan_state(GPUTools::FD::BaseFunctionStream *this)
{
  *(this + 2) = [*this bytes];
  if ([*this length] < 0x18)
  {
    return 1024;
  }

  v3 = *(this + 2);
  if (*v3 == 1229539657)
  {
    if ((*(this + 36) & 1) == 0)
    {
      if ((*(v3 + 16) | 2) == 3)
      {
LABEL_9:
        v6 = *(v3 + 4);
        if ([*this length] == v6 && !*(v3 + 20))
        {
          v7 = *(this + 2);
          v8 = *(v3 + 4) + v7;
          *(this + 2) = v7 + 24;
          *(this + 3) = v8;
          operator new();
        }

        return 1280;
      }

      return 1280;
    }
  }

  else
  {
    if (*v3 != 1296911693)
    {
      return 1280;
    }

    *(this + 36) = 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 41;
  }

  v3 = [*this mutableBytes];
  *(this + 2) = v3;
  v4 = bswap32(*(v3 + 4));
  *(v3 + 8) = bswap64(*(v3 + 8));
  v5 = bswap32(*(v3 + 16));
  *(v3 + 16) = v5;
  *v3 = 1229539657;
  *(v3 + 4) = v4;
  if ((v5 | 2) == 3)
  {
    goto LABEL_9;
  }

  return 1280;
}

uint64_t GPUTools::FD::BaseFunctionStream::_scan_fbuf(GPUTools::FD::BaseFunctionStream *this, _DWORD *a2)
{
  *(this + 2) = [*this bytes];
  v4 = a2;
  if (a2)
  {
    v5 = *a2;
    v6 = *MEMORY[0x277D0B008];
    if (*a2 == *MEMORY[0x277D0B008])
    {
      goto LABEL_3;
    }
  }

  else
  {
    if ([*this length] < 4)
    {
      return 1024;
    }

    v4 = *(this + 2);
    v5 = *v4;
    v6 = *MEMORY[0x277D0B008];
    if (*v4 == *MEMORY[0x277D0B008])
    {
LABEL_3:
      if ([*this length] >= 8)
      {
        v7 = *(v4 + 4);
        *(this + 36) = *(v4 + 4) != 0;
        v8 = 8;
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }

      return 1024;
    }
  }

  if (v5 == 1229539657)
  {
    v8 = 4;
    if (*(this + 36))
    {
LABEL_5:
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_6;
      }

      return 41;
    }

LABEL_17:
    v11 = *(this + 2);
    *(this + 3) = [*this length] + v11;
    if (a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v5 == 1296911693)
  {
    *(this + 36) = 1;
    v8 = 4;
    if (objc_opt_respondsToSelector())
    {
LABEL_6:
      v9 = [*this mutableBytes];
      *(this + 2) = v9;
      if (v5 == v6)
      {
        *(v4 + 4) = 0;
        *(this + 3) = [*this length] + v9;
        if (a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 1229539657;
        *(this + 3) = [*this length] + v9;
        if (a2)
        {
LABEL_19:
          operator new();
        }
      }

LABEL_18:
      *(this + 2) += v8;
      goto LABEL_19;
    }

    return 41;
  }

  return 1280;
}

uint64_t GPUTools::FD::StateStreamDecoder::StateStreamDecoder(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(a2 + 8);
  *result = &unk_2860A2488;
  *(result + 8) = v3;
  *(result + 16) = *(a2 + 16);
  *(result + 20) = a3;
  return result;
}

uint64_t GPUTools::FD::StateStreamDecoder::GetEncodedSize(GPUTools::FD::StateStreamDecoder *this, const void *a2, uint64_t a3)
{
  GPUTools::FD::CoreFunction::CoreFunction(v8);
  GPUTools::FD::StateStreamDecoder::Decode(this, a2, a3, v8);
  v6 = v9;
  GPUTools::FD::CoreFunction::~CoreFunction(v8);
  return v6;
}

void sub_24D651F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::StateStreamDecoder::Decode(GPUTools::FD::StateStreamDecoder *this, const void *a2, uint64_t a3, GPUTools::FD::CoreFunction *a4)
{
  if (!a2)
  {
    GPUTools::FD::StateStreamDecoder::Decode();
  }

  GPUTools::FD::CoreFunction::CoreFunction(v11);
  GPUTools::FD::CoreFunction::operator=();
  GPUTools::FD::CoreFunction::~CoreFunction(v11);
  v11[0] = a2;
  v11[1] = a3;
  v12 = a2;
  v13 = a4;
  GPUTools::FD::StateStreamDecoder::DecodeCore(this, v11);
  v8 = v13;
  *(v13 + 108) = v12 - LODWORD(v11[0]);
  if (*(v8 + 5) && *(v8 + 15) == 15 && *v8 != -8191 && *v8 != -8188)
  {
    *(v8 + 2) = **(v8 + 6);
  }

  return 1;
}

void sub_24D652034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::CoreFunction::~CoreFunction(va);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::FD::StateStreamDecoder::DecodeFlags(GPUTools::FD::StateStreamDecoder *this, _DWORD *a2, unint64_t a3)
{
  if (*(this + 4) == 1)
  {
    if (a3 <= 7)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v3 = 0;
  }

  else
  {
    if (a3 <= 0xB)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v3 = a2[1];
  }

  v4 = bswap32(v3);
  if (*(this + 20))
  {
    LOWORD(v3) = v4;
  }

  return v3;
}

void GPUTools::FD::StateStreamDecoder::DecodeCore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 <= 7)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v5 = *(a2 + 16);
    *(a2 + 16) = v5 + 2;
    v6 = *v5;
    LODWORD(v5) = v5[1];
    *(a2 + 36) = 0;
    *(a2 + 40) = v5;
    *(a2 + 32) = v6;
    v7 = *(a2 + 32);
    if ((*(a1 + 20) & 1) == 0)
    {
LABEL_4:
      v8 = *(a2 + 36);
      v9 = *(a2 + 40);
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 <= 0xB)
    {
      GPUTools::FD::StateStreamDecoder::DecodeFlags();
    }

    v10 = *(a2 + 16);
    v11 = *(v10 + 2);
    v12 = *v10;
    *(a2 + 32) = *v10;
    *(a2 + 40) = v11;
    *(a2 + 16) = v10 + 12;
    v7 = v12;
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v7 = bswap32(v7);
  *(a2 + 32) = v7;
  v13 = vrev32_s8(*(a2 + 36));
  *(a2 + 36) = v13;
  LOWORD(v9) = v13.i16[2];
  v8 = v13.i16[0];
LABEL_8:
  v14 = *(a2 + 24);
  *v14 = v7;
  *(v14 + 4) = v8;
  *(v14 + 440) = *a2;
  *(v14 + 10) = v9 + 1;
  v15 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v16 = *(a2 + 24);
  *(v16 + 448) = v15;
  *(v16 + 436) = 8;
  *(v16 + 48) = v15;
  *(v16 + 56) = 0xF00000008;
  *(v16 + 64) = 0x100000008;
  *v15 = *(a1 + 8);
  GPUTools::FD::StateStreamDecoder::DecodeArguments(a1, a2, v16 + 72);
  if (*(a2 + 8) < *(a2 + 16) - *a2)
  {
    GPUTools::FD::StateStreamDecoder::DecodeCore();
  }

  if ((*(a2 + 36) & 0x40) != 0)
  {
    *(*(a2 + 24) + 4) |= 6u;
  }
}

uint64_t GPUTools::FD::StateStreamDecoder::Decode(GPUTools::FD::StateStreamDecoder *this, const void *a2, uint64_t a3, GPUTools::FD::Function *a4)
{
  if (!a2)
  {
    GPUTools::FD::StateStreamDecoder::Decode();
  }

  GPUTools::FD::Function::Function(v11);
  GPUTools::FD::Function::operator=();
  GPUTools::FD::Function::~Function(v11);
  v11[0] = a2;
  v11[1] = a3;
  v12 = a2;
  v13 = a4;
  GPUTools::FD::StateStreamDecoder::DecodeCore(this, v11);
  v8 = v13;
  *(v13 + 108) = v12 - LODWORD(v11[0]);
  if (*(v8 + 5) && *(v8 + 15) == 15 && *v8 != -8191 && *v8 != -8188)
  {
    *(v8 + 2) = **(v8 + 6);
  }

  return 1;
}

void sub_24D6522E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  GPUTools::FD::Function::~Function(va);
  _Unwind_Resume(a1);
}

void GPUTools::FD::StateStreamDecoder::DecodeArguments(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = v7 + 4 * v4;
    v9 = (v8 + 4 * v4);
    v10 = 0xFFFF;
    v83 = v8;
    v81 = v7;
    while (1)
    {
      v12 = v6;
      v13 = *(v7 + 4 * v6);
      v14 = v13;
      v15 = a3 + 24 * v6;
      *v15 = v9;
      *(v15 + 22) = 0;
      if ((v13 & 0x20000) == 0)
      {
        *(v15 + 20) = 1;
        if (v13 <= 0x1409u)
        {
          if (v13 <= 0x1402u)
          {
            if (v13 != 5120)
            {
              if (v13 == 5121)
              {
                v16 = 0;
                *(v15 + 8) = 2;
                *(v15 + 12) = 2;
                v17 = 1;
                v42 = *(v7 + 4 * v12);
                if ((v42 & 0x80000) != 0)
                {
                  goto LABEL_190;
                }

                goto LABEL_191;
              }

              if (v13 != 5122)
              {
                goto LABEL_206;
              }

              if (*(a1 + 20) == 1)
              {
                *v9 = bswap32(*v9) >> 16;
              }

              v16 = 0;
              v37 = 3;
              goto LABEL_89;
            }

            v16 = 0;
            v17 = 1;
            *(v15 + 8) = 1;
            *(v15 + 12) = 1;
            v42 = *(v7 + 4 * v12);
            if ((v42 & 0x80000) != 0)
            {
              goto LABEL_190;
            }
          }

          else
          {
            if (v13 > 0x1404u)
            {
              if (v13 == 5125)
              {
                if (*(a1 + 20) == 1)
                {
                  *v9 = bswap32(*v9);
                }

                v16 = 0;
                v21 = 6;
              }

              else
              {
                if (v13 != 5126)
                {
                  goto LABEL_206;
                }

                if (*(a1 + 20) == 1)
                {
                  *v9 = bswap32(*v9);
                }

                v16 = 0;
                v21 = 9;
              }
            }

            else
            {
              if (v13 == 5123)
              {
                if (*(a1 + 20) == 1)
                {
                  *v9 = bswap32(*v9) >> 16;
                }

                v16 = 0;
                v37 = 4;
LABEL_89:
                *(v15 + 8) = v37;
                *(v15 + 12) = v37;
                v17 = 2;
                v42 = *(v7 + 4 * v12);
                if ((v42 & 0x80000) != 0)
                {
                  goto LABEL_190;
                }

                goto LABEL_191;
              }

              if (*(a1 + 20) == 1)
              {
                *v9 = bswap32(*v9);
              }

              v16 = 0;
              v21 = 5;
            }

            *(v15 + 8) = v21;
            *(v15 + 12) = v21;
            v17 = 4;
            v42 = *(v7 + 4 * v12);
            if ((v42 & 0x80000) != 0)
            {
              goto LABEL_190;
            }
          }

          goto LABEL_191;
        }

        if (v13 <= 0xFE00u)
        {
          if (v13 == 5130)
          {
            if (*(a1 + 20) == 1)
            {
              *v9 = bswap64(*v9);
            }

            v16 = 0;
            v40 = 10;
            goto LABEL_113;
          }

          if (v13 != 35670)
          {
            if (v13 != 65024)
            {
              goto LABEL_206;
            }

            if (*(a1 + 20) == 1)
            {
              *v9 = bswap64(*v9);
            }

            v16 = 0;
            *(v15 + 8) = 8;
            v17 = 8;
LABEL_183:
            v76 = 13;
            goto LABEL_189;
          }

          v16 = 0;
          v24 = 2;
          *(v15 + 8) = 2;
          v17 = 1;
LABEL_180:
          *(v15 + 12) = 17;
LABEL_181:
          *(v15 + 12) = v24;
          v42 = *(v7 + 4 * v12);
          if ((v42 & 0x80000) != 0)
          {
            goto LABEL_190;
          }

          goto LABEL_191;
        }

        if (v13 - 65027 >= 3 && v13 != 65025)
        {
          if (v13 != 65026)
          {
            goto LABEL_206;
          }

          if (*(a1 + 20) == 1)
          {
            *v9 = bswap64(*v9);
          }

          v16 = 0;
          v40 = 12;
LABEL_113:
          *(v15 + 8) = v40;
          *(v15 + 12) = v40;
          v17 = 8;
          v42 = *(v7 + 4 * v12);
          if ((v42 & 0x80000) != 0)
          {
            goto LABEL_190;
          }

          goto LABEL_191;
        }

        v24 = 13;
        *(v15 + 8) = 13;
        v25 = v13;
        v26 = v13;
        v27 = strlen(v9);
        LOWORD(v13) = v26;
        v14 = v25;
        v8 = v83;
        v16 = 0;
        v17 = v27 + 1;
        goto LABEL_166;
      }

      v18 = *(v8 + 4 * v6);
      if (v18 >= 0x10000)
      {
        GPUTools::FD::StateStreamDecoder::DecodeArguments();
      }

      v19 = *(v8 + 4 * v12);
      *(v15 + 20) = v18;
      *(v15 + 22) = 1;
      if (v13 > 0x1409u)
      {
        if (v13 <= 0xFE00u)
        {
          if (v13 != 5130)
          {
            if (v13 == 35670)
            {
              goto LABEL_63;
            }

            if (v13 != 65024)
            {
              goto LABEL_206;
            }

            if (v18 && (*(a1 + 20) & 1) != 0)
            {
              if (v18 < 4)
              {
                v20 = 0;
                goto LABEL_129;
              }

              v20 = v18 & 0xFFFC;
              v51 = (v9 + 4);
              v52 = v20;
              do
              {
                v53 = vrev64q_s8(*v51);
                v51[-1] = vrev64q_s8(v51[-1]);
                *v51 = v53;
                v51 += 2;
                v52 -= 4;
              }

              while (v52);
              if (v20 != v18)
              {
LABEL_129:
                v54 = &v9[2 * v20];
                v55 = v18 - v20;
                do
                {
                  *v54 = bswap64(*v54);
                  ++v54;
                  --v55;
                }

                while (v55);
              }
            }

            v24 = 8;
LABEL_158:
            *(v15 + 8) = v24;
            v16 = 1;
            v17 = 8;
            if ((v13 & 0xFFFD) != 0xFE01)
            {
              goto LABEL_164;
            }

            goto LABEL_166;
          }

          if (v18 && (*(a1 + 20) & 1) != 0)
          {
            if (v18 < 4)
            {
              v41 = 0;
              goto LABEL_123;
            }

            v41 = v18 & 0xFFFC;
            v46 = (v9 + 4);
            v47 = v41;
            do
            {
              v48 = vrev64q_s8(*v46);
              v46[-1] = vrev64q_s8(v46[-1]);
              *v46 = v48;
              v46 += 2;
              v47 -= 4;
            }

            while (v47);
            if (v41 != v18)
            {
LABEL_123:
              v49 = &v9[2 * v41];
              v50 = v18 - v41;
              do
              {
                *v49 = bswap64(*v49);
                ++v49;
                --v50;
              }

              while (v50);
            }
          }

          v24 = 10;
          goto LABEL_158;
        }

        if (v13 - 65027 < 3 || v13 == 65025)
        {
          v24 = 13;
          *(v15 + 8) = 13;
          *(v15 + 22) = 65;
          v82 = v10;
          v29 = v5;
          v30 = v3;
          v31 = v9[v18 - 1];
          v32 = v13;
          v33 = v13;
          v34 = v18;
          v35 = strlen(v9 + v31);
          v16 = 65;
          v19 = v34;
          LOWORD(v13) = v33;
          v14 = v32;
          v10 = v82;
          v8 = v83;
          v36 = v31 + (v35 & 0xFFFFFFFFFFFFFFFCLL);
          v3 = v30;
          v5 = v29;
          v7 = v81;
          v17 = v36 + 4;
          if ((v13 & 0xFFFD) != 0xFE01)
          {
            goto LABEL_164;
          }

          goto LABEL_166;
        }

        if (v13 != 65026)
        {
          goto LABEL_206;
        }

        if (v18 && (*(a1 + 20) & 1) != 0)
        {
          if (v18 < 4)
          {
            v45 = 0;
            goto LABEL_155;
          }

          v45 = v18 & 0xFFFC;
          v71 = (v9 + 4);
          v72 = v45;
          do
          {
            v73 = vrev64q_s8(*v71);
            v71[-1] = vrev64q_s8(v71[-1]);
            *v71 = v73;
            v71 += 2;
            v72 -= 4;
          }

          while (v72);
          if (v45 != v18)
          {
LABEL_155:
            v74 = &v9[2 * v45];
            v75 = v18 - v45;
            do
            {
              *v74 = bswap64(*v74);
              ++v74;
              --v75;
            }

            while (v75);
          }
        }

        v24 = 12;
        goto LABEL_158;
      }

      if (v13 <= 0x1402u)
      {
        if (v13 == 5120)
        {
          v16 = 1;
          *(v15 + 8) = 1;
          v24 = 1;
          v17 = 1;
          if ((v13 & 0xFFFD) != 0xFE01)
          {
            goto LABEL_164;
          }

          goto LABEL_166;
        }

        if (v13 == 5121)
        {
LABEL_63:
          v24 = 2;
          *(v15 + 8) = 2;
          v17 = 1;
          v16 = 1;
          if ((v13 & 0xFFFD) != 0xFE01)
          {
            goto LABEL_164;
          }

          goto LABEL_166;
        }

        if (v13 != 5122)
        {
          goto LABEL_206;
        }

        if (*(a1 + 20) == 1)
        {
          if (v18)
          {
            v38 = 0;
            do
            {
              *(v9 + v38) = bswap32(*(v9 + v38)) >> 16;
              ++v38;
              v19 = *(v15 + 20);
            }

            while (v38 < v19);
          }

          else
          {
            v19 = 0;
          }
        }

        v24 = 3;
        goto LABEL_163;
      }

      if (v13 > 0x1404u)
      {
        if (v13 != 5125)
        {
          if (v13 != 5126)
          {
            goto LABEL_206;
          }

          if (v18 && (*(a1 + 20) & 1) != 0)
          {
            if (v18 < 8)
            {
              v39 = 0;
              goto LABEL_141;
            }

            v39 = v18 & 0xFFF8;
            v61 = (v9 + 4);
            v62 = v39;
            do
            {
              v63 = vrev32q_s8(*v61);
              v61[-1] = vrev32q_s8(v61[-1]);
              *v61 = v63;
              v61 += 2;
              v62 -= 8;
            }

            while (v62);
            if (v39 != v18)
            {
LABEL_141:
              v64 = &v9[v39];
              v65 = v18 - v39;
              do
              {
                *v64 = bswap32(*v64);
                ++v64;
                --v65;
              }

              while (v65);
            }
          }

          v24 = 9;
          goto LABEL_150;
        }

        if (v18 && (*(a1 + 20) & 1) != 0)
        {
          if (v18 < 8)
          {
            v44 = 0;
            goto LABEL_147;
          }

          v44 = v18 & 0xFFF8;
          v66 = (v9 + 4);
          v67 = v44;
          do
          {
            v68 = vrev32q_s8(*v66);
            v66[-1] = vrev32q_s8(v66[-1]);
            *v66 = v68;
            v66 += 2;
            v67 -= 8;
          }

          while (v67);
          if (v44 != v18)
          {
LABEL_147:
            v69 = &v9[v44];
            v70 = v18 - v44;
            do
            {
              *v69 = bswap32(*v69);
              ++v69;
              --v70;
            }

            while (v70);
          }
        }

        v24 = 6;
        goto LABEL_150;
      }

      if (v13 != 5123)
      {
        if (v18 && (*(a1 + 20) & 1) != 0)
        {
          if (v18 < 8)
          {
            v22 = 0;
            goto LABEL_135;
          }

          v22 = v18 & 0xFFF8;
          v56 = (v9 + 4);
          v57 = v22;
          do
          {
            v58 = vrev32q_s8(*v56);
            v56[-1] = vrev32q_s8(v56[-1]);
            *v56 = v58;
            v56 += 2;
            v57 -= 8;
          }

          while (v57);
          if (v22 != v18)
          {
LABEL_135:
            v59 = &v9[v22];
            v60 = v18 - v22;
            do
            {
              *v59 = bswap32(*v59);
              ++v59;
              --v60;
            }

            while (v60);
          }
        }

        v24 = 5;
LABEL_150:
        *(v15 + 8) = v24;
        v16 = 1;
        v17 = 4;
        if ((v13 & 0xFFFD) != 0xFE01)
        {
          goto LABEL_164;
        }

        goto LABEL_166;
      }

      if (*(a1 + 20) != 1)
      {
        goto LABEL_102;
      }

      if (v18)
      {
        break;
      }

      v19 = 0;
      v24 = 4;
LABEL_163:
      *(v15 + 8) = v24;
      v16 = 1;
      v17 = 2;
      if ((v13 & 0xFFFD) != 0xFE01)
      {
LABEL_164:
        if ((v14 - 65030) <= 0xFFFFFFFD)
        {
          v17 *= v19;
        }
      }

LABEL_166:
      if (v13 <= 0x8B55u)
      {
        if (v13 - 5120 > 0xA || ((1 << v13) & 0x47F) == 0)
        {
LABEL_206:
          v80 = dy_abort("unknown state buffer core type: 0x%04X", v14);
          GPUTools::FD::StateStreamDecoder::~StateStreamDecoder(v80);
          return;
        }

        goto LABEL_181;
      }

      if (v13 <= 0xFE01u)
      {
        if (v13 == 35670)
        {
          goto LABEL_180;
        }

        if (v13 == 65024)
        {
          goto LABEL_183;
        }

        if (v13 != 65025)
        {
          goto LABEL_206;
        }

        *(v15 + 12) = 0;
        v16 |= 8u;
        *(v15 + 22) = v16;
        v42 = *(v7 + 4 * v12);
        if ((v42 & 0x80000) != 0)
        {
          goto LABEL_190;
        }
      }

      else
      {
        if (v13 <= 0xFE03u)
        {
          if (v13 != 65026)
          {
            *(v15 + 12) = 12;
            v16 |= 0x10u;
            *(v15 + 22) = v16;
            v42 = *(v7 + 4 * v12);
            if ((v42 & 0x80000) != 0)
            {
              goto LABEL_190;
            }

            goto LABEL_191;
          }

          goto LABEL_181;
        }

        if (v13 == 65028)
        {
          v76 = 14;
LABEL_189:
          *(v15 + 12) = v76;
          v42 = *(v7 + 4 * v12);
          if ((v42 & 0x80000) == 0)
          {
            goto LABEL_191;
          }

LABEL_190:
          *(v15 + 12) = 18;
          goto LABEL_191;
        }

        if (v13 != 65029)
        {
          goto LABEL_206;
        }

        *(v15 + 12) = 5;
        v16 |= 0x10u;
        *(v15 + 22) = v16;
        v42 = *(v7 + 4 * v12);
        if ((v42 & 0x80000) != 0)
        {
          goto LABEL_190;
        }
      }

LABEL_191:
      if ((v42 & 0x100000) != 0)
      {
        *(v15 + 12) = 17;
        if ((v42 & 0x40000) != 0)
        {
          v10 = v12;
        }

        if (v12 != 2)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if ((v42 & 0x40000) != 0)
        {
          v10 = v12;
        }

        if (v12 != 2)
        {
          goto LABEL_3;
        }
      }

      if (**(v3 + 24) == 540)
      {
        *(v15 + 12) = 1;
        *(v15 + 22) = v16 | 4;
      }

LABEL_3:
      *(v15 + 16) = v17;
      v11 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v9 + v11);
      v5 += 8 + v11;
      v6 = v12 + 1;
      if (*(v3 + 40) <= (v12 + 1))
      {
        if (v10 != 0xFFFF)
        {
          v77 = *(v3 + 24);
          --*(v77 + 10);
          v78 = (a3 + 24 * v10);
          v79 = *v78;
          *(v77 + 40) = *(v78 + 2);
          *(v77 + 24) = v79;
        }

        goto LABEL_204;
      }
    }

    v43 = 0;
    do
    {
      *(v9 + v43) = bswap32(*(v9 + v43)) >> 16;
      ++v43;
      v19 = *(v15 + 20);
    }

    while (v43 < v19);
LABEL_102:
    v24 = 4;
    goto LABEL_163;
  }

  v5 = 0;
LABEL_204:
  *(v3 + 16) += v5;
}

void GPUTools::FD::StateStreamDecoder::~StateStreamDecoder(GPUTools::FD::StateStreamDecoder *this)
{
  GPUTools::FD::IFunctionDecoder::~IFunctionDecoder(this);

  JUMPOUT(0x25302FA40);
}

void sub_24D653540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24D653904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24D653ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void *std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::find<char const*>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<char const*,OpaqueJSValue *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSValue *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSValue *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSValue *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t DYMachOGetDylibCompatibilityVersion(const char *a1)
{
  v2 = open(a1, 0);
  if (v2 != -1)
  {
    v3 = v2;
    v13 = 0;
    if (read(v2, &v13, 8uLL) == 8)
    {
      if (v13 == -1095041334)
      {
        if (!HIDWORD(v13))
        {
          goto LABEL_14;
        }

        memset(&v12, 0, 20);
        if (read(v3, &v12, 0x14uLL) != 20)
        {
          goto LABEL_14;
        }

        v4 = bswap32(v12.st_ino);
        st_size = bswap32(HIDWORD(v12.st_ino));
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
        if (stat(a1, &v12) == -1)
        {
          goto LABEL_14;
        }

        v4 = 0;
        st_size = v12.st_size;
      }

      v7 = mmap(0, st_size, 1, 2, v3, v4);
      if (v7 != -1)
      {
        if (*v7 == -17958194)
        {
          v8 = 7;
        }

        else
        {
          if (*v7 != -17958193)
          {
            goto LABEL_22;
          }

          v8 = 8;
        }

        v10 = v7[4];
        if (v10)
        {
          v11 = &v7[v8];
          while (*v11 != 13)
          {
            v11 = (v11 + v11[1]);
            if (!--v10)
            {
              goto LABEL_22;
            }
          }

          v6 = v11[5];
          goto LABEL_24;
        }

LABEL_22:
        v6 = 0;
LABEL_24:
        munmap(0xFFFFFFFFFFFFFFFFLL, st_size);
        goto LABEL_15;
      }
    }

LABEL_14:
    v6 = 0;
LABEL_15:
    close(v3);
    return v6;
  }

  return 0;
}

uint64_t DYMobileArchivesDirectory()
{
  v0 = [MEMORY[0x277CCACA8] stringWithCString:getpwnam("mobile")->pw_dir encoding:4];

  return [v0 stringByAppendingPathComponent:@"Library/GPUTools"];
}

const Function *GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(const Function *result, uint64_t a2)
{
  if ((result & 0x2000) == 0)
  {
    v3 = *(a2 + 464);
    while (v3 < *(a2 + 472))
    {
      OUTLINED_FUNCTION_0_1();
      v5 = (*(v4 + 56))();
      OUTLINED_FUNCTION_0_1();
      result = (*(v6 + 48))();
      v3 = result + *(a2 + 464);
      *(a2 + 464) = v3;
      if ((v5 & 0x2000) != 0)
      {
        return result;
      }
    }

    v7 = dy_abort("fenum 0x%x: reached end of stream within open association chain", *a2);
    return [(DYDataFunctionStream *)v7 peekFunction];
  }

  return result;
}

void GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode_associated(__int16 a1, uint64_t a2)
{
  if ((a1 & 0x2000) == 0)
  {
    v3 = *(a2 + 544);
    while (1)
    {
      v4 = *(a2 + 552);
      if (v3 >= v4)
      {
        break;
      }

      v5 = (*(**(a2 + 560) + 56))(*(a2 + 560), v3, v4 - v3);
      v3 = (*(**(a2 + 560) + 48))(*(a2 + 560), *(a2 + 544), *(a2 + 552) - *(a2 + 544)) + *(a2 + 544);
      *(a2 + 544) = v3;
      if ((v5 & 0x2000) != 0)
      {
        return;
      }
    }

    v6 = dy_abort("fenum 0x%x: reached end of stream within open association chain", *a2);
    [(DYFSStreamer *)v6 _invalidate];
  }
}

void GPUTools::Playback::VariableCache::Begin()
{
  __assert_rtn("void GPUTools::Playback::VariableCache::Begin()", "", 0, "_dataListSize == _dataListIdx");
}

{
  __assert_rtn("void GPUTools::Playback::VariableCache::Begin()", "", 0, "index == _dataListIdxBase");
}

void GPUTools::Playback::SequenceCache::Begin()
{
  __assert_rtn("void GPUTools::Playback::SequenceCache::Begin()", "", 0, "(_streamNum == _streamIdx) && (_dataList.size() == _dataNum)");
}

{
  __assert_rtn("void GPUTools::Playback::SequenceCache::Begin()", "", 0, "_dataList.back() == 0");
}

uint64_t GPUTools::CStringHash::hash::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = -1640531527;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2 + 2;
    while (1)
    {
      v5 = *(v4 - 1);
      if (!*(v4 - 1))
      {
        break;
      }

      v6 = v2 + v3;
      v7 = *v4;
      v4 += 2;
      v3 = v7;
      v2 = ((v6 << 16) ^ (v5 << 11) ^ v6) + (((v6 << 16) ^ (v5 << 11) ^ v6) >> 11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v2 = ((v2 + v3) ^ ((v2 + v3) << 11)) + (((v2 + v3) ^ ((v2 + v3) << 11)) >> 17);
  }

LABEL_7:
  v8 = (v2 ^ (8 * v2)) + ((v2 ^ (8 * v2)) >> 5);
  v9 = (v8 ^ (4 * v8)) + ((v8 ^ (4 * v8)) >> 15);
  if (v9 == v9 << 10)
  {
    return 0x40000000;
  }

  else
  {
    return v9 ^ (v9 << 10);
  }
}

void GPUTools::Playback::MemoryManager::Begin()
{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "(_pMemBlockHead == nullptr) && (_memBlockCounter == 0) && (_pBufferPosition == _pBufferBegin)");
}

{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "(_bufferSize & (_alignment - 1)) == 0");
}

{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "_pBuffer == nullptr");
}

{
  __assert_rtn("void GPUTools::Playback::MemoryManager::Begin()", "", 0, "_pBuffer");
}

void GPUTools::FD::StateStreamDecoder::Decode()
{
  __assert_rtn("virtual BOOL GPUTools::FD::StateStreamDecoder::Decode(const void *, size_t, GPUTools::FD::CoreFunction &) const", "", 0, "encbuf");
}

{
  __assert_rtn("virtual BOOL GPUTools::FD::StateStreamDecoder::Decode(const void *, size_t, GPUTools::FD::Function &) const", "", 0, "encbuf");
}

void GPUTools::FD::StateStreamDecoder::DecodeFlags()
{
  __assert_rtn("void GPUTools::FD::StateStreamDecoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_state_hdr_ex_t)");
}

{
  __assert_rtn("void GPUTools::FD::StateStreamDecoder::DecodeHeader(DecodeJob &) const", "", 0, "job.capacity >= sizeof(dy_state_hdr_t)");
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}