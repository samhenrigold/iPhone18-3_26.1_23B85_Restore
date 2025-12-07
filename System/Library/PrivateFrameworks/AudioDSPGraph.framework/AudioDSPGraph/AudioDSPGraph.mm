uint64_t CADSPGraphGetLatency(uint64_t a1, double *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 400);
  v5 = *(v3 + 408);
  if (((v5 - v4) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      if (v6 >= (v5 - v4) >> 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v4 + 8 * v6);
      }

      v9 = *(v8 + 2);
      v10 = (*(*v8 + 72))(v8);
      v11 = AudioDSPGraph::Box::upstreamLatencyInTicks(v8);
      v12 = *(v9 + 848);
      if ((v11 + v10) / v12 >= v7)
      {
        v7 = (v11 + v10) / v12;
      }

      ++v6;
      v4 = *(v3 + 400);
      v5 = *(v3 + 408);
    }

    while (v6 < ((v5 - v4) >> 3));
  }

  else
  {
    v7 = 0.0;
  }

  *a2 = v7;
  return 1;
}

void sub_1C91AF3FC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException(gCADSPRealTimeSafeAllocator);
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91AF3E0);
}

unint64_t AudioDSPGraph::Boxes::RingBufferBox::selfLatencyInTicks(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  v1 = *(this + 192);
  v2 = *(*(this + 2) + 848);
  return v2 / (*(*this + 648))(this) * v1;
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::ringBufferSampleRate(AudioDSPGraph::Boxes::GraphOutput *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v5, off_1E8337898);
  }

  return **(*(v2 + 16) + 120);
}

void sub_1C91AF50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C91AF554(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException(gCADSPRealTimeSafeAllocator);
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91AF548);
}

uint64_t AudioDSPGraph::Graph::reset(uint64_t this)
{
  *(this + 856) = 0;
  *(this + 880) = 0u;
  v1 = *(this + 352);
  v2 = *(this + 360);
  while (v1 != v2)
  {
    v3 = *v1;
    v3[32] = 0;
    v3[36] = 0;
    v4 = v3[28];
    v5 = v3[29];
    while (v4 != v5)
    {
      v6 = *v4++;
      this = (*(*v6 + 616))(v6);
    }

    ++v1;
  }

  return this;
}

void AudioDSPGraph::Boxes::RingBufferBox::reset(AudioDSPGraph::Boxes::RingBufferBox *this)
{
  if ((*(*this + 664))(this))
  {
    v2 = *(this + 192);
  }

  else
  {
    v2 = 0;
  }

  AudioDSPGraph::RingBuffer::initialize((this + 800), v2);
}

unint64_t AudioDSPGraph::Box::upstreamLatencyInTicks(AudioDSPGraph::Box *this)
{
  if (*(this + 752) == 1)
  {
    return *(this + 93);
  }

  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 == v4)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v5 = *(*(*(v3 + 16) + 8) + 8);
      v6 = (*(*v5 + 72))(v5);
      v7 = AudioDSPGraph::Box::upstreamLatencyInTicks(v5);
      if (v2 <= v7 + v6)
      {
        v2 = v7 + v6;
      }

      v3 += 32;
    }

    while (v3 != v4);
  }

  *(this + 93) = v2;
  *(this + 752) = 1;
  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AudioDSPGraph::Boxes::Detail::throwOnError(uint64_t __val, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (__val)
  {
    v6 = __val;
    AudioDSPGraph::stringFromFourCharCode<int>(&v8, __val);
    v12[0] = 0;
    std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,char const*,std::string,std::string const>(v12, v11, a2, &v8, a3);
    v13 = v17;
    *__len = xmmword_1C925F110;
    v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v16 = 0;
    __p = v17;
    v10[0] = 3;
    v10[1] = v11;
    v10[2] = v12[0];
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, "{} error {} in '{}'", 19, v10);
    std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
    if (__p != v17)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(v6, __dst, a4);
  }

  return __val;
}

void sub_1C91AF90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void AudioDSPGraph::RingBuffer::initialize(AudioDSPGraph::RingBuffer *this, int a2)
{
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 7) = a2;
  v2 = *this;
  if (*this && *v2)
  {
    v4 = 0;
    v5 = (*(this + 6) * a2);
    v6 = 4;
    do
    {
      bzero(*&v2[v6], v5);
      ++v4;
      v2 = *this;
      v6 += 4;
    }

    while (v4 < **this);
  }
}

uint64_t AudioDSPGraph::Boxes::AUBox::reset(AudioUnit *this)
{
  v2 = AudioUnitReset(this[105], 0, 0);

  return AudioDSPGraph::Boxes::Detail::throwOnError(v2, "AudioUnitReset", this + 5, off_1E8334980);
}

uint64_t *AudioDSPGraph::Graph::setProperty(AudioDSPGraph::Graph *this, unsigned int a2, uint64_t a3, const void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  result = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(this + 78, a2);
  if (!result)
  {
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v15, a2);
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    v21 = size;
    v22 = 13;
    v19 = 13;
    v20 = v11;
    v23 = v27;
    v24 = xmmword_1C925F110;
    v25 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v26 = 0;
    __p = v27;
    v17 = 1;
    v18 = &v20;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v23, "graph property {} does not exist", 32, &v17);
    std::string::basic_string<std::string_view,0>(__dst, __p, *(&v24 + 1));
    if (__p != v27)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1852204065, __dst, off_1E83361C8);
  }

  if (*(result + 64) == 1)
  {
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v15, a2);
    v12 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__l.__size_;
      v13 = v15.__r_.__value_.__r.__words[0];
    }

    v21 = v12;
    v22 = 13;
    v19 = 13;
    v20 = v13;
    v23 = v27;
    v24 = xmmword_1C925F110;
    v25 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v26 = 0;
    __p = v27;
    v17 = 1;
    v18 = &v20;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v23, "graph property {} is not settable", 33, &v17);
    std::string::basic_string<std::string_view,0>(v14, __p, *(&v24 + 1));
    if (__p != v27)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1852204065, v14, off_1E83361E0);
  }

  v8 = result[9];
  v9 = result[10];
  while (v8 != v9)
  {
    result = (*(**v8 + 312))(*v8, v8[2], v8[3], v8[4], a3, a4);
    v8 += 6;
  }

  return result;
}

void sub_1C91AFCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1C91AFD90(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException(gCADSPRealTimeSafeAllocator);
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91AFD84);
}

void AudioDSPGraph::Boxes::AUBox::process(AudioDSPGraph::Boxes::AUBox *this, UInt32 a2)
{
  if ((*(*this + 64))(this))
  {
    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v41 = (this + 40);
      if (*(this + 63) < 0)
      {
        v41 = *v41;
      }

      caulk::make_string(&__C, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v41, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C60);
    }

    v6 = *(this + 12);
    if (*(this + 13) == v6)
    {
      v43 = (this + 40);
      if (*(this + 63) < 0)
      {
        v43 = *v43;
      }

      caulk::make_string(&__C, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v4, v43, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C78);
    }

    v7 = *(*(v5 + 16) + 56);
    v8 = *(v6 + 16);
    v9 = *(v8 + 56);
    if (v9 != v7)
    {
      AudioDSPGraph::Buffer::copyFrom(*(v8 + 56), v7);
      v10 = *(v7 + 8);
      v11 = *(v7 + 24);
      v12 = *(v7 + 40);
      *(v9 + 56) = *(v7 + 56);
      *(v9 + 40) = v12;
      *(v9 + 24) = v11;
      *(v9 + 8) = v10;
      *(v9 + 72) = *(v7 + 72);
    }

    *(v9 + 8) = *(*(this + 3) + 256);
    v13 = v9 + 8;
    v14 = *(v13 + 72);
    v15 = AudioUnitProcess(*(this + 105), (v13 + 64), v13, a2, v14);
    AudioDSPGraph::Boxes::Detail::throwOnError(v15, "AudioUnitProcess", this + 5, off_1E8334998);
    if ((*(v13 + 64) & 0x10) != 0 && v14->mNumberBuffers)
    {
      v16 = 0;
      v17 = a2;
      for (i = 16; ; i += 16)
      {
        LODWORD(__C.mSampleTime) = 0;
        vDSP_maxmgv(*(&v14->mNumberBuffers + i), 1, &__C, v17);
        if (*&__C.mSampleTime != 0.0)
        {
          break;
        }

        if (++v16 >= v14->mNumberBuffers)
        {
          return;
        }
      }

      *(v13 + 64) &= ~0x10u;
    }
  }

  else
  {
    v19 = *(this + 9);
    v20 = *(this + 10);
    if (v20 != v19)
    {
      v21 = 0;
      v22 = 16;
      do
      {
        *(*(this + 96) + 8 * v21++) = *(*(*(v19 + v22) + 56) + 80);
        v19 = *(this + 9);
        v20 = *(this + 10);
        v22 += 32;
      }

      while (v21 < (v20 - v19) >> 5);
    }

    v23 = *(this + 13);
    if (v23 == *(this + 12))
    {
      v27 = *(this + 13);
    }

    else
    {
      v24 = 0;
      v25 = 16;
      v23 = *(this + 12);
      do
      {
        v26 = *(*(v23 + v25) + 56);
        *(*(this + 99) + 8 * v24) = *(v26 + 10);
        AudioDSPGraph::Buffer::setByteSize(v26, *(*(*(v23 + v25) + 120) + 24) * a2);
        ++v24;
        v23 = *(this + 12);
        v27 = *(this + 13);
        v25 += 32;
      }

      while (v24 < (v27 - v23) >> 5);
      v19 = *(this + 9);
      v20 = *(this + 10);
    }

    v28 = v20 - v19;
    if (!v28)
    {
      v42 = (this + 40);
      if (*(this + 63) < 0)
      {
        v42 = *v42;
      }

      caulk::make_string(&__C, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v4, v42, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &__C, off_1E8337C60);
    }

    v29 = *(*(v19 + 16) + 56);
    ioActionFlags = 0;
    v30 = *(v29 + 24);
    v31 = *(v29 + 56);
    v32 = *(v29 + 8);
    *&__C.mSMPTETime.mSubframes = *(v29 + 40);
    *&__C.mSMPTETime.mHours = v31;
    *&__C.mSampleTime = v32;
    *&__C.mRateScalar = v30;
    __C.mSampleTime = *(*(this + 3) + 256);
    v33 = AudioUnitProcessMultiple(*(this + 105), &ioActionFlags, &__C, a2, v28 >> 5, *(this + 96), (v27 - v23) >> 5, *(this + 99));
    AudioDSPGraph::Boxes::Detail::throwOnError(v33, "AudioUnitProcessMultiple", this + 5, off_1E83349B0);
    v34 = *(this + 12);
    v35 = *(this + 13);
    if (v34 != v35)
    {
      v36 = ioActionFlags;
      do
      {
        v37 = *(*(v34 + 16) + 56);
        v38 = *&__C.mSampleTime;
        v39 = *&__C.mRateScalar;
        v40 = *&__C.mSMPTETime.mSubframes;
        *(v37 + 56) = *&__C.mSMPTETime.mHours;
        *(v37 + 40) = v40;
        *(v37 + 24) = v39;
        *(v37 + 8) = v38;
        *(v37 + 72) = v36;
        v34 += 32;
      }

      while (v34 != v35);
    }
  }
}

void sub_1C91B0170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Graph::getParameter(AudioDSPGraph::Graph *this, uint64_t a2, unsigned int a3)
{
  v12 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((a2 + 584), a3);
  if (v4)
  {
    if (*(v4 + 36) != 1 || (v5 = v4[5], v4[6] == v5))
    {
      v7 = 0;
      if (*(v4 + 32) == 1)
      {
        v7 = *(v4 + 7);
      }

      *this = v7;
      *(this + 32) = 1;
    }

    else
    {
      v6 = *(**v5 + 96);

      v6();
    }
  }

  else
  {
    LODWORD(v9) = 1852204065;
    *(&v9 + 1) = off_1E83362A0;
    v10 = 0;
    v11 = 0;
    AudioDSPGraph::Error::saveDescription<unsigned int &>(&v9, "graph parameter {} does not exist", &v12);
    *this = v9;
    v8 = v10;
    v10 = 0;
    *(this + 2) = v8;
    LODWORD(v8) = v11;
    v11 = 0;
    *(this + 6) = v8;
    *(this + 32) = 0;
    AudioDSPGraph::Error::~Error(&v9);
  }
}

caulk::rt_safe_memory_resource *CADSPGraphGetParameter(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t *a4)
{
  AudioDSPGraph::Graph::getParameter(&v14, *(a1 + 8), a2);
  if (v17)
  {
    *a3 = v14;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v10 = v14;
    v7 = v15;
    v15 = 0;
    v11 = v7;
    LODWORD(v7) = v16;
    v16 = 0;
    v12 = v7;
  }

  v13 = v6;
  std::__expected_base<float,AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](&v14);
  v8 = CA::DSP::RealTimeErrorGuard(a4, &v10);
  std::__expected_void_base<AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](&v10);
  return v8;
}

void AudioDSPGraph::Boxes::AUBox::getParameter(AudioUnit *this@<X0>, AudioUnitParameterID a2@<W1>, AudioUnitScope a3@<W2>, AudioUnitElement a4@<W3>, uint64_t a5@<X8>)
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(this[105], a2, a3, a4, &outValue);
  if (Parameter)
  {
    LODWORD(v9) = Parameter;
    *(&v9 + 1) = off_1E8334950;
    v10 = 0;
    v11 = 0;
    AudioDSPGraph::Error::setDescription<>(&v9, "AudioUnitGetParameter");
    *a5 = v9;
    v7 = v10;
    v10 = 0;
    *(a5 + 16) = v7;
    LODWORD(v7) = v11;
    v11 = 0;
    *(a5 + 24) = v7;
    AudioDSPGraph::Error::~Error(&v9);
    v8 = 0;
  }

  else
  {
    *a5 = outValue;
    v8 = 1;
  }

  *(a5 + 32) = v8;
}

uint64_t std::__expected_base<float,AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    std::destroy_at[abi:ne200100]<AudioDSPGraph::Error,0>(a1);
  }

  return a1;
}

uint64_t std::__expected_void_base<AudioDSPGraph::Error>::__repr::~__repr[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    std::destroy_at[abi:ne200100]<AudioDSPGraph::Error,0>(a1);
  }

  return a1;
}

caulk::rt_safe_memory_resource *CA::DSP::RealTimeErrorGuard(uint64_t *a1, int *a2)
{
  if (a2[8])
  {
    return 1;
  }

  v12 = *a2;
  v13 = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = *v5;
    LODWORD(v5) = *(v5 + 16);
  }

  else
  {
    v6 = &byte_1C9279A7A;
  }

  v14 = v6;
  v15 = v5;
  if (a1)
  {
    v7 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1920298612, &v12);
    v8 = v7;
    v9 = *(a2 + 2);
    *(a2 + 2) = 0;
    v10 = a2[6];
    a2[6] = 0;
    if (*(v7 + 12) == 1)
    {
      v11 = v7[5];
      if (v11)
      {
        (*(*v11 + 24))(v7[5]);
        (**v11)(v11);
        result = *MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
          return result;
        }

        caulk::rt_safe_memory_resource::rt_deallocate(result, v11);
      }
    }

    *(v8 + 40) = v9;
    *(v8 + 48) = v10;
    *a1 = v8;
  }

  return 0;
}

uint64_t AudioDSPGraph::Box::doProcess(AudioDSPGraph::Box *this, const char *a2)
{
  v4 = *(this + 12);
  v5 = *(this + 13) - v4;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    v6 = 0;
    v7 = 2 * a2;
    v8 = 16;
    do
    {
      v9 = v5 >> 5;
      if (v9 <= v6)
      {
        v28 = (this + 40);
        if (*(this + 63) < 0)
        {
          v28 = *v28;
        }

        caulk::make_string(v29, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v28, v9, v6);
        AudioDSPGraph::ThrowException(1919837985, v29, off_1E8337C78);
      }

      v10 = *(v4 + v8);
      v11 = *(v10 + 56);
      v12 = *(v10 + 120);
      v13 = *(v12 + 8);
      if (v13 == 1718773105)
      {
        v14 = v7 * *(v12 + 24);
      }

      else if (v13 == 1819304813)
      {
        v14 = *(v12 + 24) * a2;
      }

      else
      {
        v14 = *(v11 + 25);
      }

      AudioDSPGraph::Buffer::setByteSize(v11, v14);
      ++v6;
      v4 = *(this + 12);
      v5 = *(this + 13) - v4;
      v8 += 32;
    }

    while (v6 < (v5 >> 5));
  }

  if (atomic_fetch_or(this + 190, 0x80000000))
  {
    v15 = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(this + 672);
    (*(*this + 464))(this);
    (*(*this + 472))(this);
    if (v15)
    {
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      while (v16 != v17)
      {
        if (*v16)
        {
          (*(**v16 + 16))(*v16, this, a2);
        }

        v16 += 2;
      }
    }

    (*(*this + 456))(this, a2);
    v18 = *(this + 26);
    v19 = *(this + 27);
    while (v18 != v19)
    {
      if (((*(this + 13) - *(this + 12)) & 0x1FFFFFFFE0) != 0 || ((*(this + 10) - *(this + 9)) & 0x1FFFFFFFE0) != 0)
      {
        AudioDSPGraph::FileRecorder::record(*v18);
      }

      ++v18;
    }

    v20 = *(this + 29);
    v21 = *(this + 30);
    while (v20 != v21)
    {
      AudioDSPGraph::FileInjector::inject(*v20++, a2);
    }

    caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
    for (i = atomic_load(this + 47); ; i = atomic_load(v24))
    {
      v23 = (i & 0xFFFFFFFFFFFFFFFCLL);
      if ((this + 536) == v23)
      {
        break;
      }

      v24 = v23 + 3;
      atomic_load(v23 + 3);
      if (*(*v23 + 28) == 1)
      {
        (*(**v23 + 64))(*v23, *(*(*v23 + 8) + 56), a2);
      }
    }

    result = caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(this + 576, v23);
    if (v15)
    {
      v27 = *(v15 + 8);
      v26 = *(v15 + 16);
      while (v27 != v26)
      {
        result = *v27;
        if (*v27)
        {
          result = (*(*result + 24))(result, this, a2);
        }

        v27 += 2;
      }
    }
  }

  else
  {
    result = (*(*this + 456))(this, a2);
  }

  atomic_fetch_and(this + 190, 0x7FFFFFFFu);
  return result;
}

uint64_t caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  for (i = _X2; ; i = _X2)
  {
    v11 = (_X3 - 1);
    a2 = a2 & 0xFFFFFFFF00000000 | v11;
    _X6 = _X3 <= 1 ? 0 : i;
    _X3 = _X3 | (v2 << 32);
    __asm { CASPAL          X2, X3, X6, X7, [X0] }

    if (_X2 == i)
    {
      break;
    }

    v2 = HIDWORD(_X3);
  }

  if (!v11)
  {
    if (i)
    {
      return caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(result, i);
    }
  }

  return result;
}

void caulk::concurrent::details::node_allocator<unsigned int,AudioDSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal()
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X0] }

  _X6 = _X4;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X6, X7, [X0] }

  if (_X2 != _X4)
  {
    do
    {
      _X4 = _X2;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X0] }

      v13 = _X6 ^ _X2;
      _X2 = _X6;
    }

    while (v13);
  }
}

unsigned int *AudioDSPGraph::Buffer::setByteSize(AudioDSPGraph::Buffer *this, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(this + 25);
  if (v3 < a2)
  {
    v8 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9[0] = 67109376;
    v9[1] = a2;
    v10 = 1024;
    v11 = v3;
    _os_log_send_and_compose_impl(v7, &v8, v12, 80, &dword_1C91AE000, v6, 16, "assertion failure: DSPGraph buffer byte size %u is larger than byte capacity %u", v9, 14);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 10);

  return AudioDSPGraph::SimpleABL::setByteSize(v4, a2);
}

double AudioDSPGraph::IsoGroup::process(AudioDSPGraph::IsoGroup *this, uint64_t a2)
{
  for (i = *(this + 14); i; i = *i)
  {
    (*(*i[2] + 672))(i[2], a2);
  }

  v5 = *(this + 28);
  v6 = *(this + 29);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 448))(v7, a2);
  }

  result = *(this + 32) + a2;
  *(this + 32) = result;
  return result;
}

unsigned int *AudioDSPGraph::SimpleABL::setByteSize(unsigned int *this, unsigned int a2)
{
  if (!this)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "null internal ABL");
    AudioDSPGraph::ThrowException(1768843553, v10, off_1E8337A60);
  }

  v2 = *this;
  if (v2)
  {
    v3 = (v2 + 3) & 0x1FFFFFFFCLL;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_1C925F0F0;
    v6 = xmmword_1C925F100;
    v7 = this + 11;
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 8) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 4) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[4] = a2;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 16;
      v3 -= 4;
    }

    while (v3);
  }

  return this;
}

void sub_1C91B0D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::SingleRateLPCMConverterBox::process(AudioDSPGraph::Boxes::SingleRateLPCMConverterBox *this, const char *a2)
{
  v3 = *(this + 12);
  if (*(this + 13) == v3)
  {
    v27 = (this + 40);
    if (*(this + 63) < 0)
    {
      v27 = *v27;
    }

    caulk::make_string(v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v27, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v33, off_1E8337C78);
  }

  v4 = *(v3 + 16);
  v5 = *(*(v4 + 56) + 80);
  mNumberBuffers = v5->mNumberBuffers;
  if (mNumberBuffers)
  {
    v7 = *(*(v4 + 120) + 24) * a2;
    v8 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
    v9 = vdupq_n_s64(mNumberBuffers - 1);
    v10 = xmmword_1C925F0F0;
    v11 = xmmword_1C925F100;
    v12 = &v5[1].mBuffers[0].mData + 1;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 8) = v7;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 4) = v7;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = v7;
        v12[4] = v7;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 16;
      v8 -= 4;
    }

    while (v8);
  }

  v15 = *(this + 9);
  if (*(this + 10) == v15)
  {
    v28 = (this + 40);
    if (*(this + 63) < 0)
    {
      v28 = *v28;
    }

    caulk::make_string(v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v28, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v33, off_1E8337C60);
  }

  result = AudioConverterConvertComplexBuffer(*(this + 96), a2, *(*(*(v15 + 16) + 56) + 80), v5);
  v18 = *(this + 9);
  if (*(this + 10) == v18)
  {
    v29 = (this + 40);
    if (*(this + 63) < 0)
    {
      v29 = *v29;
    }

    caulk::make_string(v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v29, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v33, off_1E8337C60);
  }

  v19 = *(this + 12);
  if (*(this + 13) == v19)
  {
    v30 = (this + 40);
    if (*(this + 63) < 0)
    {
      v30 = *v30;
    }

    caulk::make_string(v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v30, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v33, off_1E8337C78);
  }

  v20 = *(*(v18 + 16) + 56);
  v21 = *(*(v19 + 16) + 56);
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  v24 = *(v20 + 40);
  *(v21 + 56) = *(v20 + 56);
  *(v21 + 40) = v24;
  *(v21 + 24) = v23;
  *(v21 + 8) = v22;
  v25 = *(this + 9);
  if (*(this + 10) == v25)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string(v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v17, v31, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v33, off_1E8337C60);
  }

  v26 = *(this + 12);
  if (*(this + 13) == v26)
  {
    v32 = (this + 40);
    if (*(this + 63) < 0)
    {
      v32 = *v32;
    }

    caulk::make_string(v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v17, v32, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v33, off_1E8337C78);
  }

  *(*(*(v26 + 16) + 56) + 72) = *(*(*(v25 + 16) + 56) + 72);
  return result;
}

