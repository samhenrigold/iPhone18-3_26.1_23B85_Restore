void sub_18F62B094(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(uint64_t a1, int a2)
{
  v2 = atomic_load((a1 + 64));
  if (a2 && (v2 & 1) == 0)
  {
    return 560164718;
  }

  v3 = 1919251263;
  if (caulk::semaphore::timed_wait((a1 + 48), 1.0))
  {
    for (i = 500; ; --i)
    {
      if (!i)
      {
        return 1919251263;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X9] }

      if (_X2)
      {
        break;
      }

LABEL_11:
      ;
    }

    v3 = _X2;
    v12 = _X2;
    while (1)
    {
      _X6 = atomic_load((v3 + 416));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X6, X7, [X9] }

      if (_X2 == v12)
      {
        break;
      }

      v3 = _X2;
      v12 = _X2;
      if (!_X2)
      {
        goto LABEL_11;
      }
    }
  }

  return v3;
}

__n128 AudioConverterServer::WorkgroupJoiner::leave(AudioConverterServer::WorkgroupJoiner *this, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if (v2)
  {
    if (*(this + 72) == 1)
    {
      audioipc::os_workgroup_joiner::~os_workgroup_joiner(this);
      *(this + 72) = 0;
      v2 = *(this + 11);
    }

    v4 = MEMORY[0x1E69E3C18] + 16;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    *(this + 11) = 0;
    v10[0] = v4;
    v10[1] = v2;
    caulk::mach::details::release_os_object(0, a2);
    v5 = *(this + 16);
    v6 = *(this + 6);
    v7 = *(this + 7);
    v8 = v12[0];
    *(this + 6) = v11;
    *(this + 7) = v8;
    *(this + 16) = *&v12[1];
    v11 = v6;
    v12[0] = v7;
    *&v12[1] = v5;
    LOBYTE(v5) = *(this + 136);
    *(this + 136) = BYTE8(v12[1]);
    BYTE8(v12[1]) = v5;
    caulk::mach::os_workgroup_managed::~os_workgroup_managed(v10);
  }

  return result;
}

uint64_t ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    _X2 = a2;
    _X6 = 0;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X6, X7, [X8] }

    atomic_store(_X6, (a2 + 416));
    _X5 = 0;
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    if (_X4 != _X6)
    {
      do
      {
        atomic_store(_X4, (a2 + 416));
        _X7 = 0;
        __asm { CASPAL          X6, X7, X2, X3, [X8] }

        v14 = _X6 ^ _X4;
        _X4 = _X6;
      }

      while (v14);
    }

    return caulk::semaphore::signal((result + 48));
  }

  return result;
}

uint64_t CAFAudioFile::InitializeCAFChunks(CAFAudioFile *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v2 = *(this + 3);
  v4 = *(this + 8);
  v3 = *(this + 9);
  v23 = *(this + 5);
  v22 = *(this + 52);
  v27 = 0x10066666163;
  v5 = (*(**(this + 13) + 56))(*(this + 13), 0, 0, 8, &v27, &v26);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1052;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  FSWrite Failed";
LABEL_7:
      v10 = buf;
LABEL_8:
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, v8, v10, 0x12u);
      return v6;
    }

    return v6;
  }

  v24 = 1684370275;
  v25 = xmmword_18F901C00;
  std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v24);
  v9 = (*(*this + 776))(this, &v24, &v26);
  if (!v9)
  {
    *&buf[8] = v4;
    *&buf[12] = 0;
    if (v4 == 1819304813)
    {
      v13 = v22;
      v12 = v23;
      if ((v3 & 2) != 0)
      {
        v14 = 1;
      }

      else
      {
        *&buf[12] = 2;
        v14 = 3;
      }

      if ((v3 & 1) == 0)
      {
LABEL_17:
        *&buf[16] = v12;
        *buf = bswap64(v2);
        *&buf[8] = vrev32q_s8(*&buf[8]);
        v33 = vrev32_s8(v13);
        v15 = (*(**(this + 13) + 56))(*(this + 13), 0, 20, 32, buf, &v26);
        if (v15)
        {
          v6 = v15;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return v6;
          }

          v28 = 136315394;
          v29 = "CAFAudioFile.cpp";
          v30 = 1024;
          v31 = 1072;
          v7 = MEMORY[0x1E69E9C10];
          v8 = "%25s:%-5d  FSWrite Failed";
          goto LABEL_20;
        }

        v16 = v26 + 20;
        if (*(this + 138))
        {
          v17 = *(this + 24);
          if (!v17)
          {
            CAFAudioFile::CalcSoundDataAlign(this);
            v17 = *(this + 24);
          }

          v24 = 1718773093;
          v18 = (v17 - 80) + 12;
          *&v25 = v18;
          *(&v25 + 1) = v16;
          std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v24);
          v19 = (*(*this + 776))(this, &v24, &v26);
          if (v19)
          {
            v6 = v19;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              return v6;
            }

            v28 = 136315394;
            v29 = "CAFAudioFile.cpp";
            v30 = 1024;
            v31 = 1089;
            v7 = MEMORY[0x1E69E9C10];
            v8 = "%25s:%-5d  WriteChunkHeader Failed";
            goto LABEL_20;
          }

          v16 += v18;
        }

        v24 = 1684108385;
        *&v25 = -1;
        *(&v25 + 1) = v16;
        v20 = (*(*this + 776))(this, &v24, &v26);
        if (v20)
        {
          v6 = v20;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return v6;
          }

          v28 = 136315394;
          v29 = "CAFAudioFile.cpp";
          v30 = 1024;
          v31 = 1100;
          v7 = MEMORY[0x1E69E9C10];
          v8 = "%25s:%-5d  WriteChunkHeader Failed";
        }

        else
        {
          *&v25 = 16;
          std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v24);
          v21 = v16 + 12;
          *(this + 42) = 0;
          v26 = 4;
          v6 = (*(**(this + 13) + 56))(*(this + 13), 0, v21, 4, this + 168, &v26);
          if (!v6)
          {
            *(this + 9) = v21 + v26;
            *(this + 20) = 1;
            (*(*this + 240))(this, 0);
            (*(*this + 256))(this, 0);
            (*(*this + 656))(this, v23);
            return v6;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return v6;
          }

          v28 = 136315394;
          v29 = "CAFAudioFile.cpp";
          v30 = 1024;
          v31 = 1110;
          v7 = MEMORY[0x1E69E9C10];
          v8 = "%25s:%-5d  FSWrite Failed";
        }

LABEL_20:
        v10 = &v28;
        goto LABEL_8;
      }
    }

    else
    {
      v14 = v3;
      v13 = v22;
      v12 = v23;
    }

    *&buf[12] = v14;
    goto LABEL_17;
  }

  v6 = v9;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CAFAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1064;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  WriteChunkHeader Failed";
    goto LABEL_7;
  }

  return v6;
}

uint64_t audioipc::eventlink_primitive::timed_wait_signal_or_error(audioipc::eventlink_primitive *this, double a2)
{
  os_retain(this);
  v3 = os_eventlink_signal_and_wait_until();
  v4 = v3;
  if (v3)
  {
    if (v3 != 60)
    {
      v6 = 0;
      v5 = v3 & 0xFFFFFF00;
      goto LABEL_7;
    }

    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = 0x100000000;
LABEL_7:
  os_release(this);
  return v6 | v5 | v4;
}

unint64_t audioipc::eventlink_primitive::wait_or_error(audioipc::eventlink_primitive *this)
{
  os_retain(this);
  v2 = os_eventlink_wait();
  os_release(this);
  return v2 | ((v2 == 0) << 32);
}

void std::vector<unsigned char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void PropertyMarshaller::~PropertyMarshaller(PropertyMarshaller *this)
{
  *this = &unk_1F033D1E8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<CADeserializer>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<CASerializer>::reset[abi:ne200100](this + 1, 0);
}

void Marshaller::~Marshaller(Marshaller *this)
{
  *this = &unk_1F03374C0;
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; i = *(this + 2))
  {
    CFRelease(*v3++);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

uint64_t std::unique_ptr<CASerializer>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x193ADE2A0]();

    JUMPOUT(0x193ADF220);
  }

  return result;
}

swix::data *swix::data::data(swix::data *this, const void *bytes, size_t length)
{
  v4 = xpc_data_create(bytes, length);
  *this = v4;
  if (!v4)
  {
    *this = xpc_null_create();
  }

  return this;
}

uint64_t swix::decode_message::decode<unsigned int>(void *a1, const char *a2)
{
  result = xpc_dictionary_get_uint64(a1, a2);
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F033FDD0;
  }

  return result;
}

void swix::xpcobj_coder<swix::data>::decode(xpc_object_t *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (object_getClass(v5) == MEMORY[0x1E69E9E70])
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  *a1 = xpc_null_create();
LABEL_7:
  xpc_release(v5);
}