void sub_1C91B107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GraphOutput::process(void *this, const char *a2)
{
  if ((*(this[2] + 924) & 1) == 0)
  {
    v3 = (a2 / (*(*this + 656))(this));
    if (*(this[2] + 925) == 1)
    {
      v10 = *(this[105] + 72);
      LOBYTE(v11) = 0;
      v4 = this[9];
      if (this[10] == v4)
      {
        v8 = this + 5;
        if (*(this + 63) < 0)
        {
          v8 = *v8;
        }

        caulk::make_string(v12, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v8, 0, 0, v10, v11);
        AudioDSPGraph::ThrowException(1919837985, v12, off_1E8337C60);
      }

      AudioDSPGraph::SimpleABL::copy((*(*(v4 + 16) + 56) + 80), &v10, 0, 0, (*(*(*(v4 + 16) + 120) + 16) * v3), 1);
      AudioDSPGraph::SimpleABL::free(&v10);
    }

    else
    {
      v5 = this[9];
      if (this[10] == v5)
      {
        v9 = this + 5;
        if (*(this + 63) < 0)
        {
          v9 = *v9;
        }

        caulk::make_string(v12, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v9, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, v12, off_1E8337C60);
      }

      AudioDSPGraph::RingBuffer::write((this + 100), v3, (*(*(v5 + 16) + 56) + 80));
    }
  }

  v6 = this[9];
  if (this[10] == v6)
  {
    v7 = this + 5;
    if (*(this + 63) < 0)
    {
      v7 = *v7;
    }

    caulk::make_string(v12, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v7, 0, 0, v10, v11);
    AudioDSPGraph::ThrowException(1919837985, v12, off_1E8337C60);
  }

  *(this[105] + 4) = *(*(*(v6 + 16) + 56) + 72);
}

unsigned int *AudioDSPGraph::SimpleABL::dstWrapCopy(AudioDSPGraph::SimpleABL *this, AudioDSPGraph::SimpleABL *a2, uint64_t a3, size_t __len)
{
  v4 = *a2;
  if (!*a2 || !*v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "empty destination ABL");
    AudioDSPGraph::ThrowException(1768843553, v16, off_1E8337B98);
  }

  v6 = a3;
  v7 = v4[3];
  v8 = (v7 - a3);
  if (v7 <= a3)
  {
    caulk::make_string(v15, "copy destination position exceeds bounds %u >= %u", a2, a3, v7);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337BB0);
  }

  if (v7 < __len)
  {
    caulk::make_string(v14, "copy size exceeds destination size %u > %u", a2, __len, v7);
    AudioDSPGraph::ThrowException(1919837985, v14, off_1E8337BC8);
  }

  v9 = a2;
  v10 = this;
  if (__len + a3 <= v7)
  {
    v12 = 0;
  }

  else
  {
    v11 = (__len - v8);
    AudioDSPGraph::SimpleABL::copy(this, a2, 0, a3, v8, 0);
    this = v10;
    a2 = v9;
    v12 = v8;
    v6 = 0;
    __len = v11;
  }

  return AudioDSPGraph::SimpleABL::copy(this, a2, v12, v6, __len, 0);
}

void sub_1C91B142C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *AudioDSPGraph::RingBuffer::write(AudioDSPGraph::RingBuffer *this, unsigned int a2, AudioDSPGraph::SimpleABL *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(this + 4);
  v6 = *(this + 7);
  if (v5 - v6 < a2)
  {
    v18 = 0;
    memset(v30, 0, sizeof(v30));
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = *(this + 8);
    v15 = *(this + 9);
    if (v13)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v19[0] = 67110400;
    v19[1] = a2;
    v20 = 1024;
    v21 = v5 - v6;
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    _os_log_send_and_compose_impl(v16, &v18, v30, 80, &dword_1C91AE000, v12, 16, "assertion failure: RingBuffer::write overflow %u > %u (capacity = %u, readAvail = %u, readPos = %u, writePos = %u)", v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  result = AudioDSPGraph::SimpleABL::dstWrapCopy(a3, this, (*(this + 9) * *(this + 6)), *(this + 6) * a2);
  v8 = *(this + 9) + a2;
  *(this + 9) = v8;
  v9 = *(this + 5);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v10)
  {
    *(this + 9) = v11;
  }

  *(this + 7) += a2;
  return result;
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::ringBufferFramesPerPacket(AudioDSPGraph::Boxes::GraphOutput *this, const char *a2)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(v5, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v5, off_1E8337898);
  }

  return *(*(*(v2 + 16) + 120) + 20);
}

void sub_1C91B1678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *AudioDSPGraph::SimpleABL::copy(unsigned int *this, AudioDSPGraph::SimpleABL *a2, uint64_t a3, uint64_t a4, size_t __len, char a6)
{
  v6 = *this;
  if (!*this)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "null internal ABL");
    AudioDSPGraph::ThrowException(1768843553, v28, off_1E8337AD8);
  }

  v7 = *a2;
  if (!*a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "null destination ABL");
    AudioDSPGraph::ThrowException(1768843553, v27, off_1E8337AF0);
  }

  v8 = *v7;
  if (*v6 != v8)
  {
    caulk::make_string(v26, "mABL->mNumberBuffers (%u) != toABL->mNumberBuffers (%u)", a2, *v6, v8);
    AudioDSPGraph::ThrowException(1718444833, v26, off_1E8337B08);
  }

  if (*v6)
  {
    v10 = this;
    v11 = 0;
    v12 = 0;
    v13 = __len + a3;
    v14 = __len + a4;
    v15 = (v7 + 4);
    do
    {
      v16 = v6[v11 + 3];
      if (v13 > v16)
      {
        caulk::make_string(v25, "fromBytePos (%u) + numBytesToCopy (%u) > mABL->mBuffers[%u].mDataByteSize (%u)", a2, a3, __len, v12, v16);
        AudioDSPGraph::ThrowException(1718775073, v25, off_1E8337B20);
      }

      v17 = *(v15 - 1);
      if (v14 > v17)
      {
        caulk::make_string(v24, "toBytePos (%u) + numBytesToCopy (%u) > toABL->mBuffers[%u].mDataByteSize (%u)", a2, a4, __len, v12, v17);
        AudioDSPGraph::ThrowException(1718775073, v24, off_1E8337B38);
      }

      v18 = *v15;
      v15 += 2;
      this = memmove((v18 + a4), (*&v6[v11 + 4] + a3), __len);
      ++v12;
      v6 = *v10;
      v11 += 4;
    }

    while (v12 < **v10);
  }

  if (a6)
  {
    v19 = *a2;

    return AudioDSPGraph::SimpleABL::setByteSize(v19, __len + a4);
  }

  return this;
}

void sub_1C91B18CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void CADSPGraphProcessPCMData::$_0::operator()(void **a1)
{
  v176 = *MEMORY[0x1E69E9840];
  v1 = *(**a1 + 8);
  v2 = *(v1 + 376);
  v3 = *(v1 + 384) - v2;
  if (*a1[1] != (v3 >> 3))
  {
    v166 = *a1[1];
    v167 = 0;
    v169 = 0;
    v170 = 231;
    v168 = (v3 >> 3);
    v171.__r_.__value_.__r.__words[0] = v174;
    *&v171.__r_.__value_.__r.__words[1] = xmmword_1C925F110;
    v172 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v173 = 0;
    v175 = v174;
    v163 = 2;
    v164 = &v166;
    v165 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v171, "client provided {} inputs for graph with {} inputs", 50, &v163);
    std::string::basic_string<std::string_view,0>(v162, v175, v171.__r_.__value_.__r.__words[2]);
    if (v175 != v174)
    {
      operator delete(v175);
    }

    AudioDSPGraph::ThrowException(-50, v162, off_1E83346E8);
  }

  v5 = *(v1 + 400);
  v6 = *(v1 + 408);
  v7 = v6 - v5;
  v8 = *a1[2];
  if (v8 != ((v6 - v5) >> 3))
  {
    v166 = ((v6 - v5) >> 3);
    v167 = 0;
    v169 = 0;
    v170 = 231;
    v168 = v8;
    v171.__r_.__value_.__r.__words[0] = v174;
    *&v171.__r_.__value_.__r.__words[1] = xmmword_1C925F110;
    v172 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v173 = 0;
    v175 = v174;
    v163 = 2;
    v164 = &v166;
    v165 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v171, "client provided {} outputs for graph with {} outputs", 52, &v163);
    std::string::basic_string<std::string_view,0>(v161, v175, v171.__r_.__value_.__r.__words[2]);
    if (v175 != v174)
    {
      operator delete(v175);
    }

    AudioDSPGraph::ThrowException(-50, v161, off_1E8334700);
  }

  MEMORY[0x1EEE9AC00](a1);
  v159 = &v156 - v9;
  bzero(&v156 - v9, v9);
  if ((v3 >> 3))
  {
    v11 = (*a1[3] + 16);
    v12 = v159;
    v13 = (v3 >> 3);
    do
    {
      *v12 = *v11;
      *(v12 + 1) = 0;
      v14 = *(v11 - 1);
      if (v14)
      {
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        *(v12 + 56) = v14[3];
        *(v12 + 40) = v17;
        *(v12 + 24) = v16;
        *(v12 + 8) = v15;
      }

      else
      {
        *(v12 + 56) = 0uLL;
        *(v12 + 40) = 0uLL;
        *(v12 + 24) = 0uLL;
        *(v12 + 8) = 0uLL;
      }

      v18 = *(v11 - 2);
      v11 += 6;
      *(v12 + 9) = v18;
      v12 += 80;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x1EEE9AC00](v10);
  v160 = &v156 - v19;
  bzero(&v156 - v19, v19);
  if (((v6 - v5) >> 3))
  {
    v21 = (*a1[4] + 16);
    v22 = v160;
    v23 = ((v6 - v5) >> 3);
    do
    {
      *v22 = *v21;
      *(v22 + 1) = 0;
      v24 = *(v21 - 1);
      if (v24)
      {
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        *(v22 + 56) = v24[3];
        *(v22 + 40) = v27;
        *(v22 + 24) = v26;
        *(v22 + 8) = v25;
      }

      else
      {
        *(v22 + 56) = 0uLL;
        *(v22 + 40) = 0uLL;
        *(v22 + 24) = 0uLL;
        *(v22 + 8) = 0uLL;
      }

      v28 = *(v21 - 2);
      v21 += 6;
      *(v22 + 9) = v28;
      v22 += 80;
      --v23;
    }

    while (v23);
  }

  if ((*(v1 + 922) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v171, "not initialized");
    AudioDSPGraph::ThrowException(1768843553, &v171, off_1E8335D78);
  }

  if (*(v1 + 924) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v171, "Graph::processMultiple. Graph must be processed in-place");
    AudioDSPGraph::ThrowException(1836084257, &v171, off_1E8335D90);
  }

  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v29 = 0;
    v30 = v159;
    do
    {
      *(*(v2 + 8 * v29++) + 840) = v30;
      v30 += 80;
    }

    while ((v3 >> 3) != v29);
  }

  v31 = v7 & 0x7FFFFFFF8;
  if ((v7 & 0x7FFFFFFF8) != 0)
  {
    v32 = 0;
    v33 = v160;
    do
    {
      *(*(v5 + 8 * v32++) + 840) = v33;
      v33 += 80;
    }

    while (((v6 - v5) >> 3) != v32);
  }

  if (*(v1 + 920) == 1)
  {
    v34 = *(v1 + 888);
    if (!v34)
    {
      std::string::basic_string[abi:ne200100]<0>(&v171, "preflighting is required if slice duration can vary.");
      AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335CB8);
    }
  }

  else
  {
    v34 = *(v1 + 864);
  }

  v157 = a1;
  *(v1 + 872) = v34;
  *(v1 + 888) = 0;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v35 = 0;
    v36 = v159;
    do
    {
      if (v35 >= v3 >> 3)
      {
        v37 = 0;
      }

      else
      {
        v37 = *(v2 + 8 * v35);
      }

      v38 = *v36;
      v39 = AudioDSPGraph::Boxes::GraphInput::preflight(v37, v20);
      v2 = *(v1 + 376);
      v3 = *(v1 + 384) - v2;
      if (v38 != v39)
      {
        if (v35 >= v3 >> 3)
        {
          v147 = 0;
        }

        else
        {
          v147 = *(v2 + 8 * v35);
        }

        v148 = *v36;
        v149 = AudioDSPGraph::Boxes::GraphInput::preflight(v147, v20);
        caulk::make_string(&v171, "input %u packet count %u is inconsistent with preflight %u", v150, v35, v148, v149);
        AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335CD0);
      }

      ++v35;
      v36 += 20;
    }

    while (v35 < (v3 >> 3));
    v5 = *(v1 + 400);
    v6 = *(v1 + 408);
    v7 = v6 - v5;
    v31 = (v6 - v5) & 0x7FFFFFFF8;
  }

  if (v31)
  {
    v40 = 0;
    v41 = v160;
    do
    {
      if (v40 >= v7 >> 3)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v5 + 8 * v40);
      }

      v43 = *v41;
      v44 = AudioDSPGraph::Boxes::GraphOutput::preflight(v42, v20);
      v5 = *(v1 + 400);
      v6 = *(v1 + 408);
      v7 = v6 - v5;
      if (v43 != v44)
      {
        if (v40 >= v7 >> 3)
        {
          v151 = 0;
        }

        else
        {
          v151 = *(v5 + 8 * v40);
        }

        v152 = *v41;
        v153 = AudioDSPGraph::Boxes::GraphOutput::preflight(v151, v20);
        caulk::make_string(&v171, "output %u frame count %u is inconsistent with preflight %u", v154, v40, v152, v153);
        AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335CE8);
      }

      ++v40;
      v41 += 20;
    }

    while (v40 < (v7 >> 3));
  }

  if (*(v1 + 925))
  {
    if (v159 == v160)
    {
      if ((*(v1 + 923) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v171, "graph cannot process in-place.");
        AudioDSPGraph::ThrowException(1768975393, &v171, off_1E8335D00);
      }
    }

    else
    {
      v46 = *(v1 + 376);
      v45 = *(v1 + 384);
      if (((v45 - v46) & 0x7FFFFFFF8) != 0)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        do
        {
          v50 = &v159[80 * v47];
          v51 = *v50;
          if (v48)
          {
            if (v51 != v49)
            {
              caulk::make_string(&v171, "number of frames are different in different ports though the sample rates are the same. %u %u", v20, *v50, v49);
              AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335D18);
            }

            v51 = v49;
          }

          v52 = *(v50 + 9);
          if (*v52)
          {
            v158 = v51;
            v53 = 0;
            v54 = 3;
            do
            {
              v55 = *(v1 + 376);
              if (v47 >= (*(v1 + 384) - v55) >> 3)
              {
                v56 = 0;
              }

              else
              {
                v56 = *(v55 + 8 * v47);
              }

              v57 = *v50;
              v58 = (*(*v56 + 656))(v56);
              v59 = (*(*v56 + 640))(v56);
              if (v52[v54] < v59 * (v57 / v58))
              {
                caulk::make_string(&v171, "AudioBufferList mDataByteSize is too small for the number of packets for input %u.  mDataByteSize %u   expectedByteSize %u", v20, v47, v52[v54], v59 * (v57 / v58));
                AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335D30);
              }

              ++v53;
              v54 += 4;
            }

            while (v53 < *v52);
            v46 = *(v1 + 376);
            v45 = *(v1 + 384);
            v51 = v158;
          }

          ++v47;
          v48 = 1;
          v49 = v51;
        }

        while (v47 < ((v45 - v46) >> 3));
        v5 = *(v1 + 400);
        v6 = *(v1 + 408);
        v60 = 1;
        goto LABEL_62;
      }
    }

    v51 = 0;
    v60 = 0;
LABEL_62:
    if (((v6 - v5) & 0x7FFFFFFF8) != 0)
    {
      v61 = 0;
      do
      {
        v62 = &v160[80 * v61];
        v63 = *v62;
        if (v60)
        {
          if (v63 != v51)
          {
            caulk::make_string(&v171, "number of frames are different in different ports though the sample rates are the same. %u %u", v20, *v62, v51);
            AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335D48);
          }

          v63 = v51;
        }

        v64 = *(v62 + 9);
        if (*v64)
        {
          v159 = v63;
          v65 = 0;
          v66 = 3;
          do
          {
            v67 = *(v1 + 400);
            if (v61 >= (*(v1 + 408) - v67) >> 3)
            {
              v68 = 0;
            }

            else
            {
              v68 = *(v67 + 8 * v61);
            }

            v69 = *v62;
            v70 = (*(*v68 + 656))(v68);
            v71 = (*(*v68 + 640))(v68);
            if (v64[v66] < v71 * (v69 / v70))
            {
              caulk::make_string(&v171, "AudioBufferList mDataByteSize is too small for the number of frames for output %u.  mDataByteSize %u   expectedByteSize %u", v20, v61, v64[v66], v71 * (v69 / v70));
              AudioDSPGraph::ThrowException(1718775073, &v171, off_1E8335D60);
            }

            ++v65;
            v66 += 4;
          }

          while (v65 < *v64);
          v5 = *(v1 + 400);
          v6 = *(v1 + 408);
          v63 = v159;
        }

        ++v61;
        v60 = 1;
        v51 = v63;
      }

      while (v61 < ((v6 - v5) >> 3));
    }
  }

  v72 = AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(v1 + 768);
  v74 = v72;
  if (v72)
  {
    v75 = *(v72 + 8);
    v76 = *(v72 + 16);
    while (v75 != v76)
    {
      if (*v75)
      {
        (*(**v75 + 16))(*v75, v1);
      }

      v75 += 2;
    }
  }

  v77 = *(v1 + 288);
  v78 = *(v1 + 296);
  while (v77 != v78)
  {
    AudioDSPGraph::Buffer::setByteSize(*v77, *(*v77 + 25));
    ++v77;
  }

  if (*(v1 + 925))
  {
    v79 = *(v1 + 352);
    v80 = *(v1 + 360);
    while (v79 != v80)
    {
      AudioDSPGraph::IsoGroup::processAll(*v79++);
    }
  }

  else
  {
    v81 = *(v1 + 376);
    v82 = *(v1 + 384);
    while (v81 != v82)
    {
      v83 = *v81;
      v84 = *(*v81 + 840);
      v85 = *(v84 + 64);
      *(*v81 + 848) = (v85 & 2) != 0;
      if ((v85 & 2) != 0)
      {
        *(v83 + 856) = *(v84 + 16);
        *(v83 + 864) = *(v84 + 8);
      }

      v86 = *(v83 + 816);
      v87 = *(v83 + 828);
      v88 = (*(*v83 + 656))(v83);
      v89 = *(v83 + 840);
      v91 = AudioDSPGraph::Boxes::GraphInput::preflight(v83, v90);
      v92 = v88 * (v86 - v87);
      v93 = v83 + 840;
      v94 = *v89;
      if (v91 < *v89)
      {
        v94 = v91;
      }

      if (v92 >= v94)
      {
        v95 = v94;
      }

      else
      {
        v95 = v92;
      }

      **v93 = v95;
      v96 = (*(*v83 + 656))(v83);
      v171.__r_.__value_.__r.__words[0] = *(*v93 + 72);
      v171.__r_.__value_.__s.__data_[8] = 0;
      AudioDSPGraph::RingBuffer::write((v83 + 800), v95 / v96, &v171);
      AudioDSPGraph::SimpleABL::free(&v171);
      ++v81;
    }

    v97 = *(v1 + 352);
    v98 = *(v1 + 360);
    while (v97 != v98)
    {
      AudioDSPGraph::IsoGroup::processAll(*v97++);
    }

    v99 = *(v1 + 400);
    v100 = *(v1 + 408);
    while (v99 != v100)
    {
      v101 = *v99;
      v102 = *(*v99 + 828);
      v103 = (*(**v99 + 656))(*v99);
      v104 = *(v101 + 840);
      v106 = AudioDSPGraph::Boxes::GraphOutput::preflight(v101, v105);
      v107 = v103 * v102;
      v108 = v101 + 840;
      v109 = *v104;
      if (v106 < *v104)
      {
        v109 = v106;
      }

      if (v107 >= v109)
      {
        v110 = v109;
      }

      else
      {
        v110 = v107;
      }

      *(v101 + 848) = *(v101 + 848) + v110;
      **v108 = v110;
      v111 = (*(*v101 + 656))(v101);
      v171.__r_.__value_.__r.__words[0] = *(*v108 + 72);
      v171.__r_.__value_.__s.__data_[8] = 0;
      AudioDSPGraph::RingBuffer::read((v101 + 800), v110 / v111, &v171, v112, v113, v114);
      AudioDSPGraph::SimpleABL::free(&v171);
      ++v99;
    }
  }

  if (v74)
  {
    v115 = *(v74 + 8);
    v116 = *(v74 + 16);
    while (v115 != v116)
    {
      if (*v115)
      {
        (*(**v115 + 24))(*v115, v1);
      }

      v115 += 2;
    }
  }

  v117 = *(v1 + 1056);
  v118 = *(v1 + 1064);
  while (v117 != v118)
  {
    v119 = v117[1];
    v120 = v117[2];
    while (v119 != v120)
    {
      v121 = *v119;
      AudioDSPGraph::Graph::getParameter(&v171, v1, *v119);
      if ((v173 & 1) == 0)
      {
        AudioDSPGraph::Error::throwException(&v171);
      }

      AudioDSPGraph::Graph::setParameter(&v166, *v117, *&v171.__r_.__value_.__l.__data_, v121);
      if ((v170 & 1) == 0)
      {
        AudioDSPGraph::Error::throwException(&v166);
      }

      if ((v173 & 1) == 0)
      {
        AudioDSPGraph::Error::~Error(&v171);
      }

      ++v119;
    }

    v122 = v117[4];
    v123 = v117[5];
    while (v122 != v123)
    {
      v124 = *(v122 + 8);
      LODWORD(v171.__r_.__value_.__l.__data_) = *(v122 + 16) - v124;
      AudioDSPGraph::Graph::getProperty(v1, *v122, &v171, v124);
      AudioDSPGraph::Graph::setProperty(*v117, *v122, LODWORD(v171.__r_.__value_.__l.__data_), v124);
      v122 += 32;
    }

    v117 += 7;
  }

  *(v1 + 856) += *(v1 + 872);
  v125 = *(v1 + 400);
  v126 = *(v1 + 408) - v125;
  v127 = v157;
  if ((v126 & 0x7FFFFFFF8) != 0)
  {
    v128 = 0;
    v129 = (v126 >> 3);
    if (((v126 >> 3) & 0xFFFFFFFE) == 0)
    {
      v129 = 1;
    }

    v130 = v126 >> 3;
    v131 = v160 + 8;
    do
    {
      if (v130 <= v128)
      {
        v132 = 0;
      }

      else
      {
        v132 = *(v125 + 8 * v128);
      }

      v133 = *(v132 + 72);
      if (*(v132 + 80) == v133)
      {
        v155 = (v132 + 40);
        if (*(v132 + 63) < 0)
        {
          v155 = *v155;
        }

        caulk::make_string(&v171, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v73, v155, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, &v171, off_1E8337C60);
      }

      v134 = *(*(v133 + 16) + 56);
      *(v131 - 1) = *(v134 + 72);
      v135 = *(v134 + 8);
      v136 = *(v134 + 24);
      v137 = *(v134 + 56);
      v131[2] = *(v134 + 40);
      v131[3] = v137;
      *v131 = v135;
      v131[1] = v136;
      if ((*(v1 + 925) & 1) == 0)
      {
        *v131 = *(v132 + 848);
      }

      ++v128;
      v131 += 5;
    }

    while (v129 != v128);
  }

  v138 = *v127[2];
  if (v138)
  {
    v139 = 0;
    v140 = 0;
    v141 = v160 + 8;
    do
    {
      v142 = *v127[4] + v139;
      *(v142 + 16) = *(v141 - 2);
      v143 = *(v142 + 8);
      if (v143)
      {
        v144 = *v141;
        v145 = v141[1];
        v146 = v141[3];
        v143[2] = v141[2];
        v143[3] = v146;
        *v143 = v144;
        v143[1] = v145;
        v138 = *v127[2];
      }

      ++v140;
      v139 += 24;
      v141 += 5;
    }

    while (v140 < v138);
  }
}

void sub_1C91B27A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphOutput::preflight(AudioDSPGraph::Boxes::GraphOutput *this, const char *a2)
{
  v3 = *(*(this + 2) + 856);
  v4 = *(*(this + 3) + 304);
  v5 = AudioDSPGraph::Boxes::GraphOutput::ringBufferFramesPerPacket(this, a2);
  v6 = (v3 + v4 * v5 - 1) / (v4 * v5);
  LODWORD(v3) = AudioDSPGraph::Boxes::GraphOutput::ringBufferFramesPerPacket(this, v7);
  v8 = *(this + 2);
  v9 = *(v8 + 856);
  v10 = *(v8 + 872);
  v11 = *(*(this + 3) + 304);
  v13 = AudioDSPGraph::Boxes::GraphOutput::ringBufferFramesPerPacket(this, v12);
  return ((v9 + v10 + v11 * v13 - 1) / (v11 * v13)) * AudioDSPGraph::Boxes::GraphOutput::ringBufferFramesPerPacket(this, v14) - v6 * v3;
}

unsigned int *AudioDSPGraph::RingBuffer::read(AudioDSPGraph::RingBuffer *this, unsigned int a2, AudioDSPGraph::SimpleABL *a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(this + 7);
  if (v8 < a2)
  {
    v22 = 0;
    memset(v32, 0, sizeof(v32));
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = *(this + 4);
    if (v16)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v19 = *(this + 8);
    v20 = *(this + 9);
    v23[0] = 67110144;
    v23[1] = a2;
    v24 = 1024;
    v25 = v8;
    v26 = 1024;
    v27 = v17;
    v28 = 1024;
    v29 = v19;
    v30 = 1024;
    v31 = v20;
    _os_log_send_and_compose_impl(v18, &v22, v32, 80, &dword_1C91AE000, v15, 16, "assertion failure: RingBuffer::read underflow %u > %u (capacity = %u, readPos = %u, writePos = %u)", v23, 32, v21);
    _os_crash_msg();
    __break(1u);
  }

  result = AudioDSPGraph::SimpleABL::srcWrapCopy(this, a3, (*(this + 8) * *(this + 6)), *(this + 6) * a2, 1);
  v10 = *(this + 8) + a2;
  *(this + 8) = v10;
  v11 = *(this + 5);
  v12 = v10 >= v11;
  v13 = v10 - v11;
  if (v12)
  {
    *(this + 8) = v13;
  }

  v14 = *(this + 7) - a2;
  *(this + 7) = v14;
  if (!v14)
  {
    *(this + 4) = 0;
  }

  return result;
}

unsigned int *AudioDSPGraph::SimpleABL::srcWrapCopy(AudioDSPGraph::SimpleABL *this, AudioDSPGraph::SimpleABL *a2, uint64_t a3, size_t __len, char a5)
{
  v5 = *this;
  if (!*this || !*v5)
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "empty internal ABL");
    AudioDSPGraph::ThrowException(1768843553, v17, off_1E8337B50);
  }

  v6 = v5[3];
  v7 = (v6 - a3);
  if (v6 <= a3)
  {
    caulk::make_string(v16, "copy source position exceeds bounds %u >= %u", a2, a3, v6);
    AudioDSPGraph::ThrowException(1919837985, v16, off_1E8337B68);
  }

  v9 = __len;
  if (v6 < __len)
  {
    caulk::make_string(v15, "copy size exceeds source size %u > %u", a2, __len, v6);
    AudioDSPGraph::ThrowException(1919837985, v15, off_1E8337B80);
  }

  v10 = a2;
  v11 = this;
  if (__len + a3 <= v6)
  {
    v13 = 0;
  }

  else
  {
    v12 = (__len - v7);
    AudioDSPGraph::SimpleABL::copy(this, a2, a3, 0, (v6 - a3), 0);
    this = v11;
    a2 = v10;
    a3 = 0;
    v13 = v7;
    v9 = v12;
  }

  return AudioDSPGraph::SimpleABL::copy(this, a2, a3, v13, v9, a5);
}

void sub_1C91B2C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::SimpleABL::free(AudioDSPGraph::SimpleABL *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (!*this)
    {
      return;
    }

    if (*v2)
    {
      v3 = 0;
      v4 = 4;
      do
      {
        free(*&v2[v4]);
        ++v3;
        v2 = *this;
        v4 += 4;
      }

      while (v3 < **this);
    }

    free(v2);
    *(this + 8) = 0;
  }

  *this = 0;
}

uint64_t AudioDSPGraph::Boxes::GraphInput::preflight(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v3 = *(*(this + 2) + 856);
  v4 = *(*(this + 3) + 304);
  v5 = AudioDSPGraph::Boxes::GraphInput::ringBufferFramesPerPacket(this, a2);
  v6 = (v3 + v4 * v5 - 1) / (v4 * v5);
  LODWORD(v3) = AudioDSPGraph::Boxes::GraphInput::ringBufferFramesPerPacket(this, v7);
  v8 = *(this + 2);
  v9 = *(v8 + 856);
  v10 = *(v8 + 872);
  v11 = *(*(this + 3) + 304);
  v13 = AudioDSPGraph::Boxes::GraphInput::ringBufferFramesPerPacket(this, v12);
  return ((v9 + v10 + v11 * v13 - 1) / (v11 * v13)) * AudioDSPGraph::Boxes::GraphInput::ringBufferFramesPerPacket(this, v14) - v6 * v3;
}

uint64_t AudioDSPGraph::Graph::preflight(uint64_t result, char *a2, char *a3, unsigned int a4, unsigned int a5, char a6)
{
  if ((*(result + 922) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "not initialized");
    AudioDSPGraph::ThrowException(1768843553, v24, off_1E8335C58);
  }

  v7 = a3;
  v8 = a2;
  v9 = result;
  if (a2 == a3 && (*(result + 923) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "input and output data are identical, but graph cannot process in-place");
    AudioDSPGraph::ThrowException(1768975393, v23, off_1E8335C70);
  }

  v10 = *(result + 888);
  v11 = *(result + 872);
  if (*(result + 920) != 1)
  {
    if (a4 && *(result + 832) != a4 || a5 && *(result + 836) != a5)
    {
      std::string::basic_string[abi:ne200100]<0>(v21, "the slice duration cannot vary, yet a different duration was supplied to preflight.");
      AudioDSPGraph::ThrowException(1718775073, v21, off_1E8335CA0);
    }

    *(result + 880) = a4;
    *(result + 884) = a5;
    goto LABEL_15;
  }

  if (!a4 || !a5)
  {
LABEL_15:
    v12 = *(result + 864);
    *(result + 888) = v12;
    goto LABEL_16;
  }

  *(result + 880) = a4;
  *(result + 884) = a5;
  v12 = *(result + 848) * a4 / a5;
  *(result + 888) = v12;
  if ((a6 & 1) == 0 && v12 > *(result + 864))
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "preflight slice duration is greater than the graph's maximum slice duration.");
    AudioDSPGraph::ThrowException(1718775073, v22, off_1E8335C88);
  }

LABEL_16:
  *(result + 872) = v12;
  v13 = *(result + 376);
  v14 = *(result + 384) - v13;
  if ((v14 & 0x7FFFFFFF8) != 0)
  {
    v15 = 0;
    do
    {
      if (v15 >= v14 >> 3)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v13 + 8 * v15);
      }

      result = AudioDSPGraph::Boxes::GraphInput::preflight(v16, a2);
      *v8 = result;
      v8 += 80;
      ++v15;
      v13 = v9[47];
      v14 = v9[48] - v13;
    }

    while (v15 < (v14 >> 3));
  }

  v17 = v9[50];
  v18 = v9[51] - v17;
  if ((v18 & 0x7FFFFFFF8) != 0)
  {
    v19 = 0;
    do
    {
      if (v19 >= v18 >> 3)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v17 + 8 * v19);
      }

      result = AudioDSPGraph::Boxes::GraphOutput::preflight(v20, a2);
      *v7 = result;
      v7 += 80;
      ++v19;
      v17 = v9[50];
      v18 = v9[51] - v17;
    }

    while (v19 < (v18 >> 3));
  }

  if (a6)
  {
    v9[111] = v10;
    v9[109] = v11;
  }

  return result;
}

void sub_1C91B2FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GraphInput::ringBufferFramesPerPacket(AudioDSPGraph::Boxes::GraphInput *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, v5, off_1E83378B0);
  }

  return *(*(*(v2 + 16) + 120) + 20);
}

void sub_1C91B3084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPGraphProcessPCMData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v7 = a5;
  v8 = a4;
  v6[0] = &v11;
  v6[1] = &v9;
  v6[2] = &v7;
  v6[3] = &v10;
  v6[4] = &v8;
  CADSPGraphProcessPCMData::$_0::operator()(v6);
  return 1;
}

void sub_1C91B3100(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException(gCADSPRealTimeSafeAllocator);
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91B30F0);
}

uint64_t AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::read(uint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X0] }

  return *(a1 + 16);
}

void AudioDSPGraph::IsoGroup::processAll(AudioDSPGraph::IsoGroup *this)
{
  if (*(this + 66))
  {
    v2 = *(*(this + 1) + 872) + *(*(this + 1) + 856);
    v3 = *(this + 36);
    if (v2 <= v3)
    {
      if (*(this + 67) != 1)
      {
        return;
      }

      v4 = 0;
    }

    else
    {
      v4 = (v2 + ~v3 + *(this + 37)) / *(this + 37);
      if (*(this + 67) != 1)
      {
        for (; v4; LODWORD(v4) = v4 - 1)
        {
          AudioDSPGraph::IsoGroup::process(this, *(this + 67));
          *(this + 36) += *(this + 37);
        }

        return;
      }
    }

    AudioDSPGraph::IsoGroup::process(this, v4);
    *(this + 36) += *(this + 37) * v4;
    return;
  }

  AudioDSPGraph::IsoGroup::process(this, 1);
}

void AudioDSPGraph::Boxes::GraphInput::process(AudioDSPGraph::Boxes::GraphInput *this, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a2;
  v7 = *(this + 109);
  if (v7)
  {
    (*(*v7 + 96))(v7, a2, *(*(this + 105) + 72), *(this + 904), *(*(this + 105) + 8));
  }

  if ((*(*(this + 2) + 924) & 1) == 0)
  {
    v8 = (v5 / (*(*this + 656))(this, a3, a4, a5));
    if (*(*(this + 2) + 925) == 1)
    {
      v34 = *(*(this + 105) + 72);
      LOBYTE(v35) = 0;
      v12 = *(this + 12);
      if (*(this + 13) == v12)
      {
        v30 = (this + 40);
        if (*(this + 63) < 0)
        {
          v30 = *v30;
        }

        caulk::make_string(v36, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v8, v30, 0, 0, v34, v35);
        AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C78);
      }

      AudioDSPGraph::SimpleABL::copy(&v34, (*(*(v12 + 16) + 56) + 80), 0, 0, (*(*(*(v12 + 16) + 120) + 16) * v8), 1);
      v14 = *(this + 12);
      if (*(this + 13) == v14)
      {
        v32 = (this + 40);
        if (*(this + 63) < 0)
        {
          v32 = *v32;
        }

        caulk::make_string(v36, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v13, v32, 0, 0, v34, v35);
        AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C78);
      }

      v15 = *(this + 105);
      v16 = *(*(v14 + 16) + 56);
      v17 = *(v15 + 8);
      v18 = *(v15 + 24);
      v19 = *(v15 + 40);
      *(v16 + 56) = *(v15 + 56);
      *(v16 + 40) = v19;
      *(v16 + 24) = v18;
      *(v16 + 8) = v17;
      v20 = *(this + 12);
      if (*(this + 13) == v20)
      {
        v33 = (this + 40);
        if (*(this + 63) < 0)
        {
          v33 = *v33;
        }

        caulk::make_string(v36, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v13, v33, 0, 0, v34, v35);
        AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C78);
      }

      *(*(*(v20 + 16) + 56) + 72) = *(*(this + 105) + 4);
      AudioDSPGraph::SimpleABL::free(&v34);
      return;
    }

    v21 = *(this + 12);
    if (*(this + 13) == v21)
    {
      v31 = (this + 40);
      if (*(this + 63) < 0)
      {
        v31 = *v31;
      }

      caulk::make_string(v36, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v8, v31, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, v36, off_1E8337C78);
    }

    AudioDSPGraph::RingBuffer::read((this + 800), v8, (*(*(v21 + 16) + 56) + 80), v9, v10, v11);
  }

  v22 = *(this + 3);
  v23 = *(v22 + 256);
  if (*(this + 848) == 1)
  {
    a5.n128_u32[0] = *(v22 + 264);
    v24 = llround((v23 - *(this + 108)) / a5.n128_u64[0] * 24000000.0) + *(this + 107);
    v25 = 3;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  v26 = *(this + 12);
  v27 = *(this + 13);
  if (v26 != v27)
  {
    v28 = *(*(this + 105) + 4);
    do
    {
      v29 = *(*(v26 + 16) + 56);
      *(v29 + 8) = v23;
      *(v29 + 16) = v24;
      *(v29 + 24) = 0uLL;
      *(v29 + 40) = 0uLL;
      *(v29 + 56) = 0;
      *(v29 + 64) = v25;
      *(v29 + 68) = 0;
      *(v29 + 72) = v28;
      v26 += 32;
    }

    while (v26 != v27);
  }
}

void sub_1C91B35C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  AudioDSPGraph::SimpleABL::free(&a12);
  _Unwind_Resume(a1);
}

void AudioDSPGraph::Box::processParameterTaps(AudioDSPGraph::Box *this)
{
  v1 = *(this + 20);
  v2 = *(this + 21);
  if (v1 != v2)
  {
    v4 = v1 + 8;
    do
    {
      v5 = v4 - 8;
      (*(**(v4 - 4) + 96))(&v11);
      if (v14)
      {
        (*(*this + 88))(&v7, this, *(v4 - 2), *(v4 - 1), *v4, 0, *&v11);
        if (v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = v11;
        v6 = v12;
        v12 = 0;
        v8 = v6;
        LODWORD(v6) = v13;
        v13 = 0;
        v9 = v6;
        v10 = 0;
      }

      AudioDSPGraph::Error::~Error(&v11);
LABEL_8:
      if ((v10 & 1) == 0)
      {
        AudioDSPGraph::Error::throwException(&v7);
      }

      v4 += 10;
    }

    while (v5 + 10 != v2);
  }
}

void sub_1C91B3734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((a13 & 1) == 0)
  {
    AudioDSPGraph::Error::~Error(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::processPropertyTaps(uint64_t this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(this + 184);
  v2 = *(this + 192);
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      v4 = v1[5];
      v13 = *(v1 + 12) - v4;
      v5 = (*(**v1 + 304))(*v1, *(v1 + 2), *(v1 + 3), *(v1 + 4), &v13, v4);
      if (v5)
      {
        v9 = v5;
        v11 = *v1;
        v10 = v1 + 1;
        v12 = (v11 + 40);
        if (*(v11 + 63) < 0)
        {
          v12 = *v12;
        }

        v16 = 492;
        v17[0] = v12;
        v18 = v10;
        v19 = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<AudioDSPGraph::PropertySpec>(AudioDSPGraph::PropertySpec &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
        v20 = 492;
        v21 = v25;
        *__len = xmmword_1C925F110;
        v23 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v24 = 0;
        v26 = v25;
        __dst = 2;
        v15 = v17;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v21, "'{}' failed to get property {}", 30, &__dst);
        std::string::basic_string<std::string_view,0>(&__dst, v26, __len[1]);
        if (v26 != v25)
        {
          operator delete(v26);
        }

        AudioDSPGraph::ThrowException(v9, &__dst, off_1E8334BF0);
      }

      this = (*(*v3 + 312))(v3, *(v1 + 6), *(v1 + 7), *(v1 + 8), v13, v4);
      if (this)
      {
        v6 = v3;
        v7 = this;
        v8 = (v6 + 40);
        if (*(v6 + 63) < 0)
        {
          v8 = *v8;
        }

        v16 = 492;
        v17[0] = v8;
        v18 = v1 + 3;
        v19 = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<AudioDSPGraph::PropertySpec>(AudioDSPGraph::PropertySpec &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
        v20 = 492;
        v21 = v25;
        *__len = xmmword_1C925F110;
        v23 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v24 = 0;
        v26 = v25;
        __dst = 2;
        v15 = v17;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v21, "'{}' failed to set property {}", 30, &__dst);
        std::string::basic_string<std::string_view,0>(&__dst, v26, __len[1]);
        if (v26 != v25)
        {
          operator delete(v26);
        }

        AudioDSPGraph::ThrowException(v7, &__dst, off_1E8334C08);
      }

      v1 += 8;
    }

    while (v1 != v2);
  }

  return this;
}

void sub_1C91B39E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::AUBox::getProperty(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, unsigned int *a5, void *outData)
{
  ioDataSize = *a5;
  result = AudioUnitGetProperty(this[105], a2, a3, a4, outData, &ioDataSize);
  *a5 = ioDataSize;
  return result;
}

void sub_1C91B3AB4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CADSPRealTimeErrorCreateFromCurrentException(gCADSPRealTimeSafeAllocator);
    *v1 = v2;
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91B3AA8);
}

uint64_t AudioDSPGraph::Graph::getProperty(AudioDSPGraph::Graph *this, unsigned int a2, unsigned int *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(this + 78, a2);
  if (!v5)
  {
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v12, a2);
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v12;
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
      v10 = v12.__r_.__value_.__r.__words[0];
    }

    v15[1] = size;
    v15[2] = 13;
    v14[2] = 13;
    v15[0] = v10;
    v16 = v20;
    *__len = xmmword_1C925F110;
    v18 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v19 = 0;
    __p = v20;
    v14[0] = 1;
    v14[1] = v15;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v16, "graph property {} does not exist", 32, v14);
    std::string::basic_string<std::string_view,0>(__dst, __p, __len[1]);
    if (__p != v20)
    {
      operator delete(__p);
    }

    AudioDSPGraph::ThrowException(1852204065, __dst, off_1E83361F8);
  }

  v6 = v5[9];
  if (v5[10] == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "getProperty : property is not connected to any box.");
    AudioDSPGraph::ThrowException(1969451041, v11, off_1E8336210);
  }

  v7 = *(**v6 + 304);

  return v7();
}

void sub_1C91B3C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t CADSPBox.audioComponentDescription.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  if ([v0 getAudioComponentDescription_])
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CADSPBox.parameter(forID:scope:element:)(Swift::UInt32 forID, Swift::UInt32 scope, Swift::UInt32 element)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0.0;
  v8 = 0;
  if ([v3 getParameter:&v9 forID:*&forID scope:*&scope element:*&element error:&v8])
  {
    v4 = v9;
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1C925C194();

    swift_willThrow();
  }

  return v4;
}

uint64_t CADSPBox.getProperty<A>(_:forID:scope:element:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a5;
  v10[3] = a6;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3929C0, &qword_1C925EF40);
  return sub_1C91B44B8(a1, sub_1C91B448C, v10, a5, v8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v14);
}

id sub_1C91B4378(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = *(*(a6 - 8) + 64);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (HIDWORD(v8))
  {
    goto LABEL_8;
  }

  v14 = *(*(a6 - 8) + 64);
  v13 = 0;
  if ([a2 getPropertyData:a1 size:&v14 forID:a3 scope:a4 element:a5 error:&v13])
  {
    return v13;
  }

  v11 = v13;
  v12 = sub_1C925C194();

  result = swift_willThrow();
  *a8 = v12;
  return result;
}

uint64_t sub_1C91B44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CADSPBox.setProperty<A>(_:forID:scope:element:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a5;
  v10[3] = a6;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3929C0, &qword_1C925EF40);
  return sub_1C91B47F0(a1, sub_1C91B4790, v10, a5, v8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v14);
}

id sub_1C91B4684(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v8 = *(*(a6 - 8) + 64);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (HIDWORD(v8))
  {
    goto LABEL_8;
  }

  if ([a2 setPropertyData:a1 size:? forID:? scope:? element:? error:?])
  {
    return 0;
  }

  v11 = 0;
  v12 = sub_1C925C194();

  result = swift_willThrow();
  *a8 = v12;
  return result;
}

uint64_t sub_1C91B47F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

CADSPPropertyInfo __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CADSPBox.propertyInfo(forID:scope:element:)(Swift::UInt32 forID, Swift::UInt32 scope, Swift::UInt32 element)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  if ([v3 getPropertyInfo:v8 forID:*&forID scope:*&scope element:*&element error:&v7])
  {
    v4 = v8[0];
    v5 = v7;
  }

  else
  {
    v4 = v7;
    sub_1C925C194();

    swift_willThrow();
  }

  return v4;
}

uint64_t CADSPBoxModel.audioComponentDescription.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  if ([v0 getAudioComponentDescription_])
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall CADSPMutableBoxModel.setAudioComponentDescription(_:)(AudioComponentDescription_optional a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if ((*&a1.value.componentFlagsMask & 0x100000000) != 0)
  {

    [v1 setAudioComponentDescription_];
  }

  else
  {
    v2[0] = a1.value.componentType;
    v2[1] = a1.value.componentSubType;
    v2[2] = a1.value.componentManufacturer;
    v2[3] = a1.value.componentFlags;
    v2[4] = a1.value.componentFlagsMask;
    [v1 setAudioComponentDescription_];
  }
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CADSPGraph.parameter(forID:)(Swift::UInt32 forID)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  v6 = 0;
  if ([v1 getParameter:&v7 forID:*&forID error:&v6])
  {
    v2 = v7;
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1C925C194();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1C91B4C40(uint64_t a1, SEL *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  if ([v2 *a2])
  {
    v3 = v7;
    v4 = v6;
  }

  else
  {
    v3 = v6;
    sub_1C925C194();

    swift_willThrow();
  }

  return v3;
}

uint64_t CADSPGraph.getProperty<A>(_:forID:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a3;
  v8[3] = a4;
  v9 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3929C0, &qword_1C925EF40);
  return sub_1C91B44B8(a1, sub_1C91B4EA4, v8, a3, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v10);
}

id sub_1C91B4D9C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(*(a4 - 8) + 64);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_8;
  }

  v12 = *(*(a4 - 8) + 64);
  v11 = 0;
  if ([a2 getPropertyData:a1 size:&v12 forID:a3 error:&v11])
  {
    return v11;
  }

  v9 = v11;
  v10 = sub_1C925C194();

  result = swift_willThrow();
  *a6 = v10;
  return result;
}

uint64_t CADSPGraph.setProperty<A>(_:forID:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a3;
  v8[3] = a4;
  v9 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3929C0, &qword_1C925EF40);
  return sub_1C91B47F0(a1, sub_1C91B5070, v8, a3, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v10);
}

id sub_1C91B4F70(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *(*(a4 - 8) + 64);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_8;
  }

  if ([a2 setPropertyData:a1 size:? forID:? error:?])
  {
    return 0;
  }

  v9 = 0;
  v10 = sub_1C925C194();

  result = swift_willThrow();
  *a6 = v10;
  return result;
}