void PropertyMarshaller::PropertyMarshaller(PropertyMarshaller *this, const void *a2, unint64_t a3)
{
  *(this + 8) = 0u;
  *this = &unk_1F033D1E8;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_18F62BF38(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v4, 0x20C4093837F09);
  v6 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<CADeserializer>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<CASerializer>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<CADeserializer>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x193ADE3E0]();

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t AudioConverterPropertyMarshaller::GetMarshaller(AudioConverterPropertyMarshaller *this, AUSpatialMixerPropertyMarshaller *a2)
{
  if (a2 > 1685218159)
  {
    if (a2 <= 1885627759)
    {
      if (a2 > 1832022883)
      {
        if (a2 <= 1868786719)
        {
          if (a2 <= 1835623026)
          {
            if (a2 > 1835296370)
            {
              if (a2 == 1835296371 || a2 == 1835298918)
              {
                goto LABEL_268;
              }

              v3 = 29283;
            }

            else
            {
              if (a2 == 1832022884)
              {
                operator new();
              }

              if (a2 == 1832150386)
              {
                goto LABEL_268;
              }

              v3 = 25446;
            }

            v4 = v3 | 0x6D640000;
            goto LABEL_267;
          }

          if (a2 <= 1835954031)
          {
            if (a2 == 1835623027 || a2 == 1835626096)
            {
              goto LABEL_268;
            }

            v4 = 1835952496;
            goto LABEL_267;
          }

          if (a2 == 1835954032 || a2 == 1836016243)
          {
            goto LABEL_268;
          }

          v2 = 1868784752;
          goto LABEL_236;
        }

        if (a2 > 1869836896)
        {
          if ((a2 - 1885432674) <= 0xB && ((1 << (a2 - 98)) & 0xC15) != 0)
          {
            goto LABEL_268;
          }

          if (a2 != 1869836897)
          {
            v4 = 1885430832;
            goto LABEL_267;
          }

LABEL_224:
          operator new();
        }

        if (a2 > 1868983586)
        {
          if (a2 != 1868983587)
          {
            if (a2 != 1868983668)
            {
              v4 = 1869639794;
              goto LABEL_267;
            }

            goto LABEL_242;
          }

LABEL_249:
          operator new();
        }

        if (a2 != 1868786720)
        {
          v5 = 1868969065;
LABEL_248:
          if (a2 != v5)
          {
            goto LABEL_275;
          }

          goto LABEL_249;
        }

        goto LABEL_250;
      }

      if (a2 > 1768123423)
      {
        if (a2 > 1768843635)
        {
          if (a2 > 1802857320)
          {
            if (a2 != 1802857321)
            {
              if (a2 == 1818518131)
              {
                goto LABEL_268;
              }

              v4 = 1819112035;
              goto LABEL_267;
            }

            goto LABEL_237;
          }

          if (a2 == 1768843636)
          {
            goto LABEL_268;
          }

          if (a2 != 1769172837)
          {
            v9 = 1769173601;
            goto LABEL_223;
          }

          goto LABEL_269;
        }

        if (a2 > 1768320371)
        {
          if (a2 != 1768320372)
          {
            if (a2 != 1768711273)
            {
              if (a2 == 1768780388)
              {
                operator new();
              }

              goto LABEL_275;
            }

            goto LABEL_269;
          }

LABEL_242:
          operator new();
        }

        if (a2 != 1768123424)
        {
          if (a2 == 1768305775)
          {
            goto LABEL_249;
          }

          v5 = 1768320291;
          goto LABEL_248;
        }

LABEL_250:
        operator new();
      }

      if (a2 > 1718383463)
      {
        if (a2 <= 1735422065)
        {
          if (a2 == 1718383464)
          {
            goto LABEL_268;
          }

          if (a2 != 1718383476)
          {
            v4 = 1718842483;
            goto LABEL_267;
          }

          goto LABEL_279;
        }

        if (a2 == 1735422066)
        {
          operator new();
        }

        if (a2 != 1752658554)
        {
          v2 = 1768121456;
          goto LABEL_236;
        }

LABEL_255:
        operator new();
      }

      if (a2 > 1685218163)
      {
        if (a2 == 1685218164)
        {
          operator new();
        }

        if (a2 == 1702060388)
        {
          goto LABEL_268;
        }

        v4 = 1717925491;
        goto LABEL_267;
      }

      if (a2 == 1685218160)
      {
        goto LABEL_268;
      }

      v6 = 1685218162;
LABEL_274:
      if (a2 != v6)
      {
        goto LABEL_275;
      }

      goto LABEL_271;
    }

    if (a2 <= 1936484722)
    {
      if (a2 <= 1919116143)
      {
        if (a2 <= 1886353265)
        {
          if (a2 > 1885759083)
          {
            if (a2 != 1885759084 && a2 != 1885823853)
            {
              if (a2 == 1886090345)
              {
                operator new();
              }

              goto LABEL_275;
            }

            goto LABEL_268;
          }

          if (a2 == 1885627760)
          {
            goto LABEL_268;
          }

          v4 = 1885758819;
          goto LABEL_267;
        }

        if (a2 > 1886546284)
        {
          if (a2 == 1886546285)
          {
            operator new();
          }

          if (a2 == 1886547309)
          {
            goto LABEL_268;
          }

          v4 = 1886678115;
          goto LABEL_267;
        }

        if (a2 == 1886353266)
        {
          goto LABEL_268;
        }

        if (a2 == 1886418028)
        {
          goto LABEL_271;
        }

        v6 = 1886545516;
        goto LABEL_274;
      }

      if (a2 > 1935896164)
      {
        if (a2 <= 1936028011)
        {
          if (a2 == 1935896165)
          {
            operator new();
          }

          if (a2 == 1935896684)
          {
            operator new();
          }

          v4 = 1936024440;
          goto LABEL_267;
        }

        if (a2 == 1936028012)
        {
          goto LABEL_268;
        }

        if (a2 != 1936286825)
        {
          v4 = 1936286832;
          goto LABEL_267;
        }

        goto LABEL_269;
      }

      if (a2 <= 1919837297)
      {
        if (a2 == 1919116144)
        {
          goto LABEL_268;
        }

        if (a2 != 1919185763)
        {
          goto LABEL_275;
        }

        goto LABEL_255;
      }

      if (a2 == 1919837298 || a2 == 1935765606)
      {
        goto LABEL_268;
      }

      v10 = 1935893603;
    }

    else
    {
      if (a2 > 1969386853)
      {
        if (a2 > 1986946670)
        {
          if (a2 > 2020172402)
          {
            if (a2 == 2020172403 || a2 == 2020175987)
            {
              goto LABEL_268;
            }

            v4 = 2020569203;
          }

          else
          {
            if (a2 == 1986946671)
            {
              operator new();
            }

            if (a2 == 1987076466)
            {
              goto LABEL_268;
            }

            v4 = 1987078975;
          }

          goto LABEL_267;
        }

        if (a2 <= 1986163312)
        {
          if (a2 == 1969386854 || a2 == 1970434930)
          {
            goto LABEL_268;
          }

          v4 = 1986163298;
          goto LABEL_267;
        }

        if (a2 == 1986163313)
        {
          goto LABEL_268;
        }

        if (a2 == 1986355826)
        {
          goto LABEL_224;
        }

        v9 = 1986360178;
        goto LABEL_223;
      }

      if (a2 > 1936876392)
      {
        if (a2 > 1936945515)
        {
          if (a2 != 1936945516)
          {
            if (a2 == 1952539491)
            {
              goto LABEL_268;
            }

            v4 = 1952609638;
            goto LABEL_267;
          }

          goto LABEL_278;
        }

        if (a2 == 1936876393)
        {
          goto LABEL_268;
        }

        if (a2 == 1936876400)
        {
          goto LABEL_264;
        }

        v7 = 25457;
LABEL_145:
        v4 = v7 | 0x73720000;
        goto LABEL_267;
      }

      if (a2 > 1936551779)
      {
        if (a2 == 1936551780 || a2 == 1936748400)
        {
          goto LABEL_268;
        }

        v7 = 25441;
        goto LABEL_145;
      }

      if (a2 == 1936484723)
      {
        operator new();
      }

      v10 = 1936548204;
    }

    if (a2 != v10)
    {
      goto LABEL_275;
    }

    goto LABEL_269;
  }

  if (a2 <= 1634366321)
  {
    if (a2 <= 1584620642)
    {
      if (a2 > 1584164459)
      {
        if (a2 <= 1584427883)
        {
          if (a2 <= 1584229483)
          {
            if (a2 != 1584164460)
            {
              if (a2 != 1584165744)
              {
                v2 = 1584227189;
                goto LABEL_236;
              }

LABEL_268:
              operator new();
            }

LABEL_271:
            operator new();
          }

          if (a2 == 1584229484 || a2 == 1584426093)
          {
            goto LABEL_271;
          }

          v4 = 1584427631;
LABEL_267:
          if (a2 != v4)
          {
            goto LABEL_275;
          }

          goto LABEL_268;
        }

        if (a2 <= 1584555631)
        {
          if (a2 == 1584427884)
          {
            goto LABEL_268;
          }

          if (a2 == 1584428140)
          {
            goto LABEL_271;
          }

          v4 = 1584488812;
          goto LABEL_267;
        }

        if (a2 == 1584555632)
        {
          operator new();
        }

        if (a2 != 1584620388)
        {
          v4 = 1584620400;
          goto LABEL_267;
        }

LABEL_237:
        operator new();
      }

      if (a2 <= 1583510387)
      {
        if (a2 <= 1583440992)
        {
          if (a2 == 560227360)
          {
            goto LABEL_268;
          }

          v4 = 610889331;
        }

        else
        {
          if (a2 == 1583440993)
          {
            goto LABEL_237;
          }

          if (a2 == 1583443042)
          {
            goto LABEL_268;
          }

          v4 = 1583506551;
        }

        goto LABEL_267;
      }

      if (a2 <= 1583574639)
      {
        if (a2 == 1583510388)
        {
          goto LABEL_271;
        }

        if (a2 != 1583572073)
        {
          if (a2 == 1583574386)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_269;
      }

      if (a2 != 1583574640)
      {
        if (a2 != 1583576436)
        {
          if (a2 == 1583640678)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_271;
      }

LABEL_278:
      operator new();
    }

    if (a2 > 1633904235)
    {
      if (a2 <= 1634034539)
      {
        if (a2 <= 1633906802)
        {
          if (a2 != 1633904236)
          {
            if (a2 != 1633904996 && a2 != 1633906532)
            {
              goto LABEL_275;
            }

            goto LABEL_242;
          }

LABEL_279:
          operator new();
        }

        if (a2 == 1633906803 || a2 == 1633907488)
        {
          goto LABEL_269;
        }

        v9 = 1634034290;
        goto LABEL_223;
      }

      if (a2 <= 1634167139)
      {
        if (a2 != 1634034540)
        {
          if (a2 != 1634038642)
          {
            v4 = 1634103408;
            goto LABEL_267;
          }

          goto LABEL_224;
        }

LABEL_225:
        operator new();
      }

      if (a2 == 1634167140)
      {
        goto LABEL_268;
      }

      if (a2 == 1634296684)
      {
        goto LABEL_225;
      }

      v9 = 1634300786;
LABEL_223:
      if (a2 != v9)
      {
        goto LABEL_275;
      }

      goto LABEL_224;
    }

    if (a2 > 1633842021)
    {
      if (a2 > 1633903205)
      {
        if (a2 != 1633903206 && a2 != 1633903974)
        {
          if (a2 == 1633904233)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_268;
      }

      if (a2 == 1633842022 || a2 == 1633842276)
      {
        goto LABEL_268;
      }

      v4 = 1633903204;
      goto LABEL_267;
    }

    if (a2 > 1584948335)
    {
      if (a2 == 1584948336)
      {
        goto LABEL_268;
      }

      if (a2 != 1584952428)
      {
        if (a2 == 1633776744)
        {
          operator new();
        }

        goto LABEL_275;
      }

      goto LABEL_271;
    }

    if (a2 != 1584620643)
    {
      v4 = 1584688227;
      goto LABEL_267;
    }

LABEL_269:
    operator new();
  }

  if (a2 <= 1668248433)
  {
    if (a2 <= 1651668064)
    {
      if (a2 > 1634757730)
      {
        if (a2 <= 1651401846)
        {
          if (a2 != 1634757731 && a2 != 1634955366)
          {
            if (a2 == 1651401828)
            {
              operator new();
            }

            goto LABEL_275;
          }

          goto LABEL_268;
        }

        if (a2 == 1651401847 || a2 == 1651663220)
        {
          goto LABEL_268;
        }

        v8 = 1651668003;
        goto LABEL_183;
      }

      if (a2 > 1634562668)
      {
        if (a2 == 1634562669)
        {
          goto LABEL_268;
        }

        if (a2 == 1634689900)
        {
          goto LABEL_225;
        }

        v9 = 1634694002;
        goto LABEL_223;
      }

      if (a2 != 1634366322)
      {
        v4 = 1634493037;
        goto LABEL_267;
      }
    }

    else
    {
      if (a2 <= 1667855217)
      {
        if (a2 <= 1667527266)
        {
          if (a2 != 1651668065 && a2 != 1651668082)
          {
            v4 = 1667527029;
            goto LABEL_267;
          }

          goto LABEL_224;
        }

        if (a2 == 1667527267)
        {
          goto LABEL_268;
        }

        if (a2 != 1667788144)
        {
          v4 = 1667850867;
          goto LABEL_267;
        }

LABEL_280:
        operator new();
      }

      if (a2 > 1668244082)
      {
        if (a2 != 1668244083 && a2 != 1668247149)
        {
          if (a2 == 1668248169)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_268;
      }

      if (a2 != 1667855218)
      {
        if (a2 == 1668114275)
        {
          goto LABEL_237;
        }

        v8 = 1668116067;
LABEL_183:
        if (a2 != v8)
        {
          goto LABEL_275;
        }

        goto LABEL_225;
      }
    }

LABEL_264:
    operator new();
  }

  if (a2 > 1684369509)
  {
    if (a2 <= 1684893539)
    {
      if (a2 > 1684826476)
      {
        if (a2 == 1684826477)
        {
          goto LABEL_268;
        }

        if (a2 == 1684891491)
        {
          goto LABEL_237;
        }

        v4 = 1684892024;
      }

      else
      {
        if (a2 == 1684369510)
        {
          goto LABEL_268;
        }

        if (a2 == 1684496752)
        {
          operator new();
        }

        v4 = 1684632680;
      }

      goto LABEL_267;
    }

    if (a2 > 1685218145)
    {
      if ((a2 - 1685218146) >= 2)
      {
        goto LABEL_275;
      }

      goto LABEL_271;
    }

    if (a2 == 1684893540)
    {
      goto LABEL_268;
    }

    if (a2 != 1685086578)
    {
      v4 = 1685089087;
      goto LABEL_267;
    }

    goto LABEL_269;
  }

  if (a2 <= 1668510306)
  {
    if (a2 > 1668312418)
    {
      if (a2 == 1668312419)
      {
        operator new();
      }

      if (a2 != 1668312939)
      {
        v4 = 1668441705;
        goto LABEL_267;
      }

      goto LABEL_225;
    }

    if (a2 != 1668248434)
    {
      if (a2 == 1668309874)
      {
        operator new();
      }

      if (a2 == 1668310371)
      {
        operator new();
      }

      goto LABEL_275;
    }

    goto LABEL_264;
  }

  if (a2 <= 1684238188)
  {
    if (a2 != 1668510307)
    {
      if (a2 == 1684171124)
      {
        goto LABEL_268;
      }

      v4 = 1684234608;
      goto LABEL_267;
    }

    goto LABEL_280;
  }

  if (a2 == 1684238189)
  {
    goto LABEL_268;
  }

  if (a2 == 1684238952)
  {
    goto LABEL_237;
  }

  v2 = 1684238960;
LABEL_236:
  if (a2 == v2)
  {
    goto LABEL_237;
  }

LABEL_275:

  return AUSpatialMixerPropertyMarshaller::GetSpatialMixerMarshaller(a2);
}

void Marshaller::CheckDest(Marshaller *this, void **a2, unsigned int *a3, unint64_t a4)
{
  v4 = a4;
  if (!*a2)
  {
    v7 = *(this + 5);
    v8 = (this + 40);
    v9 = *(this + 6) - v7;
    if (a4 <= v9)
    {
      if (a4 < v9)
      {
        *(this + 6) = &v7[a4];
      }
    }

    else
    {
      std::vector<unsigned char>::__append((this + 40), a4 - v9);
      v7 = *v8;
    }

    *a2 = v7;
    goto LABEL_9;
  }

  if (*a3 > a4)
  {
LABEL_9:
    *a3 = v4;
  }
}

const void *applesauce::CF::details::at_key<__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(applesauce::CF::DictionaryRef *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, ValueAtIndex);
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_18F62DA90(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(applesauce::CF::ArrayRef *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void *applesauce::CF::ArrayRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFArrayGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_18F62E3A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Graph::setAUStrip(DSPGraph::Graph *this, const __CFDictionary *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(v100, a2);
  if (!v100[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<__CFString const* const&>(v100[0], @"version");
  if (!v4 || ((v5 = applesauce::CF::convert_as<int,0>(v4), (v5 & 0x100000000) == 0) ? (v6 = 1) : (v6 = v5), v6 == 1))
  {
    applesauce::CF::DictionaryRef::from_get(&v108, a2);
    if (!v108)
    {
      v82 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v82, "Could not construct");
    }

    if (applesauce::CF::details::has_key<__CFString const* const&>(v108, @"strips"))
    {
      if (!v108)
      {
        v83 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v83, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v108, @"strips");
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
      }

      v99 = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
      v44 = theArray;
      if (!theArray)
      {
LABEL_168:
        v60 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v60, "Could not construct");
      }

      v45 = 0;
      v46 = v99 - 1;
      while (v45 < CFArrayGetCount(v44))
      {
        if (!theArray)
        {
          v70 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v70, "Could not construct");
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(buf, theArray, v45);
        if (!*buf)
        {
          v69 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v69, "Could not construct");
        }

        if (applesauce::CF::details::has_key<__CFString const* const&>(*buf, @"effects"))
        {
          if (!*buf)
          {
            v71 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v71, "Could not construct");
          }

          applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v111, *buf, @"effects");
          v47 = v111;
          if (!v111)
          {
LABEL_187:
            v63 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v63, "Could not construct");
          }

          v48 = 0;
          while (v48 < CFArrayGetCount(v47))
          {
            if (!v111)
            {
              v65 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v65, "Could not construct");
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v110, v111, v48);
            if (!v110)
            {
              v64 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v64, "Could not construct");
            }

            applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&__p, v110, @"displayname");
            v49 = v103;
            v50 = v103;
            if ((v103 & 0x80u) != 0)
            {
              v49 = v102;
            }

            if (!v49)
            {
              __cxa_rethrow();
            }

            v51 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(this + 98, &__p);
            if (v51)
            {
              v52 = v51[5];
              if (v52)
              {
                if (!v110)
                {
                  v66 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v66, "Could not construct");
                }

                v53 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"aupreset");
                if (!v53)
                {
                  v68 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v68, "Could not find item");
                }

                applesauce::CF::DictionaryRef::from_get(&v107, v53);
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                }

                if (v46 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v54 = DSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                  {
                    v55 = v52 + 32;
                    if (v52[55] < 0)
                    {
                      v55 = *v55;
                    }

                    *v113 = 136315138;
                    *&v113[4] = v55;
                    _os_signpost_emit_with_name_impl(&dword_18F5DF000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v99, "Box::setPreset", "%s", v113, 0xCu);
                  }
                }

                (*(*v52 + 352))(v52, v107);
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                }

                if (v46 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v56 = DSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                  {
                    v57 = v52 + 32;
                    if (v52[55] < 0)
                    {
                      v57 = *v57;
                    }

                    *v113 = 136315138;
                    *&v113[4] = v57;
                    _os_signpost_emit_with_name_impl(&dword_18F5DF000, v56, OS_SIGNPOST_INTERVAL_END, v99, "Box::setPreset", "%s", v113, 0xCu);
                  }
                }

                if (!v110)
                {
                  v67 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v67, "Could not construct");
                }

                v58 = applesauce::CF::details::at_key<__CFString const* const&>(v110, @"bypass");
                if (v58)
                {
                  v59 = applesauce::CF::convert_as<unsigned int,0>(v58);
                  if ((v59 & 0x100000000) != 0)
                  {
                    (*(*v52 + 56))(v52, v59 != 0);
                  }
                }

                if (v107)
                {
                  CFRelease(v107);
                }

                v50 = v103;
              }
            }

            if ((v50 & 0x80) != 0)
            {
              operator delete(__p);
            }

            if (v110)
            {
              CFRelease(v110);
            }

            ++v48;
            v47 = v111;
            if (!v111)
            {
              goto LABEL_187;
            }
          }

          if (v111)
          {
            CFRelease(v111);
          }
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        ++v45;
        v44 = theArray;
        if (!theArray)
        {
          goto LABEL_168;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      if (!v108)
      {
        v84 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v84, "Could not construct");
      }

      if (CFDictionaryGetCount(v108))
      {
        v43 = 1886548769;
        goto LABEL_175;
      }
    }

    v43 = 0;
LABEL_175:
    v61 = v108;
    if (!v108)
    {
      goto LABEL_184;
    }

LABEL_183:
    CFRelease(v61);
    goto LABEL_184;
  }

  if (v6 != 2)
  {
    v43 = 4294956445;
    goto LABEL_184;
  }

  applesauce::CF::DictionaryRef::from_get(&v110, a2);
  if (!v110)
  {
    v85 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v85, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&v108, v110, @"strips");
  if (v109 == 1)
  {
    v7 = v108;
    if (v108)
    {
      Count = CFArrayGetCount(v108);
      v87 = v7;
      v88 = CFArrayGetCount(v7);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          if (i == v88)
          {
            break;
          }

          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v107, v87, i);
          if (!v107)
          {
            v81 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v81, "Could not construct");
          }

          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v107, @"effects");
          if (v106 == 1)
          {
            v9 = theArray;
            if (theArray)
            {
              v94 = CFArrayGetCount(theArray);
              v93 = CFArrayGetCount(v9);
              if (v94)
              {
                v10 = 0;
                v91 = v9;
                v92 = i;
                while (1)
                {
                  if (v10 == v93)
                  {
                    goto LABEL_104;
                  }

                  applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v9, v10);
                  if (!cf)
                  {
                    v78 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v78, "Could not construct");
                  }

                  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&__p, cf, @"displayname");
                  v11 = v103;
                  v12 = v103;
                  if ((v103 & 0x80u) != 0)
                  {
                    v11 = v102;
                  }

                  if (!v11)
                  {
                    __cxa_rethrow();
                  }

                  v13 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(this + 98, &__p);
                  if (v13)
                  {
                    v14 = v13[5];
                    if (v14)
                    {
                      break;
                    }
                  }

LABEL_99:
                  if ((v12 & 0x80) != 0)
                  {
                    operator delete(__p);
                  }

                  v9 = v91;
                  i = v92;
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (++v10 == v94)
                  {
                    goto LABEL_104;
                  }
                }

                v15 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                v100[1] = v15;
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                }

                spid = os_signpost_id_generate(DSPGraph::getLog(void)::gLog);
                if (!v15)
                {
                  v80 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v80, "Could not construct");
                }

                v16 = applesauce::CF::details::at_key<__CFString const* const&>(v15, @"aupreset");
                if (v16)
                {
                  v17 = v16;
                  CFRetain(v16);
                  v18 = CFGetTypeID(v17);
                  if (v18 == CFDictionaryGetTypeID())
                  {
                    *v113 = v17;
                    v113[8] = 1;
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v19 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v20 = v14 + 32;
                        if (v14[55] < 0)
                        {
                          v20 = *v20;
                        }

                        *buf = 136315138;
                        *&buf[4] = v20;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setPreset", "%s", buf, 0xCu);
                      }
                    }

                    (*(*v14 + 352))(v14, v17);
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v21 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v22 = v14 + 32;
                        if (v14[55] < 0)
                        {
                          v22 = *v22;
                        }

                        *buf = 136315138;
                        *&buf[4] = v22;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v21, OS_SIGNPOST_INTERVAL_END, spid, "Box::setPreset", "%s", buf, 0xCu);
                      }
                    }

                    if (*v113)
                    {
                      CFRelease(*v113);
                    }

                    goto LABEL_51;
                  }

                  CFRelease(v17);
                }

                v113[0] = 0;
                v113[8] = 0;
LABEL_51:
                applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v113, v15, @"parameters");
                if (v113[8] == 1)
                {
                  v23 = *v113;
                  if (*v113)
                  {
                    v98 = CFArrayGetCount(*v113);
                    v97 = CFArrayGetCount(v23);
                    if (v98)
                    {
                      v24 = 0;
                      v25 = spid - 1;
                      v90 = (v14 + 32);
                      v96 = v23;
                      while (1)
                      {
                        if (v97 == v24)
                        {
                          goto LABEL_90;
                        }

                        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v111, v23, v24);
                        if (!v111)
                        {
                          v73 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v73, "Could not construct");
                        }

                        v26 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"scope");
                        if (v26)
                        {
                          v26 = applesauce::CF::convert_as<unsigned int,0>(v26);
                        }

                        if ((v26 & 0x100000000) != 0)
                        {
                          v27 = v26;
                        }

                        else
                        {
                          v27 = 0;
                        }

                        if (!v111)
                        {
                          v75 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v75, "Could not construct");
                        }

                        v28 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"element");
                        if (v28)
                        {
                          v28 = applesauce::CF::convert_as<unsigned int,0>(v28);
                        }

                        if ((v28 & 0x100000000) != 0)
                        {
                          v29 = v28;
                        }

                        else
                        {
                          v29 = 0;
                        }

                        if (!v111)
                        {
                          v76 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v76, "Could not construct");
                        }

                        v30 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"parameterID");
                        if (!v30)
                        {
                          break;
                        }

                        v31 = applesauce::CF::convert_as<unsigned int,0>(v30);
                        if ((v31 & 0x100000000) == 0)
                        {
                          v74 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v74, "Could not convert");
LABEL_201:
                        }

                        v32 = v31;
                        if (!v111)
                        {
                          v77 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v77, "Could not construct");
                        }

                        v33 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"value");
                        if (!v33)
                        {
                          v72 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v72, "Could not find item");
                        }

                        v34 = applesauce::CF::convert_to<float,0>(v33);
                        if (DSPGraph::getLog(void)::onceToken != -1)
                        {
                          dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                        }

                        if (v25 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v35 = DSPGraph::getLog(void)::gLog;
                          if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                          {
                            v36 = v14 + 32;
                            if (v14[55] < 0)
                            {
                              v36 = *v90;
                            }

                            *buf = 136315138;
                            *&buf[4] = v36;
                            _os_signpost_emit_with_name_impl(&dword_18F5DF000, v35, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setParameter", "%s", buf, 0xCu);
                          }
                        }

                        (*(*v14 + 80))(v14, v32, v27, v29, 0, v34);
                        if (DSPGraph::getLog(void)::onceToken != -1)
                        {
                          dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                        }

                        if (v25 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v37 = DSPGraph::getLog(void)::gLog;
                          if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                          {
                            v38 = v14 + 32;
                            if (v14[55] < 0)
                            {
                              v38 = *v90;
                            }

                            *buf = 136315138;
                            *&buf[4] = v38;
                            _os_signpost_emit_with_name_impl(&dword_18F5DF000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Box::setParameter", "%s", buf, 0xCu);
                          }
                        }

                        if (v111)
                        {
                          CFRelease(v111);
                        }

                        ++v24;
                        v23 = v96;
                        if (v98 == v24)
                        {
                          goto LABEL_90;
                        }
                      }

                      v74 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v74, "Could not find item");
                      goto LABEL_201;
                    }

LABEL_90:
                    if (*v113)
                    {
                      CFRelease(*v113);
                    }
                  }
                }

                v39 = applesauce::CF::details::at_key<__CFString const* const&>(v15, @"bypass");
                if (v39)
                {
                  v40 = applesauce::CF::convert_as<unsigned int,0>(v39);
                  if ((v40 & 0x100000000) != 0)
                  {
                    (*(*v14 + 56))(v14, v40 != 0);
                  }
                }

                v41 = applesauce::CF::details::at_key<__CFString const* const&>(v15, @"bypass");
                if (v41)
                {
                  v42 = applesauce::CF::convert_as<BOOL,0>(v41);
                  if (v42 >= 0x100u)
                  {
                    (*(*v14 + 56))(v14, v42 & 1);
                  }
                }

                CFRelease(v15);
                v12 = v103;
                goto LABEL_99;
              }

LABEL_104:
              if (theArray)
              {
                CFRelease(theArray);
              }
            }
          }

          if (v107)
          {
            CFRelease(v107);
          }
        }
      }

      if (v108)
      {
        CFRelease(v108);
      }
    }

    v43 = 0;
  }

  else
  {
    if (!v110)
    {
      v86 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v86, "Could not construct");
    }

    if (CFDictionaryGetCount(v110))
    {
      v43 = 1886548769;
    }

    else
    {
      v43 = 0;
    }
  }

  v61 = v110;
  if (v110)
  {
    goto LABEL_183;
  }

LABEL_184:
  if (v100[0])
  {
    CFRelease(v100[0]);
  }

  return v43;
}

void sub_18F62F5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::string::basic_string[abi:ne200100](void *a1, size_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a2;
  if (a2)
  {
    bzero(a1, a2);
  }

  *(a1 + a2) = 0;
  return a1;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_18F901990);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_18F901730), xmmword_18F9019A0);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