CADSPPropertyInfo __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CADSPGraph.propertyInfo(forID:)(Swift::UInt32 forID)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = 0;
  if ([v1 getPropertyInfo:v6 forID:*&forID error:&v5])
  {
    v2 = v6[0];
    v3 = v5;
  }

  else
  {
    v2 = v5;
    sub_1C925C194();

    swift_willThrow();
  }

  return v2;
}

int8x16_t CADSPGraph.streamDescription(port:direction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v5 = [v3 getStreamDescription:&v11 forPort:a1 direction:a2];
  v6 = v13;
  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  result = vandq_s8(v11, v8);
  v10 = vandq_s8(v12, v8);
  *a3 = result;
  a3[1] = v10;
  a3[2].i64[0] = v6;
  a3[2].i8[8] = v5 ^ 1;
  return result;
}

double sub_1C91B52A4(SEL *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  if ([v1 *a1])
  {
    v2 = *v7;
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1C925C194();

    swift_willThrow();
  }

  return v2;
}

int8x16_t CADSPGraphModel.audioStreamConfiguration(forPort:direction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v5 = [v3 getAudioStreamConfiguration:&v11 forPort:a1 direction:a2];
  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  result = vandq_s8(v11, v7);
  v9 = vandq_s8(v12, v7);
  v10 = vandq_s8(v13, v7);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3].i8[0] = v5 ^ 1;
  return result;
}

void __swiftcall CADSPGraphModel.audioStreamConfiguration(forName:)(CADSPAudioStreamConfiguration_optional *__return_ptr retstr, Swift::String forName)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v4 = sub_1C925C1A4();
  v5 = [v2 getAudioStreamConfiguration:&v11 forName:v4];

  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  v8 = vandq_s8(v11, v7);
  v9 = vandq_s8(v12, v7);
  v10 = vandq_s8(v13, v7);
  *&retstr->value.var0.mSampleRate = v8;
  *&retstr->value.var0.mBytesPerPacket = v9;
  *&retstr->value.var0.mBitsPerChannel = v10;
  retstr->is_nil = v5 ^ 1;
}

Swift::Void __swiftcall CADSPMutableGraphModel.setAudioStreamConfiguration(_:forName:)(CADSPAudioStreamConfiguration_optional *_, Swift::String forName)
{
  v7 = *MEMORY[0x1E69E9840];
  if (_->is_nil)
  {
    v5 = sub_1C925C1A4();
    [v2 setAudioStreamConfiguration:0 forName:?];
  }

  else
  {
    v3 = *&_->value.var0.mBytesPerPacket;
    v6[0] = *&_->value.var0.mSampleRate;
    v6[1] = v3;
    v6[2] = *&_->value.var0.mBitsPerChannel;
    v4 = sub_1C925C1A4();
    [v2 setAudioStreamConfiguration:v6 forName:v4];
  }
}

unint64_t CADSPParameterModel.defaultValue.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v1 = [v0 getDefaultValue_];
  v2 = v4;
  if (!v1)
  {
    v2 = 0;
  }

  return v2 | ((v1 ^ 1u) << 32);
}

Swift::Void __swiftcall CADSPMutableParameterModel.setDefaultValue(_:)(Swift::Float_optional *a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    [v1 removeDefaultValue];
  }

  else
  {
    LODWORD(v2) = a1;
    [v1 setDefaultValue_];
  }
}

int8x16_t CADSPWireModel.audioStreamConfiguration.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v3 = [v1 getAudioStreamConfiguration_];
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  v5 = vdupq_n_s64(v4);
  result = vandq_s8(v9, v5);
  v7 = vandq_s8(v10, v5);
  v8 = vandq_s8(v11, v5);
  *a1 = result;
  a1[1] = v7;
  a1[2] = v8;
  a1[3].i8[0] = v3 ^ 1;
  return result;
}

Swift::Void __swiftcall CADSPMutableWireModel.setAudioStreamConfiguration(_:)(CADSPAudioStreamConfiguration_optional *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1->is_nil)
  {

    [v1 setAudioStreamConfiguration_];
  }

  else
  {
    v2 = *&a1->value.var0.mBytesPerPacket;
    v3[0] = *&a1->value.var0.mSampleRate;
    v3[1] = v2;
    v3[2] = *&a1->value.var0.mBitsPerChannel;
    [v1 setAudioStreamConfiguration_];
  }
}

CFAllocatorRef __CADSPAllocatorInitialize_block_invoke()
{
  result = MEMORY[0x1CCA844C0]();
  context.version = 0;
  if (*MEMORY[0x1E69E3C08])
  {
    context.info = *MEMORY[0x1E69E3C08];
    memset(&context.retain, 0, 24);
    context.allocate = _ZZZ24CADSPAllocatorInitializeEUb_EN3__08__invokeElmPv;
    context.reallocate = 0;
    context.deallocate = _ZZZ24CADSPAllocatorInitializeEUb_EN3__18__invokeEPvS0_;
    context.preferredSize = 0;
    result = CFAllocatorCreate(*MEMORY[0x1E695E4A8], &context);
    gCADSPRealTimeSafeAllocator = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CADSPAudioUnitFactory(void *result)
{
  if (result)
  {
    if (*result == 1635083896 && *(result + 2) == 1634758764 && *(result + 1) == 1685287015)
    {
      result = malloc_type_malloc(0xD70uLL, 0x10F304054A42181uLL);
      *result = ausdk::ComponentBase::AP_Open;
      result[1] = ausdk::ComponentBase::AP_Close;
      result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
      result[3] = 0;
      result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Construct;
      result[6] = 0;
      result[7] = 0;
      result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Destruct;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

AudioComponent CADSPAudioUnitRegister(int a1, int a2, int a3, CFStringRef inName, UInt32 inVersion, UInt32 a6)
{
  result = 0;
  if (a2 == 1685287015 && a1 == 1635083896 && a3 == 1634758764)
  {
    v11 = v6;
    v12 = v7;
    qmemcpy(&inDesc, "xfuagpsdlppa", 12);
    inDesc.componentFlags = a6;
    inDesc.componentFlagsMask = 0;
    return AudioComponentRegister(&inDesc, inName, inVersion, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,CA::DSP::AUDSPGraph>::Factory);
  }

  return result;
}

BOOL CA::DSP::AUDSPGraph::ValidFormat(CA::DSP::AUDSPGraph *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a2 - 1 > 1)
  {
    return 0;
  }

  Scope = ausdk::AUBase::GetScope(this, a2);
  v6 = Scope[5];
  if (v6)
  {
    LODWORD(v7) = (*(*v6 + 24))(v6);
  }

  else
  {
    v7 = (Scope[3] - Scope[2]) >> 3;
  }

  return v7 > a3;
}

uint64_t ausdk::AUBase::GetScope(ausdk::AUBase *this, unsigned int a2)
{
  if (a2 < 4)
  {
    return this + 48 * a2 + 32;
  }

  result = (*(*this + 408))(this);
  if (!result)
  {
    ausdk::ThrowQuiet(0);
  }

  return result;
}

void ausdk::ThrowQuiet(ausdk *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  ausdk::AUException::AUException(exception, -10866);
}

std::runtime_error *ausdk::AUException::AUException(std::runtime_error *this, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v10, "OSStatus ");
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v10, p_p, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(this, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  this->__vftable = &unk_1F48CBEC8;
  LODWORD(this[1].__vftable) = a2;
  return this;
}

void sub_1C91B5C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void ausdk::AUException::~AUException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t CA::DSP::AUDSPGraph::SupportedNumChannels(CA::DSP::AUDSPGraph *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &CA::DSP::AUDSPGraph::SupportedNumChannels(AUChannelInfo const**)::sChannels;
  }

  return 1;
}

double CA::DSP::AUDSPGraph::GetLatency(CA::DSP::AUDSPGraph *this)
{
  v2 = 0.0;
  if (caulk::shared_semaphore_mutex::try_lock_shared((this + 608)))
  {
    v3 = *(this + 81);
    if (v3)
    {
      CA::DSP::Graph::GetLatency(&v5, v3);
      if (v6 == 1)
      {
        v2 = v5;
      }

      else
      {
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
      }
    }

    caulk::shared_semaphore_mutex::unlock_shared((this + 608));
  }

  return v2;
}

const void **CA::DSP::Graph::GetLatency(CA::DSP::Graph *this, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = 0.0;
  v10 = 0;
  v3 = 0;
  if (CADSPGraphGetLatency(a2, v12))
  {
    v4 = 0;
  }

  else
  {
    v4 = v10 == 0;
  }

  if (v4)
  {
    v3 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v10 = v3;
  }

  v9 = v3;
  if (v3)
  {
    v9 = 0;
    v8 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    v7 = 0;
    v11 = 0;
    *this = v3;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  else
  {
    v5 = v12[0];
    v8 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *this = v5;
    *(this + 8) = 1;
  }

  return result;
}

void sub_1C91B601C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t CA::DSP::AUDSPGraph::GetParameterInfo(CA::DSP::AUDSPGraph *this, int a2, uint64_t a3, AudioUnitParameterInfo *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  caulk::shared_semaphore_mutex::lock_shared((this + 608));
  if (a2)
  {
    goto LABEL_2;
  }

  v9 = -1073733632;
  v10 = *(this + 81);
  if (v10 && std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(v10 + 8) + 584), a3))
  {
    CA::DSP::Graph::GetParameterDirection(&__p, v10, a3);
    if (LODWORD(__p.__r_.__value_.__l.__data_))
    {
      v11 = 0;
    }

    else
    {
      v11 = __p.__r_.__value_.__s.__data_[8];
    }

    if ((__p.__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&__p.__r_.__value_.__l.__data_);
    }

    if (v11)
    {
      v9 = -1073733632;
    }

    else
    {
      v9 = 1073750016;
    }
  }

  else if (!std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(this + 416, a3))
  {
LABEL_2:
    v8 = 4294956418;
    goto LABEL_33;
  }

  v12 = bswap32(a3);
  *__s = v12;
  if ((v12 - 32) > 0x5E || ((v12 >> 8) - 32) > 0x5E || ((v12 << 8 >> 24) - 32) > 0x5E || ((v12 >> 24) - 32) > 0x5E)
  {
    std::to_string(&__p, a3);
  }

  else
  {
    v22 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (p_p)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15 = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
    theString = v15;
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v15 = 0;
    theString = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v15 = theString;
LABEL_30:
  theString = 0;
  a4->cfNameString = v15;
  a4->flags |= 0x8000010u;
  CFStringGetCString(v15, a4->name, 52, 0x8000100u);
  a4->unit = kAudioUnitParameterUnit_Generic;
  *&a4->minValue = 0x7F7FFFFF00800000;
  v16 = a4->flags | v9;
  a4->defaultValue = 0.0;
  a4->flags = v16;
  if (theString)
  {
    CFRelease(theString);
  }

  v8 = 0;
LABEL_33:
  caulk::shared_semaphore_mutex::unlock_shared((this + 608));
  return v8;
}

void sub_1C91B62D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  caulk::shared_semaphore_mutex::unlock_shared((v15 + 608));
  _Unwind_Resume(a1);
}

const void **CA::DSP::Graph::GetParameterDirection(CA::DSP::Graph *this, uint64_t a2, uint64_t a3)
{
  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(&v7, CADSPGraphGetParameterDirection, a2, a3);
  v5 = v8;
  if (v8 == 1)
  {
    *this = v7;
    *(this + 8) = v5;
  }

  else
  {
    v6 = v7;
    v7 = 0;
    v9 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v9);
    *(this + 8) = v5;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
  }

  return result;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int,CADSPDirection *,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int &,CA::DSP::C::API::Tags::Result<CADSPDirection> const&>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *, const void **), uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v11 = 0;
  v5 = a2(a3, a4, &v12, &v11);
  v6 = v11;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v6 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v8 = 0;
    v10 = 0;
    *a1 = v6;
  }

  else
  {
    *a1 = v12;
    v8 = 1;
  }

  *(a1 + 8) = v8;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
}

uint64_t CA::DSP::AUDSPGraph::GetParameterList(CA::DSP::AUDSPGraph *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  caulk::shared_semaphore_mutex::lock_shared((this + 608));
  if (a2)
  {
    ausdk::AUBase::GetParameterList(this, a2, a3, a4);
  }

  else
  {
    v8 = *(this + 81);
    if (v8)
    {
      CA::DSP::Graph::GetModel(&v26, v8);
      v9 = [v26 parameters];
      v27 = v9;
      v28 = 0;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v28);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v26);
      v11 = CA::DSP::end<CA::DSP::ParameterModel>(&v27);
      if (v9 != v11 || v10)
      {
        v13 = 0;
        v12 = 0;
        v14 = v10 - 1;
        do
        {
          v15 = v13;
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
          v17 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          v28 = 0;
          cf = v17;
          CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&v28);
          v18 = cf;
          v24 = cf;
          if (cf)
          {
            CFRetain(cf);
            v18 = v24;
          }

          v19 = [v18 ID];
          CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&v24);
          if (!std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(this + 416, v19))
          {
            if (a3)
            {
              v20 = cf;
              v23 = cf;
              if (cf)
              {
                CFRetain(cf);
                v20 = v23;
              }

              a3[v12] = [v20 ID];
              CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&v23);
            }

            ++v12;
          }

          CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(&cf);
          v13 = v15 + 1;
        }

        while (v9 != v11 || v14 != v15);
      }

      else
      {
        v12 = 0;
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v27);
    }

    else
    {
      v12 = 0;
    }

    for (i = *(this + 418); i; i = *i)
    {
      if (a3)
      {
        a3[v12] = *(i + 4);
      }

      ++v12;
    }

    *a4 = v12;
  }

  caulk::shared_semaphore_mutex::unlock_shared((this + 608));
  return 0;
}

const void **CA::DSP::Graph::GetModel(CA::DSP::Graph *this, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    CFRetain(*(a2 + 24));
  }

  v5 = 0;
  *this = v3;
  return CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v5);
}

const void **CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPParameterModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t CA::DSP::AUDSPGraph::Render(CA::DSP::AUDSPGraph *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 15);
  if (v8)
  {
    v8 = (*(*v8 + 24))(v8);
    LODWORD(v9) = v8;
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v42 - v11);
  bzero(v42 - v11, v13);
  if (v9)
  {
    v14 = 0;
    while (1)
    {
      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(this + 80, v14);
      v16 = v15;
      if (v17)
      {
        break;
      }

      v19 = v15;
      if (v15)
      {
        return v19;
      }

LABEL_31:
      Element = ausdk::AUScope::GetElement((this + 80), v14);
      if (!Element)
      {
        goto LABEL_48;
      }

      if (!*(Element + 144))
      {
LABEL_50:
        v41 = 0xFFFFFFFFLL;
        goto LABEL_49;
      }

      v12[v14++] = (*(Element + 152) + 48);
      if (v14 == v10)
      {
        goto LABEL_37;
      }
    }

    v18 = *(v15 + 172);
    if (!v18)
    {
      return 4294956420;
    }

    if (v18 == 1 || (*(v15 + 168) & 1) == 0)
    {
      v21 = *(v15 + 108);
      if ((*(v15 + 92) & 0x20) != 0)
      {
        v22 = 1;
      }

      else
      {
        v22 = *(v15 + 108);
      }

      if ((*(v15 + 92) & 0x20) == 0)
      {
        v21 = 1;
      }

      if (v21 <= *(v15 + 160))
      {
        v26 = *(v15 + 152);
        v25 = (v26 + 12);
        v27 = v26[12];
        if (v26[12] <= *v26)
        {
          if (v27)
          {
            v28 = *(v15 + 104) * a4;
            v29 = v26 + 16;
            do
            {
              *(v29 - 2) = v22;
              *(v29 - 1) = v28;
              *v29 = 0;
              v29 += 2;
              --v27;
            }

            while (v27);
          }

          v23 = v25 & 0xFFFFFFFF00000000;
          *(v15 + 144) = 2;
          v25 = v25;
          v24 = 1;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 4294956428;
      }

      v19 = (v23 | v25);
      if ((v24 & 1) == 0)
      {
LABEL_30:
        if (v19)
        {
          return v19;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v19 = ausdk::AUBufferList::PrepareBufferOrError((v15 + 144), (v15 + 80), a4);
      if ((v20 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (*(v16 + 172) == 1)
    {
      v30 = AudioUnitRender(*(v16 + 192), a2, a3, *(v16 + 200), a4, v19);
    }

    else
    {
      v30 = (*(v16 + 176))(*(v16 + 184), a2, a3, v14, a4, v19);
    }

    v19 = v30;
    if (!*(v16 + 172))
    {
      return 4294956420;
    }

    goto LABEL_30;
  }

LABEL_37:
  v32 = *(this + 21);
  if (v32)
  {
    v32 = (*(*v32 + 24))(v32);
    LODWORD(v33) = v32;
  }

  else
  {
    v33 = (*(this + 19) - *(this + 18)) >> 3;
  }

  MEMORY[0x1EEE9AC00](v32);
  v35 = (v42 - v34);
  bzero(v42 - v34, v36);
  if (v33)
  {
    v38 = 0;
    while (1)
    {
      v39 = ausdk::AUScope::GetElement((this + 128), v38);
      if (!v39)
      {
        break;
      }

      if (!*(v39 + 144))
      {
        goto LABEL_50;
      }

      v35[v38++] = (*(v39 + 152) + 48);
      if (v33 == v38)
      {
        return CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(this, v37, a4, v10, v12, v33, v35);
      }
    }

LABEL_48:
    v41 = 4294956419;
LABEL_49:
    ausdk::Throw(v41);
  }

  return CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(this, v37, a4, v10, v12, v33, v35);
}

void sub_1C91B6B80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    result = (*(*v3 + 32))(v3, a2);
    if (!result)
    {
      return 4294956419;
    }
  }

  else
  {
    v6 = a1 + 16;
    v5 = *(a1 + 16);
    if (a2 >= ((*(v6 + 8) - v5) >> 3))
    {
      return 4294956419;
    }

    result = *(v5 + 8 * a2);
    if (!result)
    {
      return 4294956419;
    }
  }

  return result;
}

uint64_t ausdk::AUScope::GetElement(ausdk::AUScope *this, uint64_t a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    return (*(*v3 + 32))(v3, a2);
  }

  v6 = this + 16;
  v5 = *(this + 2);
  if (a2 >= ((*(v6 + 1) - v5) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v5 + 8 * a2);
  }
}

uint64_t CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(CA::DSP::AUDSPGraph *this, unsigned int *a2, uint64_t a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v107[1] = *MEMORY[0x1E69E9840];
  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  v11 = a3;
  if (caulk::shared_semaphore_mutex::try_lock_shared((this + 608)))
  {
    v13 = *(this + 81);
    if (!v13)
    {
LABEL_76:
      v18 = 4294956433;
      goto LABEL_77;
    }

    if (*(this + 3289) != 1 || (*(this + 3289) = 0, CA::DSP::Graph::Reset(&v97, v13), (v98 & 1) != 0))
    {
LABEL_6:
      if (*(this + 3288) == 1)
      {
        if (a6)
        {
          v14 = 0;
          do
          {
            v15 = a7[v14];
            if (v15->mNumberBuffers)
            {
              v16 = 0;
              p_mData = &v15->mBuffers[0].mData;
              do
              {
                bzero(*p_mData, *(p_mData - 1));
                ++v16;
                p_mData += 2;
              }

              while (v16 < v15->mNumberBuffers);
            }

            ++v14;
          }

          while (v14 != a6);
        }

        goto LABEL_58;
      }

      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v93 = *(Element + 80);
      v20 = *(this + 81);
      v21 = *(*(v20 + 8) + 384) - *(*(v20 + 8) + 376);
      v94 = (v21 >> 3);
      MEMORY[0x1EEE9AC00](Element);
      v23 = &v87[-v22];
      bzero(&v87[-v22], v24);
      v92 = v21 & 0x7FFFFFFF8;
      if ((v21 & 0x7FFFFFFF8) != 0)
      {
        v26 = (v94 + 3) & 0x1FFFFFFFCLL;
        v27 = vdupq_n_s64(v94 - 1);
        v28 = (v23 + 8);
        v29 = 1;
        do
        {
          v30 = vdupq_n_s64(v29 - 1);
          v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1C925F100)));
          if (vuzp1_s16(v31, *v27.i8).u8[0])
          {
            *(v28 - 2) = v11;
          }

          if (vuzp1_s16(v31, *&v27).i8[2])
          {
            *(v28 - 1) = v11;
          }

          if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1C925F0F0)))).i32[1])
          {
            *v28 = v11;
            v28[1] = v11;
          }

          v29 += 4;
          v28 += 4;
          v26 -= 4;
        }

        while (v26);
      }

      v89 = *(*(v20 + 8) + 408) - *(*(v20 + 8) + 400);
      v32 = (v89 >> 3);
      MEMORY[0x1EEE9AC00](v25);
      v34 = &v87[-v33];
      bzero(&v87[-v33], v35);
      v95 = v11 | (v93 << 32);
      v96 = 1;
      v107[0] = 0;
      v36 = CADSPGraphCalculateExpectedNumberOfOutputPCMFramesWithFlags(v20, v23, v94, v34, v32, &v95, 0);
      v37 = v107[0];
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v107[0] == 0;
      }

      if (v38)
      {
        v37 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
        v107[0] = v37;
      }

      v106 = v37;
      if (v37)
      {
        v39 = 0;
        v106 = 0;
        *&v101 = v37;
      }

      else
      {
        v39 = 1;
      }

      BYTE8(v101) = v39;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v106);
      v40 = BYTE8(v101);
      v88 = a6;
      v91 = v32;
      v90 = v34;
      if (BYTE8(v101) & 1) != 0 || (v41 = v101, *&v101 = 0, v107[0] = 0, v97 = v41, CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v107), LOBYTE(v98) = v40, (BYTE8(v101) & 1) == 0) && (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v101), (v98))
      {
        v105 = 0;
        goto LABEL_38;
      }

      v42 = v97;
      v97 = 0;
      v105 = v42;
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v97);
      if (!v105)
      {
LABEL_38:
        v43 = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v105);
        v44 = *(this + 18);
        v101 = *(this + 17);
        v102 = v44;
        v45 = *(this + 20);
        v103 = *(this + 19);
        v104 = v45;
        MEMORY[0x1EEE9AC00](v43);
        v93 = &v87[-((v46 + 15) & 0x3FFFFFFFF0)];
        bzero(v93, v46);
        if (v92)
        {
          v48 = 0;
          v49 = (v93 + 16);
          v50 = a4;
          do
          {
            v51 = v48 >= v50 ? 0 : a5[v48];
            CA::DSP::Graph::GetStreamDescription(&v97, *(this + 81), v48, 0);
            IsValidGraphAudioBufferList = CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(this, v51, 0, v48, &v97, v11);
            if (!IsValidGraphAudioBufferList)
            {
              goto LABEL_59;
            }

            *(v49 - 2) = v51;
            *(v49 - 1) = &v101;
            *v49 = *&v23[4 * v48];
            v49 += 6;
          }

          while (v94 != ++v48);
        }

        v52 = v89 & 0x7FFFFFFF8;
        v53 = v91;
        MEMORY[0x1EEE9AC00](IsValidGraphAudioBufferList);
        v55 = &v87[-((v54 + 15) & 0x3FFFFFFFF0)];
        bzero(v55, v54);
        v56 = v90;
        if (v52)
        {
          v57 = 0;
          v58 = v88;
          v59 = v55 + 16;
          while (1)
          {
            v60 = v57 >= v58 ? 0 : a7[v57];
            CA::DSP::Graph::GetStreamDescription(&v97, *(this + 81), v57, 1);
            if (!CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(this, v60, 1, v57, &v97, v11))
            {
              break;
            }

            *(v59 - 2) = v60;
            *(v59 - 1) = 0;
            *v59 = *&v56[4 * v57];
            v59 += 6;
            if (v53 == ++v57)
            {
              goto LABEL_52;
            }
          }

LABEL_59:
          v18 = 4294967246;
          goto LABEL_77;
        }

LABEL_52:
        v61 = *(this + 81);
        v107[0] = 0;
        v62 = CADSPGraphProcessPCMData(v61, v93, v94, v55, v53);
        v63 = v107[0];
        if (!v62 && !v107[0])
        {
          v63 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
          v107[0] = v63;
        }

        v106 = v63;
        if (!v63)
        {
          LOBYTE(v98) = 1;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v106);
          v105 = 0;
LABEL_57:
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v105);
LABEL_58:
          v18 = 0;
LABEL_77:
          caulk::shared_semaphore_mutex::unlock_shared((this + 608));
          return v18;
        }

        v106 = 0;
        LOBYTE(v98) = 0;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v106);
        v97 = 0;
        v107[0] = 0;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v107);
        LOBYTE(v96) = 0;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v97);
        v95 = 0;
        v105 = v63;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v95);
        if (!v105)
        {
          goto LABEL_57;
        }

        if (*(this + 85))
        {
          v73 = _os_log_pack_size();
          v74 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v73, 1, 0);
          v97 = v74;
          v75 = *(this + 85);
          v76 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v74, v105);
          v98 = this;
          v99 = v75;
          v100 = v76;
          CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,__CFString const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_10>(&v97, v74, v73);
          if (!v74)
          {
LABEL_75:
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v105);
            goto LABEL_76;
          }
        }

        else
        {
          v84 = _os_log_pack_size();
          v85 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v84, 1, 0);
          v86 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v85, v105);
          CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_11>(this, v86, v85, v84);
          if (!v85)
          {
            goto LABEL_75;
          }
        }

        caulk::concurrent::messenger::enqueue();
        goto LABEL_75;
      }

      if (*(this + 85))
      {
        v69 = _os_log_pack_size();
        v70 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v69, 1, 0);
        *&v101 = v70;
        v71 = *(this + 85);
        v72 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v70, v105);
        *(&v101 + 1) = this;
        *&v102 = v71;
        *(&v102 + 1) = v72;
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,__CFString const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_8>(&v101, v70, v69);
        if (!v70)
        {
LABEL_70:
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v105);
          v18 = 4294956422;
          goto LABEL_77;
        }
      }

      else
      {
        v81 = _os_log_pack_size();
        v82 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v81, 1, 0);
        v83 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v82, v105);
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_9>(this, v83, v82, v81);
        if (!v82)
        {
          goto LABEL_70;
        }
      }

      caulk::concurrent::messenger::enqueue();
      goto LABEL_70;
    }

    v64 = a6;
    if (*(this + 85))
    {
      v65 = _os_log_pack_size();
      v66 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v65, 1, 0);
      *&v101 = v66;
      v67 = *(this + 85);
      v68 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v66, v97);
      *(&v101 + 1) = this;
      *&v102 = v67;
      *(&v102 + 1) = v68;
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,__CFString const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_6>(&v101, v66, v65);
      if (v66)
      {
        caulk::concurrent::messenger::enqueue();
      }

      a6 = v64;
      if (v98)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v78 = _os_log_pack_size();
      v79 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v78, 1, 0);
      v80 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v79, v97);
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_7>(this, v80, v79, v78);
      if (v79)
      {
        caulk::concurrent::messenger::enqueue();
      }
    }

    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v97);
    goto LABEL_6;
  }

  return 4294956433;
}

void sub_1C91B74DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ausdk::Throw(ausdk *this)
{
  v1 = this;
  v4 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "throwing %d", v3, 8u);
  }

  exception = __cxa_allocate_exception(0x18uLL);
  ausdk::AUException::AUException(exception, v1);
}

const void **CA::DSP::Graph::Reset(CA::DSP::Graph *this, uint64_t a2)
{
  v8 = 0;
  v3 = 0;
  if (!CADSPGraphReset(a2))
  {
    v3 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v8 = v3;
  }

  v7 = v3;
  if (v3)
  {
    v7 = 0;
    v6 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    v5 = 0;
    v8 = 0;
    *this = v3;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
  }

  else
  {
    v6 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    *(this + 8) = 1;
  }

  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(CA::DSP::AU::DSPGraph::RealTimeLogMessage *this, uint64_t a2, uint64_t a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v6 = this + 112;
    v7 = this + 8 * a2 + a3 + 112;
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(result + 16) = 0;
    *result = &unk_1F48CB8B8;
    *(result + 8) = 0;
    *(result + 24) = v7;
    *(result + 32) = 16;
    *(result + 40) = &v6[result];
    *(result + 48) = 0;
    *(result + 56) = &v6[8 * a2 + result];
  }

  else
  {
    __break(1u);
  }

  return result;
}

CFTypeRef CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  result = CFRetain(cf);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = v5 + 1;
  *(v4 + 8 * v5) = result;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,__CFString const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_6>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] failed to reset DSP graph - %@");
  *&result = 134218498;
  *v6 = 134218498;
  *(v6 + 4) = v3;
  *(v6 + 12) = 2112;
  *(v6 + 14) = v4;
  *(v6 + 22) = 2112;
  *(v6 + 24) = v5;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_7>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _os_log_pack_fill(a3 + 64, a4, 0, &dword_1C91AE000, "[%p] failed to reset DSP graph - %@");
  *&result = 134218242;
  *v6 = 134218242;
  *(v6 + 4) = a1;
  *(v6 + 12) = 2112;
  *(v6 + 14) = a2;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,__CFString const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_8>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] failed to calculate DSP graph I/O frame counts - %@");
  *&result = 134218498;
  *v6 = 134218498;
  *(v6 + 4) = v3;
  *(v6 + 12) = 2112;
  *(v6 + 14) = v4;
  *(v6 + 22) = 2112;
  *(v6 + 24) = v5;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_9>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _os_log_pack_fill(a3 + 64, a4, 0, &dword_1C91AE000, "[%p] failed to calculate DSP graph I/O frame counts - %@");
  *&result = 134218242;
  *v6 = 134218242;
  *(v6 + 4) = a1;
  *(v6 + 12) = 2112;
  *(v6 + 14) = a2;
  return result;
}

uint64_t CA::DSP::Graph::GetStreamDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = CADSPGraphGetStreamDescription(a2, a3, a4, &v8);
  if (result)
  {
    v6 = v9;
    *a1 = v8;
    *(a1 + 16) = v6;
    *(a1 + 32) = v10;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 40) = v7;
  return result;
}

void sub_1C91B79A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(void *a1, _DWORD *a2, int a3, int a4, uint64_t a5, int a6)
{
  v7 = "input";
  v37 = a4;
  if (!a3)
  {
    v7 = "output";
  }

  v36 = v7;
  if (!a2)
  {
    if (a1[85])
    {
      v23 = _os_log_pack_size();
      v35 = a1;
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int>::RealTimeLogMessageBuilder(v32, v23, &v35, a1 + 85, &v36, &v37);
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_10>(v32, v32[0], v23);
    }

    else
    {
      v25 = _os_log_pack_size();
      v35 = a1;
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int>::RealTimeLogMessageBuilder(v32, v25, &v35, &v36, &v37);
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_11>(v32, v32[0], v25);
    }

    goto LABEL_35;
  }

  v8 = *a2;
  v34 = *a2;
  if ((*(a5 + 12) & 0x20) != 0)
  {
    v33 = *(a5 + 28);
    if (v8 == v33)
    {
      v10 = *(a5 + 24) * a6;
      v9 = 1;
      v30 = 1;
      v31 = v10;
      if (!v8)
      {
        return 1;
      }

      goto LABEL_9;
    }

    goto LABEL_31;
  }

  v33 = 1;
  if (v8 != 1)
  {
LABEL_31:
    if (a1[85])
    {
      v24 = _os_log_pack_size();
      v35 = a1;
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v24, &v35, a1 + 85, &v36, &v37, &v34, &v33);
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_12>(v32, v32[0], v24);
    }

    else
    {
      v26 = _os_log_pack_size();
      v35 = a1;
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v26, &v35, &v36, &v37, &v34, &v33);
      CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_13>(v32, v32[0], v26);
    }

LABEL_35:
    if (v32[0])
    {
      caulk::concurrent::messenger::enqueue();
    }

    return 0;
  }

  v9 = *(a5 + 28);
  v10 = *(a5 + 24) * a6;
  v30 = v9;
  v31 = v10;
LABEL_9:
  v11 = 0;
  v12 = 0;
  for (i = (a2 + 4); ; i += 2)
  {
    v28 = *(i - 2);
    if (v28 != v9)
    {
      break;
    }

    v27 = *(i - 1);
    if (v27 < v10)
    {
      v29 = v11;
      if (a1[85])
      {
        v18 = _os_log_pack_size();
        v35 = a1;
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v18, &v35, a1 + 85, &v36, &v37, &v27, &v31, &v29);
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_16>(v32, v32[0], v18);
      }

      else
      {
        v21 = _os_log_pack_size();
        v35 = a1;
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v21, &v35, &v36, &v37, &v27, &v31, &v29);
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_17>(v32, v32[0], v21);
      }

      goto LABEL_27;
    }

    v14 = *i;
    if (!*i)
    {
      v29 = v11;
      if (a1[85])
      {
        v19 = _os_log_pack_size();
        v35 = a1;
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v19, &v35, a1 + 85, &v36, &v37, &v29);
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_18>(v32, v32[0], v19);
      }

      else
      {
        v22 = _os_log_pack_size();
        v35 = a1;
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v22, &v35, &v36, &v37, &v29);
        CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_19>(v32, v32[0], v22);
      }

      goto LABEL_27;
    }

    if (v10)
    {
      v15 = a1[82] + *v14;
      a1[82] = v15;
      a1[82] = v15 + v14[v10 - 1];
    }

    v12 = ++v11 >= v8;
    if (v8 == v11)
    {
      return 1;
    }
  }

  v29 = v11;
  if (a1[85])
  {
    v17 = _os_log_pack_size();
    v35 = a1;
    CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v17, &v35, a1 + 85, &v36, &v37, &v28, &v30, &v29);
    CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_14>(v32, v32[0], v17);
  }

  else
  {
    v20 = _os_log_pack_size();
    v35 = a1;
    CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(v32, v20, &v35, &v36, &v37, &v28, &v30, &v29);
    CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_15>(v32, v32[0], v20);
  }

LABEL_27:
  if (v32[0])
  {
    caulk::concurrent::messenger::enqueue();
  }

  return v12;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,__CFString const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_10>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] failed to process DSP graph - %@");
  *&result = 134218498;
  *v6 = 134218498;
  *(v6 + 4) = v3;
  *(v6 + 12) = 2112;
  *(v6 + 14) = v4;
  *(v6 + 22) = 2112;
  *(v6 + 24) = v5;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,CA::DSP::Reference<CA::DSP::RealTimeError>>::fill<CA::DSP::AUDSPGraph::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_11>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _os_log_pack_fill(a3 + 64, a4, 0, &dword_1C91AE000, "[%p] failed to process DSP graph - %@");
  *&result = 134218242;
  *v6 = 134218242;
  *(v6 + 4) = a1;
  *(v6 + 12) = 2112;
  *(v6 + 14) = a2;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, uint64_t *a4, const char **a5, int *a6)
{
  v12 = strlen(*a5);
  v13 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v12 + 1);
  *a1 = v13;
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  if (*a5)
  {
    v17 = *(v13 + 56);
    do
    {
      v18 = *v16;
      v19 = *(v13 + 56);
      *(v13 + 56) = v19 + 1;
      *v19 = v18;
    }

    while (*v16++);
  }

  else
  {
    v17 = 0;
  }

  v21 = *a6;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v21;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_10>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] audio buffer list for %s bus %u is null");
  *&result = 134218754;
  *v7 = 134218754;
  *(v7 + 4) = v3;
  *(v7 + 12) = 2112;
  *(v7 + 14) = v4;
  *(v7 + 22) = 2080;
  *(v7 + 24) = v5;
  *(v7 + 32) = 1024;
  *(v7 + 34) = v6;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, const char **a4, int *a5)
{
  v10 = strlen(*a4);
  v11 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v10 + 1);
  *a1 = v11;
  v12 = *a3;
  v13 = *a4;
  if (*a4)
  {
    v14 = *(v11 + 56);
    do
    {
      v15 = *v13;
      v16 = *(v11 + 56);
      *(v11 + 56) = v16 + 1;
      *v16 = v15;
    }

    while (*v13++);
  }

  else
  {
    v14 = 0;
  }

  v18 = *a5;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v18;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_11>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p] audio buffer list for %s bus %u is null", v8, v9, v10);
  *&result = 134218498;
  *v6 = 134218498;
  *(v6 + 4) = v3;
  *(v6 + 12) = 2080;
  *(v6 + 14) = v4;
  *(v6 + 22) = 1024;
  *(v6 + 24) = v5;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, uint64_t *a4, const char **a5, int *a6, int *a7, int *a8)
{
  v16 = strlen(*a5);
  v17 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v16 + 1);
  *a1 = v17;
  v18 = *a3;
  v19 = *a4;
  v20 = *a5;
  if (*a5)
  {
    v21 = *(v17 + 56);
    do
    {
      v22 = *v20;
      v23 = *(v17 + 56);
      *(v17 + 56) = v23 + 1;
      *v23 = v22;
    }

    while (*v20++);
  }

  else
  {
    v21 = 0;
  }

  v25 = *a6;
  v26 = *a7;
  v27 = *a8;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = v25;
  *(a1 + 36) = v26;
  *(a1 + 40) = v27;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_12>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = *(a1 + 40);
  v9 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] audio buffer list for %s bus %u has %u instead of %u buffers");
  *&result = 134219266;
  *v9 = 134219266;
  *(v9 + 4) = v3;
  *(v9 + 12) = 2112;
  *(v9 + 14) = v4;
  *(v9 + 22) = 2080;
  *(v9 + 24) = v5;
  *(v9 + 32) = 1024;
  *(v9 + 34) = v6;
  *(v9 + 38) = 1024;
  *(v9 + 40) = v7;
  *(v9 + 44) = 1024;
  *(v9 + 46) = v8;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, const char **a4, int *a5, int *a6, int *a7)
{
  v14 = strlen(*a4);
  v15 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v14 + 1);
  *a1 = v15;
  v16 = *a3;
  v17 = *a4;
  if (*a4)
  {
    v18 = *(v15 + 56);
    do
    {
      v19 = *v17;
      v20 = *(v15 + 56);
      *(v15 + 56) = v20 + 1;
      *v20 = v19;
    }

    while (*v17++);
  }

  else
  {
    v18 = 0;
  }

  v22 = *a5;
  v23 = *a6;
  v24 = *a7;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  *(a1 + 24) = v22;
  *(a1 + 28) = v23;
  *(a1 + 32) = v24;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_13>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p] audio buffer list for %s bus %u has %u instead of %u buffers", v10, v11, v12, v13, v14);
  *&result = 134219010;
  *v8 = 134219010;
  *(v8 + 4) = v3;
  *(v8 + 12) = 2080;
  *(v8 + 14) = v4;
  *(v8 + 22) = 1024;
  *(v8 + 24) = v5;
  *(v8 + 28) = 1024;
  *(v8 + 30) = v6;
  *(v8 + 34) = 1024;
  *(v8 + 36) = v7;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, uint64_t *a4, const char **a5, int *a6, int *a7, int *a8, int *a9)
{
  v17 = strlen(*a5);
  v18 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v17 + 1);
  *a1 = v18;
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  if (*a5)
  {
    v22 = *(v18 + 56);
    do
    {
      v23 = *v21;
      v24 = *(v18 + 56);
      *(v18 + 56) = v24 + 1;
      *v24 = v23;
    }

    while (*v21++);
  }

  else
  {
    v22 = 0;
  }

  v26 = *a6;
  v27 = *a7;
  v28 = *a8;
  v29 = *a9;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  *(a1 + 32) = v26;
  *(a1 + 36) = v27;
  *(a1 + 40) = v28;
  *(a1 + 44) = v29;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_14>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] audio buffer list for %s bus %u has %u instead of %u channels in buffer %u");
  *&result = 134219522;
  *v10 = 134219522;
  *(v10 + 4) = v3;
  *(v10 + 12) = 2112;
  *(v10 + 14) = v4;
  *(v10 + 22) = 2080;
  *(v10 + 24) = v5;
  *(v10 + 32) = 1024;
  *(v10 + 34) = v6;
  *(v10 + 38) = 1024;
  *(v10 + 40) = v7;
  *(v10 + 44) = 1024;
  *(v10 + 46) = v8;
  *(v10 + 50) = 1024;
  *(v10 + 52) = v9;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, const char **a4, int *a5, int *a6, int *a7, int *a8)
{
  v16 = strlen(*a4);
  v17 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v16 + 1);
  *a1 = v17;
  v18 = *a3;
  v19 = *a4;
  if (*a4)
  {
    v20 = *(v17 + 56);
    do
    {
      v21 = *v19;
      v22 = *(v17 + 56);
      *(v17 + 56) = v22 + 1;
      *v22 = v21;
    }

    while (*v19++);
  }

  else
  {
    v20 = 0;
  }

  v24 = *a5;
  v25 = *a6;
  v26 = *a7;
  v27 = *a8;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20;
  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  *(a1 + 32) = v26;
  *(a1 + 36) = v27;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_15>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v9 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p] audio buffer list for %s bus %u has %u instead of %u channels in buffer %u", v11, v12, v13, v14, v15, v16);
  *&result = 134219266;
  *v9 = 134219266;
  *(v9 + 4) = v3;
  *(v9 + 12) = 2080;
  *(v9 + 14) = v4;
  *(v9 + 22) = 1024;
  *(v9 + 24) = v5;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v6;
  *(v9 + 34) = 1024;
  *(v9 + 36) = v7;
  *(v9 + 40) = 1024;
  *(v9 + 42) = v8;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_16>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] audio buffer list for %s bus %u has %u instead of %u bytes of data in buffer %u");
  *&result = 134219522;
  *v10 = 134219522;
  *(v10 + 4) = v3;
  *(v10 + 12) = 2112;
  *(v10 + 14) = v4;
  *(v10 + 22) = 2080;
  *(v10 + 24) = v5;
  *(v10 + 32) = 1024;
  *(v10 + 34) = v6;
  *(v10 + 38) = 1024;
  *(v10 + 40) = v7;
  *(v10 + 44) = 1024;
  *(v10 + 46) = v8;
  *(v10 + 50) = 1024;
  *(v10 + 52) = v9;
  return result;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_17>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v9 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p] audio buffer list for %s bus %u has %u instead of %u bytes of data in buffer %u", v11, v12, v13, v14, v15, v16);
  *&result = 134219266;
  *v9 = 134219266;
  *(v9 + 4) = v3;
  *(v9 + 12) = 2080;
  *(v9 + 14) = v4;
  *(v9 + 22) = 1024;
  *(v9 + 24) = v5;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v6;
  *(v9 + 34) = 1024;
  *(v9 + 36) = v7;
  *(v9 + 40) = 1024;
  *(v9 + 42) = v8;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, uint64_t *a4, const char **a5, int *a6, int *a7)
{
  v14 = strlen(*a5);
  v15 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v14 + 1);
  *a1 = v15;
  v16 = *a3;
  v17 = *a4;
  v18 = *a5;
  if (*a5)
  {
    v19 = *(v15 + 56);
    do
    {
      v20 = *v18;
      v21 = *(v15 + 56);
      *(v15 + 56) = v21 + 1;
      *v21 = v20;
    }

    while (*v18++);
  }

  else
  {
    v19 = 0;
  }

  v23 = *a6;
  v24 = *a7;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v19;
  *(a1 + 32) = v23;
  *(a1 + 36) = v24;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,__CFString const*,char const*,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_18>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p|%@] audio buffer list for %s bus %u has null data in buffer %u");
  *&result = 134219010;
  *v8 = 134219010;
  *(v8 + 4) = v3;
  *(v8 + 12) = 2112;
  *(v8 + 14) = v4;
  *(v8 + 22) = 2080;
  *(v8 + 24) = v5;
  *(v8 + 32) = 1024;
  *(v8 + 34) = v6;
  *(v8 + 38) = 1024;
  *(v8 + 40) = v7;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int>::RealTimeLogMessageBuilder(uint64_t a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, const char **a4, int *a5, int *a6)
{
  v12 = strlen(*a4);
  v13 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 0, v12 + 1);
  *a1 = v13;
  v14 = *a3;
  v15 = *a4;
  if (*a4)
  {
    v16 = *(v13 + 56);
    do
    {
      v17 = *v15;
      v18 = *(v13 + 56);
      *(v13 + 56) = v18 + 1;
      *v18 = v17;
    }

    while (*v15++);
  }

  else
  {
    v16 = 0;
  }

  v20 = *a5;
  v21 = *a6;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  *(a1 + 24) = v20;
  *(a1 + 28) = v21;
  return a1;
}

double CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph const*,char const*,unsigned int,unsigned int>::fill<CA::DSP::AUDSPGraph::IsValidGraphAudioBufferList(AudioBufferList const*,CADSPDirection,unsigned int,CA::StreamDescription const&,unsigned int)::$_19>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = _os_log_pack_fill(a2 + 64, a3, 0, &dword_1C91AE000, "[%p] audio buffer list for %s bus %u has null data in buffer %u", v9, v10, v11, v12);
  *&result = 134218754;
  *v7 = 134218754;
  *(v7 + 4) = v3;
  *(v7 + 12) = 2080;
  *(v7 + 14) = v4;
  *(v7 + 22) = 1024;
  *(v7 + 24) = v5;
  *(v7 + 28) = 1024;
  *(v7 + 30) = v6;
  return result;
}

uint64_t CA::DSP::AU::DSPGraph::RealTimeLogMessage::perform(CA::DSP::AU::DSPGraph::RealTimeLogMessage *this)
{
  v2 = 0x1EC392000;
  {
    goto LABEL_7;
  }

  while (1)
  {
    os_log_pack_send();
    v2 = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      break;
    }

    __break(1u);
LABEL_7:
    {
      *(v2 + 441) = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }
  }

  (**this)(this);

  return caulk::rt_safe_memory_resource::rt_deallocate(v2, this);
}

void CA::DSP::AU::DSPGraph::RealTimeLogMessage::~RealTimeLogMessage(CA::DSP::AU::DSPGraph::RealTimeLogMessage *this)
{
  CA::DSP::AU::DSPGraph::RealTimeLogMessage::~RealTimeLogMessage(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CB8B8;
  v2 = *(this + 6);
  while (v2)
  {
    v3 = *(this + 5);
    *(this + 6) = --v2;
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      CFRelease(v4);
      v2 = *(this + 6);
    }
  }

  MEMORY[0x1EEE5F9F8](this);
}

uint64_t ausdk::AUBase::RenderBus(ausdk::AUBase *this, unsigned int *a2, const AudioTimeStamp *a3)
{
  if (a3->mSampleTime == *(this + 34))
  {
    return 0;
  }

  v3 = *&a3->mSampleTime;
  v4 = *&a3->mRateScalar;
  v5 = *&a3->mSMPTETime.mHours;
  *(this + 19) = *&a3->mSMPTETime.mSubframes;
  *(this + 20) = v5;
  *(this + 17) = v3;
  *(this + 18) = v4;
  return (*(*this + 208))(this, a2);
}