uint64_t DSPGraph::Box::setPreset(DSPGraph::Box *this, CFTypeRef cf)
{
  if (!cf)
  {
    cfa = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_43;
  }

  CFRetain(cf);
  cfa = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
  }

  v5 = applesauce::CF::details::at_key<__CFString const* const&>(cfa, @"version");
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find item");
LABEL_43:
  }

  if (applesauce::CF::convert_to<int,0>(v5))
  {
LABEL_5:
    v6 = 4294956445;
    goto LABEL_6;
  }

  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(__s1, cfa, @"classname");
  v8 = (*(*this + 16))(this);
  v9 = strlen(v8);
  v10 = v9;
  v11 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    if (v9 != __s1[1])
    {
      v6 = 4294956445;
      goto LABEL_39;
    }

    if (v9 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = __s1[0];
  }

  else
  {
    if (v9 != v29)
    {
      goto LABEL_5;
    }

    v12 = __s1;
  }

  if (memcmp(v12, v8, v10))
  {
    v6 = 4294956445;
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  if (!cfa)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  v13 = applesauce::CF::details::at_key<__CFString const* const&>(cfa, @"data");
  if (v13)
  {
    v14 = v13;
    CFRetain(v13);
    v15 = CFGetTypeID(v14);
    if (v15 == CFDataGetTypeID())
    {
      v27 = v14;
      BytePtr = CFDataGetBytePtr(v14);
      Length = CFDataGetLength(v14);
      if (Length >= 1)
      {
        v18 = BytePtr + Length;
        do
        {
          if ((BytePtr + 1) > v18)
          {
            break;
          }

          if ((BytePtr + 2) > v18)
          {
            break;
          }

          v19 = BytePtr + 3;
          if ((BytePtr + 3) > v18)
          {
            break;
          }

          v20 = BytePtr[2];
          if (v20)
          {
            v21 = bswap32(*BytePtr);
            v22 = bswap32(BytePtr[1]);
            v23 = bswap32(v20);
            while ((v19 + 1) <= v18)
            {
              BytePtr = v19 + 2;
              if ((v19 + 2) > v18)
              {
                BytePtr = v19 + 1;
                goto LABEL_35;
              }

              (*(*this + 80))(this, bswap32(*v19), v21, v22, 0, COERCE_FLOAT(bswap32(v19[1])));
              v19 = BytePtr;
              if (!--v23)
              {
                goto LABEL_35;
              }
            }
          }

          BytePtr = v19;
LABEL_35:
          ;
        }

        while (BytePtr < v18);
      }

      CFRelease(v27);
    }

    else
    {
      CFRelease(v14);
    }
  }

  v6 = 0;
  if (v29 < 0)
  {
LABEL_39:
    operator delete(__s1[0]);
  }

LABEL_6:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v6;
}

void sub_18F63014C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F62FE10);
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

uint64_t *std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Box>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::~lf_read_synchronized_write(v2 + 64);
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::~lf_read_synchronized_write(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void DSPGraph::Interpreter::compileText(DSPGraph *this@<X1>, DSPGraph::Graph **a2@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X3>, DSPGraph::Graph **a5@<X8>)
{
  v156 = *MEMORY[0x1E69E9840];
  DSPGraph::checkASCIIEncoding(this, this);
  *(a2 + 184) = 0;
  a2[22] = 0;
  v132 = (a2 + 22);
  (*(*a2 + 3))(__p, a2);
  v10 = __p[0];
  __p[0] = 0;
  v11 = a2[1];
  a2[1] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = __p[0];
    __p[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  memset(&v139, 0, sizeof(v139));
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  *__p = 0u;
  v135 = 0u;
  if (&v137 != a4)
  {
    v14 = *a4;
    v13 = a4[1];
    if (v13 != v14)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
      if (v15 < 0xAAAAAAAAAAAAAABLL)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v15);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    *(&v137 + 1) = 0;
  }

  for (i = *(a3 + 16); i; i = *i)
  {
    DSPGraph::Preprocessor::def(__p, i + 2, (i + 5));
  }

  std::string::basic_string[abi:ne200100]<0>(&v155, this);
  DSPGraph::Preprocessor::preprocess(&__str, __p, &v155, 0);
  v139 = __str;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = &v137;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  std::deque<std::unique_ptr<DSPGraph::Macro>>::~deque[abi:ne200100](__p);
  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v139;
  }

  else
  {
    v18 = v139.__r_.__value_.__r.__words[0];
  }

  DSPGraph::checkASCIIEncoding(v18, v17);
  v133 = 0;
  while (v18->__r_.__value_.__s.__data_[0])
  {
    ++v133;
    memset(&v144, 0, sizeof(v144));
    while (1)
    {
      v19 = v18->__r_.__value_.__s.__data_[0];
      if (!v18->__r_.__value_.__s.__data_[0])
      {
        break;
      }

      v18 = (v18 + 1);
      if (v19 == 10)
      {
        break;
      }

      std::string::push_back(&v144, v19);
    }

    v20 = &v144;
    if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v144.__r_.__value_.__r.__words[0];
    }

    v143 = v20;
    DSPGraph::skipspace(&v143, v19);
    if (*v143 && *v143 != 59)
    {
      v141 = 0uLL;
      v142 = 0;
      if ((DSPGraph::Interpreter::parseName(&v143, &v141) & 1) == 0)
      {
        goto LABEL_319;
      }

      DSPGraph::skipspace(&v143, v21);
      v23 = v143;
      memset(&v140, 0, sizeof(v140));
      while (1)
      {
        v24 = *v23;
        if (v24 <= 0x3B && ((1 << v24) & 0x800000000000401) != 0)
        {
          break;
        }

        std::string::push_back(&v140, v24);
        ++v23;
      }

      v26 = v140.__r_.__value_.__r.__words[0];
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v140;
      }

      v143 = v26;
      if ((v142 & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v142) <= 7u)
        {
          if (HIBYTE(v142) > 3u)
          {
            if (HIBYTE(v142) != 4)
            {
              if (HIBYTE(v142) != 5)
              {
                if (HIBYTE(v142) == 6 && v141 == 1886680431 && WORD2(v141) == 29813)
                {
                  goto LABEL_86;
                }

                goto LABEL_205;
              }

              if (v141 == 1970302569 && BYTE4(v141) == 116)
              {
                goto LABEL_187;
              }

              if (v141 != 1634886000 || BYTE4(v141) != 109)
              {
LABEL_179:
                if (HIBYTE(v142) <= 0xBu)
                {
                  if (HIBYTE(v142) != 3)
                  {
                    if (HIBYTE(v142) == 4)
                    {
                      goto LABEL_182;
                    }

LABEL_92:
                    if (HIBYTE(v142) != 9)
                    {
                      goto LABEL_205;
                    }

                    if (v141 != 0x6172615065726977 || BYTE8(v141) != 109)
                    {
                      goto LABEL_205;
                    }

LABEL_98:
                    __p[0] = 0;
                    __p[1] = 0;
                    LODWORD(v135) = 0;
                    memset(&__str, 0, 20);
                    if (!DSPGraph::Interpreter::parseParamEndpoint(a2, &v143, __p))
                    {
                      std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireParamCommand");
                      std::string::basic_string[abi:ne200100]<0>(&v149, "expected source endpoint in 'wireParam' command");
                      DSPGraph::ThrowException(1886548769, &v155, 1027, &buf, &v149);
                    }

                    if (!DSPGraph::Interpreter::parseParamEndpoint(a2, &v143, &__str))
                    {
                      std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireParamCommand");
                      std::string::basic_string[abi:ne200100]<0>(&v149, "expected destination endpoint in 'wireParam' command");
                      DSPGraph::ThrowException(1886548769, &v155, 1030, &buf, &v149);
                    }

                    v155.__r_.__value_.__s.__data_[0] = 0;
                    DSPGraph::Interpreter::parseBool(&v143, &v155.__r_.__value_.__l.__data_, v41);
                    DSPGraph::Graph::connectParams(a2[1], __p, &__str, v155.__r_.__value_.__s.__data_[0]);
LABEL_317:
                    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v140.__r_.__value_.__l.__data_);
                    }

LABEL_319:
                    if (SHIBYTE(v142) < 0)
                    {
                      operator delete(v141);
                    }

                    goto LABEL_321;
                  }

LABEL_201:
                  if (v141 != 28514 || BYTE2(v141) != 120)
                  {
                    goto LABEL_205;
                  }

LABEL_215:
                  (*(*a2 + 2))(a2, &v143);
                  goto LABEL_317;
                }

LABEL_58:
                if (HIBYTE(v142) != 12)
                {
                  if (HIBYTE(v142) != 14)
                  {
                    if (HIBYTE(v142) != 17)
                    {
                      goto LABEL_205;
                    }

                    v30 = &v141;
                    goto LABEL_62;
                  }

                  if (v141 != 0x7061724765726977 || *(&v141 + 6) != 0x6D61726150687061)
                  {
                    goto LABEL_205;
                  }

LABEL_153:
                  LODWORD(v149.__r_.__value_.__l.__data_) = 0;
                  if ((DSPGraph::Interpreter::parse4cc(&v143, &v149.__r_.__value_.__l.__data_, 1) & 1) == 0)
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&__str, "parseWireGraphParamCommand");
                    std::string::basic_string[abi:ne200100]<0>(&v155, "expected parameter ID in 'wireGraphParam' command");
                    DSPGraph::ThrowException(1886548769, __p, 1057, &__str, &v155);
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  LODWORD(v135) = 0;
                  if (!DSPGraph::Interpreter::parseParamEndpoint(a2, &v143, __p))
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v155, "parseWireGraphParamCommand");
                    std::string::basic_string[abi:ne200100]<0>(&buf, "expected endpoint in 'wireGraphParam' command");
                    DSPGraph::ThrowException(1886548769, &__str, 1062, &v155, &buf);
                  }

                  DSPGraph::Graph::connectParameter(a2[1], v149.__r_.__value_.__l.__data_, __p);
                  goto LABEL_317;
                }

                if (v141 != 0x706F725065726977 || DWORD2(v141) != 2037674597)
                {
                  goto LABEL_205;
                }

LABEL_161:
                __p[0] = 0;
                __p[1] = 0;
                LODWORD(v135) = 0;
                memset(&__str, 0, 20);
                if (!DSPGraph::Interpreter::parsePropertyEndpoint(a2, &v143, __p))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&buf, "parseWirePropertyCommand");
                  std::string::basic_string[abi:ne200100]<0>(&v149, "expected source endpoint in 'wireProperty' command");
                  DSPGraph::ThrowException(1886548769, &v155, 1042, &buf, &v149);
                }

                if (!DSPGraph::Interpreter::parsePropertyEndpoint(a2, &v143, &__str))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&buf, "parseWirePropertyCommand");
                  std::string::basic_string[abi:ne200100]<0>(&v149, "expected destination endpoint in 'wireProperty' command");
                  DSPGraph::ThrowException(1886548769, &v155, 1045, &buf, &v149);
                }

                v155.__r_.__value_.__s.__data_[0] = 0;
                DSPGraph::Interpreter::parseBool(&v143, &v155.__r_.__value_.__l.__data_, v54);
                DSPGraph::Graph::connectProperties(a2[1], __p, &__str, v155.__r_.__value_.__s.__data_[0]);
                goto LABEL_317;
              }

LABEL_193:
              LODWORD(v149.__r_.__value_.__l.__data_) = 0;
              if ((DSPGraph::Interpreter::parse4cc(&v143, &v149.__r_.__value_.__l.__data_, 1) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&__str, "parseParamCommand");
                std::string::basic_string[abi:ne200100]<0>(&v155, "expected parameter ID in 'param' command");
                DSPGraph::ThrowException(1886548769, __p, 826, &__str, &v155);
              }

              DSPGraph::skipspace(&v143, v66);
              __p[0] = 0;
              v68 = strtof(v143, __p);
              v69 = __p[0];
              if (__p[0] == v143)
              {
LABEL_338:
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&__str, "parseParamCommand");
                std::string::basic_string[abi:ne200100]<0>(&v155, "expected parameter initial value in 'param' command");
                DSPGraph::ThrowException(1886548769, __p, 830, &__str, &v155);
              }

              v70 = v68;
              if (fabsf(v68) == INFINITY)
              {
                if (*__error())
                {
                  goto LABEL_338;
                }

                v69 = __p[0];
              }

              v143 = v69;
              v72 = DSPGraph::Interpreter::match(&v143, "out", v67);
              if ((v72 & 1) == 0)
              {
                DSPGraph::Interpreter::match(&v143, "in", v71);
              }

              DSPGraph::Graph::addParameter(a2[1], v149.__r_.__value_.__l.__data_, v70, v72);
              goto LABEL_317;
            }

LABEL_182:
            if (v141 != 1701996919)
            {
              goto LABEL_205;
            }

LABEL_183:
            __p[0] = 0;
            __p[1] = 0;
            *&v135 = 0;
            memset(&__str, 0, sizeof(__str));
            v150 = v26;
            v151 = 0;
            v129 = a2;
            if ((DSPGraph::Interpreter::parsePortDesc(&v150, __p, (&v151 + 4)) & 1) == 0)
            {
              memset(&v155, 0, sizeof(v155));
              strlcpy(&v155, v150, 0x18uLL);
              std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v149, "parseWireCommand");
              DSPGraph::strprintf("source port description parse failed. {%s}", &v155);
            }

            if ((DSPGraph::Interpreter::parsePortDesc(&v150, &__str.__r_.__value_.__l.__data_, &v151) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireCommand");
              std::string::basic_string[abi:ne200100]<0>(&v149, "destination port description parse failed.");
              DSPGraph::ThrowException(1886548769, &v155, 983, &buf, &v149);
            }

            v60 = a2[1];
            v61 = HIDWORD(v151);
            if (HIDWORD(v151))
            {
              v62 = 0;
            }

            else
            {
              v86 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 80, __p);
              if (v86)
              {
                v62 = (v86 + 5);
              }

              else
              {
                v62 = 0;
              }
            }

            v87 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 98, __p);
            if (v87)
            {
              v88 = v87[5];
            }

            else
            {
              v88 = 0;
            }

            if (!(v88 | v62))
            {
              std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireCommand");
              std::operator+<char>();
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v147, &v146, " index ");
              std::to_string(&v145, v61);
              if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v118 = &v145;
              }

              else
              {
                v118 = v145.__r_.__value_.__r.__words[0];
              }

              if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v145.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v145.__r_.__value_.__l.__size_;
              }

              v120 = std::string::append(&v147, v118, size);
              v121 = *&v120->__r_.__value_.__l.__data_;
              v148.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
              *&v148.__r_.__value_.__l.__data_ = v121;
              v120->__r_.__value_.__l.__size_ = 0;
              v120->__r_.__value_.__r.__words[2] = 0;
              v120->__r_.__value_.__r.__words[0] = 0;
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v149, &v148, " not found");
              DSPGraph::ThrowException(1852204065, &v155, 988, &buf, &v149);
            }

            v89 = v151;
            if (v151)
            {
              v90 = 0;
            }

            else
            {
              v91 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 80, &__str);
              if (v91)
              {
                v90 = (v91 + 5);
              }

              else
              {
                v90 = 0;
              }
            }

            v92 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 98, &__str);
            if (v92)
            {
              v93 = v92[5];
            }

            else
            {
              v93 = 0;
            }

            if (!(v93 | v90))
            {
              std::string::basic_string[abi:ne200100]<0>(&v155, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireCommand");
              std::operator+<char>();
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v147, &v146, " index ");
              std::to_string(&v145, v89);
              if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v122 = &v145;
              }

              else
              {
                v122 = v145.__r_.__value_.__r.__words[0];
              }

              if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v123 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v123 = v145.__r_.__value_.__l.__size_;
              }

              v124 = std::string::append(&v147, v122, v123);
              v125 = *&v124->__r_.__value_.__l.__data_;
              v148.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
              *&v148.__r_.__value_.__l.__data_ = v125;
              v124->__r_.__value_.__l.__size_ = 0;
              v124->__r_.__value_.__r.__words[2] = 0;
              v124->__r_.__value_.__r.__words[0] = 0;
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v149, &v148, " not found");
              DSPGraph::ThrowException(1852204065, &v155, 994, &buf, &v149);
            }

            memset(&v155, 0, sizeof(v155));
            v147.__r_.__value_.__r.__words[0] = v150;
            if (DSPGraph::Interpreter::parseString(&v147, &v155) && DSPGraph::Graph::getFormat(v129[1], &v155, v132))
            {
              *(v129 + 184) = 0;
              v94 = DSPGraph::Graph::connect(v129[1], v88, v93, v61, v89, v62, v90);
              DSPGraph::Wire::setGlobalFormat(v94, *v132);
              v143 = v147.__r_.__value_.__r.__words[0];
              goto LABEL_254;
            }

            if (DSPGraph::Interpreter::parseFormat(&v150, (v129 + 16)))
            {
              v95 = v129;
              *(v129 + 184) = 1;
              v129[22] = 0;
              goto LABEL_253;
            }

            if (*v132)
            {
              v96 = DSPGraph::Graph::connect(v129[1], v88, v93, v61, v89, v62, v90);
              DSPGraph::Wire::setGlobalFormat(v96, *v132);
            }

            else
            {
              v95 = v129;
              if (*(v129 + 184) != 1)
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v149, "parseWireCommand");
                std::string::basic_string[abi:ne200100]<0>(&v148, "expected format in 'wire' command");
                DSPGraph::ThrowException(1886548769, &buf, 1019, &v149, &v148);
              }

LABEL_253:
              DSPGraph::Graph::connect(v95[1], v88, v93, v61, v89, (v95 + 16), v62, v90);
            }

LABEL_254:
            if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v155.__r_.__value_.__l.__data_);
            }

            a2 = v129;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if ((SBYTE7(v135) & 0x80000000) == 0)
            {
              goto LABEL_317;
            }

            v65 = __p[0];
LABEL_192:
            operator delete(v65);
            goto LABEL_317;
          }

          if (HIBYTE(v142) != 2)
          {
            if (HIBYTE(v142) != 3)
            {
              goto LABEL_205;
            }

            if (v141 == 30063 && BYTE2(v141) == 116)
            {
              goto LABEL_86;
            }

            goto LABEL_201;
          }

          v42 = v141;
LABEL_165:
          if (v42 == 28265)
          {
            goto LABEL_187;
          }

          goto LABEL_205;
        }

        if (HIBYTE(v142) > 0xBu)
        {
          goto LABEL_58;
        }

        if (HIBYTE(v142) != 8)
        {
          goto LABEL_92;
        }

        if (v141 != 0x79747265706F7270)
        {
          goto LABEL_205;
        }