uint64_t CA::DSP::AUDSPGraph::SetParameter(CA::DSP::AUDSPGraph *this, uint64_t a2, int a3, int a4, float a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  v10 = v5;
  v11 = v6;
  CA::DSP::AUDSPGraph::SetGraphParameter(&v8, this, a5, a2);
  if (v9)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t CA::DSP::AUDSPGraph::SetGraphParameter(CA::DSP::AUDSPGraph *this, uint64_t a2, float a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 4) = 0;
      return result;
    }

    if (*(a2 + 648))
    {
      v36[0] = a4;
      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::find(__s, (a2 + 800), v36);
      v9 = *(a2 + 800);
      v10 = *(a2 + 808);
      if (!v9 && v10)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v11 = v9 + 12 * v10;
      v12 = *__s;
      if (*__s != v11)
      {
        *(*__s + 4) = a3;
        *(v12 + 8) = 1;
        CA::DSP::AUDSPGraph::ParameterManager::SetParameter(&cf, (a2 + 3328), (a2 + 648), a4, a3);
        if (v33)
        {
          *this = -10863;
          *(this + 4) = 1;
          return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
        }

        if (*(a2 + 680))
        {
          CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a4);
          v15 = _os_log_pack_size();
          v16 = __s;
          CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a4);
          v17 = strlen(__s);
          v18 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v15, 1, v17 + 1);
          v19 = v18;
          v20 = *(a2 + 680);
          v21 = *(v18 + 56);
          do
          {
            v22 = *v16;
            v23 = *(v18 + 56);
            *(v18 + 56) = v23 + 1;
            *v23 = v22;
          }

          while (*v16++);
          v25 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v18, cf);
          v26 = _os_log_pack_fill(v19 + 64, v15, 0, &dword_1C91AE000, "[%p|%@] failed to set DSP graph parameter %s - %@");
          *v26 = 134218754;
          *(v26 + 4) = a2;
          *(v26 + 12) = 2112;
          *(v26 + 14) = v20;
          *(v26 + 22) = 2080;
          *(v26 + 24) = v21;
          *(v26 + 32) = 2112;
          *(v26 + 34) = v25;
        }

        else
        {
          CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a4);
          v27 = _os_log_pack_size();
          v35 = a2;
          CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(v36, a4);
          v34 = v36;
          CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,char const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::RealTimeLogMessageBuilder(__s, v27, &v35, &v34, &cf);
          v28 = v39;
          v29 = v40;
          v30 = v38;
          v31 = _os_log_pack_fill(*__s + 64, v27, 0, &dword_1C91AE000, "[%p] failed to set DSP graph parameter %s - %@");
          *v31 = 134218498;
          *(v31 + 4) = v30;
          *(v31 + 12) = 2080;
          *(v31 + 14) = v28;
          *(v31 + 22) = 2112;
          *(v31 + 24) = v29;
          if (!*__s)
          {
LABEL_22:
            *this = -10863;
            *(this + 4) = 0;
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&cf);
            return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
          }
        }

        caulk::concurrent::messenger::enqueue();
        goto LABEL_22;
      }

      v14 = -10878;
    }

    else
    {
      v14 = -10863;
    }

    *this = v14;
    *(this + 4) = 0;
    return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  *__s = a4;
  v13 = boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,void,void>>::priv_subscript((a2 + 800), __s);
  *v13 = a3;
  *(v13 + 4) = 1;
  *(this + 4) = 1;

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91B902C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::AUDSPGraph::ParameterManager::SetParameter(CA::DSP::Graph *a1, void *a2, uint64_t *a3, uint64_t a4, float a5)
{
  if (!*a3)
  {
    v24 = CAAssertRtn();
    return CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(v24, v25);
  }

  v9 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(a2, a4);
  if (!v9)
  {
    v22 = 1;
LABEL_21:
    v23 = *a3;
    result = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((*(v23 + 8) + 584), a4);
    if ((v22 & 1) != 0 || result)
    {

      return CA::DSP::Graph::SetParameter(a1, v23, a5, a4);
    }

    else
    {
LABEL_23:
      *(a1 + 8) = 1;
    }

    return result;
  }

  v10 = v9;
  v11 = v9[6];
  if (!v11)
  {
    *(v9 + 6) = a5;
    v22 = 1;
    *(v9 + 28) = 1;
    goto LABEL_21;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = a5;
    if (v13 != v14)
    {
      v15 = v13[1];
      if (v15 < a5)
      {
        if (*(v14 - 2) <= a5)
        {
          v15 = *(v14 - 1);
        }

        else
        {
          v16 = (v14 - v13) >> 3;
          do
          {
            v17 = v16 >> 1;
            v18 = &v13[2 * (v16 >> 1)];
            v20 = *v18;
            v19 = v18 + 2;
            v16 += ~(v16 >> 1);
            if (v20 > a5)
            {
              v16 = v17;
            }

            else
            {
              v13 = v19;
            }
          }

          while (v16);
          v15 = *(v13 - 1) + (((a5 - *(v13 - 2)) * (v13[1] - *(v13 - 1))) / (*v13 - *(v13 - 2)));
        }
      }
    }

    result = CA::DSP::Graph::SetParameter(a1, *a3, v15, *(v11 + 16));
    if (*(a1 + 8) != 1)
    {
      return result;
    }

    v12 |= *(v11 + 16) == a4;
    v11 = *v11;
    if (!v11)
    {
      *(v10 + 6) = a5;
      *(v10 + 28) = 1;
      if (v12)
      {
        goto LABEL_23;
      }

      v22 = 0;
      goto LABEL_21;
    }
  }
}

uint64_t CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(uint64_t this, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = bswap32(a2);
  *(this + 1) = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || (((v2 << 8) >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    LODWORD(v3) = 0;
    do
    {
      v8[v3] = (v2 % 0xA) | 0x30;
      v3 = (v3 + 1);
      v4 = v2 > 9;
      v2 /= 0xAu;
    }

    while (v4);
    if (v3)
    {
      v5 = v3 - 1;
      v6 = this;
      v7 = v3;
      do
      {
        *v6++ = v8[v5--];
        --v7;
      }

      while (v7);
    }

    *(this + v3) = 0;
  }

  else
  {
    *(this + 5) = 39;
    *this = 39;
  }

  return this;
}

uint64_t *CA::DSP::AU::DSPGraph::RealTimeLogMessageBuilder<CA::DSP::AUDSPGraph *,char const*,CA::DSP::Reference<CA::DSP::RealTimeError>>::RealTimeLogMessageBuilder(uint64_t *a1, CA::DSP::AU::DSPGraph::RealTimeLogMessage *a2, uint64_t *a3, const char **a4, CFTypeRef *a5)
{
  v10 = strlen(*a4);
  v11 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(a2, 1, v10 + 1);
  *a1 = v11;
  v12 = *a3;
  v13 = *a4;
  if (*a4)
  {
    v14 = *(v11 + 56);
    do
    {
      v15 = *v13;
      v16 = *(v11 + 56);
      *(v11 + 56) = v16 + 1;
      *v16 = v15;
    }

    while (*v13++);
    v11 = *a1;
  }

  else
  {
    v14 = 0;
  }

  v18 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v11, *a5);
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v18;
  return a1;
}

_DWORD *boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,void,void>>::priv_subscript(unsigned int **a1, unsigned int *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  *v22 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,false>,unsigned int>(&v19, v22, v2 + 12 * v3, *a2);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = v7 + 12 * v8;
  v11 = v19;
  if (v19 == v10)
  {
    v12 = *a2;
    v22[0] = v12;
    *&v22[1] = 0;
    if (v7 <= v19 && v19 <= v10)
    {
      __src = 0;
      goto LABEL_22;
    }

LABEL_45:
    __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
  }

  if (!v19)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v12 = *a2;
  if (v12 < *v19)
  {
    v22[0] = v12;
    *&v22[1] = 0;
    if (v7 <= v19 && v19 <= v10)
    {
      __src = 0;
      if (v12 >= *v19)
      {
        v21 = v10;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_insert_unique_prepare(v19, &v21, v22, &__src))
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }

LABEL_22:
      __src = v19;
      if (v19 != v7)
      {
        if (!v19)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        if (*(v19 - 3) >= v12)
        {
          if (v12 >= *(v19 - 3))
          {
            __src = v19 - 3;
LABEL_40:
            v11 = __src;
            if (!*a1 && __src)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            goto LABEL_42;
          }

          v21 = v19 - 3;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_insert_unique_prepare(v7, &v21, v22, &__src))
          {
            goto LABEL_40;
          }
        }
      }

LABEL_25:
      v11 = __src;
      v13 = *a1;
      if (*a1 > __src)
      {
        goto LABEL_47;
      }

      v14 = a1[1];
      if (!v13 && v14)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v15 = v13 + 12 * v14;
      if (__src > v15)
      {
LABEL_47:
        __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
      }

      v16 = a1[2];
      if (v16 < v14)
      {
        __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
      }

      if (v16 == v14)
      {
        boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>>(&v18, a1, __src, v22);
        v11 = v18;
      }

      else
      {
        if (v15 != __src)
        {
          *v15 = *(v15 - 12);
          *(v15 + 4) = *(v15 - 8);
          a1[1] = (a1[1] + 1);
          if ((v15 - 12) != v11)
          {
            memmove(v11 + 3, v11, v15 - 12 - v11);
          }

          *v11 = v12;
          *(v11 + 1) = 0;
          v19 = v11;
          return v11 + 1;
        }

        *v15 = v12;
        *(v15 + 4) = 0;
        a1[1] = (a1[1] + 1);
      }

LABEL_42:
      v19 = v11;
      if (!v11)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      return v11 + 1;
    }

    goto LABEL_45;
  }

  return v11 + 1;
}

void sub_1C91B9764(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,false>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 2);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[3 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 3;
        *a2 = v7 + 3;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>>(boost::container *a1, char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_26;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_26:
    boost::container::throw_length_error(a1, a2);
  }

  v13 = *a2;
  v14 = operator new(12 * v8);
  v15 = v14;
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = v14;
  if (*a2)
  {
    v18 = v14;
    if (v16 != a3)
    {
      memmove(v14, *a2, a3 - v16);
      v18 = &v15[a3 - v16];
    }
  }

  *v18 = *a4;
  *(v18 + 4) = *(a4 + 4);
  if (a3)
  {
    v19 = (v16 + 12 * v17);
    if (v19 != a3)
    {
      memmove(v18 + 12, a3, v19 - a3);
    }
  }

  if (v16 && a2 + 24 != v16)
  {
    operator delete(v16);
    v17 = *(a2 + 1);
  }

  *a2 = v15;
  *(a2 + 1) = v17 + 1;
  *(a2 + 2) = v8;
  *a1 = &a3[v15 - v13];
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F48CB910;
  exception[1] = "get_next_capacity, allocator's max size reached";
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1CCA84AE0);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,true>,unsigned int>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 2);
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[3 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 3;
        *a2 = v7 + 3;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

const void **CA::DSP::Graph::SetParameter(CA::DSP::Graph *this, uint64_t a2, float a3, uint64_t a4)
{
  v11 = 0;
  v5 = CADSPGraphSetParameter(a2, a3, a4, &v11);
  v6 = v11;
  if (!v5 && !v11)
  {
    v6 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
    v11 = v6;
  }

  v10 = v6;
  if (v6)
  {
    v10 = 0;
    v9 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    v8 = 0;
    v11 = 0;
    *this = v6;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v11);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
  }

  else
  {
    v9 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 1;
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::find(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v14 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,false>,unsigned int>(a1, &v14, v3 + 12 * v4, *a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = *a2 + 12 * v10;
  v13 = *a1;
  if (*a1 != v12)
  {
    if (!v13)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v13)
    {
      *a1 = v12;
    }
  }

  return result;
}

uint64_t CA::DSP::AUDSPGraph::GetParameter(CA::DSP::AUDSPGraph *this, unsigned int a2, int a3, int a4, float *a5)
{
  if (a3)
  {
    return 4294956430;
  }

  if (a4)
  {
    return 4294956419;
  }

  v11 = v5;
  v12 = v6;
  CA::DSP::AUDSPGraph::GetGraphParameter(&v9, this, a2);
  if ((v10 & 1) == 0)
  {
    return v9;
  }

  result = 0;
  *a5 = v9;
  return result;
}

uint64_t CA::DSP::AUDSPGraph::GetGraphParameter(CA::DSP::AUDSPGraph *this, uint64_t a2, unsigned int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 4) = 0;
      return result;
    }

    v7 = *(a2 + 648);
    if (v7)
    {
      v8 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>((a2 + 3328), a3);
      if (v8)
      {
        if (*(v8 + 28) == 1)
        {
          v9 = *(v8 + 6);
        }

        else
        {
          v9 = 0;
        }

        LODWORD(cf) = v9;
        v48 = 1;
      }

      else
      {
        v54 = 0;
        v52 = 0;
        Parameter = CADSPGraphGetParameter(v7, a3, &v54, &v52);
        v21 = v52;
        if (!Parameter && !v52)
        {
          v21 = _CADSPRealTimeErrorCreate(gCADSPRealTimeSafeAllocator, 1970170734, 0);
          v52 = v21;
        }

        v51 = v21;
        if (v21)
        {
          v51 = 0;
          v49 = v21;
          v50 = 0;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v51);
          v23 = v49;
          v49 = 0;
          *__s = 0;
          cf = v23;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(__s);
          v48 = 0;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v49);
          if (*(a2 + 680))
          {
            CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a3);
            v24 = _os_log_pack_size();
            v25 = __s;
            CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a3);
            v26 = strlen(__s);
            v27 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v24, 1, v26 + 1);
            v28 = v27;
            v29 = *(a2 + 680);
            v30 = *(v27 + 56);
            do
            {
              v31 = *v25;
              v32 = *(v27 + 56);
              *(v27 + 56) = v32 + 1;
              *v32 = v31;
            }

            while (*v25++);
            v34 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v27, cf);
            v35 = _os_log_pack_fill(v28 + 64, v24, 0, &dword_1C91AE000, "[%p|%@] failed to get DSP graph parameter %s - %@");
            *v35 = 134218754;
            *(v35 + 4) = a2;
            *(v35 + 12) = 2112;
            *(v35 + 14) = v29;
            *(v35 + 22) = 2080;
            *(v35 + 24) = v30;
            *(v35 + 32) = 2112;
            *(v35 + 34) = v34;
          }

          else
          {
            CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a3);
            v36 = _os_log_pack_size();
            v37 = __s;
            CA::DSP::AU::DSPGraph::FourCharCode::FourCharCode(__s, a3);
            v38 = strlen(__s);
            v39 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::create(v36, 1, v38 + 1);
            v40 = v39;
            v41 = *(v39 + 56);
            do
            {
              v42 = *v37;
              v43 = *(v39 + 56);
              *(v39 + 56) = v43 + 1;
              *v43 = v42;
            }

            while (*v37++);
            v45 = CA::DSP::AU::DSPGraph::RealTimeLogMessage::capture<CA::DSP::RealTimeError>(v39, cf);
            v46 = _os_log_pack_fill(v40 + 64, v36, 0, &dword_1C91AE000, "[%p] failed to get DSP graph parameter %s - %@");
            *v46 = 134218498;
            *(v46 + 4) = a2;
            *(v46 + 12) = 2080;
            *(v46 + 14) = v41;
            *(v46 + 22) = 2112;
            *(v46 + 24) = v45;
          }

          caulk::concurrent::messenger::enqueue();
          *this = -10863;
          *(this + 4) = 0;
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&cf);
          return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
        }

        v22 = v54;
        LODWORD(v49) = v54;
        v50 = 1;
        CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v51);
        LODWORD(cf) = v22;
        v48 = 1;
        v9 = v22;
      }

      *this = v9;
      *(this + 4) = 1;
    }

    else
    {
      *this = -10863;
      *(this + 4) = 0;
    }

    return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
  }

  caulk::shared_semaphore_mutex::lock_shared((a2 + 608));
  v10 = *(a2 + 800);
  *__s = v10;
  v11 = *(a2 + 808);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>*,true>,unsigned int>(&v49, __s, v10 + 12 * v11, a3);
  v13 = *(a2 + 800);
  v14 = *(a2 + 808);
  if (!v13 && v14)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v15 = (v13 + 12 * v14);
  v16 = v49;
  if (v49 != v15)
  {
    if (!v49)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v49 > a3)
    {
      v16 = v15;
    }
  }

  if (v16 == v15)
  {
    v19 = 0;
    v18 = -10878;
  }

  else
  {
    v17 = *(v16 + 4);
    if ((v17 & 0x100000000) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = 1;
  }

  *this = v18;
  *(this + 4) = v19;

  return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
}

void sub_1C91BA304(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AUDSPGraph::RemovePropertyValue(CA::DSP::AUDSPGraph *this, int a2, int a3, int a4)
{
  v8 = a4;
  if (a3)
  {
    return 4294956445;
  }

  result = 4294956445;
  if (a2 <= 1735554167)
  {
    if (a2 <= 1733321573)
    {
      if (a2 <= 1635087215)
      {
        if (a2 == 37)
        {
          if (*(this + 17))
          {
            return 4294956447;
          }

          if (!a4)
          {
            result = 0;
            *(this + 3368) = 0;
            return result;
          }
        }

        else
        {
          if (a2 != 3700)
          {
            return result;
          }

          if (*(this + 17))
          {
            return 4294956447;
          }

          if (!a4)
          {
            result = 0;
            *(this + 376) = 0;
            return result;
          }
        }
      }

      else
      {
        switch(a2)
        {
          case 1635087216:
            if ((*(this + 17) & 1) == 0)
            {
              v6 = (this + 704);
              goto LABEL_60;
            }

            return 4294956447;
          case 1685283431:
            if (!a4)
            {
              result = 0;
              *(this + 3288) = 0;
              return result;
            }

            break;
          case 1685287015:
            if (*(this + 17))
            {
              return 4294956447;
            }

            if (!a4)
            {
              CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 83);
              result = 0;
              *(this + 83) = 0;
              return result;
            }

            break;
          default:
            return result;
        }
      }

      return 4294956419;
    }

    if (a2 <= 1735287148)
    {
      if (a2 != 1733321574 && a2 != 1733326433)
      {
        return result;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      v10 = a4;
      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::erase_unique(this + 151, &v10);
    }

    else
    {
      if (a2 == 1735287149)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (!a4)
        {
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 85);
          result = 0;
          *(this + 85) = 0;
          return result;
        }

        return 4294956419;
      }

      if (a2 != 1735418726 && a2 != 1735423585)
      {
        return result;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      v9 = a4;
      boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::erase_unique(this + 100, &v9);
    }

    return 0;
  }

  if (a2 <= 1886416227)
  {
    if (a2 <= 1836347500)
    {
      if (a2 == 1735554168)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (!a4)
        {
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 84);
          result = 0;
          *(this + 84) = 0;
          return result;
        }

        return 4294956419;
      }

      if (a2 != 1835758191)
      {
        return result;
      }

      goto LABEL_40;
    }

    switch(a2)
    {
      case 1836347501:
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (!a4)
        {
          v7 = (this + 3280);
          goto LABEL_67;
        }

        return 4294956419;
      case 1852797026:
        if (a4)
        {
          return 4294956419;
        }

        result = 0;
        *(this + 3312) = 0;
        if (*(this + 17) != 1)
        {
          return result;
        }

        CA::DSP::AUDSPGraph::UpdateProcessingBlock(this);
        break;
      case 1886415216:
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (a4)
        {
          return 4294956419;
        }

        applesauce::CF::ObjectRef<__CFArray const*>::operator=(this + 86);
        break;
      default:
        return result;
    }

    return 0;
  }

  if (a2 > 1886548852)
  {
    if (a2 != 1886548853)
    {
      if (a2 == 1920169063)
      {
        if (!a4)
        {
          result = 0;
          *(this + 3289) = 0;
          return result;
        }

        return 4294956419;
      }

      if (a2 != 1937010279)
      {
        return result;
      }

      if (*(this + 17))
      {
        return 4294956447;
      }

      v7 = (this + 3320);
LABEL_67:
      applesauce::CF::DictionaryRef::operator=(v7);
      return 0;
    }

    if (*(this + 17))
    {
      return 4294956447;
    }

    if (!a4)
    {
      v7 = (this + 792);
      goto LABEL_67;
    }

    return 4294956419;
  }

  switch(a2)
  {
    case 1886416228:
LABEL_40:
      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a4)
      {
        v7 = (this + 696);
        goto LABEL_67;
      }

      return 4294956419;
    case 1886548592:
      if (*(this + 17))
      {
        return 4294956447;
      }

      if (!a4)
      {
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(this + 98);
        result = 0;
        *(this + 98) = 0;
        return result;
      }

      return 4294956419;
    case 1886548848:
      if ((*(this + 17) & 1) == 0)
      {
        v6 = (this + 744);
LABEL_60:
        boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::erase_unique(v6, &v8);
        return 0;
      }

      return 4294956447;
  }

  return result;
}

const void **CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::operator=(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::DictionaryRef::operator=(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char **boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::erase_unique(uint64_t *a1, unsigned int *a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>>,void>>::find(&__dst, a1, a2);
  v4 = a1[1];
  if (*a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (__dst != (*a1 + 12 * v4))
  {
    return boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,void>::erase(&v6, a1, __dst);
  }

  return result;
}

const void **boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::erase_unique(uint64_t *a1, unsigned int *a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::find(&v7, a1, a2);
  v4 = a1[1];
  if (*a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v7 != (*a1 + (v4 << 6)))
  {
    return boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::erase(&v6, a1, v7);
  }

  return result;
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::erase_unique(unint64_t *a1, unsigned int *a2)
{
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::find(&v11, a1, a2);
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = v4 + 16 * v3;
  if (v11 != v6)
  {
    if (v4 > v11 || v11 >= v6)
    {
      __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
    }

    for (i = v11 + 16; i != v6; i += 16)
    {
      *(i - 16) = *i;
      v9 = *(i - 8);
      *(i - 8) = *(i + 8);
      *(i + 8) = v9;
    }

    v10 = *(v6 - 8);
    if (v10)
    {
      CFRelease(v10);
      v3 = a1[1];
    }

    a1[1] = v3 - 1;
  }
}

void CA::DSP::AUDSPGraph::UpdateProcessingBlock(uint64_t this)
{
  if (*(this + 3304) == 1)
  {
    v1 = *(this + 3312);
    v2 = *(this + 3296);
    if (v1 == 1)
    {
      CA::DSP::AUDSPGraph::RPBConnection::Suspend(v2);
    }

    else
    {
      CA::DSP::AUDSPGraph::RPBConnection::Resume(v2);
    }
  }
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::find(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v14 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>*,false>,unsigned int>(a1, &v14, v3 + 16 * v4, *a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = *a2 + 16 * v10;
  v13 = *a1;
  if (*a1 != v12)
  {
    if (!v13)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v13)
    {
      *a1 = v12;
    }
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>*,false>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 4;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 4;
        *a2 = v7 + 4;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::find(unsigned int **a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v14 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,false>,unsigned int>(a1, &v14, v3 + (v4 << 6), *a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = (*a2 + (v10 << 6));
  v13 = *a1;
  if (*a1 != v12)
  {
    if (!v13)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v13)
    {
      *a1 = v12;
    }
  }

  return result;
}

const void **boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::new_allocator<void>,void>,void>::erase(unint64_t *a1, unint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 > a3)
  {
    goto LABEL_14;
  }

  v5 = a2[1];
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v3 + (v5 << 6);
  if (v8 <= a3)
  {
LABEL_14:
    __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
  }

  if (a3 + 64 != v8)
  {
    v10 = a3;
    do
    {
      v11 = v10 + 64;
      v12 = boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::operator=(v10, v10 + 64) + 128;
      v10 = v11;
    }

    while (v12 != v8);
  }

  v13 = *(v8 - 40);
  if (v13)
  {
    *(v8 - 32) = v13;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(v8 - 16), v13, *(v8 - 24) - v13);
  }

  result = CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted((v8 - 56));
  --a2[1];
  *a1 = a3;
  return result;
}

uint64_t boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted((a1 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 48);
  if (v5 != *(a2 + 48) && ((*(*v5 + 32))(v5) & 1) == 0)
  {
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v9 = v7 - v8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 24);
    if (v10 - v11 >= v7 - v8)
    {
      v16 = *(a1 + 32);
      if (v16 - v11 >= v9)
      {
        while (v8 != v7)
        {
          v21 = *v8++;
          *v11++ = v21;
        }

        *(a1 + 32) = v11;
        goto LABEL_30;
      }

      v17 = &v8[v16 - v11];
      if (v16 != v11)
      {
        do
        {
          v18 = *v8++;
          *v11++ = v18;
        }

        while (v8 != v17);
        v16 = *(a1 + 32);
      }

      v19 = v16;
      if (v17 != v7)
      {
        v19 = v16;
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != v7);
      }

      v14 = v19;
    }

    else
    {
      if (v11)
      {
        *(a1 + 32) = v11;
        std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(a1 + 48), v11, v10 - v11);
        v10 = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v12 = 2 * v10;
      if (2 * v10 <= v9)
      {
        v12 = v7 - v8;
      }

      if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__vallocate[abi:ne200100](a1 + 24, v13);
      v14 = *(a1 + 32);
      while (v8 != v7)
      {
        v15 = *v8++;
        *v14++ = v15;
      }
    }

    *(a1 + 32) = v14;
    goto LABEL_30;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    std::allocator_traits<std::pmr::polymorphic_allocator<unsigned char>>::deallocate[abi:ne200100](*(a1 + 48), v6, *(a1 + 40) - v6);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
LABEL_30:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  result = (*(**(a1 + 24) + 16))(*(a1 + 24));
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = result + a2;
  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>*,false>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 6;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[16 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 16;
        *a2 = v7 + 16;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

char **boost::container::vector<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,CA::DSP::AUDSPGraph::GraphParameterValue>,boost::container::new_allocator<void>,void>,void>::erase(char **result, uint64_t *a2, char *__dst)
{
  v3 = *a2;
  if (*a2 > __dst)
  {
    goto LABEL_12;
  }

  v5 = a2[1];
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = (v3 + 12 * v5);
  if (v8 <= __dst)
  {
LABEL_12:
    __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
  }

  v9 = result;
  if (__dst && __dst + 12 != v8)
  {
    result = memmove(__dst, __dst + 12, v8 - (__dst + 12));
    v5 = a2[1];
  }

  a2[1] = v5 - 1;
  *v9 = __dst;
  return result;
}

uint64_t CA::DSP::AUDSPGraph::SetProperty(CA::DSP::AUDSPGraph *this, int a2, int a3, void *a4, CFTypeRef *a5, uint64_t a6)
{
  v23 = a4;
  if (a3)
  {
    return 4294956417;
  }

  v6 = 4294956417;
  if (a2 <= 1735554167)
  {
    if (a2 > 1733321573)
    {
      if (a2 <= 1735287148)
      {
        if (a2 == 1733321574)
        {
          v24 = 0;
          v6 = CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef>(a5, a6, &v24);
          if (v6)
          {
            goto LABEL_117;
          }

          v15 = v24;
          if (v24)
          {
            CFRetain(v24);
            v20 = 0;
            v21 = v15;
            CA::DSP::AUDSPGraph::SetGraphProperty(&v22, this, a4, &v21);
            if (BYTE4(v22))
            {
              v6 = 0;
            }

            else
            {
              v6 = v22;
            }

            CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v21);
            CA::DSP::ReferenceCounted<__CFDictionary const*>::~ReferenceCounted(&v20);
            goto LABEL_117;
          }

          goto LABEL_114;
        }

        if (a2 != 1733326433)
        {
          return v6;
        }

        CA::DSP::AUDSPGraph::SetGraphProperty(&v24, this, a4, a5, a6);
      }

      else
      {
        if (a2 == 1735287149)
        {
          if (*(this + 17))
          {
            return 4294956447;
          }

          if (a4)
          {
            return 4294956419;
          }

          v12 = (this + 680);
          goto LABEL_96;
        }

        if (a2 == 1735418726)
        {
          v22 = 0;
          v6 = CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::NumberRef>(a5, a6, &v22);
          if (!v6)
          {
            if (v22 && (applesauce::CF::NumberRef_proxy::NumberRef_proxy(&v24, &v22), v14 = applesauce::CF::convert_as<float,0>(*v24), v14 >> 32))
            {
              CA::DSP::AUDSPGraph::SetGraphParameter(&v24, this, *&v14, a4);
              if (BYTE4(v24))
              {
                v6 = 0;
              }

              else
              {
                v6 = v24;
              }
            }

            else
            {
              v6 = 4294956445;
            }
          }

          applesauce::CF::NumberRef::~NumberRef(&v22);
          return v6;
        }

        if (a2 != 1735423585)
        {
          return v6;
        }

        if (a6 != 4)
        {
          return 4294956445;
        }

        CA::DSP::AUDSPGraph::SetGraphParameter(&v24, this, *a5, a4);
      }

      if (BYTE4(v24))
      {
        return 0;
      }

      else
      {
        return v24;
      }
    }

    if (a2 <= 1635087215)
    {
      if (a2 == 37)
      {
        if (*(this + 17))
        {
          return 4294956447;
        }

        if (a4)
        {
          return 4294956419;
        }

        if (a6 == 4)
        {
          v6 = 0;
          *(this + 3368) = *a5 == 1;
          return v6;
        }
      }

      else
      {
        if (a2 != 3700)
        {
          return v6;
        }

        if (*(this + 17))
        {
          return 4294956447;
        }

        if (a4)
        {
          return 4294956419;
        }

        if (a6 == 4)
        {
          v6 = 0;
          *(this + 376) = *a5 != 0;
          return v6;
        }
      }

      return 4294956445;
    }

    if (a2 == 1635087216)
    {
      v24 = 0;
      v6 = CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef>(a5, a6, &v24);
      if (!v6)
      {
        if (v24)
        {
          v13 = boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::priv_subscript(this + 704, &v23);
          applesauce::CF::DictionaryRef::operator=(v13, v24);
          if (*(this + 17) == 1)
          {
            CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v19, *(this + 81));
            applesauce::CF::DictionaryRef::DictionaryRef(&v18, v24);
            CA::DSP::AUDSPGraph::ApplyGraphAUStrip(this, &v19, a4, &v18);
            applesauce::CF::DictionaryRef::~DictionaryRef(&v18);
            v11 = &v19;
            goto LABEL_73;
          }

LABEL_74:
          v6 = 0;
          goto LABEL_117;
        }

LABEL_114:
        v6 = 4294956445;
      }

LABEL_117:
      applesauce::CF::DictionaryRef::~DictionaryRef(&v24);
      return v6;
    }

    if (a2 == 1685283431)
    {
      if (a4)
      {
        return 4294956419;
      }

      if (a6 == 4)
      {
        v6 = 0;
        *(this + 3288) = *a5 == 1;
        return v6;
      }

      return 4294956445;
    }

    if (a2 != 1685287015)
    {
      return v6;
    }

    if (*(this + 17))
    {
      return 4294956447;
    }

    if (a4)
    {
      return 4294956419;
    }

    v12 = (this + 664);
LABEL_96:

    return CA::DSP::AU::DSPGraph::Deserialize(a5, a6, v12);
  }

  if (a2 > 1886416227)
  {
    if (a2 <= 1886548852)
    {
      if (a2 != 1886416228)
      {
        if (a2 != 1886548592)
        {
          if (a2 != 1886548848)
          {
            return v6;
          }

          v24 = 0;
          v6 = CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef>(a5, a6, &v24);
          if (!v6)
          {
            if (v24)
            {
              v10 = boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::priv_subscript(this + 744, &v23);
              applesauce::CF::DictionaryRef::operator=(v10, v24);
              if (*(this + 17) == 1)
              {
                CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v17, *(this + 81));
                applesauce::CF::DictionaryRef::DictionaryRef(&v16, v24);
                CA::DSP::AUDSPGraph::ApplyGraphPropertyStrip(this, &v17, a4, &v16);
                applesauce::CF::DictionaryRef::~DictionaryRef(&v16);
                v11 = &v17;
LABEL_73:
                CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v11);
                goto LABEL_74;
              }

              goto LABEL_74;
            }

            goto LABEL_114;
          }

          goto LABEL_117;
        }

        if ((*(this + 17) & 1) == 0)
        {
          if (!a4)
          {
            v12 = (this + 784);
            goto LABEL_96;
          }

          return 4294956419;
        }

        return 4294956447;
      }

      goto LABEL_44;
    }

    if (a2 == 1886548853)
    {
      if (*(this + 17))
      {
        return 4294956447;
      }

      if (a4)
      {
        return 4294956419;
      }

      return CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef>(a5, a6, this + 99);
    }

    if (a2 != 1920169063)
    {
      if (a2 != 1937010279)
      {
        return v6;
      }

      v24 = 0;
      if (*(this + 17))
      {
        v6 = 4294956447;
      }

      else if (a4)
      {
        v6 = 4294956419;
      }

      else
      {
        v6 = CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef>(a5, a6, &v24);
        if (!v6)
        {
          applesauce::CF::DictionaryRef::operator=(this + 415, v24);
        }
      }

      goto LABEL_117;
    }

    if (a4)
    {
      return 4294956419;
    }

    if (a6 == 4)
    {
      v6 = 0;
      *(this + 3289) = *a5 == 1;
      return v6;
    }

    return 4294956445;
  }

  if (a2 <= 1836347500)
  {
    if (a2 != 1735554168)
    {
      if (a2 != 1835758191)
      {
        return v6;
      }

LABEL_44:
      if (*(this + 17))
      {
        return 4294956447;
      }

      if (a4)
      {
        return 4294956419;
      }

      return CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef,CA::DSP::AUDSPGraph::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1>(a5, a6, this + 87);
    }

    if (*(this + 17))
    {
      return 4294956447;
    }

    if (a4)
    {
      return 4294956419;
    }

    v12 = (this + 672);
    goto LABEL_96;
  }

  if (a2 == 1836347501)
  {
    if ((*(this + 17) & 1) == 0)
    {
      if (!a4)
      {
        v24 = this;
        return CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef,CA::DSP::AUDSPGraph::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2>(a5, a6, this + 410, &v24);
      }

      return 4294956419;
    }

    return 4294956447;
  }

  if (a2 == 1852797026)
  {
    if (a4)
    {
      return 4294956419;
    }

    if (a6 == 4)
    {
      *(this + 3312) = *a5 == 1;
      if (*(this + 17) == 1)
      {
        CA::DSP::AUDSPGraph::UpdateProcessingBlock(this);
      }

      return 0;
    }

    return 4294956445;
  }

  if (a2 != 1886415216)
  {
    return v6;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a4)
  {
    return 4294956419;
  }

  return CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::ArrayRef,CA::DSP::AUDSPGraph::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0>(a5, a6, this + 86);
}

void sub_1C91BB8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(va1);
  applesauce::CF::DictionaryRef::~DictionaryRef((v7 - 40));
  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AU::DSPGraph::Deserialize(uint64_t *a1, int a2, const void **a3)
{
  if (a2 != 8)
  {
    return 4294956445;
  }

  v4 = *a1;
  v9 = v4;
  if (v4)
  {
    CFRetain(v4);
    v5 = CFGetTypeID(v4);
    if (v5 == CFStringGetTypeID())
    {
      CFRetain(v4);
      v7 = 0;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a3);
      v8 = 0;
      *a3 = v4;
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v8);
      CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v7);
      v4 = 0;
    }

    else
    {
      v4 = 4294956445;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(a3);
    *a3 = 0;
  }

  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v9);
  return v4;
}

uint64_t CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::ArrayRef,CA::DSP::AUDSPGraph::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0>(CFTypeRef *a1, int a2, const __CFArray **a3)
{
  if (a2 != 8)
  {
    return 4294956445;
  }

  applesauce::CF::ArrayRef::from_get(&theArray, *a1);
  v4 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v6 = CFArrayGetCount(v4);
    if (Count)
    {
      v7 = v6;
      v8 = 0;
      while (v7 != v8)
      {
        if (CFArrayGetCount(v4) <= v8 || (ValueAtIndex = CFArrayGetValueAtIndex(v4, v8), (v10 = ValueAtIndex) == 0))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not find item");
        }

        CFRetain(ValueAtIndex);
        v11 = CFGetTypeID(v10);
        TypeID = CFStringGetTypeID();
        CFRelease(v10);
        if (v11 != TypeID)
        {
          v18 = 4294956445;
          if (v4)
          {
            goto LABEL_20;
          }

          return v18;
        }

        if (Count == ++v8)
        {
          break;
        }
      }
    }

    v13 = CFGetAllocator(v4);
    Copy = CFArrayCreateCopy(v13, v4);
    v15 = Copy;
    theArray = Copy;
    if (Copy)
    {
      v16 = CFGetTypeID(Copy);
      if (v16 != CFArrayGetTypeID())
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v21, "Could not construct");
      }
    }

    theArray = v4;
    CFRelease(v4);
    v17 = *a3;
    *a3 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    v17 = *a3;
    *a3 = 0;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  CFRelease(v17);
LABEL_19:
  v18 = 0;
  v4 = v15;
  if (v15)
  {
LABEL_20:
    CFRelease(v4);
  }

  return v18;
}

uint64_t CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef,CA::DSP::AUDSPGraph::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1>(CFTypeRef *a1, int a2, const __CFDictionary **a3)
{
  if (a2 != 8)
  {
    return 4294956445;
  }

  applesauce::CF::DictionaryRef::from_get(&theDict, *a1);
  v4 = theDict;
  if (!theDict)
  {
    v12 = 0;
    v13 = *a3;
    *a3 = 0;
    goto LABEL_43;
  }

  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&theDict, theDict);
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v22, v4);
  v23 = (v25 - v24) >> 3;
  while (1)
  {
    if (theDict && v29 != (v31 - v30) >> 3)
    {
      v5 = v22;
      goto LABEL_10;
    }

    v5 = v22;
    if (!v22 || v23 == (v25 - v24) >> 3)
    {
      break;
    }

LABEL_10:
    if (theDict == v5 && v29 == v23)
    {
      break;
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(&cf, &theDict);
    v6 = cf;
    if (!cf || (v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
    {
      if (v21)
      {
        CFRelease(v21);
      }

      if (v6)
      {
        CFRelease(v6);
      }

LABEL_28:
      v14 = 0;
      goto LABEL_30;
    }

    v8 = v21;
    if (v21)
    {
      v9 = CFGetTypeID(v21);
      if (v9 == CFStringGetTypeID())
      {
        v10 = -1;
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v6);
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

    ++v29;
  }

  v14 = 1;
LABEL_30:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if ((v14 & 1) == 0)
  {
    v11 = 4294956445;
    if (!v4)
    {
      return v11;
    }

LABEL_49:
    CFRelease(v4);
    return v11;
  }

  v15 = CFGetAllocator(v4);
  Copy = CFDictionaryCreateCopy(v15, v4);
  v12 = Copy;
  theDict = Copy;
  if (Copy)
  {
    v17 = CFGetTypeID(Copy);
    if (v17 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  theDict = v4;
  CFRelease(v4);
  v13 = *a3;
  *a3 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

LABEL_43:
  if (v13)
  {
    CFRelease(v13);
  }

  v11 = 0;
  v4 = v12;
  if (v12)
  {
    goto LABEL_49;
  }

  return v11;
}

uint64_t CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::NumberRef>(CFTypeRef *a1, int a2, const void **a3)
{
  if (a2 != 8)
  {
    return 4294956445;
  }

  v4 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v5 = CFGetTypeID(v4);
    if (v5 != CFNumberGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v6 = *a3;
    *a3 = v4;
    CFRetain(v4);
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = *a3;
  *a3 = 0;
  if (v6)
  {
LABEL_7:
    CFRelease(v6);
  }

LABEL_8:
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void *applesauce::CF::NumberRef_proxy::NumberRef_proxy(void *this, const applesauce::CF::NumberRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

const __CFNumber *applesauce::CF::convert_as<float,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_19;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_11;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_24:
          v6 = SLOBYTE(valuePtr);
          goto LABEL_25;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_19:
          v6 = SLOWORD(valuePtr);
LABEL_25:
          v7 = v6;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_29:
          v7 = SLODWORD(valuePtr);
          goto LABEL_30;
        case kCFNumberLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_11:
          v5 = LODWORD(valuePtr);
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
          v7 = *&valuePtr;
          goto LABEL_30;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          Value = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v7 = valuePtr;
LABEL_30:
          v5 = LODWORD(v7);
LABEL_31:
          v8 = v5 | 0x100000000;
          if (!Value)
          {
            v8 = 0;
          }

          v9 = v8 & 0x100000000;
          break;
        default:
          v9 = 0;
          LODWORD(v8) = 0;
          break;
      }

      return (v8 | v9);
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return (COERCE_UNSIGNED_INT(CFBooleanGetValue(v1)) | 0x100000000);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CA::DSP::AUDSPGraph::SetGraphProperty(CA::DSP::AUDSPGraph *this, uint64_t a2, const void *a3, char *a4, unsigned int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *this = -10863;
      *(this + 4) = 0;
      return result;
    }

    if (*(a2 + 648))
    {
      CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v27, (a2 + 1208), a3);
      if (v28 == 1)
      {
        v11 = v27;
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((v27 + 16), a4, &a4[a5], a5);
        *(v11 + 48) = 1;
        *(v11 + 8) = 0;
        CA::DSP::Graph::SetProperty(&v29, *(a2 + 648), a3, *(v11 + 16), *(v11 + 24) - *(v11 + 16));
        if (v30)
        {
          *(this + 4) = 1;
          return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
        }

        v14 = *(a2 + 680);
        if (v14)
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v16 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          v17 = *(a2 + 680);
          v18 = bswap32(a3);
          *&buf[1] = v18;
          if ((v18 - 32) > 0x5E || ((v18 >> 8) - 32) > 0x5E || ((v18 << 8 >> 24) - 32) > 0x5E || ((v18 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v31, a3);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v31, buf);
          }

          v21 = &v31;
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v31.__r_.__value_.__r.__words[0];
          }

          *buf = 134218754;
          *&buf[4] = a2;
          v33 = 2112;
          v34 = v17;
          v35 = 2080;
          v36 = v21;
          v37 = 2112;
          v38 = v29;
          v22 = "[%p|%@] failed to set DSP graph property %s - %@";
          v23 = v16;
          v24 = 42;
        }

        else
        {
          {
            CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v19 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          v25 = bswap32(a3);
          *&buf[1] = v25;
          if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v31, a3);
          }

          else
          {
            strcpy(&buf[5], "'");
            buf[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v31, buf);
          }

          v26 = &v31;
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v31.__r_.__value_.__r.__words[0];
          }

          *buf = 134218498;
          *&buf[4] = a2;
          v33 = 2080;
          v34 = v26;
          v35 = 2112;
          v36 = v29;
          v22 = "[%p] failed to set DSP graph property %s - %@";
          v23 = v19;
          v24 = 32;
        }

        _os_log_error_impl(&dword_1C91AE000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

LABEL_26:
        *this = -10863;
        v20 = v30;
        *(this + 4) = 0;
        if ((v20 & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v29);
        }

        return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
      }

      v13 = v27;
    }

    else
    {
      v13 = -10863;
    }

    *this = v13;
    *(this + 4) = 0;
    return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
  }

  caulk::shared_semaphore_mutex::lock((a2 + 608));
  *buf = a3;
  v12 = boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,void,void>>::priv_subscript((a2 + 1208), buf);
  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((v12 + 16), a4, &a4[a5], a5);
  *(v12 + 48) = 1;
  *(v12 + 8) = 0;
  *(this + 4) = 1;

  return caulk::shared_semaphore_mutex::unlock((a2 + 608));
}

void sub_1C91BC808(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t CA::DSP::AU::DSPGraph::Deserialize<applesauce::CF::DictionaryRef>(CFTypeRef *a1, int a2, CFDictionaryRef *a3)
{
  if (a2 != 8)
  {
    return 4294956445;
  }

  applesauce::CF::DictionaryRef::from_get(&cf, *a1);
  v4 = cf;
  if (cf)
  {
    v5 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v5, v4);
    v7 = Copy;
    cf = Copy;
    if (Copy)
    {
      v8 = CFGetTypeID(Copy);
      if (v8 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    cf = v4;
    CFRelease(v4);
    v9 = *a3;
    *a3 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v9 = *a3;
    *a3 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v9);
LABEL_12:
  v10 = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

void sub_1C91BC944(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!v9)
  {
    JUMPOUT(0x1C91BC8F0);
  }

  JUMPOUT(0x1C91BC8E8);
}

uint64_t CA::DSP::AUDSPGraph::SetGraphProperty(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a2 + 17) == 1)
  {
    result = caulk::shared_semaphore_mutex::try_lock_shared((a2 + 608));
    if (!result)
    {
      *a1 = -10863;
      *(a1 + 4) = 0;
      return result;
    }

    if (*(a2 + 648))
    {
      CA::DSP::AUDSPGraph::GraphPropertyCache::Find(&v25, (a2 + 1208), a3);
      if (v26 == 1)
      {
        CA::DSP::AUDSPGraph::GraphPropertyValue::SetCF(&v27, v25, a4);
        if (v29 == 1)
        {
          CA::DSP::Graph::SetProperty(&v30, *(a2 + 648), a3, v27, v28);
          if (v31)
          {
            *(a1 + 4) = 1;
            return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
          }

          v12 = *(a2 + 680);
          if (v12)
          {
            {
              CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
            }

            v14 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
            if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            v15 = *(a2 + 680);
            v16 = bswap32(a3);
            *&buf[1] = v16;
            if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v32, a3);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v32, buf);
            }

            v19 = &v32;
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v19 = v32.__r_.__value_.__r.__words[0];
            }

            *buf = 134218754;
            *&buf[4] = a2;
            v34 = 2112;
            v35 = v15;
            v36 = 2080;
            v37 = v19;
            v38 = 2112;
            v39 = v30;
            v20 = "[%p|%@] failed to set DSP graph property %s - %@";
            v21 = v14;
            v22 = 42;
          }

          else
          {
            {
              CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
            }

            v17 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
            if (!os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            v23 = bswap32(a3);
            *&buf[1] = v23;
            if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v32, a3);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v32, buf);
            }

            v24 = &v32;
            if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = v32.__r_.__value_.__r.__words[0];
            }

            *buf = 134218498;
            *&buf[4] = a2;
            v34 = 2080;
            v35 = v24;
            v36 = 2112;
            v37 = v30;
            v20 = "[%p] failed to set DSP graph property %s - %@";
            v21 = v17;
            v22 = 32;
          }

          _os_log_error_impl(&dword_1C91AE000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

LABEL_31:
          *a1 = -10863;
          v18 = v31;
          *(a1 + 4) = 0;
          if ((v18 & 1) == 0)
          {
            CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v30);
          }

          return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
        }

        v11 = v27;
      }

      else
      {
        v11 = v25;
      }
    }

    else
    {
      v11 = -10863;
    }

    *a1 = v11;
    *(a1 + 4) = 0;
    return caulk::shared_semaphore_mutex::unlock_shared((a2 + 608));
  }

  caulk::shared_semaphore_mutex::lock((a2 + 608));
  *buf = a3;
  v9 = boost::container::flat_map<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,CA::DSP::AUDSPGraph::GraphPropertyValue>,32ul,void,void>>::priv_subscript((a2 + 1208), buf);
  CA::DSP::AUDSPGraph::GraphPropertyValue::SetCF(buf, v9, a4);
  if (BYTE2(v35))
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *a1 = *buf;
  }

  *(a1 + 4) = v10;

  return caulk::shared_semaphore_mutex::unlock((a2 + 608));
}