LABEL_168:
        LODWORD(v147.__r_.__value_.__l.__data_) = 0;
        LOBYTE(__p[0]) = 0;
        BYTE8(v135) = 0;
        memset(&v148, 0, sizeof(v148));
        if ((DSPGraph::Interpreter::parse4cc(&v143, &v147.__r_.__value_.__l.__data_, 1) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v155, "parsePropertyCommand");
          std::string::basic_string[abi:ne200100]<0>(&buf, "expected property ID in 'property' command");
          DSPGraph::ThrowException(1886548769, &__str, 852, &v155, &buf);
        }

        if (DSPGraph::Interpreter::match(&v143, "out", v55))
        {
LABEL_170:
          v57 = 1;
        }

        else
        {
          if (!DSPGraph::Interpreter::match(&v143, "in", v56))
          {
            DSPGraph::skipspace(&v143, v75);
            if (*v143)
            {
              DSPGraph::skipspace(&v143, v76);
              v127 = a5;
              v77 = v143;
              memset(&v155, 0, sizeof(v155));
              v78 = *v143;
              if (*v143)
              {
                do
                {
                  v79 = v78;
                  if (v78 < 0)
                  {
                    v80 = __maskrune(v78, 0x4000uLL);
                  }

                  else
                  {
                    v80 = *(MEMORY[0x1E69E9830] + 4 * v78 + 60) & 0x4000;
                  }

                  if (v80)
                  {
                    break;
                  }

                  std::string::push_back(&v155, v79);
                  v81 = *++v77;
                  v78 = v81;
                }

                while (v81);
                v82 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
                v83 = v155.__r_.__value_.__l.__size_;
                v84 = v155.__r_.__value_.__r.__words[0];
              }

              else
              {
                v83 = 0;
                v84 = 0;
                v82 = 0;
              }

              v143 = v77;
              if ((v82 & 0x80u) == 0)
              {
                v97 = &v155;
              }

              else
              {
                v97 = v84;
              }

              if ((v82 & 0x80u) == 0)
              {
                v98 = v82;
              }

              else
              {
                v98 = v83;
              }

              if (v98 < 2 || (LOWORD(v97->__r_.__value_.__l.__data_) == 30768 ? (v99 = (v98 & 1) == 0) : (v99 = 0), !v99))
              {
LABEL_368:
                std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&buf, "parsePropertyValue");
                std::string::basic_string[abi:ne200100]<0>(&v149, "bad property value hexadecimal formatting");
                DSPGraph::ThrowException(1886548769, &__str, 372, &buf, &v149);
              }

              if (v98 == 2)
              {
                v100 = 0;
              }

              else
              {
                v101 = &v97->__r_.__value_.__s.__data_[2];
                v102 = v98 - 2;
                do
                {
                  v103 = *v101;
                  if (v103 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v103 + 60) & 0x10000) == 0)
                  {
                    goto LABEL_368;
                  }

                  ++v101;
                  --v102;
                }

                while (v102);
                v100 = (v98 - 2) >> 1;
              }

              v148.__r_.__value_.__l.__size_ = 0;
              std::vector<unsigned char>::reserve(&v148, v100);
              v104 = v98 - 2;
              if (v98 != 2)
              {
                v105 = &v97->__r_.__value_.__s.__data_[2];
                v106 = v148.__r_.__value_.__l.__size_;
                v130 = a2;
                v131 = v148.__r_.__value_.__r.__words[2];
                __src = v148.__r_.__value_.__r.__words[0];
                do
                {
                  *(&__str.__r_.__value_.__s + 23) = 2;
                  LOWORD(__str.__r_.__value_.__l.__data_) = *v105;
                  __str.__r_.__value_.__s.__data_[2] = 0;
                  v107 = std::stoul(&__str, 0, 16);
                  if (v107 >= 0x100)
                  {
                    v148.__r_.__value_.__l.__size_ = v106;
                    v148.__r_.__value_.__r.__words[2] = v131;
                    v148.__r_.__value_.__r.__words[0] = __src;
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "numerical cast overflow: could not retain value in conversion type");
                    exception->__vftable = (MEMORY[0x1E69E55C0] + 16);
                  }

                  if (v106 >= v131)
                  {
                    v108 = (v106 - __src);
                    v109 = v106 - __src + 1;
                    if (v109 < 0)
                    {
                      v148.__r_.__value_.__l.__size_ = v106;
                      v148.__r_.__value_.__r.__words[2] = v131;
                      v148.__r_.__value_.__r.__words[0] = __src;
                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v110 = v131 - __src;
                    if (2 * (v131 - __src) > v109)
                    {
                      v109 = 2 * v110;
                    }

                    if (v110 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v111 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v111 = v109;
                    }

                    if (v111)
                    {
                      operator new();
                    }

                    v131 = 0;
                    *v108 = v107;
                    v106 = v108 + 1;
                    memcpy(0, __src, v108);
                    if (__src)
                    {
                      operator delete(__src);
                    }

                    __src = 0;
                    a2 = v130;
                  }

                  else
                  {
                    *v106++ = v107;
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  v105 += 2;
                  v104 -= 2;
                }

                while (v104);
                v148.__r_.__value_.__l.__size_ = v106;
                v148.__r_.__value_.__r.__words[2] = v131;
                v148.__r_.__value_.__r.__words[0] = __src;
              }

              if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v155.__r_.__value_.__l.__data_);
              }

              a5 = v127;
              if (BYTE8(v135) == 1)
              {
                std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_, v148.__r_.__value_.__l.__size_ - v148.__r_.__value_.__r.__words[0]);
              }

              else
              {
                __p[0] = 0;
                __p[1] = 0;
                *&v135 = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_, v148.__r_.__value_.__l.__size_ - v148.__r_.__value_.__r.__words[0]);
                BYTE8(v135) = 1;
              }

              if (DSPGraph::Interpreter::match(&v143, "out", v112))
              {
                goto LABEL_170;
              }

              DSPGraph::Interpreter::match(&v143, "in", v113);
            }
          }

          v57 = 0;
        }

        v114 = a2[1];
        data = v147.__r_.__value_.__l.__data_;
        std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](&__str, __p);
        DSPGraph::Graph::addProperty(v114, data, &__str, v57);
        if (v153 == 1 && __str.__r_.__value_.__r.__words[0])
        {
          __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v148.__r_.__value_.__r.__words[0])
        {
          operator delete(v148.__r_.__value_.__l.__data_);
        }

        if (BYTE8(v135) != 1)
        {
          goto LABEL_317;
        }

        v65 = __p[0];
        if (!__p[0])
        {
          goto LABEL_317;
        }

        goto LABEL_192;
      }

      v28 = *(&v141 + 1);
      if (*(&v141 + 1) > 4)
      {
        if (*(&v141 + 1) != 5)
        {
          if (*(&v141 + 1) == 6)
          {
            if (*v141 == 1886680431 && *(v141 + 4) == 29813)
            {
LABEL_86:
              DSPGraph::Interpreter::parseUInt64(&v143, &v149.__r_.__value_.__l.__data_, v22);
              __p[0] = 0;
              __p[1] = 0;
              *&v135 = 0;
              if (DSPGraph::Interpreter::parseString(&v143, __p))
              {
                v38 = a2[1];
                if ((SBYTE7(v135) & 0x80u) == 0)
                {
                  v39 = __p;
                }

                else
                {
                  v39 = __p[0];
                }

                std::string::basic_string[abi:ne200100]<0>(&__str, v39);
                DSPGraph::Graph::addOutput(v38, &__str);
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v155, "parseGraphOutputCommand");
              std::string::basic_string[abi:ne200100]<0>(&buf, "expected name in 'output' command");
              DSPGraph::ThrowException(1886548769, &__str, 817, &v155, &buf);
            }

LABEL_205:
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "order"))
            {
              DSPGraph::Interpreter::parseOrderCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "set"))
            {
              DSPGraph::Interpreter::parseSetCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "beginSubset"))
            {
              DSPGraph::Interpreter::parseBeginSubsetCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "endSubset"))
            {
              DSPGraph::Interpreter::parseEndSubsetCommand(a2, v74);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "graphName"))
            {
              DSPGraph::Interpreter::parseGraphNameCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "componentName"))
            {
              DSPGraph::Interpreter::parseComponentNameCommand(&v143, v85);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "format"))
            {
              DSPGraph::Interpreter::parseNamedFormatCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "jack"))
            {
              DSPGraph::Interpreter::parseJackCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "record"))
            {
              DSPGraph::Interpreter::parseRecordCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "inject"))
            {
              DSPGraph::Interpreter::parseInjectCommand(a2, &v143);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "analysis"))
            {
              DSPGraph::Interpreter::parseAnalysisCommand(a2, &v143);
            }

            else
            {
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v141, "analysisDefine"))
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&__str, "interpretLine");
                v126 = &v141;
                if (v142 < 0)
                {
                  v126 = v141;
                }

                DSPGraph::strprintf("unknown command name '%s'\n", v126);
              }

              DSPGraph::Interpreter::parseAnalysisDefineCommand(a2, &v143);
            }

            goto LABEL_317;
          }

          goto LABEL_101;
        }

        if (*v141 == 1970302569 && *(v141 + 4) == 116)
        {
LABEL_187:
          DSPGraph::Interpreter::parseUInt64(&v143, &v149.__r_.__value_.__l.__data_, v22);
          __p[0] = 0;
          __p[1] = 0;
          *&v135 = 0;
          if (DSPGraph::Interpreter::parseString(&v143, __p))
          {
            v63 = a2[1];
            if ((SBYTE7(v135) & 0x80u) == 0)
            {
              v64 = __p;
            }

            else
            {
              v64 = __p[0];
            }

            std::string::basic_string[abi:ne200100]<0>(&__str, v64);
            DSPGraph::Graph::addInput(v63, &__str);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v155, "parseGraphInputCommand");
          std::string::basic_string[abi:ne200100]<0>(&buf, "expected name in 'input' command");
          DSPGraph::ThrowException(1886548769, &__str, 805, &v155, &buf);
        }
      }

      else
      {
        if (*(&v141 + 1) == 2)
        {
          v42 = *v141;
          goto LABEL_165;
        }

        if (*(&v141 + 1) == 3)
        {
          if (*v141 == 30063 && *(v141 + 2) == 116)
          {
            goto LABEL_86;
          }

          if ((v142 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v28 = *(&v141 + 1);
        }

LABEL_101:
        if (v28 != 5)
        {
LABEL_113:
          if (v28 == 8)
          {
            if (*v141 == 0x79747265706F7270)
            {
              goto LABEL_168;
            }

            if ((v142 & 0x8000000000000000) == 0)
            {
              goto LABEL_179;
            }
          }

          v45 = *(&v141 + 1);
          if (*(&v141 + 1) == 3)
          {
            if (*v141 == 28514 && *(v141 + 2) == 120)
            {
              goto LABEL_215;
            }

            if ((v142 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v45 = *(&v141 + 1);
          }

          if (v45 == 4)
          {
            if (*v141 == 1701996919)
            {
              goto LABEL_183;
            }

            if ((v142 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }
          }

          v47 = *(&v141 + 1);
          if (*(&v141 + 1) == 9)
          {
            if (*v141 == 0x6172615065726977 && *(v141 + 8) == 109)
            {
              goto LABEL_98;
            }

            if ((v142 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v47 = *(&v141 + 1);
          }

          if (v47 == 12)
          {
            if (*v141 == 0x706F725065726977 && *(v141 + 8) == 2037674597)
            {
              goto LABEL_161;
            }

            if ((v142 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }
          }

          v50 = *(&v141 + 1);
          if (*(&v141 + 1) == 14)
          {
            if (*v141 == 0x7061724765726977 && *(v141 + 6) == 0x6D61726150687061)
            {
              goto LABEL_153;
            }

            if ((v142 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v50 = *(&v141 + 1);
          }

          if (v50 != 17)
          {
            goto LABEL_205;
          }

          v30 = v141;
LABEL_62:
          v31 = *v30;
          v32 = *(v30 + 1);
          v33 = *(v30 + 16);
          if (v31 != 0x7061724765726977 || v32 != 0x747265706F725068 || v33 != 121)
          {
            goto LABEL_205;
          }

          DSPGraph::Interpreter::parseWireGraphPropertyCommand(a2, &v143);
          goto LABEL_317;
        }
      }

      if (*v141 == 1634886000 && *(v141 + 4) == 109)
      {
        goto LABEL_193;
      }

      v28 = *(&v141 + 1);
      goto LABEL_113;
    }

LABEL_321:
    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }
  }

  DSPGraph::Graph::pruneSubsets(a2[1]);
  v116 = a2[1];
  a2[1] = 0;
  *a5 = v116;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }
}

void sub_18F632680()
{
  __cxa_end_catch();
  if (v1 < 0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x18F6326B0);
}

void sub_18F6326A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F6326B0);
  }

  __clang_call_terminate(a1);
}

unint64_t DSPGraph::Graph::generateSerialNumber(DSPGraph::Graph *this)
{
  {
    std::random_device::random_device[abi:ne200100](&v5);
    v4 = MEMORY[0x193ADEEE0](&v5);
    DSPGraph::Graph::generateSerialNumber(void)::sSerialNo = DSPGraph::intHash(v4);
    std::random_device::~random_device(&v5);
  }

  std::mutex::lock(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  v1 = atomic_load(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  atomic_store(v1 + 1 + (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) | (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) << 63)), &DSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  v2 = atomic_load(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  std::mutex::unlock(&DSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  return v2;
}

void sub_18F63278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device argC, std::random_device a11, int a13, std::random_device a12)
{
  std::random_device::~random_device(&argC);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::AUBox::getProperty(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, unsigned int *a5, void *outData)
{
  ioDataSize = *a5;
  result = AudioUnitGetProperty(this[106], a2, a3, a4, outData, &ioDataSize);
  *a5 = ioDataSize;
  return result;
}

uint64_t AUPBRegister(uint64_t a1, uint64_t a2, OpaqueAUPB **a3)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  result = 4294967246;
  if (a1)
  {
    if (a3)
    {
      v7 = [+[AUPBServer sharedInstance](AUPBServer registerBlock:"registerBlock:withUserData:" withUserData:a1, a2];
      result = 0;
      *a3 = v7;
    }
  }

  return result;
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

void DSPGraph::ThrowException(int a1, __int128 *a2, int a3, __int128 *a4, __int128 *a5)
{
  exception = __cxa_allocate_exception(0x60uLL);
  v11 = exception;
  *exception = &unk_1F032CEF8;
  *(exception + 2) = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((exception + 16), *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(exception + 4) = *(a2 + 2);
    *(exception + 1) = v12;
  }

  *(v11 + 10) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11 + 2, *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(v11 + 8) = *(a4 + 2);
    *(v11 + 3) = v13;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11 + 3, *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    *(v11 + 11) = *(a5 + 2);
    *(v11 + 72) = v14;
  }
}

void sub_18F632B34(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  std::exception::~exception(v1);
  __cxa_free_exception(v3);
  _Unwind_Resume(a1);
}

void DSPGraph::Exception::~Exception(std::exception *this)
{
  this->__vftable = &unk_1F032CEF8;
  if (SHIBYTE(this[11].__vftable) < 0)
  {
    operator delete(this[9].__vftable);
  }

  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F032CEF8;
  if (SHIBYTE(this[11].__vftable) < 0)
  {
    operator delete(this[9].__vftable);
  }

  if (SHIBYTE(this[8].__vftable) < 0)
  {
    operator delete(this[6].__vftable);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AUPBPropertiesChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  [+[AUPBServer sharedInstance](AUPBServer processingBlock:"processingBlock:properties:count:changedWithQualifierData:length:" properties:a1 count:a3 changedWithQualifierData:a2 length:a4, a5];
  return 0;
}

void DSPGraph::Graph::getFormatNames(DSPGraph::Graph *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 78);
  if (v4)
  {
    if (v4 < 0xAAAAAAAAAAAAAABLL)
    {
      v8.__end_cap_.__value_ = a2;
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v5 = (this + 616);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = *(a2 + 8);
    if (v6 >= *(a2 + 16))
    {
      v7 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, v5 + 1);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a2, v5 + 1);
      v7 = v6 + 1;
    }

    *(a2 + 8) = v7;
  }
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t DSPGraph::Graph::getFormat(int8x8_t *a1, void *a2, void *a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v7 = a1[76];
  if (v7)
  {
    v8 = v6;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v7)
      {
        v11 = v6 % *&v7;
      }
    }

    else
    {
      v11 = (*&v7 - 1) & v6;
    }

    v12 = *(*&a1[75] + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a2))
            {
              *a3 = v13 + 5;
              return 1;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              return 0;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  return 0;
}

void DSPGraph::Graph::configure(uint64_t this)
{
  if (*(this + 761))
  {
    return;
  }

  if (!*(this + 688) || !*(this + 692))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(v227, "configure");
    std::string::basic_string[abi:ne200100]<0>(&v226, "slice duration must be set before configure.");
    DSPGraph::ThrowException(1718775073, __p, 716, v227, &v226);
  }

  v2 = *(this + 24);
  for (i = (this + 24); v2; v2 = *v2)
  {
    v3 = v2[2];
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
    if (((v5 - v4) & 0x1FFFFFFFE0) != 0)
    {
      if (v5 == v4)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v227, "in");
        v193 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v193 = *v193;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v193, (*(v3 + 72) - *(v3 + 64)) >> 5, 0);
      }

      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (!(*(*(v4 + v6) + 40))())
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(v227, "checkConnectivity");
          std::to_string(&v219, v7);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v220, "input port ", &v219);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v221, &v220, " on '");
          v213 = v2[2];
          v214 = (v213 + 32);
          if (*(v213 + 55) < 0)
          {
            v214 = *v214;
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v222, &v221, v214);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v226, &v222, "' box is not connected to anything");
          DSPGraph::ThrowException(1970168609, __p, 2709, v227, &v226);
        }

        ++v7;
        v3 = v2[2];
        v4 = *(v3 + 64);
        if (v7 >= ((*(v3 + 72) - v4) >> 5))
        {
          break;
        }

        v6 += 32;
      }
    }

    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    if (((v9 - v8) & 0x1FFFFFFFE0) != 0)
    {
      if (v9 == v8)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v227, "out");
        v194 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v194 = *v194;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v194, (*(v3 + 96) - *(v3 + 88)) >> 5, 0);
      }

      v10 = 0;
      v11 = 0;
      while (1)
      {
        if (!(*(*(v8 + v10) + 40))())
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(v227, "checkConnectivity");
          std::to_string(&v219, v11);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v220, "output port ", &v219);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v221, &v220, " on '");
          v215 = v2[2];
          v216 = (v215 + 32);
          if (*(v215 + 55) < 0)
          {
            v216 = *v216;
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v222, &v221, v216);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v226, &v222, "' box is not connected to anything");
          DSPGraph::ThrowException(1970168609, __p, 2714, v227, &v226);
        }

        ++v11;
        v8 = *(v2[2] + 88);
        if (v11 >= ((*(v2[2] + 96) - v8) >> 5))
        {
          break;
        }

        v10 += 32;
      }
    }
  }

  for (j = *(this + 64); j; j = *j)
  {
    DSPGraph::Wire::initializeFormat(j[2]);
  }

  *__p = 0u;
  v224 = 0u;
  v225 = 1065353216;
  for (k = *(this + 344); k; k = *k)
  {
    if (!std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(__p[0], __p[1], k[2]))
    {
      operator new();
    }
  }

  for (m = *(this + 384); m; m = *m)
  {
    v15 = m[2];
    if (((*(*v15 + 712))(v15) & 1) == 0 && !std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(__p[0], __p[1], v15))
    {
      operator new();
    }
  }

  v218 = this;
  for (n = *(this + 232); n; n = *n)
  {
    v17 = *(n[2] + 32);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = v17[2];
        v22 = *(v21 + 64);
        v23 = *(v21 + 72);
        if (v22 == v23)
        {
          v26 = v20;
        }

        else
        {
          v24 = *(v21 + 64);
          do
          {
            if (!(*(*v24 + 40))(v24))
            {
              std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v226, "createIsoGroups");
              v200 = (v21 + 32);
              if (*(v21 + 55) < 0)
              {
                v200 = *v200;
              }

              v201 = (*(*v21 + 16))(v21);
              DSPGraph::strprintf("box %s %s input port is not connected.", v200, v201);
            }

            v25 = **((*(*v24 + 40))(v24) + 120);
            if (v20)
            {
              v19 = *(*((*(*v24 + 40))(v24) + 120) + 40);
              v18 = v25;
            }

            else
            {
              if (v18 != v25)
              {
                std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v226, "createIsoGroups");
                v206 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v206 = *v206;
                }

                v207 = (*(*v24 + 40))(v24);
                DSPGraph::strprintf("boxes within a group have different sample rates! group has sample rate %u, but box %s has sample rate %u on one of its input ports", v18, v206, **(v207 + 120));
              }

              if (*(*((*(*v24 + 40))(v24) + 120) + 40) != v19)
              {
                std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v226, "createIsoGroups");
                v204 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v204 = *v204;
                }

                v205 = (*(*v24 + 40))(v24);
                DSPGraph::strprintf("boxes within a group have different block sizes! group has block size %u, but box %s has block size %u on one of its input ports", v19, v204, *(*(v205 + 120) + 40));
              }
            }

            v26 = 0;
            LOBYTE(v20) = 0;
            v24 += 32;
            v22 += 32;
          }

          while (v24 != v23);
        }

        v27 = *(v21 + 88);
        v28 = *(v21 + 96);
        if (v27 == v28)
        {
          v20 = v26;
        }

        else
        {
          v29 = *(v21 + 88);
          do
          {
            if (!(*(*v29 + 40))(v29))
            {
              std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v226, "createIsoGroups");
              v202 = (v21 + 32);
              if (*(v21 + 55) < 0)
              {
                v202 = *v202;
              }

              v203 = (*(*v21 + 16))(v21);
              DSPGraph::strprintf("box %s %s output port is not connected.", v202, v203);
            }

            if (v26)
            {
              v18 = **((*(*v29 + 40))(v29) + 120);
              v19 = *(*((*(*v29 + 40))(v29) + 120) + 40);
            }

            else if (!(*(*v21 + 272))(v21))
            {
              if (v18 != **((*(*v29 + 40))(v29) + 120))
              {
                std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v226, "createIsoGroups");
                v208 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v208 = *v208;
                }

                v209 = (*(*v21 + 16))(v21);
                v210 = (*(*v29 + 40))(v29);
                DSPGraph::strprintf("boxes within a group have different sample rates! group has sample rate %u, but box %s %s has sample rate %u on one of its output ports", v18, v208, v209, **(v210 + 120));
              }

              if (*(*((*(*v29 + 40))(v29) + 120) + 40) != v19)
              {
                std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v226, "createIsoGroups");
                v211 = (v21 + 32);
                if (*(v21 + 55) < 0)
                {
                  v211 = *v211;
                }

                v212 = (*(*v29 + 40))(v29);
                DSPGraph::strprintf("boxes within a group have different block sizes! group has block size %u, but box %s has block size %u on one of its output ports", v19, v211, *(*(v212 + 120) + 40));
              }
            }

            v20 = 0;
            LOBYTE(v26) = 0;
            v29 += 32;
            v27 += 32;
          }

          while (v29 != v28);
        }

        v17 = *v17;
      }

      while (v17);
    }
  }

  *__p = 0u;
  v224 = 0u;
  v225 = 1065353216;
  v30 = i;
  v31 = *i;
  if (*i)
  {
    do
    {
      *(v31[2] + 745) = 0;
      v31 = *v31;
    }

    while (v31);
  }

  v32 = v218;
  v33 = *(v218 + 232);
  if (v33)
  {
    do
    {
      v34 = v33[2];
      *(v34 + 248) = 0;
      if (!*(v34 + 160))
      {
        v35 = 0x9DDFEA08EB382D69 * ((8 * (v34 & 0x1FFFFFFF) + 8) ^ HIDWORD(v34));
        v36 = 0x9DDFEA08EB382D69 * (HIDWORD(v34) ^ (v35 >> 47) ^ v35);
        v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
        if (__p[1])
        {
          v38 = vcnt_s8(__p[1]);
          v38.i16[0] = vaddlv_u8(v38);
          if (v38.u32[0] > 1uLL)
          {
            v39 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
            if (v37 >= __p[1])
            {
              v39 = v37 % __p[1];
            }
          }

          else
          {
            v39 = v37 & (__p[1] - 1);
          }

          v40 = *(__p[0] + v39);
          if (v40)
          {
            for (ii = *v40; ii; ii = *ii)
            {
              v42 = ii[1];
              if (v42 == v37)
              {
                if (ii[2] == v34)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                if (v38.u32[0] > 1uLL)
                {
                  if (v42 >= __p[1])
                  {
                    v42 %= __p[1];
                  }
                }

                else
                {
                  v42 &= __p[1] - 1;
                }

                if (v42 != v39)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

LABEL_76:
      v33 = *v33;
    }

    while (v33);
    v43 = v224;
    v32 = v218;
    for (*(v218 + 264) = *(v218 + 256); v43; v43 = *v43)
    {
      DSPGraph::IsoGroup::topologicalSort(v43[2], (v218 + 256));
    }
  }

  else
  {
    *(v218 + 264) = *(v218 + 256);
  }

  while (1)
  {
    v30 = *v30;
    if (!v30)
    {
      break;
    }

    if ((*(v30[2] + 745) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v227, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v226, "topologicalSort");
      v44 = v30[2];
      v45 = v44 + 32;
      if (v44[55] < 0)
      {
        v45 = *v45;
      }

      v46 = (*(*v44 + 16))(v44);
      DSPGraph::strprintf("%s %s box not connected", v45, v46);
    }
  }

  v47 = *(v32 + 256);
  v48 = *(v32 + 264);
  if (v47 != v48)
  {
    do
    {
      v49 = *v47++;
      DSPGraph::IsoGroup::checkIsochronicity(v49);
    }

    while (v47 != v48);
    v47 = *(v32 + 256);
    v48 = *(v32 + 264);
  }

  if (v47 == v48)
  {
    *(v32 + 766) = 1;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = v47;
    do
    {
      if (*(*v54 + 66))
      {
        v52 = *(*v54 + 67);
        v50 |= v52 > 1;
        ++v51;
        v53 = *(*v54 + 66);
      }

      ++v54;
    }

    while (v54 != v48);
    if (v51 == 1)
    {
      v55 = v52 * *(v32 + 692) == v53 * *(v32 + 688);
      v51 = 1;
    }

    else
    {
      v55 = 0;
    }

    if (((v51 < 2) & v50) == 1)
    {
      v56 = v55 & ~*(v32 + 760);
      *(v32 + 766) = v56 & 1;
      if ((v56 & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      *(v32 + 766) = v51 < 2;
      if (v51 > 1)
      {
LABEL_114:
        *(v32 + 763) = 0;
        goto LABEL_115;
      }
    }
  }

  if (((*(v32 + 288) - *(v32 + 280)) & 0x7FFFFFFF8) != 8 || ((*(v32 + 312) - *(v32 + 304)) & 0x7FFFFFFF8) != 8)
  {
    goto LABEL_114;
  }

  *(v32 + 763) = 1;
  if (v47 != v48)
  {
    do
    {
      v57 = *(*v47 + 28);
      v58 = *(*v47 + 29);
      while (v57 != v58)
      {
        v59 = *v57;
        if (((*(*v57 + 72) - *(*v57 + 64)) & 0x1FFFFFFFC0) != 0 || ((v59[12] - v59[11]) & 0x1FFFFFFFC0) != 0 || ((*(*v59 + 64))(v59) & 1) == 0)
        {
          *(v32 + 763) = 0;
          break;
        }

        v57 += 8;
      }

      ++v47;
    }

    while (v47 != v48);
    v47 = *(v32 + 256);
    v48 = *(v32 + 264);
  }

LABEL_115:
  v60 = *(v32 + 692);
  *(v32 + 696) = v60;
  if (v47 == v48)
  {
    *(v32 + 752) = 24000000.0 / v60;
    v67 = 1;
    *(v32 + 736) = 1;
    v61 = v60;
  }

  else
  {
    v61 = v60;
    v62 = v47;
    do
    {
      v63 = *(*v62 + 66);
      if (v63)
      {
        v64 = v61;
        v65 = *(*v62 + 66);
        do
        {
          v66 = v65;
          v65 = v64 % v65;
          v64 = v66;
        }

        while (v65);
        v61 = v61 / v66 * v63;
        *(v32 + 696) = v61;
      }

      ++v62;
    }

    while (v62 != v48);
    *(v32 + 752) = 24000000.0 / v61;
    v67 = 1;
    *(v32 + 736) = 1;
    v68 = v47;
    do
    {
      v69 = *v68;
      v70 = *(*v68 + 66);
      if (v70)
      {
        v71 = v61 / v70;
        v72 = v61 / v70 * *(v69 + 67);
        *(v69 + 37) = v72;
        *(v69 + 38) = v71;
        v73 = v67;
        if (v72)
        {
          v74 = v67;
          v75 = v72;
          do
          {
            v73 = v75;
            v75 = v74 % v75;
            v74 = v73;
          }

          while (v75);
        }

        v67 = v67 / v73 * v72;
        *(v32 + 736) = v67;
      }

      ++v68;
    }

    while (v68 != v48);
  }

  v76 = v60 + v61 * *(v32 + 688) - 1;
  v77 = v76 / v60;
  *(v32 + 720) = v76 / v60;
  v78 = (v32 + 712);
  *(v32 + 712) = v76 / v60;
  v79 = v67;
  if (v76 >= v60)
  {
    v80 = v67;
    do
    {
      v79 = v77;
      v77 = v80 % v77;
      v80 = v79;
    }

    while (v77);
  }

  *(v32 + 744) = v67 / v79;
  while (v47 != v48)
  {
    v81 = *v47;
    if (*(*v47 + 66))
    {
      v82 = *(v81 + 37);
      v83 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(*v78 / v82);
      v84 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((v82 + *v78 - 1) / v82);
      *(v81 + 70) = v83;
      *(v81 + 69) = v84;
      *(v81 + 39) = v82 * v84;
      v85 = *(v81 + 37);
      v86 = *(v81 + 14);
      if (v86)
      {
        v87 = 0;
        do
        {
          v88 = *(*(v86[2] + 848) + 296);
          v89 = *(v81 + 37);
          if (v88)
          {
            v90 = *(v81 + 37);
            do
            {
              v89 = v88;
              v88 = v90 % v88;
              v90 = v89;
            }

            while (v88);
          }

          if (v87 <= v85 - v89)
          {
            v87 = v85 - v89;
          }

          v86 = *v86;
        }

        while (v86);
      }

      else
      {
        v87 = 0;
      }

      if (*(v81 + 23) != *(v81 + 22))
      {
        v91 = *(v32 + 760) ? (v81 + 304) : (v32 + 712);
        v92 = *v91;
        if (v92)
        {
          v93 = *(v81 + 37);
          do
          {
            v94 = v92;
            v92 = v93 % v92;
            v93 = v94;
          }

          while (v92);
        }

        else
        {
          v94 = *(v81 + 37);
        }

        v95 = v85 - v94;
        if (v87 <= v95)
        {
          v87 = v95;
        }
      }
    }

    else
    {
      v87 = 0;
      *(v81 + 276) = 0;
      *(v81 + 39) = 0;
    }

    *(v81 + 40) = v87;
    *(v81 + 36) = 0;
    ++v47;
  }

  if (*(v32 + 766))
  {
    goto LABEL_253;
  }

  if ((*(v32 + 765) & 1) == 0)
  {
    v96 = *(v32 + 256);
    v97 = *(v32 + 264);
LABEL_252:
    while (v96 != v97)
    {
      v159 = *v96;
      v160 = *(*v96 + 264);
      if (v160)
      {
        v161 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v32 + 696) + *(v159 + 320) * v160 - 1) / *(v32 + 696));
        v162 = v161;
        v163 = *(v159 + 176);
        v164 = *(v159 + 184);
        if (v163 != v164)
        {
          v165 = v161 - 1;
          do
          {
            v166 = *v163;
            v167 = *(*v163 + 88);
            if (*(*v163 + 96) == v167)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v227, "out");
              v195 = (v166 + 32);
              if (*(v166 + 55) < 0)
              {
                v195 = *v195;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v195, (*(v166 + 96) - *(v166 + 88)) >> 5, 0);
            }

            v168 = *(*((*(*v167 + 40))(v167) + 120) + 20);
            if (*(v218 + 760))
            {
              v169 = 1;
            }

            else
            {
              v169 = *(v218 + 712);
            }

            v170 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v218 + 696) + *(v159 + 264) + *(v159 + 264) * (*(v218 + 712) + *(v159 + 320) + (*(v218 + 712) - 1) % v169) - 1) / *(v218 + 696));
            v171 = *(v166 + 88);
            if (*(v166 + 96) == v171)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v227, "out");
              v196 = (v166 + 32);
              if (*(v166 + 55) < 0)
              {
                v196 = *v196;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v196, (*(v166 + 96) - *(v166 + 88)) >> 5, 0);
            }

            v172 = (*(*v171 + 40))(v171);
            (*(*v166 + 680))(v166, (v170 + *(*(v172 + 120) + 20) - 1) / *(*(v172 + 120) + 20), (v165 + v168) / v168);
            ++v163;
          }

          while (v163 != v164);
        }

        v173 = *(v159 + 112);
        v32 = v218;
        if (v173)
        {
          v174 = v162 - 1;
          do
          {
            v175 = v173[2];
            v176 = *(v175 + 88);
            if (*(v175 + 96) == v176)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v227, "out");
              v197 = (v175 + 32);
              if (*(v175 + 55) < 0)
              {
                v197 = *v197;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v197, (*(v175 + 96) - *(v175 + 88)) >> 5, 0);
            }

            v177 = *(*((*(*v176 + 40))(v176) + 120) + 20);
            v178 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v218 + 696) + *(v159 + 264) + *(v159 + 264) * (*(*(v175 + 848) + 312) + *(v159 + 320) + (*(v218 + 712) - 1) % *(*(v175 + 848) + 296)) - 1) / *(v218 + 696));
            v179 = *(v175 + 88);
            if (*(v175 + 96) == v179)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v227, "out");
              v198 = (v175 + 32);
              if (*(v175 + 55) < 0)
              {
                v198 = *v198;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v198, (*(v175 + 96) - *(v175 + 88)) >> 5, 0);
            }

            v180 = (*(*v179 + 40))(v179);
            (*(*v175 + 680))(v175, (v178 + *(*(v180 + 120) + 20) - 1) / *(*(v180 + 120) + 20), (v174 + v177) / v177);
            v173 = *v173;
          }

          while (v173);
        }

        v181 = *(v159 + 200);
        v182 = *(v159 + 208);
        while (v181 != v182)
        {
          v183 = *v181;
          v184 = caulk::numeric::exceptional_cast<unsigned int,unsigned long long>((*(v218 + 696) + *(v159 + 264) + *(v159 + 264) * (*(v159 + 312) + (*(v218 + 712) - 1) % *(v159 + 296)) - 1) / *(v218 + 696));
          v185 = *(v183 + 64);
          if (*(v183 + 72) == v185)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v227, "in");
            v199 = (v183 + 32);
            if (*(v183 + 55) < 0)
            {
              v199 = *v199;
            }

            DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v199, (*(v183 + 72) - *(v183 + 64)) >> 5, 0);
          }

          v186 = (*(*v185 + 40))(v185);
          (*(*v183 + 680))(v183, (v184 + *(*(v186 + 120) + 20) - 1) / *(*(v186 + 120) + 20), 0);
          ++v181;
        }
      }

      ++v96;
    }

    goto LABEL_253;
  }

  v96 = *(v32 + 256);
  v97 = *(v32 + 264);
  if (*(v32 + 760))
  {
    goto LABEL_252;
  }

  *(v32 + 704) = 0;
  *(v32 + 720) = *(v32 + 712);
  if (v96 != v97)
  {
    do
    {
      v98 = *v96;
      v98[36] = 0;
      v99 = v98[22];
      v100 = v98[23];
      while (v99 != v100)
      {
        v101 = *v99++;
        *(v101 + 800) = 0;
        *(v101 + 784) = 0uLL;
      }

      v102 = v98[25];
      v103 = v98[26];
      while (v102 != v103)
      {
        v104 = *v102++;
        *(v104 + 800) = 0;
        *(v104 + 784) = 0uLL;
      }

      for (jj = v98[14]; jj; jj = *jj)
      {
        v106 = jj[2];
        *(v106 + 800) = 0;
        *(v106 + 784) = 0uLL;
      }

      for (kk = v98[19]; kk; kk = *kk)
      {
        v108 = kk[2];
        *(v108 + 800) = 0;
        *(v108 + 784) = 0uLL;
      }

      ++v96;
    }

    while (v96 != v97);
    v96 = *(v32 + 256);
    v97 = *(v32 + 264);
  }

  v109 = *(v32 + 744);
  if (v109)
  {
    v110 = 0;
    v111 = *(v32 + 280);
    v112 = *(v32 + 288);
    do
    {
      if (v111 != v112)
      {
        v113 = *v78;
        v114 = v111;
        do
        {
          v116 = *v114++;
          v115 = v116;
          v117 = *(v116 + 784) + v113;
          *(v116 + 784) = v117;
          v118 = *(v116 + 800);
          if (v118 > v117)
          {
            v117 = v118;
          }

          *(v115 + 800) = v117;
        }

        while (v114 != v112);
      }

      for (mm = v96; mm != v97; ++mm)
      {
        v120 = *mm;
        if (*(*mm + 264))
        {
          v121 = *(*(v120 + 8) + 720) + *(*(v120 + 8) + 704);
          v122 = *(v120 + 288);
          if (v121 <= v122)
          {
            LODWORD(v123) = 0;
          }

          else
          {
            v123 = (v121 + ~v122 + *(v120 + 296)) / *(v120 + 296);
          }

          if (v123 < *(v120 + 280) || v123 > *(v120 + 276))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(v227, "dryRunProcess");
            DSPGraph::strprintf("number of blocks to process is out of range  %u   %u %u", v123, *(v120 + 280), *(v120 + 276));
          }

          v124 = *(v120 + 296) * v123;
          v125 = *(v120 + 176);
          v126 = *(v120 + 184);
          while (v125 != v126)
          {
            v128 = *v125++;
            v127 = v128;
            v129 = *(v128 + 784) - v124;
            *(v128 + 784) = v129;
            v130 = *(v128 + 792);
            if (v129 >= v130)
            {
              v129 = v130;
            }

            *(v127 + 792) = v129;
          }

          for (nn = *(v120 + 112); nn; nn = *nn)
          {
            v132 = nn[2];
            v133 = *(v132 + 784) - v124;
            *(v132 + 784) = v133;
            if (v133 >= *(v132 + 792))
            {
              v133 = *(v132 + 792);
            }

            *(v132 + 792) = v133;
          }

          for (i1 = *(v120 + 152); i1; i1 = *i1)
          {
            v135 = i1[2];
            v136 = *(v135 + 784) + v124;
            *(v135 + 784) = v136;
            if (*(v135 + 800) > v136)
            {
              v136 = *(v135 + 800);
            }

            *(v135 + 800) = v136;
          }

          v137 = *(v120 + 200);
          v138 = *(v120 + 208);
          while (v137 != v138)
          {
            v140 = *v137++;
            v139 = v140;
            v141 = *(v140 + 784) + v124;
            *(v140 + 784) = v141;
            v142 = *(v140 + 800);
            if (v142 > v141)
            {
              v141 = v142;
            }

            *(v139 + 800) = v141;
          }

          *(v120 + 288) = v122 + v124;
        }
      }

      v143 = *(v32 + 304);
      v144 = *(v32 + 312);
      if (v143 != v144)
      {
        v145 = *v78;
        do
        {
          v147 = *v143++;
          v146 = v147;
          v148 = *(v147 + 784) - v145;
          *(v147 + 784) = v148;
          v149 = *(v147 + 792);
          if (v148 >= v149)
          {
            v148 = v149;
          }

          *(v146 + 792) = v148;
        }

        while (v143 != v144);
      }

      *(v32 + 704) += *(v32 + 720);
      ++v110;
    }

    while (v110 != v109);
  }

  while (v96 != v97)
  {
    v150 = *v96;
    if (*(*v96 + 264))
    {
      v151 = v150[22];
      v152 = v150[23];
      while (v151 != v152)
      {
        v153 = *v151++;
        DSPGraph::RingBufferBox::configureFromDryRun(v153);
      }

      for (i2 = v150[14]; i2; i2 = *i2)
      {
        DSPGraph::RingBufferBox::configureFromDryRun(i2[2]);
      }

      for (i3 = v150[19]; i3; i3 = *i3)
      {
        DSPGraph::RingBufferBox::configureFromDryRun(i3[2]);
      }

      v156 = v150[25];
      v157 = v150[26];
      while (v156 != v157)
      {
        v158 = *v156++;
        DSPGraph::RingBufferBox::configureFromDryRun(v158);
      }

      v150[36] = 0;
    }

    ++v96;
  }

  *(v32 + 704) = 0;