void sub_1C91BCE00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

char *boost::container::flat_map<unsigned int,applesauce::CF::DictionaryRef,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,void,void>>::priv_subscript(char *a1, unsigned int *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v35 = *a1;
  if (v35)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>*,false>,unsigned int>(v32, &v35, &v35[16 * v2], *a2);
  v6 = *a1;
  v7 = *(a1 + 1);
  if (*a1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = &v6[16 * v7];
  v10 = v32[0];
  if (v32[0] == v9)
  {
    v11 = *a2;
    goto LABEL_16;
  }

  if (!v32[0])
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v11 = *a2;
  if (*a2 < *v32[0])
  {
LABEL_16:
    v29 = v11;
    v30 = 0;
    v31 = 0;
    LODWORD(v35) = v11;
    v12 = "this->priv_in_range_or_end(hint)";
    v36 = 0;
    v13 = "flat_tree.hpp";
    v14 = 879;
    v15 = "insert_unique";
    v32[1] = &v35;
    v32[2] = a1;
    if (v6 <= v32[0] && v32[0] <= v9)
    {
      v33 = 0;
      if (v32[0] == v9)
      {
        goto LABEL_21;
      }

      if (!v32[0])
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (v11 < *v32[0])
      {
LABEL_21:
        v33 = v32[0];
        if (v32[0] != v6)
        {
          if (!v32[0])
          {
            __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
          }

          v16 = *(v32[0] - 4);
          if (v16 >= v11)
          {
            if (v11 >= v16)
            {
              v33 = v32[0] - 16;
              goto LABEL_42;
            }

            v34 = v32[0] - 16;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_insert_unique_prepare(v6, &v34, v11, &v33))
            {
LABEL_42:
              if (!*a1 && v33)
              {
                __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
              }

              v28 = v33;
LABEL_45:
              if (v36)
              {
                CFRelease(v36);
              }

              v10 = v28;
              v32[0] = v28;
              if (!v28)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              return v10 + 8;
            }
          }
        }
      }

      else
      {
        v34 = v9;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,1ul,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>,void>>::priv_insert_unique_prepare(v32[0], &v34, v11, &v33))
        {
          goto LABEL_42;
        }
      }

      v17 = v33;
      v18 = *a1;
      if (*a1 > v33)
      {
        goto LABEL_51;
      }

      v19 = *(a1 + 1);
      if (!v18 && v19)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v20 = &v18[16 * v19];
      if (v33 > v20)
      {
LABEL_51:
        v12 = "this->priv_in_range_or_end(position)";
        v14 = 1862;
        v13 = "vector.hpp";
        v15 = "emplace";
      }

      else
      {
        v21 = *(a1 + 2);
        if (v21 >= v19)
        {
          if (v21 == v19)
          {
            boost::container::vector<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>,boost::container::new_allocator<void>,void>,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>*,boost::container::dtl::pair<unsigned int,applesauce::CF::DictionaryRef>>>(&v28, a1, v33, &v35);
          }

          else
          {
            if (v20 == v33)
            {
              *v20 = v35;
              *(v20 + 8) = v36;
              v36 = 0;
              *(a1 + 1) = v19 + 1;
            }

            else
            {
              v22 = v20 - 16;
              *v20 = *(v20 - 16);
              *(v20 + 8) = *(v20 - 8);
              *(v20 - 8) = 0;
              *(a1 + 1) = v19 + 1;
              if ((v20 - 16) != v17)
              {
                v23 = (v20 - 16);
                do
                {
                  v24 = *(v23 - 4);
                  v23 -= 16;
                  *v22 = v24;
                  v25 = *(v22 + 8);
                  *(v22 + 8) = *(v22 - 8);
                  *(v22 - 8) = v25;
                  v22 = v23;
                }

                while (v23 != v17);
              }

              *v17 = v35;
              v26 = *(v17 + 1);
              *(v17 + 1) = v36;
              v36 = v26;
            }

            v28 = v17;
          }

          goto LABEL_45;
        }

        v12 = "this->m_holder.capacity() >= this->m_holder.m_size";
        v14 = 2821;
        v13 = "vector.hpp";
        v15 = "priv_insert_forward_range";
      }
    }

    __assert_rtn(v15, v13, v14, v12);
  }

  return v10 + 8;
}

void sub_1C91BD244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::DictionaryRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void *CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

applesauce::CF::DictionaryRef *applesauce::CF::DictionaryRef::DictionaryRef(applesauce::CF::DictionaryRef *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

CA::DSP::AU::DSPGraph *CA::DSP::AUDSPGraph::ApplyGraphAUStrip(uint64_t a1, void **a2, int a3, uint64_t *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 680);
  if (v8)
  {
    if ((explicit & 1) == 0)
    {
      {
        CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }
    }

    v10 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 680);
      *buf = 134218498;
      v28 = a1;
      v29 = 2112;
      *v30 = v11;
      *&v30[8] = 1024;
      *&v30[10] = a3;
      v12 = "[%p|%@] setting DSP graph '*.austrip' at index %u";
      v13 = v10;
      v14 = 28;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v15 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v28 = a1;
      v29 = 1024;
      *v30 = a3;
      v12 = "[%p] setting DSP graph '*.austrip' at index %u";
      v13 = v15;
      v14 = 18;
      goto LABEL_8;
    }
  }

  result = CA::DSP::Graph::LoadStripWithResourcePath(&v25, *a2, *a4, 0, *(a1 + 784));
  if ((v26 & 1) == 0)
  {
    v17 = *(a1 + 680);
    Log = CA::DSP::AU::DSPGraph::GetLog(result);
    v19 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (!v19)
      {
        goto LABEL_16;
      }

      v23 = *(a1 + 680);
      *buf = 134218754;
      v28 = a1;
      v29 = 2112;
      *v30 = v23;
      *&v30[8] = 1024;
      *&v30[10] = a3;
      v31 = 2112;
      v32 = v25;
      v20 = "[%p|%@] failed to set DSP graph '*.austrip' at index %u - %@";
      v21 = Log;
      v22 = 38;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_16;
      }

      *buf = 134218498;
      v28 = a1;
      v29 = 1024;
      *v30 = a3;
      *&v30[4] = 2112;
      *&v30[6] = v25;
      v20 = "[%p] failed to set DSP graph '*.austrip' at index %u - %@";
      v21 = Log;
      v22 = 28;
    }

    _os_log_error_impl(&dword_1C91AE000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
LABEL_16:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -10875;
  }

  return result;
}

const void **CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

CA::DSP::AU::DSPGraph *CA::DSP::AUDSPGraph::ApplyGraphPropertyStrip(uint64_t a1, void **a2, std::regex_constants::match_flag_type a3, CFTypeRef *a4)
{
  v163 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 680);
  if (v5)
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v7 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 680);
      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 1024;
      *&buf[24] = a3;
      v9 = "[%p|%@] setting DSP graph '*.propstrip' at index %u";
      v10 = v7;
      v11 = 28;
LABEL_8:
      _os_log_impl(&dword_1C91AE000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    {
      CA::DSP::AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v12 = CA::DSP::AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(CA::DSP::AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      v9 = "[%p] setting DSP graph '*.propstrip' at index %u";
      v10 = v12;
      v11 = 18;
      goto LABEL_8;
    }
  }

  v13 = *a4;
  if (!*(a1 + 792))
  {
    goto LABEL_39;
  }

  if (!v13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v14 = applesauce::CF::details::at_key<__CFString const*>(v13, @"Boxes");
  if (v14 && (v15 = v14, v16 = CFArrayGetTypeID(), v16 == CFGetTypeID(v15)))
  {
    Count = CFArrayGetCount(v15);
    cf = 0uLL;
    v160 = 0;
    if (Count << 32)
    {
      if (!(Count >> 61))
      {
        *&buf[32] = &cf;
        std::allocator<void const*>::allocate_at_least[abi:ne200100](Count);
      }

LABEL_210:
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    if (Count <= 0)
    {
      v23 = *(&cf + 1);
LABEL_42:
      v120 = cf;
      v121 = v23;
      v122 = v160;
      v160 = 0;
      cf = 0uLL;
      v29 = 1;
    }

    else
    {
      v18 = 0;
      v19 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
        v21 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          break;
        }

        CFRetain(ValueAtIndex);
        v22 = *(&cf + 1);
        if (*(&cf + 1) >= v160)
        {
          v24 = (*(&cf + 1) - cf) >> 3;
          if ((v24 + 1) >> 61)
          {
            goto LABEL_210;
          }

          v25 = (v160 - cf) >> 2;
          if (v25 <= v24 + 1)
          {
            v25 = v24 + 1;
          }

          if (v160 - cf >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          *&buf[32] = &cf;
          if (v26)
          {
            std::allocator<void const*>::allocate_at_least[abi:ne200100](v26);
          }

          *buf = 0;
          *&buf[8] = 8 * v24;
          *&buf[24] = 0;
          **&buf[8] = v21;
          *&buf[16] = 8 * v24 + 8;
          std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(&cf, buf);
          v23 = *(&cf + 1);
          std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(buf);
        }

        else
        {
          **(&cf + 1) = v21;
          v23 = (v22 + 8);
        }

        *(&cf + 1) = v23;
        if (v19 == ++v18)
        {
          goto LABEL_42;
        }
      }

      v29 = 0;
      LOBYTE(v120) = 0;
    }

    v123 = v29;
    *buf = &cf;
    std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v123)
    {
      v30 = v120;
      v112 = v121;
      if (v120 != v121)
      {
        while (1)
        {
          if (*v30)
          {
            v31 = CFGetTypeID(*v30);
            if (v31 == CFDictionaryGetTypeID())
            {
              break;
            }
          }

LABEL_175:
          if (++v30 == v112)
          {
            v30 = v120;
            v88 = v121;
            goto LABEL_181;
          }
        }

        if (*v30)
        {
          v32 = CFGetTypeID(*v30);
          if (v32 != CFDictionaryGetTypeID())
          {
            v108 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v108, "Could not construct");
          }

          v33 = *v30;
        }

        else
        {
          v33 = 0;
        }

        applesauce::CF::DictionaryRef::from_get(&theDict, v33);
        CFRetain(@"Properties");
        v34 = CFGetTypeID(@"Properties");
        if (v34 == CFStringGetTypeID())
        {
          v130 = @"Properties";
          if (!theDict)
          {
            goto LABEL_219;
          }

          if (CFDictionaryContainsKey(theDict, @"Properties"))
          {
            if (!theDict)
            {
              v110 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v110, "Could not construct");
            }

            applesauce::CF::convert_to<std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef>,0>(v127, theDict);
            v35 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(v127, &v130);
            if (!v35)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            v36 = v35[3];
            if (!v36 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v36)))
            {
              v107 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v107, "Could not convert");
            }

            v38 = CFArrayGetCount(v36);
            v124 = 0;
            v125 = 0;
            v126 = 0;
            if (v38 << 32)
            {
              if (!(v38 >> 61))
              {
                *&buf[32] = &v124;
                std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](v38);
              }

              std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
            }

            if (v38 >= 1)
            {
              v39 = 0;
              v40 = v38 & 0x7FFFFFFF;
              do
              {
                v41 = CFArrayGetValueAtIndex(v36, v39);
                applesauce::CF::DictionaryRef::from_get(&cf, v41);
                v42 = v125;
                if (v125 >= v126)
                {
                  v43 = v125 - v124;
                  v44 = v43 + 1;
                  if ((v43 + 1) >> 61)
                  {
                    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
                  }

                  v45 = v126 - v124;
                  if ((v126 - v124) >> 2 > v44)
                  {
                    v44 = v45 >> 2;
                  }

                  if (v45 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v46 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v46 = v44;
                  }

                  *&buf[32] = &v124;
                  if (v46)
                  {
                    std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](v46);
                  }

                  *buf = 0;
                  *&buf[8] = 8 * v43;
                  *&buf[24] = 0;
                  **&buf[8] = cf;
                  *&cf = 0;
                  *&buf[16] = 8 * v43 + 8;
                  std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v124, buf);
                  v47 = v125;
                  std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(buf);
                  v125 = v47;
                  if (cf)
                  {
                    CFRelease(cf);
                  }
                }

                else
                {
                  *v125 = cf;
                  v125 = v42 + 1;
                }

                ++v39;
              }

              while (v40 != v39);
            }

            v48 = v124;
            v49 = v124;
            v113 = v125;
            v117 = v30;
            if (v124 != v125)
            {
              while (1)
              {
                if (!*v48)
                {
                  v105 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v105, "Could not construct");
                }

                applesauce::CF::convert_to<std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef>,0>(&v155, *v48);
                v50 = 0;
                v118 = v48;
                do
                {
                  v51 = *(&off_1E8337BF8 + v50);
                  if (v51 && (CFRetain(*(&off_1E8337BF8 + v50)), v52 = CFGetTypeID(v51), v52 != CFStringGetTypeID()))
                  {
                    v53 = v50;
                    v154 = 0;
                    CFRelease(v51);
                    v51 = 0;
                  }

                  else
                  {
                    v53 = v50;
                    v154 = v51;
                  }

                  v54 = std::hash<applesauce::CF::StringRef>::operator()(v51);
                  v55 = v156;
                  if (!*&v156)
                  {
                    goto LABEL_101;
                  }

                  v56 = v54;
                  v57 = vcnt_s8(v156);
                  v57.i16[0] = vaddlv_u8(v57);
                  v58 = v57.u32[0];
                  if (v57.u32[0] > 1uLL)
                  {
                    v59 = v54;
                    if (v54 >= *&v156)
                    {
                      v59 = v54 % *&v156;
                    }
                  }

                  else
                  {
                    v59 = (*&v156 - 1) & v54;
                  }

                  v60 = *(v155 + 8 * v59);
                  if (!v60 || (v61 = *v60) == 0)
                  {
LABEL_100:
                    v30 = v117;
LABEL_101:
                    v63 = v118;
                    v64 = v53;
                    if (!v51)
                    {
                      goto LABEL_103;
                    }

LABEL_102:
                    CFRelease(v51);
                    goto LABEL_103;
                  }

                  while (1)
                  {
                    v62 = v61[1];
                    if (v56 == v62)
                    {
                      break;
                    }

                    if (v58 > 1)
                    {
                      if (v62 >= *&v55)
                      {
                        v62 %= *&v55;
                      }
                    }

                    else
                    {
                      v62 &= *&v55 - 1;
                    }

                    if (v62 != v59)
                    {
                      goto LABEL_100;
                    }

LABEL_99:
                    v61 = *v61;
                    if (!v61)
                    {
                      goto LABEL_100;
                    }
                  }

                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v61[2], &v154))
                  {
                    goto LABEL_99;
                  }

                  v65 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(&v155, &v154);
                  if (!v65)
                  {
                    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                  }

                  applesauce::CF::convert_as<std::string,0>(&v151, v65[3]);
                  v30 = v117;
                  v63 = v118;
                  v64 = v53;
                  if (v153 == 1)
                  {
                    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(&v145, *(a1 + 792));
                    applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(&v139, *(a1 + 792));
                    v140 = (v142 - v141) >> 3;
                    if (v145)
                    {
                      v66 = v146;
                      if (v146 != (v148 - v147) >> 3)
                      {
                        v67 = v139;
                        goto LABEL_113;
                      }
                    }

                    v67 = v139;
                    if (v139 && v140 != (v142 - v141) >> 3)
                    {
                      v66 = v146;
LABEL_113:
                      if (v145 != v67 || v66 != v140)
                      {
                        if ((v66 & 0x8000000000000000) == 0 && v66 < (v148 - v147) >> 3)
                        {
                          applesauce::CF::convert_to<std::string,0>(buf, *(v147 + v66));
                          applesauce::CF::convert_to<std::string,0>(&cf, *(v149 + v146));
                          v135 = *buf;
                          v136 = *&buf[16];
                          v137 = cf;
                          v138 = v160;
                          std::regex_traits<char>::regex_traits(&v131);
                          v134 = 0;
                          v133 = 0u;
                          v132 = 0u;
                          v69 = HIBYTE(v136);
                          if (v136 >= 0)
                          {
                            v70 = &v135;
                          }

                          else
                          {
                            v70 = v135;
                          }

                          if (v136 < 0)
                          {
                            v69 = *(&v135 + 1);
                          }

                          std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v131, v70, &v70[v69]);
                        }

                        v104 = __cxa_allocate_exception(0x10uLL);
                        std::logic_error::logic_error(v104, "DictionaryRef_iterator iterator out of range.");
                        v104->__vftable = (MEMORY[0x1E69E55B8] + 16);
                      }
                    }

                    if (v143)
                    {
                      v144 = v143;
                      operator delete(v143);
                    }

                    if (v141)
                    {
                      v142 = v141;
                      operator delete(v141);
                    }

                    if (v149)
                    {
                      v150 = v149;
                      operator delete(v149);
                    }

                    if (v147)
                    {
                      v148 = v147;
                      operator delete(v147);
                    }

                    if ((v153 & 1) != 0 && v152 < 0)
                    {
                      operator delete(v151);
                    }
                  }

                  v51 = v154;
                  if (v154)
                  {
                    goto LABEL_102;
                  }

LABEL_103:
                  v50 = v64 + 8;
                }

                while (v50 != 32);
                memset(buf, 0, 24);
                std::vector<applesauce::CF::TypeRefPair>::reserve(buf, v158);
                v71 = v157;
                if (v157)
                {
                  v72 = *&buf[8];
                  do
                  {
                    if (v72 >= *&buf[16])
                    {
                      v72 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(buf, v71 + 2, v71 + 3);
                    }

                    else
                    {
                      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(v72, v71[2], v71 + 3);
                      v72 += 2;
                    }

                    *&buf[8] = v72;
                    v71 = *v71;
                  }

                  while (v71);
                }

                CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(buf);
                *&cf = buf;
                std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&cf);
                std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(&v155);
                v74 = *v63;
                *v63 = CFDictionaryRef;
                if (v74)
                {
                  CFRelease(v74);
                }

                v48 = v63 + 1;
                if (v48 == v113)
                {
                  v48 = v124;
                  v49 = v125;
                  break;
                }
              }
            }

            std::vector<void const*>::vector[abi:ne200100](buf, v49 - v48);
            v75 = v124;
            v76 = v125;
            v77 = *buf;
            if (v124 != v125)
            {
              do
              {
                v78 = *v75++;
                *v77++ = v78;
              }

              while (v75 != v76);
              v77 = *buf;
            }

            CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v77, *&buf[8]);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            v162[0] = CFArray;
            CFRetain(CFArray);
            *&cf = CFArray;
            v80 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::find<applesauce::CF::StringRef>(v127, &v130);
            if (!v80)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            v81 = v80;
            v82 = v80[3];
            v81[3] = CFArray;
            *&cf = v82;
            if (v82)
            {
              CFRelease(v82);
            }

            CFRelease(CFArray);
            memset(buf, 0, 24);
            std::vector<applesauce::CF::TypeRefPair>::reserve(buf, v129);
            v83 = v128;
            if (v128)
            {
              v84 = *&buf[8];
              do
              {
                if (v84 >= *&buf[16])
                {
                  v84 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&>(buf, v83 + 2, v83 + 3);
                }

                else
                {
                  std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,applesauce::CF::StringRef const&,applesauce::CF::TypeRef const&,void,0>(v84, v83[2], v83 + 3);
                  v84 += 2;
                }

                *&buf[8] = v84;
                v83 = *v83;
              }

              while (v83);
            }

            v85 = applesauce::CF::details::make_CFDictionaryRef(buf);
            *&cf = buf;
            std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&cf);
            *buf = &v124;
            std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](buf);
            std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,std::allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::~__hash_table(v127);
            v86 = v130;
LABEL_165:
            if (!v86)
            {
LABEL_167:
              if (v85)
              {
                CFRetain(v85);
              }

              v87 = *v30;
              *v30 = v85;
              if (v87)
              {
                CFRelease(v87);
              }

              if (v85)
              {
                CFRelease(v85);
              }

              if (theDict)
              {
                CFRelease(theDict);
              }

              goto LABEL_175;
            }

LABEL_166:
            CFRelease(v86);
            goto LABEL_167;
          }

          v85 = theDict;
          if (!theDict)
          {
            v86 = @"Properties";
            goto LABEL_166;
          }

          v86 = @"Properties";
        }

        else
        {
          v130 = 0;
          CFRelease(@"Properties");
          v86 = 0;
          v85 = theDict;
          if (!theDict)
          {
LABEL_219:
            v109 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v109, "Could not construct");
          }
        }

        CFRetain(v85);
        goto LABEL_165;
      }

      v88 = v120;
LABEL_181:
      std::vector<void const*>::vector[abi:ne200100](buf, v88 - v30);
      v89 = v120;
      v90 = v121;
      v91 = *buf;
      if (v120 != v121)
      {
        do
        {
          v92 = *v89++;
          *v91++ = v92;
        }

        while (v89 != v90);
        v91 = *buf;
      }

      v93 = applesauce::CF::details::make_CFArrayRef<void const*>(v91, *&buf[8]);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v145 = v93;
      std::string::basic_string[abi:ne200100]<0>(buf, "Boxes");
      if (buf[23] >= 0)
      {
        v94 = buf;
      }

      else
      {
        v94 = *buf;
      }

      if (buf[23] >= 0)
      {
        v95 = buf[23];
      }

      else
      {
        v95 = *&buf[8];
      }

      v162[0] = CFStringCreateWithBytes(0, v94, v95, 0x8000100u, 0);
      if (!v162[0])
      {
        v111 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v111, "Could not construct");
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      CFRetain(v93);
      v162[1] = v93;
      *&cf = v162;
      *(&cf + 1) = 1;
      v13 = applesauce::CF::details::make_CFDictionaryRef(&cf);
      if (v162[1])
      {
        CFRelease(v162[1]);
      }

      if (v162[0])
      {
        CFRelease(v162[0]);
      }

      CFRelease(v93);
      goto LABEL_35;
    }
  }

  else
  {
    LOBYTE(v120) = 0;
    v123 = 0;
  }

  v13 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

LABEL_35:
  if (v123 == 1)
  {
    *buf = &v120;
    std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v27 = *a4;
  *a4 = v13;
  if (v27)
  {
    CFRelease(v27);
    v13 = *a4;
  }

LABEL_39:
  result = CA::DSP::Graph::LoadStripWithResourcePath(&cf, *a2, v13, 1, *(a1 + 784));
  if ((BYTE8(cf) & 1) == 0)
  {
    v96 = *(a1 + 680);
    Log = CA::DSP::AU::DSPGraph::GetLog(result);
    v98 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
    if (v96)
    {
      if (!v98)
      {
        goto LABEL_206;
      }

      v102 = *(a1 + 680);
      *buf = 134218754;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v102;
      *&buf[22] = 1024;
      *&buf[24] = a3;
      *&buf[28] = 2112;
      *&buf[30] = cf;
      v99 = "[%p|%@] failed to set DSP graph '*.propstrip' at index %u - %@";
      v100 = Log;
      v101 = 38;
    }

    else
    {
      if (!v98)
      {
        goto LABEL_206;
      }

      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 2112;
      *&buf[20] = cf;
      v99 = "[%p] failed to set DSP graph '*.propstrip' at index %u - %@";
      v100 = Log;
      v101 = 28;
    }

    _os_log_error_impl(&dword_1C91AE000, v100, OS_LOG_TYPE_ERROR, v99, buf, v101);
LABEL_206:
    v103 = __cxa_allocate_exception(4uLL);
    *v103 = -10875;
  }

  return result;
}