LABEL_253:
  for (i4 = *(v32 + 576); i4; i4 = *i4)
  {
    v188 = i4[9];
    v189 = i4[10];
    while (v188 != v189)
    {
      if ((i4[8] & 1) == 0 && *(i4 + 56) == 1)
      {
        if ((i4[5] - i4[4]) >> 32)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
          std::string::basic_string[abi:ne200100]<0>(v227, "setGraphPropertiesInitialValues");
          DSPGraph::strprintf("graph property size is too large to accept: %zu bytes > %u", i4[5] - i4[4], -1);
        }

        (*(**v188 + 312))(*v188, v188[2], v188[3], v188[4]);
      }

      v188 += 6;
    }
  }

  for (i5 = *(v32 + 536); i5; i5 = *i5)
  {
    v191 = *(i5 + 5);
    v192 = *(i5 + 6);
    while (v191 != v192)
    {
      if ((i5[8] & 1) == 0)
      {
        (*(**v191 + 80))(*v191, v191[2], v191[3], v191[4], 0, i5[7]);
      }

      v191 += 6;
    }
  }

  *(v32 + 761) = 1;
}

void sub_18F635084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 113) < 0)
  {
    operator delete(*(v46 - 136));
  }

  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Wire::initializeFormat(DSPGraph::Wire *this)
{
  if (*(this + 64) != 1)
  {
    if (!*(this + 5))
    {
      std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v10, "initializeFormat");
      v4 = *(*(this + 1) + 8);
      v5 = v4 + 32;
      if (v4[55] < 0)
      {
        v5 = *v5;
      }

      v6 = (*(*v4 + 16))(v4);
      DSPGraph::strprintf("box %s %s output %u is not connected", v5, v6, *(*(this + 1) + 24));
    }

    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Wire.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "initializeFormat");
    v7 = *(*(this + 1) + 8);
    v8 = v7 + 32;
    if (v7[55] < 0)
    {
      v8 = *v8;
    }

    v9 = (*(*v7 + 16))(v7);
    DSPGraph::strprintf("no format was ever set on the wire from box %s %s output %u", v8, v9, *(*(this + 1) + 24));
  }

  result = (*(**(this + 1) + 48))(*(this + 1), *(this + 15));
  for (i = *(this + 4); i; i = *i)
  {
    result = (*(*i[2] + 48))(i[2], *(this + 15));
  }

  return result;
}

void sub_18F635520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::setFormatOnUnit(AudioUnit *this, const AudioStreamBasicDescription *inData, AudioUnitScope a3, AudioUnitElement a4)
{
  result = AudioUnitSetProperty(this[106], 8u, a3, a4, inData, 0x28u);
  if (result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "setFormatOnUnit");
    v7 = (*(*this + 2))(this);
    v8 = (this + 4);
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    v9 = *&inData->mBytesPerPacket;
    v15[0] = *&inData->mSampleRate;
    v15[1] = v9;
    v16 = *&inData->mBitsPerChannel;
    CA::StreamDescription::AsString(v11, v15, *v15, *&v9);
    if (v12 >= 0)
    {
      v10 = v11;
    }

    else
    {
      v10 = v11[0];
    }

    DSPGraph::strprintf("AUBox::setFormatOnUnit %s %s : %s", v7, v8, v10);
  }

  return result;
}

void sub_18F6356C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= a2)
        {
          v10 %= a2;
        }
      }

      else
      {
        v10 &= a2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *DSPGraph::Box::isogroup(DSPGraph::Box *a1, uint64_t a2, DSPGraph::IsoGroup *a3)
{
  result = std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(*a2, *(a2 + 8), a1);
  if (!result)
  {
    v8 = a1;
    std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box *>(a2, a1, &v8);
    DSPGraph::IsoGroup::add(a3, a1);
    (*(*a1 + 424))(a1, a2, a3);
    v7 = *(*a1 + 432);

    return v7(a1, a2, a3);
  }

  return result;
}

float *std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box *>(float *result, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(result + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void DSPGraph::IsoGroup::add(DSPGraph::IsoGroup *this, DSPGraph::Box *a2)
{
  v33 = a2;
  std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(this + 4, a2, &v33);
  *(a2 + 2) = this;
  if (((*(a2 + 12) - *(a2 + 11)) & 0x1FFFFFFFE0) == 0 || (*(*a2 + 272))(a2))
  {
    std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(this + 14, a2, &v33);
  }

  v4 = (*(*a2 + 232))(a2);
  if (v4)
  {
    v5 = v4;
    v7 = *(this + 23);
    v6 = *(this + 24);
    if (v7 >= v6)
    {
      v14 = *(this + 22);
      v15 = (v7 - v14) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v16 = v6 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v18);
      }

      *(8 * v15) = v5;
      v8 = 8 * v15 + 8;
      v24 = *(this + 22);
      v25 = *(this + 23) - v24;
      v26 = (8 * v15 - v25);
      memcpy(v26, v24, v25);
      v27 = *(this + 22);
      *(this + 22) = v26;
      *(this + 23) = v8;
      *(this + 24) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v7 = v4;
      v8 = (v7 + 1);
    }

    *(this + 23) = v8;
  }

  else
  {
    v9 = (*(*a2 + 240))(a2);
    if (v9)
    {
      v10 = v9;
      v12 = *(this + 26);
      v11 = *(this + 27);
      if (v12 >= v11)
      {
        v19 = *(this + 25);
        v20 = (v12 - v19) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v21 = v11 - v19;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v23);
        }

        v28 = (8 * v20);
        *v28 = v10;
        v13 = 8 * v20 + 8;
        v29 = *(this + 25);
        v30 = *(this + 26) - v29;
        v31 = v28 - v30;
        memcpy(v28 - v30, v29, v30);
        v32 = *(this + 25);
        *(this + 25) = v31;
        *(this + 26) = v13;
        *(this + 27) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v12 = v9;
        v13 = (v12 + 1);
      }

      *(this + 26) = v13;
    }
  }
}

void *std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__emplace_unique_key_args<std::unique_ptr<DSPGraph::IsoGroup>,std::unique_ptr<DSPGraph::IsoGroup>>(float *a1, unint64_t a2, uint64_t *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

float *std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box * const&>(float *result, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(result + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t DSPGraph::Box::isogroupTraceInputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 64);
  v4 = *(result + 72);
  if (v3 != v4)
  {
    v7 = result;
    v8 = *(result + 64);
    do
    {
      v9 = (*(*v8 + 40))(v8);
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "isogroupTraceInputs");
        v13 = v7 + 32;
        if (v7[55] < 0)
        {
          v13 = *v13;
        }

        v14 = (*(*v7 + 16))(v7);
        DSPGraph::strprintf("box %s %s input port is not connected.", v13, v14);
      }

      v10 = *(*(v9 + 8) + 8);
      v11 = (*(*v10 + 272))(v10);
      if (v11)
      {
        v12 = v11;
        *&v16 = v11;
        std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>((a3 + 96), v11, &v16);
        v12[107] = a3;
        result = (*(*v12 + 432))(v12, a2, a3);
      }

      else
      {
        result = (*(*v10 + 416))(v10, a2, a3);
      }

      v8 += 32;
      v3 += 32;
    }

    while (v8 != v4);
  }

  return result;
}

void sub_18F636678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_18F901990);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_18F901730), xmmword_18F9019A0);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

uint64_t DSPGraph::NonFiniteProtectionBox::setParameter(uint64_t this, int a2, int a3, int a4, float a5)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10866, &v8, 191, &v7, &v6);
  }

  if (a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "");
    DSPGraph::ThrowException(-10877, &v8, 194, &v7, &v6);
  }

  if (a2 == 71)
  {
    atomic_store(a5 != 0.0, (this + 780));
  }

  else
  {
    if (a2 == 70)
    {
      if (a5 < 0.0)
      {
        a5 = 0.0;
      }

      v5 = (this + 776);
    }

    else
    {
      if (a2)
      {
        std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_NonFiniteProtectionBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
        std::string::basic_string[abi:ne200100]<0>(&v6, "");
        DSPGraph::ThrowException(-10878, &v8, 203, &v7, &v6);
      }

      if (a5 < 0.0)
      {
        a5 = 0.0;
      }

      v5 = (this + 772);
    }

    atomic_store(LODWORD(a5), v5);
  }

  return this;
}

void sub_18F636B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Graph::uninitialize(void *this)
{
  if (*(this + 762) == 1)
  {
    v1 = this;
    for (i = this[3]; i; i = *i)
    {
      (*(*i[2] + 584))(i[2]);
      (*(*i[2] + 616))();
    }

    for (j = v1[8]; j; j = *j)
    {
      *(j[2] + 56) = 0;
    }

    this = std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::clear[abi:ne200100](v1 + 24);
    *(v1 + 762) = 0;
  }

  return this;
}

uint64_t DSPGraph::AUBox::uninitialize(AudioUnit *this)
{
  DSPGraph::Box::uninitialize(this);
  this[98] = this[97];
  this[101] = this[100];
  result = AudioUnitUninitialize(this[106]);
  if (result)
  {
    v3 = result;
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "uninitialize");
    std::operator+<char>();
    DSPGraph::ThrowException(v3, &v6, 2000, &v5, &v4);
  }

  return result;
}

void sub_18F636D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::uninitialize(DSPGraph::Box *this)
{
  v2 = *(this + 25);
  v3 = *(this + 26);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    *(*v2 + 16) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v4[6];
    v7 = v4[7];
    while (v7 != v6)
    {
      v9 = *--v7;
      v8 = v9;
      *v7 = 0;
      if (v9)
      {
        VPTimeFreqConverter_Dispose(v8);
      }
    }

    v4[7] = v6;
    DSPGraph::SimpleABL::free((v4 + 9));
    v2 += 8;
  }

  v10 = *(this + 28);
  v11 = *(this + 29);
  while (v10 != v11)
  {
    v12 = *v10;
    DSPGraph::SimpleABL::free((*v10 + 16));
    v13 = *(v12 + 80);
    v14 = *(v12 + 88);
    while (v14 != v13)
    {
      v16 = *--v14;
      v15 = v16;
      *v14 = 0;
      if (v16)
      {
        VPTimeFreqConverter_Dispose(v15);
      }
    }

    *(v12 + 88) = v13;
    ++v10;
  }

  result = (*(*this + 600))(this);
  if (*(this + 760) == 1)
  {
    *(this + 760) = 0;
  }

  return result;
}

void DSPGraph::Box::uninitializeAnalysis(DSPGraph::Box *this)
{
  std::mutex::lock((this + 248));
  v2 = *(this + 39);
  v3 = *(this + 40);
  while (v2 != v3)
  {
    caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 336, *(*v2 + 6));
    DSPGraph::Analyzer::uninitialize(*v2++);
  }

  std::mutex::unlock((this + 248));
}

uint64_t DSPGraph::Box::uninitializePropertyTaps(uint64_t this)
{
  v1 = *(this + 176);
  v2 = *(this + 184);
  while (v1 != v2)
  {
    *(v1 + 48) = *(v1 + 40);
    v1 += 64;
  }

  return this;
}

void DSPGraph::RingBufferBox::uninitialize(DSPGraph::RingBufferBox *this)
{
  DSPGraph::Box::uninitialize(this);

  DSPGraph::SimpleABL::free((this + 808));
}

void DSPGraph::InternalBuffer::~InternalBuffer(DSPGraph::InternalBuffer *this)
{
  *this = &unk_1F033EB20;
  DSPGraph::SimpleABL::free((this + 80));

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EB20;
  DSPGraph::SimpleABL::free((this + 80));
}

void *std::vector<std::unique_ptr<DSPGraph::InternalBuffer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[2];
      v1[2] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void DSPGraph::Graph::unconfigure(DSPGraph::Graph *this)
{
  if (*(this + 762) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v16, "unconfigure");
    std::string::basic_string[abi:ne200100]<0>(&v15, "graph is initialized. uninitialize before unconfiguring");
    DSPGraph::ThrowException(1768843553, &v17, 814, &v16, &v15);
  }

  for (i = *(this + 3); i; i = *i)
  {
    (*(*i[2] + 624))(i[2]);
  }

  v3 = *(this + 32);
  v4 = *(this + 33);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 176);
      v7 = *(*v3 + 184);
      while (v6 != v7)
      {
        v8 = *v6++;
        (*(*v8 + 688))(v8);
      }

      for (j = v5[14]; j; j = *j)
      {
        (*(*j[2] + 688))(j[2]);
      }

      v11 = v5[25];
      v10 = v5[26];
      while (v11 != v10)
      {
        v12 = *v11++;
        (*(*v12 + 688))(v12);
      }

      v3 += 8;
    }

    while (v3 != v4);
    v3 = *(this + 32);
  }

  *(this + 33) = v3;
  if (*(this + 30))
  {
    std::__hash_table<std::unique_ptr<DSPGraph::IsoGroup>,std::hash<std::unique_ptr<DSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<DSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<DSPGraph::IsoGroup>>>::__deallocate_node(*(this + 29));
    *(this + 29) = 0;
    v13 = *(this + 28);
    if (v13)
    {
      for (k = 0; k != v13; ++k)
      {
        *(*(this + 27) + 8 * k) = 0;
      }
    }

    *(this + 30) = 0;
  }

  *(this + 761) = 0;
}

void sub_18F6372B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::~IsoGroup(DSPGraph::IsoGroup *this)
{
  *this = &unk_1F033F6E0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033F6E0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }
}

uint64_t std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void DSPGraph::NewBoxRegistry::NewBoxRegistry(DSPGraph::NewBoxRegistry *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = &unk_1F03315A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "gain");
  v2 = xmmword_18F9019D0;
  v3 = 0;
  v6[0] = &unk_1F0331730;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amul");
  v2 = xmmword_18F9019E0;
  v3 = 0;
  v6[0] = &unk_1F0331778;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adiv");
  v2 = xmmword_18F9019F0;
  v3 = 0;
  v6[0] = &unk_1F0331DE0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amin");
  v2 = xmmword_18F901A00;
  v3 = 0;
  v6[0] = &unk_1F0332448;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amax");
  v2 = xmmword_18F901A10;
  v3 = 0;
  v6[0] = &unk_1F03329F0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adif");
  v2 = xmmword_18F901A20;
  v3 = 0;
  v6[0] = &unk_1F0332F98;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "asum");
  v2 = xmmword_18F901A30;
  v3 = 0;
  v6[0] = &unk_1F0333600;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "aabs");
  v2 = xmmword_18F901A40;
  v3 = 0;
  v6[0] = &unk_1F0333C68;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vcgn");
  v2 = xmmword_18F901A50;
  v3 = 0;
  v6[0] = &unk_1F0333CB0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbgn");
  v2 = xmmword_18F901A60;
  v3 = 0;
  v6[0] = &unk_1F0333CF8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "copy");
  v2 = xmmword_18F901A70;
  v3 = 0;
  v6[0] = &unk_1F0333D40;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sum");
  v2 = xmmword_18F901A80;
  v3 = 0;
  v6[0] = &unk_1F0333D88;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix");
  v2 = xmmword_18F901A90;
  v3 = 0;
  v6[0] = &unk_1F0333DD0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "average");
  v2 = xmmword_18F901AA0;
  v3 = 0;
  v6[0] = &unk_1F0333E18;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "test");
  v2 = xmmword_18F901AB0;
  v3 = 0;
  v6[0] = &unk_1F0333E60;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "src");
  v2 = xmmword_18F901AC0;
  v3 = 0;
  v6[0] = &unk_1F0333EA8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reblocker");
  v2 = xmmword_18F901AD0;
  v3 = 0;
  v6[0] = &unk_1F0333EF0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "freqsrc");
  v2 = xmmword_18F901AE0;
  v3 = 0;
  v6[0] = &unk_1F0333F38;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fft");
  v2 = xmmword_18F9019B0;
  v3 = 0;
  v6[0] = &unk_1F0333F80;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "join");
  v2 = xmmword_18F901AF0;
  v3 = 0;
  v6[0] = &unk_1F0333FC8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split");
  v2 = xmmword_18F901B00;
  v3 = 0;
  v6[0] = &unk_1F0334010;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chancopy");
  v2 = xmmword_18F901B10;
  v3 = 0;
  v6[0] = &unk_1F0334058;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "delay");
  v2 = xmmword_18F901B20;
  v3 = 0;
  v6[0] = &unk_1F03340A0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dead");
  v2 = xmmword_18F901B30;
  v3 = 0;
  v6[0] = &unk_1F03340E8;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "constant");
  v2 = xmmword_18F901B40;
  v3 = 0;
  v6[0] = &unk_1F0334130;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbcontrol");
  v2 = xmmword_18F901B50;
  v3 = 0;
  v6[0] = &unk_1F0334178;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "denormalzero");
  v2 = xmmword_18F901B60;
  v3 = 0;
  v6[0] = &unk_1F03341C0;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mantissarandom");
  v2 = xmmword_18F9017D0;
  v3 = 0;
  v6[0] = &unk_1F0334208;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "volumecurve");
  v2 = xmmword_18F901760;
  v3 = 0;
  v6[0] = &unk_1F0334250;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nfnp");
  v2 = xmmword_18F901B70;
  v3 = 0;
  v6[0] = &unk_1F0334528;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "srlconverter");
  v2 = xmmword_18F901B80;
  v3 = 0;
  v6[0] = &unk_1F0334570;
  v7 = v6;
  DSPGraph::NewBoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  DSPGraph::NewBoxRegistry::NewBoxRegistry(void)::$_31::operator()<char const*,int,DSPGraph::CalculationBox::OperatorDomain,DSPGraph::CalculationBox::OperatorCodomain,DSPGraph::CalculationBox::Operator>(this, "parameter_add", 0x705F5F2Bu, 0, 0, 0);
}

void sub_18F63875C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(v19);
  _Unwind_Resume(a1);
}

void DSPGraph::NewBoxRegistry::add(uint64_t a1, __int128 *a2, unsigned int *a3, uint64_t a4)
{
  v8 = (a1 + 8);
  v9 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v10 = v9;
  v11 = *(a1 + 16);
  if (!*&v11)
  {
    goto LABEL_18;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *&v11)
    {
      v14 = v9 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v9;
  }

  v15 = *(*v8 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v16 + 2, a2))
  {
    goto LABEL_17;
  }

  std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator=((v16 + 5), a4);
  v18 = a3[1] + *a3 + a3[2];
  v19 = *(a1 + 56);
  if (!*&v19)
  {
    goto LABEL_40;
  }

  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  if (v20.u32[0] > 1uLL)
  {
    v21 = a3[1] + *a3 + a3[2];
    if (v18 >= *&v19)
    {
      v21 = v18 % *&v19;
    }
  }

  else
  {
    v21 = (*&v19 - 1) & v18;
  }

  v22 = *(*(a1 + 48) + 8 * v21);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v24 = v23[1];
    if (v24 != v18)
    {
      if (v20.u32[0] > 1uLL)
      {
        if (v24 >= *&v19)
        {
          v24 %= *&v19;
        }
      }

      else
      {
        v24 &= *&v19 - 1;
      }

      if (v24 != v21)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v23[2] != *a3 || *(v23 + 6) != a3[2])
    {
LABEL_39:
      v23 = *v23;
      if (!v23)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator=((v23 + 5), a4);
  v27 = *(a1 + 96);
  v26 = *(a1 + 104);
  if (v27 >= v26)
  {
    v29 = *(a1 + 88);
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v29) >> 4);
    if (v30 + 1 > 0x555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v29) >> 4);
    v32 = 2 * v31;
    if (2 * v31 <= v30 + 1)
    {
      v32 = v30 + 1;
    }

    if (v31 >= 0x2AAAAAAAAAAAAAALL)
    {
      v33 = 0x555555555555555;
    }

    else
    {
      v33 = v32;
    }

    v51 = a1 + 88;
    if (v33)
    {
      std::allocator<std::pair<std::string,AudioComponentDescription>>::allocate_at_least[abi:ne200100](v33);
    }

    v36 = 48 * v30;
    v47 = 0;
    v48 = v36;
    v37 = 0;
    v49 = v36;
    v50 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v36, *a2, *(a2 + 1));
      v39 = v48;
      v40 = v49;
      v37 = v50;
    }

    else
    {
      v38 = *a2;
      *(v36 + 16) = *(a2 + 2);
      *v36 = v38;
      v39 = v36;
      v40 = v36;
    }

    v41 = *a3;
    *(v36 + 40) = a3[4];
    *(v36 + 24) = v41;
    v35 = v40 + 48;
    v42 = *(a1 + 88);
    v43 = *(a1 + 96) - v42;
    v44 = v39 - v43;
    memcpy((v39 - v43), v42, v43);
    v45 = *(a1 + 88);
    *(a1 + 88) = v44;
    *(a1 + 96) = v35;
    v46 = *(a1 + 104);
    *(a1 + 104) = v37;
    v49 = v45;
    v50 = v46;
    v47 = v45;
    v48 = v45;
    std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(&v47);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 96), *a2, *(a2 + 1));
    }

    else
    {
      v28 = *a2;
      *(v27 + 16) = *(a2 + 2);
      *v27 = v28;
    }

    v34 = *a3;
    *(v27 + 40) = a3[4];
    *(v27 + 24) = v34;
    v35 = v27 + 48;
    *(a1 + 96) = v27 + 48;
  }

  *(a1 + 96) = v35;
}

void sub_18F638EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_18F6391D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void std::allocator<std::pair<std::string,AudioComponentDescription>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<DSPGraph::Box * ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void DSPGraph::RingBuffer::alloc(DSPGraph::RingBuffer *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = a4;
  if (a4 > a3)
  {
    v14 = a3;
    std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
    DSPGraph::strprintf("numZeroes is greater than buffer capacity %u > %u", v6, v14);
  }

  *(this + 4) = a3;
  v11 = caulk::numeric::exceptional_add<unsigned int>(a3, 1);
  *(this + 5) = v11;
  *(this + 6) = a5;
  *(this + 4) = 0;
  *(this + 7) = 0;
  v12 = caulk::numeric::exceptional_mul<unsigned int>(v11, a5);
  if (a6)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2;
  }

  DSPGraph::SimpleABL::alloc(this, v13, v12, 0);
  if (v6)
  {

    DSPGraph::RingBuffer::initialize(this, v6);
  }
}

void sub_18F639620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::GraphInput::interleaved(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return (*(*((*(*v2 + 40))(v2) + 120) + 12) & 0x20) == 0;
}

void sub_18F639748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::numeric::exceptional_add<unsigned int>(int a1, int a2)
{
  v2 = __CFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

void DSPGraph::SimpleABL::alloc(DSPGraph::SimpleABL *this, unsigned int a2, unsigned int a3, int a4)
{
  DSPGraph::SimpleABL::free(this);
  if (a2 && a3)
  {
    *(this + 8) = 1;
    if (a4)
    {
      v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
      *this = v8;
      if (!v8)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
        std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList allocation failed");
        DSPGraph::ThrowException(-108, &v16, 548, &v15, &v14);
      }

      *v8 = 1;
      v8[2] = a2;
      v8[3] = a3;
      v9 = malloc_type_calloc(1uLL, a3, 0xA3BC3272uLL);
      *(*this + 16) = v9;
      if (!v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
        std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList data allocation failed");
        DSPGraph::ThrowException(-108, &v16, 555, &v15, &v14);
      }
    }

    else
    {
      v10 = malloc_type_calloc(1uLL, 16 * (a2 - 1) + 24, 0x10800404ACF7207uLL);
      *this = v10;
      if (!v10)
      {
        std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
        std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList allocation failed");
        DSPGraph::ThrowException(-108, &v16, 560, &v15, &v14);
      }

      v11 = 0;
      *v10 = a2;
      do
      {
        v12 = &v10[v11];
        v12[2] = 1;
        v12[3] = a3;
        v13 = malloc_type_calloc(1uLL, a3, 0x4741BD24uLL);
        v10 = *this;
        *(*this + v11 * 4 + 16) = v13;
        if (!v13)
        {
          std::string::basic_string[abi:ne200100]<0>(&v16, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v15, "alloc");
          std::string::basic_string[abi:ne200100]<0>(&v14, "AudioBufferList data allocation failed");
          DSPGraph::ThrowException(-108, &v16, 568, &v15, &v14);
        }

        v11 += 4;
      }

      while (4 * a2 != v11);
    }
  }
}

void sub_18F639A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::IsoGroup::topologicalSort(uint64_t a1, void **a2)
{
  if (*(a1 + 249) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "topologicalSort");
    std::string::basic_string[abi:ne200100]<0>(&v16, "IsoGroup::topologicalSort, There is a cycle in the graph. The graph must be acyclic.");
    DSPGraph::ThrowException(1953460257, &v18, 251, &v17, &v16);
  }

  if ((*(a1 + 248) & 1) == 0)
  {
    *(a1 + 249) = 1;
    for (i = *(a1 + 112); i; i = *i)
    {
      DSPGraph::IsoGroup::topologicalSort(*(i[2] + 848), a2);
    }

    v5 = *(a1 + 224);
    *(a1 + 249) = 0;
    *(a1 + 232) = v5;
    for (j = *(a1 + 72); j; j = *j)
    {
      (*(*j[2] + 400))(j[2], a1, a1 + 224, a2);
    }

    v8 = a2[1];
    v7 = a2[2];
    if (v8 >= v7)
    {
      v10 = *a2;
      v11 = v8 - *a2;
      v12 = v11 >> 3;
      v13 = (v11 >> 3) + 1;
      if (v13 >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v12) = a1;
      v9 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      *a2 = 0;
      a2[1] = v9;
      a2[2] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = a1;
      v9 = (v8 + 8);
    }

    a2[1] = v9;
    *(a1 + 248) = 1;
  }
}

void sub_18F639CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::topologicalSort(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if (*(a1 + 746) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "topologicalSort");
    std::string::basic_string[abi:ne200100]<0>(&v17, "Box::topologicalSort, There is a cycle in the graph. The graph must be acyclic.");
    DSPGraph::ThrowException(1953460257, &v19, 487, &v18, &v17);
  }

  if ((*(a1 + 745) & 1) == 0)
  {
    v5 = *(a1 + 16);
    if (v5 == a2)
    {
      *(a1 + 746) = 1;
      (*(*a1 + 408))(a1, a3, a4);
      *(a1 + 746) = 0;
      v8 = *(a3 + 8);
      v7 = *(a3 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a3) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - *a3;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v13);
        }

        *(8 * v10) = a1;
        v9 = 8 * v10 + 8;
        v14 = *(a3 + 8) - *a3;
        v15 = (8 * v10 - v14);
        memcpy(v15, *a3, v14);
        v16 = *a3;
        *a3 = v15;
        *(a3 + 8) = v9;
        *(a3 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = a1;
        v9 = (v8 + 1);
      }

      *(a3 + 8) = v9;
      *(a1 + 745) = 1;
    }

    else
    {

      DSPGraph::IsoGroup::topologicalSort(v5, a4);
    }
  }
}

void *DSPGraph::Box::sortUpstream(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[8];
  v7 = result[9];
  if (v6 != v7)
  {
    result = result[8];
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 += 4;
      v10 = **(*((*(v9 + 40))(result) + 8) + 8);
      (*(v10 + 400))();
      v6 += 4;
      result = v8;
    }

    while (v8 != v7);
  }

  v11 = v5[19];
  v12 = v5[20];
  while (v11 != v12)
  {
    if (v11[36] == 1)
    {
      result = (*(**v11 + 400))(*v11, v5[2], a2, a3);
    }

    v11 += 40;
  }

  v13 = v5[22];
  v14 = v5[23];
  while (v13 != v14)
  {
    if (v13[36] == 1)
    {
      result = (*(**v13 + 400))(*v13, v5[2], a2, a3);
    }

    v13 += 64;
  }

  for (i = v5[16]; i; i = *i)
  {
    result = (*(*i[2] + 400))(i[2], v5[2], a2, a3);
  }

  return result;
}

void DSPGraph::IsoGroup::checkIsochronicity(DSPGraph::IsoGroup *this)
{
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10783);
  }

  v2 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "IsoGroup::checkIsochronicity", buf, 2u);
  }

  for (i = *(this + 4); i; i = *i)
  {
    v4 = i[2];
    v5 = v4[8];
    v6 = v4[9];
    if (v5 != v6)
    {
      v7 = v4[8];
      do
      {
        v8 = *(this + 66);
        if (v8 != **((*(*v7 + 40))(v7) + 120))
        {
          if (*(this + 66))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v28, "checkIsochronicity");
            v19 = *(this + 66);
            v20 = **((*(*v7 + 40))(v7) + 120);
            v21 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("sample rates in group do not match  %u %u %s", v19, v20, v21);
          }

          *(this + 66) = **((*(*v7 + 40))(v7) + 120);
        }

        v9 = *(this + 67);
        if (v9 != *(*((*(*v7 + 40))(v7) + 120) + 40))
        {
          if (*(this + 67) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v28, "checkIsochronicity");
            v16 = *(this + 67);
            v17 = *(*((*(*v7 + 40))(v7) + 120) + 40);
            v18 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("block sizes in group do not match  %u %u %s", v16, v17, v18);
          }

          *(this + 67) = *(*((*(*v7 + 40))(v7) + 120) + 40);
        }

        v7 += 32;
        v5 += 32;
      }

      while (v7 != v6);
    }

    v10 = v4[11];
    v11 = v4[12];
    if (v10 != v11)
    {
      v12 = v4[11];
      do
      {
        v13 = *(this + 66);
        if (v13 != **((*(*v12 + 40))(v12) + 120) && !(*(*v4 + 280))(v4) && !(*(*v4 + 288))(v4))
        {
          if (*(this + 66))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v28, "checkIsochronicity");
            v25 = *(this + 66);
            v26 = **((*(*v12 + 40))(v12) + 120);
            v27 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("sample rates in group do not match  %u %u %s", v25, v26, v27);
          }

          *(this + 66) = **((*(*v12 + 40))(v12) + 120);
        }

        v14 = *(this + 67);
        if (v14 != *(*((*(*v12 + 40))(v12) + 120) + 40) && !(*(*v4 + 272))(v4))
        {
          if (*(this + 67) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_IsoGroup.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v28, "checkIsochronicity");
            v22 = *(this + 67);
            v23 = *(*((*(*v12 + 40))(v12) + 120) + 40);
            v24 = (*(*v4 + 16))(v4);
            DSPGraph::strprintf("block sizes in group do not match  %u %u %s", v22, v23, v24);
          }

          *(this + 67) = *(*((*(*v12 + 40))(v12) + 120) + 40);
        }

        v12 += 32;
        v10 += 32;
      }

      while (v12 != v11);
    }
  }

  v15 = *(this + 67);
  if (v15 == 1)
  {
    v15 = (*(*(this + 1) + 692) + *(*(this + 1) + 688) * *(this + 66) - 1) / *(*(this + 1) + 692);
  }

  *(this + 68) = v15;
  *(this + 36) = 0;
}

void sub_18F63A790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

unint64_t caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return result;
}

void DSPGraph::Graph::initialize(DSPGraph::Graph *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  DSPGraph::Graph::initializeWithFlags(this, v2);
}

void DSPGraph::Graph::initializeWithFlags(DSPGraph::Graph *this, int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
  }

  v4 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, ">>>>>>>>>>>> INITIALIZE GRAPH", buf, 2u);
  }

  if ((*(this + 762) & 1) == 0)
  {
    if ((*(this + 761) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v53, "initializeWithFlags");
      std::string::basic_string[abi:ne200100]<0>(&v60, "graph is not configured. configure the graph before initializing");
      DSPGraph::ThrowException(1667655457, buf, 743, &v53, &v60);
    }

    if ((a2 & 0x30) != 0)
    {
      if ((a2 & 0x30) == 0x30)
      {
        if (DSPGraph::getLog(void)::onceToken != -1)
        {
          dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
        }

        v52 = DSPGraph::getLog(void)::gLog;
        if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18F5DF000, v52, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: Init flag error: only one kDSPGraph_EnableNonFiniteValidateMode can be set at a time!", buf, 2u);
        }

        qword_1EAD0BBC0 = buf;
        __break(1u);
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *buf = &unk_1F033F718;
      *&buf[8] = a2;
      __p[0] = buf;
      for (i = *(this + 3); i; i = *i)
      {
        v6 = i[2];
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::__value_func[abi:ne200100](v54, buf);
        DSPGraph::Box::addRenderCallback(v6, v54, 1u, 1);
        std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](v54);
      }

      std::__function::__value_func<void ()(DSPGraph::Box *,unsigned int)>::~__value_func[abi:ne200100](buf);
    }

    *(this + 88) = 0;
    *(this + 91) = 0;
    v7 = *(this + 32);
    v8 = *(this + 33);
    if (v7 != v8)
    {
      do
      {
        DSPGraph::IsoGroup::initializeBoxes(*v7++);
      }

      while (v7 != v8);
      v7 = *(this + 32);
      v8 = *(this + 33);
    }

    while (v7 != v8)
    {
      v9 = *(*v7 + 28);
      v10 = *(*v7 + 29);
      while (v9 != v10)
      {
        (*(**v9 + 608))(*v9);
        ++v9;
      }

      ++v7;
    }

    if ((a2 & 2) != 0)
    {
      v11 = 0uLL;
      memset(buf, 0, sizeof(buf));
      v12 = *(this + 3);
      if (v12)
      {
        do
        {
          *&v53 = v12[2];
          std::vector<AudioMetadataChannelFormat *>::push_back[abi:ne200100](buf, &v53);
          v12 = *v12;
        }

        while (v12);
        v11 = *buf;
      }

      v13 = v11;
      if (v11 != *(&v11 + 1))
      {
        v14 = v11;
        do
        {
          v15 = *v14;
          DSPGraph::Box::upstreamLatencyInTicks(*v14);
          (*(*v15 + 384))(v15);
          ++v14;
        }

        while (v14 != *(&v13 + 1));
        if (v13 != *(&v13 + 1))
        {
          v16 = v13;
          do
          {
            v17 = *v16;
            (*(**v16 + 376))(*v16);
            if (*(v17 + 760) == 1)
            {
              *(v17 + 760) = 0;
            }

            ++v16;
          }

          while (v16 != *(&v13 + 1));
        }
      }

      if (v13)
      {
        operator delete(v13);
      }
    }

    if ((a2 & 8) != 0)
    {
      v18 = *(this + 763);
    }

    else
    {
      v18 = 0;
    }

    *(this + 764) = v18 & 1;
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    v19 = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = DSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
      {
        v21 = (this + 408);
        if (*(this + 431) < 0)
        {
          v21 = *v21;
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    *buf = this;
    *&buf[8] = 0u;
    *__p = 0u;
    LODWORD(v57) = 1065353216;
    memset(v58, 0, sizeof(v58));
    v59 = 1065353216;
    v22 = *(this + 32);
    v23 = *(this + 33);
    while (v22 != v23)
    {
      v24 = *(*v22 + 224);
      v25 = *(*v22 + 232);
      while (v24 != v25)
      {
        v26 = *v24;
        if ((*(**v24 + 8))(*v24))
        {
          DSPGraph::BufferColorist::consumeInputs(buf, v26);
          DSPGraph::BufferColorist::allocOutputs(buf, v26[11], v26[12]);
        }

        else
        {
          DSPGraph::BufferColorist::allocOutputs(buf, v26[11], v26[12]);
          DSPGraph::BufferColorist::consumeInputs(buf, v26);
        }

        ++v24;
      }

      v22 += 8;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::~__hash_table(v58);
    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<DSPGraph::Buffer *>>>>::~__hash_table(&buf[8]);
    for (j = *(this + 8); j; j = *j)
    {
      v28 = j[2];
      v29 = v28[15];
      v30 = v29[10];
      if (v30 == 1)
      {
        v30 = *(*(*(*(v28[4] + 16) + 8) + 16) + 272);
      }

      v31 = v28[7];
      v32 = v29[2];
      v33 = v29[4];
      v34 = 2 * v30 * v33;
      v35 = v33 * v30;
      if (v32 == 1819304813)
      {
        v33 = v35;
      }

      if (v32 == 1718773105)
      {
        v33 = v34;
      }

      if (v33 <= *(v31 + 100))
      {
        v33 = *(v31 + 100);
      }

      *(v31 + 100) = v33;
    }

    if ((*(this + 764) & 1) == 0)
    {
      v49 = *(this + 24);
      v50 = *(this + 25);
      while (v49 != v50)
      {
        v51 = *v49;
        DSPGraph::SimpleABL::free((*v49 + 80));
        DSPGraph::SimpleABL::alloc((v51 + 80), *(v51 + 96), *(v51 + 100), *(v51 + 108));
        ++v49;
      }
    }

    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v36 = DSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
      {
        v37 = (this + 408);
        if (*(this + 431) < 0)
        {
          v37 = *v37;
        }

        *buf = 136315138;
        *&buf[4] = v37;
        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v36, OS_SIGNPOST_INTERVAL_END, v19, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    v38 = *(this + 124);
    v39 = *(this + 125);
    while (v38 != v39)
    {
      v40 = *(v38 + 32);
      v41 = *(v38 + 40);
      if (v40 != v41)
      {
        v42 = (v40 + 8);
        do
        {
          v43 = (*(*this + 64))(this, LODWORD(v42[-1].__end_cap_.__value_));
          v44 = v43;
          if ((v45 & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
            std::string::basic_string[abi:ne200100]<0>(&v53, "initializeBridges");
            std::string::basic_string[abi:ne200100]<0>(&v60, "graph bridge property size could not be queried");
            DSPGraph::ThrowException(v44, buf, 2490, &v53, &v60);
          }

          v46 = v42->__end_ - v42->__begin_;
          if (v43 <= v46)
          {
            if (v43 < v46)
            {
              v42->__end_ = &v42->__begin_[v43];
            }
          }

          else
          {
            std::vector<unsigned char>::__append(v42, v43 - v46);
          }

          v47 = v42 + 1;
          v42 = (v42 + 32);
        }

        while (v47 != v41);
      }

      v38 += 56;
    }

    if ((a2 & 4) != 0)
    {
      operator new();
    }

    *(this + 762) = 1;
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
    }

    v48 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18F5DF000, v48, OS_LOG_TYPE_DEBUG, "<<<<<<<<<<<< INITIALIZE GRAPH", buf, 2u);
    }
  }
}

void sub_18F63B690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::RingBufferBox::initialize(DSPGraph::RingBufferBox *this)
{
  v22 = *MEMORY[0x1E69E9840];
  DSPGraph::Box::initialize(this);
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_10133);
  }

  v2 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v8 = (*(*this + 648))(this);
    v9 = *(this + 194);
    v10 = *(this + 193);
    v11 = (this + 32);
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    v12 = 134219010;
    v13 = this + 808;
    v14 = 1024;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v10;
    v20 = 2080;
    v21 = v11;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "RingBufferBox::initialize %p   ch %u   nz %4u   cap %4u  %s", &v12, 0x28u);
  }

  v3 = (*(*this + 696))(this);
  v4 = (*(*this + 648))(this);
  v5 = *(this + 193);
  if (v3)
  {
    v3 = *(this + 194);
  }

  v6 = (*(*this + 656))(this);
  v7 = (*(*this + 640))(this);
  DSPGraph::RingBuffer::alloc((this + 808), v4, v5, v3, v6, v7);
}

void DSPGraph::GraphInput::initialize(DSPGraph::GraphInput *this)
{
  if (*(this + 913) == 1)
  {
    if (*(this + 115))
    {
      v2 = *(this + 115);
    }

    else
    {
      v2 = 4130;
    }

    v3 = (this + 888);
    if (*(this + 911) < 0)
    {
      v3 = *v3;
    }

    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v11, "out");
      v9 = this + 32;
      if (*(this + 55) < 0)
      {
        v9 = *v9;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v9, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v5 = *(*(this + 1) + 940);
    v6 = *((*(*v4 + 40))(v4) + 120);
    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
    {
      dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_6591);
    }

    if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
    {
      v7 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v2, 0, v3, v5, 0, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(this + 110);
    *(this + 110) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v7 = *(this + 110);
    }

    if (!v7)
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_GraphIOBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v11, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v10, "NewAudioCapturer for DSP graph raw input returned null");
      DSPGraph::ThrowException(1852204065, &v12, 107, &v11, &v10);
    }
  }

  DSPGraph::RingBufferBox::initialize(this);
}

void sub_18F63BBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphInput::numChannels(DSPGraph::GraphInput *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v6, "out");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 28);
}

void sub_18F63BD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

char *DSPGraph::Box::isogroupTraceOutputs(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 11);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      if (!(*(*v3 + 40))(v3))
      {
        std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v14, "isogroupTraceOutputs");
        v12 = v7 + 32;
        if (v7[55] < 0)
        {
          v12 = *v12;
        }

        v13 = (*(*v7 + 16))(v7);
        DSPGraph::strprintf("box %s %s output port is not connected.", v12, v13);
      }

      result = (*(*v3 + 40))(v3);
      for (i = *(result + 4); i; i = *i)
      {
        v9 = *(i[2] + 8);
        v10 = (*(*v9 + 272))(v9);
        if (v10)
        {
          v11 = v10;
          *&v15 = v10;
          std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>((a3 + 136), v10, &v15);
          *(v11 + 848) = a3;
        }

        result = (*(*v9 + 416))(v9, a2, a3);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_18F63C220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetOutputFormatListFromCodec(OpaqueAudioComponentInstance *a1, const AudioFormatInfo *a2, unsigned int *a3, AudioFormatListItem *a4)
{
  outSize = 0;
  if (!a3)
  {
    return 561211770;
  }

  PropertyInfo = AudioCodecGetPropertyInfo(a1, 0x6F663469u, &outSize, 0);
  if (!PropertyInfo)
  {
    v9 = outSize;
    v10 = outSize / 0x28;
    if (a4)
    {
      outSize = 40 * v10;
      if (v9 >= 0x28)
      {
        v12 = 40 * v10;
        v13 = malloc_type_malloc(v12, 0xD7524C8FuLL);
        if (!v13)
        {
          exception = __cxa_allocate_exception(8uLL);
          v24 = std::bad_alloc::bad_alloc(exception);
        }

        v14 = v13;
        bzero(v13, v12);
        v15 = *&a2->mASBD.mSampleRate;
        v16 = *&a2->mASBD.mBytesPerPacket;
        v14[4] = *&a2->mASBD.mBitsPerChannel;
        *v14 = v15;
        *(v14 + 1) = v16;
        PropertyInfo = AudioCodecGetProperty(a1, 0x6F663469u, &outSize, v14);
        if (!PropertyInfo)
        {
          LODWORD(v17) = outSize / 0x28;
          v18 = *a3 / 0x30;
          if (v18 >= outSize / 0x28)
          {
            v17 = v17;
          }

          else
          {
            v17 = v18;
          }

          if (v17)
          {
            v19 = v14;
            v20 = v17;
            do
            {
              v21 = *v19;
              v22 = *(v19 + 1);
              *&a4->mASBD.mBitsPerChannel = v19[4];
              *&a4->mASBD.mSampleRate = v21;
              *&a4->mASBD.mBytesPerPacket = v22;
              a4->mChannelLayoutTag = 0;
              ++a4;
              v19 += 5;
              --v20;
            }

            while (v20);
          }

          *a3 = 48 * v17;
        }

        free(v14);
      }

      else
      {
        return 2003329396;
      }
    }

    else
    {
      PropertyInfo = 0;
      *a3 = 48 * v10;
    }
  }

  return PropertyInfo;
}

void AudioCodecAutoDisposer::~AudioCodecAutoDisposer(OpaqueAudioComponentInstance **this)
{
  v1 = *this;
  if (v1)
  {
    AudioComponentInstanceDispose(v1);
  }
}

uint64_t acv2::ConverterRegistry::GetDecoders(acv2::ConverterRegistry **this, unsigned int a2, unsigned int *a3, char *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  acv2::ConverterRegistry::MakeDecoderFactories(this, a2, 0x6C70636Du);
  if (a4)
  {
    if (a3)
    {
      v8 = *a3;
      v10 = this[1];
      v9 = this[2];
      if (v10 != v9 && v8 >= 0xC)
      {
        v24 = 0;
        v25 = v8 / 0xC;
        v26 = (v10 + 8);
        do
        {
          v27 = *(v26 - 1);
          v30 = *(v27 + 16);
          v28 = (v27 + 16);
          v29 = v30;
          v31 = v30 == 1852597349 || v29 == 1633969507;
          if (v31 && *(*(v26 - 1) + 20) == a2)
          {
            v32 = &a4[12 * v24++];
            v33 = *v28;
            *(v32 + 2) = *(v28 + 2);
            *v32 = v33;
            v9 = this[2];
          }

          if (v26 == v9)
          {
            break;
          }

          v26 = (v26 + 8);
        }

        while (v24 < v25);
        v12 = 12 * v24;
      }

      else
      {
        v12 = 0;
      }

      v17 = 0;
      *a3 = v12;
    }

    else
    {
      return 561211770;
    }
  }

  else
  {
    v13 = this[1];
    v14 = this[2];
    if (v13 == v14)
    {
LABEL_16:
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v17 = 1718449215;
      v18 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v19.i32[0] = bswap32(a2);
        v20 = vzip1_s8(v19, v19);
        v21.i64[0] = 0x1F0000001FLL;
        v21.i64[1] = 0x1F0000001FLL;
        v22.i64[0] = 0x5F0000005FLL;
        v22.i64[1] = 0x5F0000005FLL;
        v23 = vbsl_s8(vmovn_s32(vcgtq_u32(v22, vsraq_n_s32(v21, vshlq_n_s32(vmovl_u16(v20), 0x18uLL), 0x18uLL))), v20, 0x2E002E002E002ELL);
        v36 = 4;
        LODWORD(__p) = vuzp1_s8(v23, v23).u32[0];
        BYTE4(__p) = 0;
        *buf = 136315906;
        v38 = "ConverterFactory.cpp";
        v39 = 1024;
        v40 = 587;
        v41 = 2080;
        p_p = &__p;
        v43 = 1024;
        v44 = a2;
        _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d no decoder found for format ID '%s' (%d)", buf, 0x22u);
        if (v36 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      while (1)
      {
        v15 = *(*v13 + 16);
        v16 = v15 == 1852597349 || v15 == 1633969507;
        if (v16 && *(*v13 + 20) == a2)
        {
          return 0;
        }

        v13 = (v13 + 8);
        if (v13 == v14)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return v17;
}

uint64_t acv2::ConverterRegistry::MakeDecoderFactories(acv2::ConverterRegistry **this, int a2, unsigned int a3)
{
  if (acv2::ConverterRegistry::HaveDecoderFactory(this[1], this[2], a2, a3))
  {
    return 0;
  }

  if (a2 == 1970037111)
  {
    operator new();
  }

  if (a2 == 1634492791)
  {
    operator new();
  }

  LODWORD(v7) = vdup_n_s32(0x61646563u).u32[0];
  HIDWORD(v7) = a2;

  return acv2::ConverterRegistry::MakeFactories(this, 0, a3, v7);
}

uint64_t acv2::ConverterRegistry::GetDecodersSize(acv2::ConverterRegistry **this, int a2, unsigned int *a3)
{
  acv2::ConverterRegistry::MakeDecoderFactories(this, a2, 0x6C70636Du);
  v6 = this[1];
  v7 = this[2];
  if (v6 == v7)
  {
    v11 = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v8 = 0;
  do
  {
    v9 = *(*v6 + 16);
    v10 = v9 == 1852597349 || v9 == 1633969507;
    if (v10 && *(*v6 + 20) == a2)
    {
      ++v8;
    }

    v6 = (v6 + 8);
  }

  while (v6 != v7);
  v11 = 12 * v8;
  if (a3)
  {
LABEL_12:
    *a3 = v11;
  }

  return 0;
}

uint64_t acv2::ConverterRegistry::HaveDecoderFactory(acv2::ConverterRegistry *this, acv2::ConverterRegistry *a2, int a3, int a4)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    v4 = *this;
    if (*(*this + 12) == a4 && *(v4 + 20) == a3)
    {
      v5 = *(v4 + 16);
      if (v5 == 1633969507 || v5 == 1852597349)
      {
        break;
      }
    }

    this = (this + 8);
    if (this == a2)
    {
      return 0;
    }
  }

  return 1;
}

void newAudioConverterOOP(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, uint64_t a3, const AudioClassDescription *a4, uint64_t a5)
{
  if ((~a5 & 6) != 0)
  {
    task_info_outCnt.val[0] = 8;
    if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, &task_info_out, task_info_outCnt.val))
    {
      task_info_outCnt = task_info_out;
      v10 = SecTaskCreateWithAuditToken(0, &task_info_outCnt);
      if (v10)
      {
        v11 = v10;
        v12 = SecTaskCopyValueForEntitlement(v10, @"com.apple.coreaudio.LoadConvertersInProcessXPC", 0);
        if (v12)
        {
          v13 = v12;
          v14 = CFGetTypeID(v12);
          v15 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(v13) != 0;
          CFRelease(v13);
        }

        else
        {
          v15 = 0;
        }

        CFRelease(v11);
        if ((a5 & 0x20000000) == 0 && v15)
        {
          newAudioConverterInProcessXPC(a1, a2, a3, a4, a5);
        }
      }

      {
        switchToPooledRendererFlow(void)::usePooledRenderersCodepath = _os_feature_enabled_impl();
      }

      if (switchToPooledRendererFlow(void)::usePooledRenderersCodepath == 1)
      {
        operator new();
      }

      operator new();
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -50;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void FormatChecker::FormatChecker(FormatChecker *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_36:
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v22 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *task_info_outCnt = 136315394;
      *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
      *&task_info_outCnt[12] = 1024;
      *&task_info_outCnt[14] = 253;
      _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d inSourceFormat == NULL", task_info_outCnt, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (!a3)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v24 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *task_info_outCnt = 136315394;
      *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
      *&task_info_outCnt[12] = 1024;
      *&task_info_outCnt[14] = 254;
      _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d inDestinationFormat == NULL", task_info_outCnt, 0x12u);
    }

    v25 = __cxa_allocate_exception(4uLL);
    *v25 = -50;
    __cxa_throw(v25, MEMORY[0x1E69E5478], 0);
  }

  if (!MinimalSafetyCheck(a2) || (MinimalSafetyCheck(a3) & 1) == 0)
  {
    v34 = __cxa_allocate_exception(4uLL);
    *v34 = -50;
    __cxa_throw(v34, MEMORY[0x1E69E5478], 0);
  }

  v5 = 0;
  mFormatID = a3->mFormatID;
  v47[0] = a2->mFormatID;
  v47[1] = mFormatID;
  do
  {
    v7 = v47[v5];
    if (v7 > 1885564202)
    {
      if (v7 == 1885564203 || v7 == 1970037111)
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 1634492791 || v7 == 1819304813)
    {
      goto LABEL_17;
    }

    if ((v5 * 4))
    {
      v10 = 1634037347;
    }

    else
    {
      v10 = 1633969507;
    }

    inDesc.componentType = v10;
    inDesc.componentSubType = v7;
    *&inDesc.componentManufacturer = 1634758764;
    inDesc.componentFlagsMask = 0;
    if (!AudioComponentFindNext(0, &inDesc))
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v26 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        v27.i32[0] = bswap32(v7);
        v28 = vzip1_s8(v27, v27);
        v29.i64[0] = 0x1F0000001FLL;
        v29.i64[1] = 0x1F0000001FLL;
        v30.i64[0] = 0x5F0000005FLL;
        v30.i64[1] = 0x5F0000005FLL;
        BYTE7(v41) = 4;
        v31 = vbsl_s8(vmovn_s32(vcgtq_u32(v30, vsraq_n_s32(v29, vshlq_n_s32(vmovl_u16(v28), 0x18uLL), 0x18uLL))), v28, 0x2E002E002E002ELL);
        task_info_out[0] = vuzp1_s8(v31, v31).u32[0];
        LOBYTE(task_info_out[1]) = 0;
        *task_info_outCnt = 136316162;
        v32 = "encoder";
        *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
        *&task_info_outCnt[12] = 1024;
        *&task_info_outCnt[14] = 276;
        *&task_info_outCnt[18] = 2080;
        if (!(v5 * 4))
        {
          v32 = "decoder";
        }

        *&task_info_outCnt[20] = v32;
        *&task_info_outCnt[28] = 2080;
        *&task_info_outCnt[30] = task_info_out;
        v45 = 2048;
        v46 = this;
        _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d The client can't access the audio %s %s requested for converter ->  %p", task_info_outCnt, 0x30u);
        if (SBYTE7(v41) < 0)
        {
          operator delete(*task_info_out);
        }
      }

      v33 = __cxa_allocate_exception(4uLL);
      *v33 = 1718449215;
      __cxa_throw(v33, MEMORY[0x1E69E5478], 0);
    }

    v42 = 1969977198;
    AudioFormatEncryptedFormatTranslator::DecryptFormatID(v7, &v42);
    if (v42 != 1969977198)
    {
      *task_info_out = 0u;
      v41 = 0u;
      *task_info_outCnt = 8;
      if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, task_info_outCnt))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_36;
      }

      *task_info_outCnt = *task_info_out;
      *&task_info_outCnt[16] = v41;
      if (sandbox_check_by_audit_token() || (*task_info_outCnt = *task_info_out, *&task_info_outCnt[16] = v41, sandbox_check_by_audit_token()))
      {
        if (gAudioConverterDeferredLogOnce != -1)
        {
          dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
        }

        v11 = *gAudioConverterLog;
        if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
        {
          v12.i32[0] = bswap32(a2->mFormatID);
          v13 = vzip1_s8(v12, v12);
          v14.i64[0] = 0x1F0000001FLL;
          v14.i64[1] = 0x1F0000001FLL;
          v15.i64[0] = 0x1F0000001FLL;
          v15.i64[1] = 0x1F0000001FLL;
          v16.i64[0] = 0x5F0000005FLL;
          v16.i64[1] = 0x5F0000005FLL;
          v17 = vbsl_s8(vmovn_s32(vcgtq_u32(v16, vsraq_n_s32(v15, vshlq_n_s32(vmovl_u16(v13), 0x18uLL), 0x18uLL))), v13, 0x2E002E002E002ELL);
          v39 = 4;
          v18 = vuzp1_s8(v17, v17);
          LODWORD(v38) = v18.i32[0];
          BYTE4(v38) = 0;
          v18.i32[0] = bswap32(a3->mFormatID);
          v19 = vzip1_s8(v18, v18);
          v37 = 4;
          v20 = vbsl_s8(vmovn_s32(vcgtq_u32(v16, vsraq_n_s32(v14, vshlq_n_s32(vmovl_u16(v19), 0x18uLL), 0x18uLL))), v19, 0x2E002E002E002ELL);
          LODWORD(__p) = vuzp1_s8(v20, v20).u32[0];
          BYTE4(__p) = 0;
          *task_info_outCnt = 136316162;
          *&task_info_outCnt[4] = "AudioConverterOOPCommon.h";
          *&task_info_outCnt[12] = 1024;
          *&task_info_outCnt[14] = 296;
          *&task_info_outCnt[18] = 2080;
          *&task_info_outCnt[20] = &v38;
          *&task_info_outCnt[28] = 2080;
          *&task_info_outCnt[30] = &__p;
          v45 = 2048;
          v46 = this;
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d The client lacks permissions for dealing with encrypted codecs,required to convert from %s to %s, as requested for converter ->  %p", task_info_outCnt, 0x30u);
          if (v37 < 0)
          {
            operator delete(__p);
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }
        }

        v21 = __cxa_allocate_exception(4uLL);
        *v21 = 1718449215;
        __cxa_throw(v21, MEMORY[0x1E69E5478], 0);
      }
    }

LABEL_17:
    ++v5;
  }

  while (v5 != 2);
}