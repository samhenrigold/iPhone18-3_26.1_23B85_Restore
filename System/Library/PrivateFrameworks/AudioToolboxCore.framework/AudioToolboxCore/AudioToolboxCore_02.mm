void sub_18F5FDC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    AT::ScopedTrace::~ScopedTrace(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<float>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

OSStatus AudioConverterGetProperty(AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v9 = inPropertyID;
  v7 = outPropertyData;
  v8 = ioPropertyDataSize;
  v5[0] = &v9;
  v5[1] = &v8;
  v5[2] = &v7;
  v6[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
  v6[1] = v5;
  return with_resolved(inAudioConverter, v6);
}

uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>(unsigned int ***a1, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = ***a1;
  v5 = *(*a1)[1];
  v6 = *(*a1)[2];
  v7 = *a2;
  if (v4 == 1869574207)
  {
    v8 = *(v7 + 112);

    return v8(a2, v5, v6);
  }

  else
  {
    v10 = (*(v7 + 48))(a2, v4, v5, v6);
    if (v10)
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v11 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (*(*a2 + 104))(a2);
        v13 = "in-process";
        if (v12)
        {
          v13 = "out-of-process";
        }

        v14 = **v3;
        v15 = **v3[1];
        v16 = 136316674;
        v17 = "AudioConverter.cpp";
        v18 = 1024;
        v19 = 1294;
        v20 = 2048;
        v21 = a2;
        v22 = 2080;
        v23 = v13;
        v24 = 1024;
        v25 = v10;
        v26 = 1024;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter -> %p: The %s GetProperty call returned %i for property %u with size %u.", &v16, 0x38u);
      }
    }

    return v10;
  }
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioStreamBasicDescription *a2)
{
  v3 = *&a2->mBytesPerPacket;
  v5[0] = *&a2->mSampleRate;
  v5[1] = v3;
  v6 = *&a2->mBitsPerChannel;
  CA::StreamDescription::AsString(__p, v5, *v5, *&v3);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  CAFormatter::Init(this, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  CAFormatter::CAFormatter(this, a2);
}

void sub_18F5FE098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t CAFormatter::Init(CAFormatter *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  *this = v5;

  return strlcpy(v5, __s, v4 + 1);
}

uint64_t acv2::Reinterleaver::Reinterleaver(uint64_t a1, __int128 *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 80) = v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = *(a2 + 6);
  *(a1 + 164) = *(a2 + 16);
  *(a1 + 168) = 0u;
  *(a1 + 216) = 0u;
  *a1 = &unk_1F0327440;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = 1;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  v8 = *(a1 + 84);
  __x[0] = -1;
  v9.__i_ = 0;
  std::vector<int>::insert((a1 + 216), v9, v8, __x);
  v10.__i_ = *(a1 + 240);
  v11 = *(a1 + 44);
  __x[0] = -1;
  std::vector<int>::insert((a1 + 240), v10, v11, __x);
  v12 = *(a1 + 84);
  v13 = *(a1 + 44);
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(a1 + 216);
  if (v14)
  {
    v16 = 0;
    v17 = (v14 + 3) & 0x1FFFFFFFCLL;
    v18 = vdupq_n_s64(v14 - 1);
    v19 = xmmword_18F9016B0;
    v20 = xmmword_18F9016C0;
    v21 = v15 + 8;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v21 - 2) = v16;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v21 - 1) = v16 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v21 = v16 + 2;
        v21[1] = v16 + 3;
      }

      v16 += 4;
      v19 = vaddq_s64(v19, v22);
      v20 = vaddq_s64(v20, v22);
      v21 += 4;
    }

    while (v17 != v16);
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 192), v15, *(a1 + 224), (*(a1 + 224) - v15) >> 2);
  *(a1 + 264) = 1;
  *(a1 + 276) = 0;
  if ((*(a1 + 28) & 0x20) != 0 || *(a1 + 44) == 1)
  {
    *(a1 + 276) = 1;
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v25 = *(a1 + 84);
  if ((*(a1 + 68) & 0x20) != 0 || v25 == 1)
  {
    *(a1 + 276) = v24;
  }

  LODWORD(v26) = *(a1 + 44);
  if (v26 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v26;
  }

  v27 = *(a1 + 168);
  v28 = *(a1 + 176);
  v29 = (v28 - v27) >> 3;
  if (v26 > v29)
  {
    v30 = v26 - v29;
    v31 = *(a1 + 184);
    if (v30 > (v31 - v28) >> 3)
    {
      v32 = v31 - v27;
      if (v32 >> 2 > v26)
      {
        v26 = v32 >> 2;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v26;
      }

      if (!(v33 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a1 + 176), 8 * v30);
    v34 = v28 + 8 * v30;
    goto LABEL_35;
  }

  if (v26 < v29)
  {
    v34 = v27 + 8 * v26;
LABEL_35:
    *(a1 + 176) = v34;
  }

  acv2::Reinterleaver::BuildInverseChannelMap(a1);
  *(a1 + 268) = acv2::Reinterleaver::StereoDownmixPossible((a1 + 16));
  return a1;
}

void sub_18F5FE448(_Unwind_Exception *a1)
{
  v5 = *(v1 + 30);
  if (v5)
  {
    *(v1 + 31) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 28) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    *(v1 + 25) = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    *(v1 + 22) = v8;
    operator delete(v8);
  }

  acv2::AudioConverterBase::~AudioConverterBase(v1);
  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (__n)
  {
    v4 = __x;
    v7 = this;
    end = this->__end_;
    value = this->__end_cap_.__value_;
    if (__n <= value - end)
    {
      v14 = end - __position.__i_;
      v15 = this->__end_;
      v16 = __n;
      if (__n <= end - __position.__i_)
      {
        goto LABEL_21;
      }

      v17 = 0;
      v16 = v14 >> 2;
      v18 = __n - (v14 >> 2);
      v19 = *__x;
      v20 = (4 * __n - v14 - 4) >> 2;
      v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vdupq_n_s64(v20);
      v23 = (end + 2);
      do
      {
        v24 = vdupq_n_s64(v17);
        v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_18F9016C0)));
        if (vuzp1_s16(v25, *v22.i8).u8[0])
        {
          *(v23 - 2) = v19;
        }

        if (vuzp1_s16(v25, *&v22).i8[2])
        {
          *(v23 - 1) = v19;
        }

        if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_18F9016B0)))).i32[1])
        {
          *v23 = v19;
          v23[1] = v19;
        }

        v17 += 4;
        v23 += 4;
      }

      while (v21 != v17);
      v15 = &end[v18];
      this->__end_ = v15;
      if (end != __position.__i_)
      {
LABEL_21:
        v26 = &__position.__i_[__n];
        v27 = &v15[-__n];
        v28 = v15;
        if (v27 < end)
        {
          v28 = v15;
          do
          {
            v29 = *v27++;
            *v28++ = v29;
          }

          while (v27 < end);
        }

        this->__end_ = v28;
        if (v15 != v26)
        {
          this = memmove(&__position.__i_[__n], __position.__i_, v15 - v26);
        }

        if (__position.__i_ <= v4)
        {
          if (v7->__end_ <= v4)
          {
            v30 = 0;
          }

          else
          {
            v30 = __n;
          }

          v4 += v30;
        }

        v31 = 0;
        v32 = *v4;
        v33 = vdupq_n_s64(v16 - 1);
        v34 = (__position.__i_ + 2);
        do
        {
          v35 = vdupq_n_s64(v31);
          v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18F9016C0)));
          if (vuzp1_s16(v36, *v33.i8).u8[0])
          {
            *(v34 - 2) = v32;
          }

          if (vuzp1_s16(v36, *&v33).i8[2])
          {
            *(v34 - 1) = v32;
          }

          if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18F9016B0)))).i32[1])
          {
            *v34 = v32;
            v34[1] = v32;
          }

          v31 += 4;
          v34 += 4;
        }

        while (((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
      }
    }

    else
    {
      begin = this->__begin_;
      v11 = __n + end - this->__begin_;
      if (v11 >> 62)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = value - begin;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v13);
      }

      v37 = 0;
      v38 = 4 * (__position.__i_ - begin);
      v39 = *__x;
      v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v41 = vdupq_n_s64(v40);
      v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v43 = (v38 + 8);
      do
      {
        v44 = vdupq_n_s64(v37);
        v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_18F9016C0)));
        if (vuzp1_s16(v45, *v41.i8).u8[0])
        {
          *(v43 - 2) = v39;
        }

        if (vuzp1_s16(v45, *&v41).i8[2])
        {
          *(v43 - 1) = v39;
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_18F9016B0)))).i32[1])
        {
          *v43 = v39;
          v43[1] = v39;
        }

        v37 += 4;
        v43 += 4;
      }

      while (v42 != v37);
      v46 = (v38 + 4 * __n);
      memcpy(v46, __position.__i_, v7->__end_ - __position.__i_);
      v47 = v7->__begin_;
      v48 = &v46[(v7->__end_ - __position.__i_)];
      v7->__end_ = __position.__i_;
      v49 = (__position.__i_ - v47);
      v50 = (v38 - (__position.__i_ - v47));
      memcpy(v50, v47, v49);
      this = v7->__begin_;
      v7->__begin_ = v50;
      v7->__end_ = v48;
      v7->__end_cap_.__value_ = 0;
      if (this)
      {

        operator delete(this);
      }
    }
  }

  return this;
}

uint64_t acv2::AudioConverterChain::SetProperty(acv2::AudioConverterChain *this, uint64_t a2, uint64_t a3, AudioChannelLayout *a4)
{
  if (a2 == 1633906532 || a2 == 1633904996)
  {
    if ((a3 - 41) >= 0xFFFFFFFB)
    {
      v10 = 40;
      if (a2 == 1633904996)
      {
        v10 = 0;
      }

      if (a4->mNumberChannelDescriptions == 1819304813)
      {
        v11 = this + v10;
        if (*(v11 + 2) == 1819304813)
        {
          v12 = *&a4->mChannelLayoutTag;
          v13 = *&a4->mChannelDescriptions[0].mChannelFlags;
          *(v11 + 4) = *&a4[1].mChannelLayoutTag;
          *v11 = v12;
          *(v11 + 1) = v13;
          v44[0] = 0;
          std::vector<char>::vector[abi:ne200100](&v43, 32, v44);
        }
      }

      return 4294967246;
    }

    return 561211770;
  }

  PropertyDelegate = acv2::AudioConverterChain::GetPropertyDelegate(this, a2);
  if (PropertyDelegate)
  {
    v16 = (*(*PropertyDelegate + 12))(PropertyDelegate, a2, a3, a4);
    if (v16)
    {
      return v16;
    }

    if (a2 == 1684891491)
    {
      v28 = *(this + 47);
      if (*v28 == 0x10000)
      {
        v39 = vcnt_s8(v28[1]);
        v39.i16[0] = vaddlv_u8(v39);
        v29 = v39.i32[0];
      }

      else if (*v28)
      {
        v29 = *v28;
      }

      else
      {
        v29 = v28[2];
      }

      if (v29)
      {
        if (acv2::AudioConverterChain::ShouldAutomaticallyEnableSpatialRendering(this, this + 47))
        {
          *(this + 528) = 1;
          acv2::AudioConverterChain::GetChainBuildSettings(&v43, this);
        }
      }
    }

    return 0;
  }

  v9 = 1886547824;
  if (a2 > 1835884911)
  {
    if (a2 > 1919837297)
    {
      if ((a2 - 1936876385) > 0x10 || ((1 << (a2 - 97)) & 0x18101) == 0)
      {
        if (a2 != 1919837298)
        {
          return v9;
        }

        if (a3 == 4)
        {
          *(this + 528) = a4->mChannelLayoutTag != 0;
          *(this + 529) = 1;
          acv2::AudioConverterChain::GetChainBuildSettings(&v43, this);
        }

        return 561211770;
      }

LABEL_68:
      if (*(this + 37) == *(this + 38))
      {
        return v9;
      }

      v37 = *(this + 13);
      v36 = *(this + 14);
      if (v37 != v36)
      {
        do
        {
          v38 = *v37++;
          v9 = (*(*v38 + 96))(v38, a2, a3, a4);
        }

        while (v37 != v36);
        return v9;
      }

      return 0;
    }

    if (a2 == 1835884912)
    {
      v40 = (*(this + 17) * *(this + 7));
      if (a3 != 4 * v40)
      {
        return 561211770;
      }

      return acv2::AudioConverterChain::SetMixMap(this, v40, &a4->mChannelLayoutTag);
    }

    if (a2 != 1868786720)
    {
      if (a2 != 1886546285)
      {
        return v9;
      }

      v30 = *(this + 43);
      if (!v30)
      {
        return v9;
      }

      v31 = *(*v30 + 96);

      return v31();
    }

LABEL_72:
    v16 = acv2::AudioConverterChain::SetIOChannelLayout(this, a2 == 1768123424, a4, a3);
    if (!v16)
    {
      acv2::AudioConverterChain::GetChainBuildSettings(&v43, this);
    }

    return v16;
  }

  if (a2 > 1684632679)
  {
    if (a2 <= 1768123423)
    {
      if (a2 == 1684632680)
      {
        if (a3 != 4)
        {
          return 561211770;
        }

        mChannelLayoutTag = a4->mChannelLayoutTag;

        return acv2::AudioConverterChain::SetDitherAlgorithm(this, mChannelLayoutTag, v15);
      }

      else
      {
        if (a2 != 1684892024)
        {
          return v9;
        }

        if (a3 != 4)
        {
          return 561211770;
        }

        v33 = a4->mChannelLayoutTag != 0;

        return acv2::AudioConverterChain::SetDownmixEnabled(this, v33);
      }
    }

    if (a2 != 1768123424)
    {
      if (a2 != 1835626096)
      {
        return v9;
      }

      goto LABEL_68;
    }

    goto LABEL_72;
  }

  if (a2 <= 1667788143)
  {
    if (a2 == 1633903204)
    {
      v41 = *(this + 43);
      if (!v41 || *(v41 + 204) != 1)
      {
        return v9;
      }

      if (a3 == 4)
      {
        *(this + 103) = a4->mChannelLayoutTag;
        acv2::AudioConverterChain::GetChainBuildSettings(&v43, this);
      }
    }

    else
    {
      if (a2 != 1633906803)
      {
        return v9;
      }

      if (a3 == 8)
      {
        v17 = *&a4->mChannelLayoutTag;
        Count = CFArrayGetCount(v17);
        v19 = Count;
        if (Count)
        {
          v20 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
            if (ValueAtIndex)
            {
              v22 = ValueAtIndex;
              v23 = *(this + 13);
              v24 = *(this + 14);
              if (v23 != v24)
              {
                while (1)
                {
                  v25 = *v23;
                  Value = CFDictionaryGetValue(v22, @"converter");
                  v27 = (*(*v25 + 56))(v25);
                  if (CFStringCompare(Value, v27, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }

                  if (++v23 == v24)
                  {
                    v23 = v24;
                    break;
                  }
                }

                v24 = *(this + 14);
              }

              if (v23 != v24)
              {
                v16 = (*(**v23 + 152))(*v23, v22);
                if (v16)
                {
                  return v16;
                }
              }
            }

            v9 = 0;
            if (++v20 == v19)
            {
              return v9;
            }
          }
        }

        return 0;
      }
    }

    return 561211770;
  }

  if (a2 == 1667788144)
  {
    if (a3 != 4 * *(this + 17))
    {
      return 561211770;
    }

    return acv2::AudioConverterChain::SetChannelMap(this, a4);
  }

  else
  {
    if (a2 != 1684171124)
    {
      return v9;
    }

    if (a3 != 4)
    {
      return 561211770;
    }

    v34 = *(this + 55);
    if (!v34)
    {
      v16 = acv2::AudioConverterChain::SetDitherAlgorithm(this, *(this + 108), v15);
      if (v16)
      {
        return v16;
      }

      v34 = *(this + 55);
      if (!v34)
      {
        return v9;
      }
    }

    v35 = *(*v34 + 168);

    return v35();
  }
}

uint64_t acv2::Reinterleaver::GetProperty(acv2::Reinterleaver *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 == 1667788144)
  {
    v5 = 4 * *(this + 21);
    if (a3)
    {
      v6 = *a3;
      if (*a3 < v5)
      {
LABEL_6:
        memcpy(__dst, *(this + 24), v6);
        return 0;
      }

      *a3 = v5;
    }

    v6 = v5;
    goto LABEL_6;
  }

  return acv2::CBRConverter::GetProperty(this, a2, a3, __dst);
}

uint64_t acv2::CBRConverter::GetProperty(acv2::CBRConverter *this, int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = 1886547824;
  if (a2 > 1836016242)
  {
    if (a2 > 2020175986)
    {
      if (a2 == 2020175987)
      {
        v5 = *(this + 8);
        goto LABEL_18;
      }

      if (a2 == 2020569203)
      {
        v5 = *(this + 18);
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 == 1836016243)
      {
        v5 = *(this + 41);
        goto LABEL_18;
      }

      if (a2 == 2020172403)
      {
        v5 = -1;
LABEL_18:
        v4 = 0;
        *a4 = v5;
        return v4;
      }
    }

    return v4;
  }

  switch(a2)
  {
    case 1667850867:
      v6 = *a4;
      v7 = *(this + 40);
      v8 = *(this + 41);
LABEL_17:
      v5 = v7 * v6 / v8;
      goto LABEL_18;
    case 1668244083:
      v6 = *a4;
      v8 = *(this + 40);
      v7 = *(this + 41);
      goto LABEL_17;
    case 1835623027:
      v5 = *(this + 40);
      goto LABEL_18;
  }

  return v4;
}

OSStatus AudioOutputUnitStart(AudioUnit ci)
{
  if (!ci)
  {
    return -50;
  }

  v1 = (*(*ci + 8))(ci);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = *(*((**v2)(v2) + 112) + 144);
  if (!v3)
  {
    return -4;
  }

  v4 = v2[3];

  return v3(v4);
}

void AUOOPWorkgroupManager_AddRemoteIOWorkgroup(int a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAUExtensionScope)
  {
    v4 = *kAUExtensionScope;
    v5 = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 30;
    *&buf[18] = 1024;
    *&buf[20] = a1;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: AddRemoteIOWorkgroup called with token %u.", buf, 0x18u);
  }

LABEL_8:
  v7 = auoop::gWorkgroupManager(v4);
  v9 = caulk::mach::details::retain_os_object(v3, v8);
  caulk::mach::details::release_os_object(0, v10);
  v15[0] = MEMORY[0x1E69E3C18] + 16;
  v15[1] = v9;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  caulk::mach::details::release_os_object(0, v11);
  v14 = a1;
  caulk::mach::os_workgroup_managed::copy_mach_port(v15);
  v12 = auoop::tlsWorkgroupPort();
  *v12 = v13;
  *buf = &unk_1F03373C0;
  *&buf[8] = &v14;
  *&buf[16] = v15;
  v19 = buf;
  auoop::WorkgroupManager_Base::mutateWorkgroups(v7, buf);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](buf);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(v15);
}

void sub_18F5FF418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](va1);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(va);

  _Unwind_Resume(a1);
}

uint64_t auoop::gWorkgroupManager(auoop *this)
{
  {
    operator new();
  }

  return auoop::gWorkgroupManager(void)::global;
}

uint64_t std::__function::__func<auoop::WorkgroupManager_iOS::addRemoteIOWorkgroup(unsigned int,caulk::mach::os_workgroup_managed)::$_0,std::allocator<auoop::WorkgroupManager_iOS::addRemoteIOWorkgroup(unsigned int,caulk::mach::os_workgroup_managed)::$_0>,BOOL ()(auoop::WorkgroupManager_Base::State &)>::operator()(uint64_t a1, auoop::WorkgroupManager_Base::State *a2)
{
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 16) + 8);
  applesauce::dispatch::v1::queue::operator*(v4);
  objc_claimAutoreleasedReturnValue();
  auoop::WorkgroupManager_Base::State::addWorkgroup(a2, v3, v4);

  return 1;
}

OSStatus AudioFormatGetPropertyInfo(AudioFormatPropertyID inPropertyID, UInt32 inSpecifierSize, const void *inSpecifier, UInt32 *outPropertyDataSize)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!outPropertyDataSize)
  {
    return -50;
  }

  v6 = inSpecifier;
  v7 = *&inSpecifierSize;
  DecoderSpecificBitStreamFromESDS = 1886547824;
  if (inPropertyID > 1702061156)
  {
    if (inPropertyID <= 1819242092)
    {
      if (inPropertyID > 1719034481)
      {
        if (inPropertyID > 1768187245)
        {
          if (inPropertyID <= 1769172322)
          {
            if (inPropertyID != 1768187246)
            {
              if (inPropertyID != 1768780388)
              {
                v13 = 1769170537;
                goto LABEL_181;
              }

              if (!inSpecifier)
              {
                return -50;
              }

              if (inSpecifierSize >= 0x38)
              {
                v41 = 1768780388;
                return GetCodecPropertyFromFormatInfo(inSpecifier, outPropertyDataSize, 0, v41);
              }

              return 561213539;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            DecoderSpecificBitStreamFromESDS = 561213539;
            if (inSpecifierSize < 8 || *(inSpecifier + 1) + 8 > inSpecifierSize)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            return AudioFormatProperty_DecodeFormatIDsForEncapsulatedMagicCookieName(inSpecifier, outPropertyDataSize, 0);
          }

          if (inPropertyID == 1769172323)
          {

            return GetMagicCookieSizeFromISOSampleEntry(inSpecifier, inSpecifierSize, outPropertyDataSize);
          }

          if (inPropertyID != 1818389604)
          {
            v30 = 1818520674;
LABEL_167:
            if (inPropertyID != v30)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            goto LABEL_168;
          }

          goto LABEL_168;
        }

        if (inPropertyID > 1768174435)
        {
          if (inPropertyID != 1768174436)
          {
            if (inPropertyID == 1768174451)
            {
              goto LABEL_182;
            }

            if (inPropertyID != 1768186734)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            if (inSpecifier)
            {
              DecoderSpecificBitStreamFromESDS = 561213539;
              if (inSpecifierSize < 8 || *(inSpecifier + 1) + 8 > inSpecifierSize)
              {
                return DecoderSpecificBitStreamFromESDS;
              }

              return AudioFormatProperty_DecodeFormatIDsForCodingName(inSpecifier, outPropertyDataSize, 0);
            }

            return -50;
          }

          goto LABEL_168;
        }

        if (inPropertyID == 1719034482)
        {
          goto LABEL_182;
        }

        if (inPropertyID != 1752589411 && inPropertyID != 1752589667)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

LABEL_377:
        DecoderSpecificBitStreamFromESDS = 0;
        *outPropertyDataSize = 0;
        return DecoderSpecificBitStreamFromESDS;
      }

      if (inPropertyID <= 1718183272)
      {
        if (inPropertyID <= 1702064995)
        {
          if (inPropertyID != 1702061157)
          {
            if (inPropertyID != 1702061673)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            DecoderSpecificBitStreamFromESDS = 0;
            v11 = 56;
            goto LABEL_183;
          }

          return AudioFormatProperty_ESDSFromESDSize(inSpecifier, inSpecifierSize, outPropertyDataSize);
        }

        if (inPropertyID != 1702064996)
        {
          if (inPropertyID != 1717855600)
          {
            v13 = 1717925990;
            goto LABEL_181;
          }

          goto LABEL_182;
        }

        goto LABEL_172;
      }

      if (inPropertyID > 1718509932)
      {
        if (inPropertyID != 1718509933)
        {
          if (inPropertyID != 1718642284)
          {
            v13 = 1718642285;
            goto LABEL_181;
          }

          goto LABEL_182;
        }

        goto LABEL_168;
      }

      if (inPropertyID == 1718183273)
      {
        if (inSpecifierSize != 4)
        {
          return 561213539;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        goto LABEL_168;
      }

      if (inPropertyID == 1718383476)
      {
        if (inSpecifier)
        {
          if (!inSpecifierSize)
          {
            return 561213539;
          }

          return AudioFormatProperty_FormatListSize(inSpecifier, inSpecifierSize, outPropertyDataSize);
        }

        return 2003329396;
      }

      v16 = 1718449257;
LABEL_103:
      if (inPropertyID != v16)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      goto LABEL_172;
    }

    if (inPropertyID <= 1935962210)
    {
      if (inPropertyID <= 1852992876)
      {
        if (inPropertyID <= 1835230562)
        {
          if (inPropertyID != 1819242093 && inPropertyID != 1819504237)
          {
            if (inPropertyID != 1835230310)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            DecoderSpecificBitStreamFromESDS = 0;
            v11 = 50;
LABEL_183:
            *outPropertyDataSize = v11;
            return DecoderSpecificBitStreamFromESDS;
          }

          goto LABEL_168;
        }

        if (inPropertyID == 1835230563)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          if (inSpecifierSize < 0x18)
          {
            return 561213539;
          }

          return AudioFormatProperty_CanonicalMagicCookieFromEncapsulatedMagicCookie(inSpecifier, outPropertyDataSize, 0);
        }

        if (inPropertyID == 1835884912)
        {
          if (inSpecifierSize == 16)
          {
            if (inSpecifier)
            {
              SanitizeClientAudioChannelLayout(&v74, *inSpecifier, 20 * *(*inSpecifier + 8) + 12);
            }

            return -50;
          }

          return 561213539;
        }

        v13 = 1852008557;
LABEL_181:
        if (inPropertyID == v13)
        {
          goto LABEL_182;
        }

        return DecoderSpecificBitStreamFromESDS;
      }

      if (inPropertyID <= 1885565795)
      {
        if (inPropertyID == 1852992877)
        {
          goto LABEL_182;
        }

        if (inPropertyID != 1868983411)
        {
          if (inPropertyID != 1885433453)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          if (inSpecifierSize == 32)
          {
            if (inSpecifier)
            {
              v76.mChannelLayoutTag = 0;
              SanitizeClientAudioChannelLayout(&v74, *(inSpecifier + 3), 20 * *(*(inSpecifier + 3) + 8) + 12);
            }

            return -50;
          }

          return 561213539;
        }

        if (inSpecifier)
        {
          if (!inSpecifierSize)
          {
            return 561213539;
          }

          *outPropertyDataSize = 0;
          return FetchFormatListFromCodecs(GetOutputFormatListFromCodec, inSpecifier, inSpecifierSize, outPropertyDataSize, 0);
        }

        return 2003329396;
      }

      if (inPropertyID != 1885565796)
      {
        if (inPropertyID == 1886677364)
        {
          goto LABEL_193;
        }

        v13 = 1935893602;
        goto LABEL_181;
      }

LABEL_172:
      DecoderSpecificBitStreamFromESDS = 0;
      v11 = 40;
      goto LABEL_183;
    }

    if (inPropertyID <= 1986946670)
    {
      if (inPropertyID <= 1952540514)
      {
        if (inPropertyID == 1935962211)
        {
          DecoderSpecificBitStreamFromESDS = 0;
          v11 = 14;
          goto LABEL_183;
        }

        if (inPropertyID == 1936286825)
        {
          if (inSpecifierSize >= 0x38)
          {
            if (inSpecifier)
            {
              v41 = 1936286825;
              return GetCodecPropertyFromFormatInfo(inSpecifier, outPropertyDataSize, 0, v41);
            }

            return -50;
          }

          return 561213539;
        }

        if (inPropertyID != 1936745324)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize < 0x20)
        {
          return 561213539;
        }

        goto LABEL_247;
      }

      if (inPropertyID == 1952540515)
      {
        if (inSpecifierSize == 4)
        {
          if (inSpecifier)
          {
            v45 = xmmword_18F9016A0;
            v46 = vld1q_dup_f32(inSpecifier);
            v47 = xmmword_18F9016B0;
            v48 = 0uLL;
            v49 = 2u;
            v50 = vdupq_n_s64(0x31uLL);
            v51.i64[0] = 0xFFFF0000FFFFLL;
            v51.i64[1] = 0xFFFF0000FFFFLL;
            v52 = vdupq_n_s64(4uLL);
            do
            {
              v48 = vsubq_s32(v48, vbicq_s8(vceqq_s32(vandq_s8(*&gAllLayoutTags[v49], v51), v46), vuzp1q_s32(vceqq_s64(v47, v50), vceqq_s64(v45, v50))));
              v45 = vaddq_s64(v45, v52);
              v47 = vaddq_s64(v47, v52);
              v49 += 4;
            }

            while (v49 != 122);
            DecoderSpecificBitStreamFromESDS = 0;
            v11 = 4 * vaddvq_s32(v48);
            goto LABEL_183;
          }

          return -50;
        }

        return 561213539;
      }

      if (inPropertyID != 1986093932)
      {
        if (inPropertyID != 1986225251)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize < 0x80)
        {
          return 561213539;
        }

        goto LABEL_247;
      }

      goto LABEL_377;
    }

    if (inPropertyID <= 2020107115)
    {
      if (inPropertyID == 1986946671)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        if (inSpecifierSize >= 0x38)
        {
          if (*(inSpecifier + 2) != 1987015266)
          {
            return 1718449215;
          }

          DecoderSpecificBitStreamFromESDS = 0;
          v11 = 24;
          goto LABEL_183;
        }

        return 561213539;
      }

      if (inPropertyID == 1987076466)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        if (inSpecifierSize >= 0x38)
        {
          v41 = 1987076466;
          return GetCodecPropertyFromFormatInfo(inSpecifier, outPropertyDataSize, 0, v41);
        }

        return 561213539;
      }

      v16 = 2020106611;
      goto LABEL_103;
    }

    if (inPropertyID == 2020107116)
    {
      DecoderSpecificBitStreamFromESDS = 0;
      v11 = 32;
      goto LABEL_183;
    }

    if (inPropertyID != 2020109667)
    {
      v13 = 2020110438;
      goto LABEL_181;
    }

    if (inSpecifierSize < 8)
    {
      return 561213539;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    v57 = bswap32(*inSpecifier);
    if (v57 > 1902207330)
    {
      if (v57 > 2053202274)
      {
        if (v57 > 2053202791)
        {
          if (v57 == 2053202792)
          {
            goto LABEL_378;
          }

          if (v57 == 2053464883)
          {
            goto LABEL_349;
          }

          v60 = 2053202800;
          goto LABEL_367;
        }

        if (v57 == 2053202275)
        {
          goto LABEL_378;
        }

        v62 = 2053202739;
      }

      else
      {
        if (v57 > 1902207847)
        {
          if (v57 == 1902207848 || v57 == 1902207856)
          {
            goto LABEL_378;
          }

          v58 = 1902469939;
          goto LABEL_343;
        }

        if (v57 == 1902207331)
        {
          goto LABEL_378;
        }

        v62 = 1902207795;
      }
    }

    else
    {
      if (v57 <= 1885430114)
      {
        if (v57 > 1633772399)
        {
          if (v57 != 1633772400)
          {
            if (v57 != 1633889587)
            {
              v58 = 1700998451;
              goto LABEL_343;
            }

LABEL_376:
            DecoderSpecificBitStreamFromESDS = 0;
            v11 = 11;
            goto LABEL_183;
          }

LABEL_378:
          DecoderConfigDescr::DecoderConfigDescr(&v76);
          memset(&v73, 0, sizeof(v73));
          std::vector<unsigned char>::vector[abi:ne200100](&__p, v6[7] + 2);
          bzero(&v76, 0x4C8uLL);
          *__p = 5;
          v63 = v6[7];
          *(__p + 1) = v63;
          memcpy(__p + 2, v6 + 8, v63);
          v69[0] = __p;
          v69[1] = __p + (v72 - __p);
          v70 = 0;
          if ((__p & 3) != 0 && v72 != __p)
          {
            v64 = 0;
            v65 = __p + 1;
            v66 = -8;
            v67 = __p + 1;
            do
            {
              HIDWORD(v70) = v66 + 16;
              v69[0] = v67;
              v64 = *(v67 - 1) | (v64 << 8);
              LODWORD(v70) = v64;
              v66 += 8;
              if ((v65 & 3) == 0)
              {
                break;
              }

              ++v65;
              v24 = v67++ >= __p + (v72 - __p);
            }

            while (!v24);
            LODWORD(v70) = v64 << (24 - v66);
          }

          DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(&v76, v69, 0);
          if (DecoderConfigDescr::GetASBD(&v76, &v73))
          {
            DecoderSpecificBitStreamFromESDS = 1718449215;
          }

          else
          {
            DecoderSpecificBitStreamFromESDS = 0;
          }

          v76.mNumberChannelDescriptions = 64;
          *&v76.mChannelDescriptions[0].mChannelLabel = 5;
          v76.mChannelDescriptions[0].mCoordinates[2] = 0.0;
          *v76.mChannelDescriptions[0].mCoordinates = 6144 * v73.mChannelsPerFrame;
          DecoderConfigDescr::DecoderConfigDescr(v75);
          MP4AudioESDS::SetDecoderConfigDescriptor(&v74, &v76);
          if (v75[2] == 64)
          {
            v68 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(v75) + 37;
          }

          else
          {
            v68 = 19;
          }

          *outPropertyDataSize = v68;
          MP4AudioESDS::~MP4AudioESDS(&v74);
          if (__p)
          {
            v72 = __p;
            operator delete(__p);
          }

          DecoderConfigDescr::~DecoderConfigDescr(&v76);
          return DecoderSpecificBitStreamFromESDS;
        }

        if (v57 == 1633772320)
        {
          goto LABEL_378;
        }

        v60 = 1633772392;
LABEL_367:
        if (v57 != v60)
        {
          goto LABEL_377;
        }

        goto LABEL_378;
      }

      if (v57 > 1885430631)
      {
        if (v57 == 1885430632 || v57 == 1885430640)
        {
          goto LABEL_378;
        }

        v58 = 1885692723;
LABEL_343:
        if (v57 != v58)
        {
          goto LABEL_377;
        }

LABEL_349:
        DecoderSpecificBitStreamFromESDS = 0;
        v11 = *(inSpecifier + 7) + 8;
        goto LABEL_183;
      }

      if (v57 == 1885430115)
      {
        goto LABEL_378;
      }

      v62 = 1885430579;
    }

    if (v57 != v62)
    {
      goto LABEL_377;
    }

    goto LABEL_376;
  }

  if (inPropertyID <= 1668048488)
  {
    if (inPropertyID > 1635148900)
    {
      if (inPropertyID <= 1667786096)
      {
        if (inPropertyID > 1650551909)
        {
          switch(inPropertyID)
          {
            case 0x62616C66u:
              if (inSpecifierSize == 24)
              {
                if (inSpecifier)
                {
                  v76.mChannelLayoutTag = 0;
                  SanitizeClientAudioChannelLayout(&v74, *(inSpecifier + 2), 20 * *(*(inSpecifier + 2) + 8) + 12);
                }

                return -50;
              }

              break;
            case 0x626D7467u:
              goto LABEL_182;
            case 0x63646370u:
              if (!inSpecifier)
              {
                return -50;
              }

              if (inSpecifierSize >= 0x10)
              {
                goto LABEL_182;
              }

              break;
            default:
              return DecoderSpecificBitStreamFromESDS;
          }

          return 561213539;
        }

        if (inPropertyID == 1635148901)
        {
          if (inSpecifierSize != 4)
          {
            return 561213539;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v39 = *inSpecifier;
          RegistryAccess::instance(*&inPropertyID);
          v40 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v15 = (*(*v40 + 32))(v40, v39, outPropertyDataSize);
          goto LABEL_260;
        }

        if (inPropertyID == 1635149166)
        {
          if (inSpecifierSize != 4)
          {
            return 561213539;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v53 = *inSpecifier;
          RegistryAccess::instance(*&inPropertyID);
          v54 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v15 = (*(*v54 + 24))(v54, v53, outPropertyDataSize);
          goto LABEL_260;
        }

        v12 = 1635151459;
        goto LABEL_109;
      }

      if (inPropertyID <= 1667788143)
      {
        if (inPropertyID == 1667786097 || inPropertyID == 1667786849)
        {
          goto LABEL_182;
        }

        if (inPropertyID != 1667787891)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize < 0x51)
        {
          return 561213539;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v17 = *(inSpecifier + 10);
        v18 = *(inSpecifier + 19);
        v19 = v17 + v18;
        *&v74.mChannelLayoutTag = v17;
        *&v74.mNumberChannelDescriptions = v17 + v18;
        *&v74.mChannelDescriptions[0].mChannelFlags = 0;
        if ((v17 & 3) != 0 && v18)
        {
          v20 = 0;
          v21 = v17 + 1;
          v22 = -8;
          v23 = v21;
          do
          {
            LODWORD(v74.mChannelDescriptions[0].mCoordinates[0]) = v22 + 16;
            *&v74.mChannelLayoutTag = v23;
            v20 = *(v23 - 1) | (v20 << 8);
            v74.mChannelDescriptions[0].mChannelFlags = v20;
            v22 += 8;
            if ((v21 & 3) == 0)
            {
              break;
            }

            LOBYTE(v21) = v21 + 1;
            v24 = v23++ >= v19;
          }

          while (!v24);
          v74.mChannelDescriptions[0].mChannelFlags = v20 << (24 - v22);
        }

        v76.mChannelLayoutTag = v18;
        LODWORD(v73.mSampleRate) = 0;
        v25 = *(inSpecifier + 2);
        v26 = 18;
        if (v25 > 1902207330)
        {
          if (v25 > 2053202274)
          {
            if (v25 > 2053202791)
            {
              if (v25 == 2053202792)
              {
                goto LABEL_362;
              }

              v26 = v18;
              if (v25 == 2053464883)
              {
                goto LABEL_364;
              }

              v59 = 2053202800;
              goto LABEL_352;
            }

            if (v25 == 2053202275)
            {
              goto LABEL_362;
            }

            v61 = 2053202739;
          }

          else
          {
            if (v25 > 1902207847)
            {
              if (v25 == 1902207848 || v25 == 1902207856)
              {
                goto LABEL_362;
              }

              v27 = 1902469939;
              goto LABEL_333;
            }

            if (v25 == 1902207331)
            {
              goto LABEL_362;
            }

            v61 = 1902207795;
          }
        }

        else
        {
          if (v25 <= 1885430114)
          {
            if (v25 > 1633772399)
            {
              if (v25 != 1633772400)
              {
                if (v25 == 1633889587)
                {
                  goto LABEL_364;
                }

                v27 = 1700998451;
                goto LABEL_333;
              }

LABEL_362:
              DecoderSpecificBitStreamFromESDS = ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS(&v74, &v76, &v73);
              if (DecoderSpecificBitStreamFromESDS)
              {
                return DecoderSpecificBitStreamFromESDS;
              }

              v26 = v76.mChannelLayoutTag + 8;
              goto LABEL_364;
            }

            if (v25 == 1633772320)
            {
              goto LABEL_362;
            }

            v59 = 1633772392;
LABEL_352:
            if (v25 != v59)
            {
              goto LABEL_361;
            }

            goto LABEL_362;
          }

          if (v25 > 1885430631)
          {
            if (v25 == 1885430632 || v25 == 1885430640)
            {
              goto LABEL_362;
            }

            v27 = 1885692723;
LABEL_333:
            v26 = v18;
            if (v25 != v27)
            {
              goto LABEL_361;
            }

            goto LABEL_364;
          }

          if (v25 == 1885430115)
          {
            goto LABEL_362;
          }

          v61 = 1885430579;
        }

        if (v25 != v61)
        {
LABEL_361:
          v26 = 0;
        }

LABEL_364:
        DecoderSpecificBitStreamFromESDS = 0;
        *outPropertyDataSize = v26;
        return DecoderSpecificBitStreamFromESDS;
      }

      if (inPropertyID == 1667788144)
      {
        if (inSpecifierSize == 16)
        {
          if (inSpecifier)
          {
            v76.mChannelLayoutTag = 0;
            SanitizeClientAudioChannelLayout(&v74, *(inSpecifier + 1), 20 * *(*(inSpecifier + 1) + 8) + 12);
          }

          return -50;
        }

        return 561213539;
      }

      if (inPropertyID != 1668047725)
      {
        if (inPropertyID != 1668047726)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v31 = AudioFormatProperty_ISOChannelLayoutSizeForChannelLayout(inSpecifier, inSpecifierSize, &v74);
        goto LABEL_317;
      }

      if (inSpecifier)
      {
        if (inSpecifierSize == 4)
        {
          v55 = 0;
        }

        else
        {
          if (inSpecifierSize != 8)
          {
            return 561213539;
          }

          v55 = *(inSpecifier + 1);
        }

        v31 = AudioFormatProperty_ChannelLayoutSizeForWAVEChannelMask(*inSpecifier, v55, v4);
LABEL_317:
        DecoderSpecificBitStreamFromESDS = 0;
        *outPropertyDataSize = v31;
        return DecoderSpecificBitStreamFromESDS;
      }

      return 2003329396;
    }

    if (inPropertyID <= 1634034289)
    {
      if (inPropertyID <= 1633906533)
      {
        if (inPropertyID == 1633776744)
        {
          goto LABEL_182;
        }

        if (inPropertyID != 1633904998)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        RegistryAccess::instance(*&inPropertyID);
        v34 = qword_1ED746318;
        os_unfair_recursive_lock_lock_with_options();
        v35 = (*(*v34 + 40))(v34);
      }

      else
      {
        if (inPropertyID != 1633906534)
        {
          if (inPropertyID != 1633969004)
          {
            v12 = 1633971811;
LABEL_109:
            if (inPropertyID != v12)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            if (inSpecifierSize != 40)
            {
              return 561213539;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            RegistryAccess::instance(*&inPropertyID);
            v29 = qword_1ED746318;
            os_unfair_recursive_lock_lock_with_options();
            v15 = (*(*v29 + 80))(v29, v6, outPropertyDataSize, inPropertyID == 1635151459);
LABEL_260:
            DecoderSpecificBitStreamFromESDS = v15;
            os_unfair_recursive_lock_unlock();
            return DecoderSpecificBitStreamFromESDS;
          }

          goto LABEL_190;
        }

        RegistryAccess::instance(*&inPropertyID);
        v37 = qword_1ED746318;
        os_unfair_recursive_lock_lock_with_options();
        v35 = (*(*v37 + 48))(v37);
      }

      *outPropertyDataSize = v35;
      os_unfair_recursive_lock_unlock();
      return 0;
    }

    if (inPropertyID <= 1634100077)
    {
      if (inPropertyID == 1634034290)
      {
        RegistryAccess::instance(*&inPropertyID);
        v38 = qword_1ED746318;
        os_unfair_recursive_lock_lock_with_options();
        v15 = (*(*v38 + 56))(v38, v7, v6, outPropertyDataSize);
        goto LABEL_260;
      }

      if (inPropertyID != 1634034540)
      {
        if (inPropertyID != 1634038642)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize != 4 || !inSpecifier || *inSpecifier != 1819304813)
        {
          RegistryAccess::instance(*&inPropertyID);
          v14 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v15 = (*(*v14 + 64))(v14, v7, v6, outPropertyDataSize);
          goto LABEL_260;
        }

LABEL_193:
        DecoderSpecificBitStreamFromESDS = 0;
        v11 = 16;
        goto LABEL_183;
      }

LABEL_190:
      if (inSpecifierSize != 40)
      {
        return 561213539;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      RegistryAccess::instance(*&inPropertyID);
      v36 = qword_1ED746318;
      os_unfair_recursive_lock_lock_with_options();
      v15 = (*(*v36 + 72))(v36, v6, outPropertyDataSize, inPropertyID == 1634034540);
      goto LABEL_260;
    }

    if (inPropertyID != 1634100078)
    {
      if (inPropertyID == 1634100080)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        if (inSpecifierSize < 0x10)
        {
          return 561213539;
        }

        goto LABEL_168;
      }

      v30 = 1634496373;
      goto LABEL_167;
    }

LABEL_168:
    DecoderSpecificBitStreamFromESDS = 0;
    v11 = 8;
    goto LABEL_183;
  }

  if (inPropertyID <= 1684235115)
  {
    if (inPropertyID <= 1668178284)
    {
      if (inPropertyID > 1668116577)
      {
        if (inPropertyID == 1668116578)
        {
          if (inSpecifierSize != 4)
          {
            return 561213539;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v44 = (*inSpecifier >> 11) & 0x800 | *inSpecifier & 0xFFA3FFFF | (*inSpecifier >> 6) & 0x7000;
          v74.mChannelLayoutTag = 0x10000;
          v74.mChannelBitmap = v44;
          v74.mNumberChannelDescriptions = 0;
        }

        else
        {
          if (inPropertyID != 1668116588)
          {
            v10 = 28788;
            goto LABEL_147;
          }

          if (inSpecifierSize != 4)
          {
            return 561213539;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v56 = *inSpecifier;
          v74.mChannelBitmap = 0;
          v74.mNumberChannelDescriptions = 0;
          v74.mChannelLayoutTag = v56;
        }

        v76.mChannelLayoutTag = 0;
        DecoderSpecificBitStreamFromESDS = AudioFormatProperty_NumberOfChannelsForLayout(&v74, &v76.mChannelLayoutTag);
        v11 = 20 * v76.mChannelLayoutTag + 12;
        goto LABEL_183;
      }

      if (inPropertyID != 1668048489)
      {
        if (inPropertyID != 1668051811)
        {
          v10 = 25452;
LABEL_147:
          v13 = v10 | 0x636D0000;
          goto LABEL_181;
        }

LABEL_182:
        DecoderSpecificBitStreamFromESDS = 0;
        v11 = 4;
        goto LABEL_183;
      }

      if (inSpecifierSize >= 0x38)
      {
        if (inSpecifier)
        {
          v41 = 1868786720;
          return GetCodecPropertyFromFormatInfo(inSpecifier, outPropertyDataSize, 0, v41);
        }

        return -50;
      }

      return 561213539;
    }

    if (inPropertyID <= 1668309349)
    {
      if (inPropertyID != 1668178285)
      {
        if (inPropertyID != 1668178796)
        {
          if (inPropertyID != 1668180324)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          if (inSpecifierSize < 0xC)
          {
            return 561213539;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          return AudioFormatProperty_CodingNameForDecodeFormatID(inSpecifier, outPropertyDataSize, 0);
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v42 = inSpecifierSize;
        v43 = inSpecifier;
        inSpecifier = 0;
        goto LABEL_276;
      }

      goto LABEL_168;
    }

    if (inPropertyID == 1668309350)
    {
      if (!inSpecifier)
      {
        return -50;
      }

      if (inSpecifierSize < 0x40)
      {
        return 561213539;
      }

      goto LABEL_168;
    }

    if (inPropertyID == 1668446576)
    {
      goto LABEL_182;
    }

    v30 = 1668509293;
    goto LABEL_167;
  }

  if (inPropertyID > 1701077867)
  {
    if (inPropertyID <= 1701406312)
    {
      if (inPropertyID != 1701077868)
      {
        if (inPropertyID != 1701081956)
        {
          if (inPropertyID != 1701147492)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          return AudioFormatProperty_ESDFromESDSSize(inSpecifier, inSpecifierSize, outPropertyDataSize);
        }

        goto LABEL_172;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      v33 = AudioFormatProperty_ChannelLayoutFromESD(inSpecifier, inSpecifierSize, &v74);
LABEL_227:
      DecoderSpecificBitStreamFromESDS = v33;
      v11 = 32 * (v33 == 0);
      goto LABEL_183;
    }

    if (inPropertyID != 1701406313)
    {
      if (inPropertyID == 1701733230)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        DecoderSpecificBitStreamFromESDS = 561213539;
        if (inSpecifierSize < 8 || *(inSpecifier + 1) + 8 > inSpecifierSize)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        return AudioFormatProperty_EncapsulatedMagicCookieNameForCodingName(inSpecifier, outPropertyDataSize, 0);
      }

      if (inPropertyID != 1702060908)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      v33 = AudioFormatProperty_ChannelLayoutFromESDS(inSpecifier, inSpecifierSize, &v74);
      goto LABEL_227;
    }

    if (inSpecifierSize != 8)
    {
      return 561213539;
    }

LABEL_247:
    if (inSpecifier)
    {
      goto LABEL_182;
    }

    return -50;
  }

  if (inPropertyID <= 1685220459)
  {
    if (inPropertyID != 1684235116)
    {
      if (inPropertyID != 1684369510)
      {
        v13 = 1685218164;
        goto LABEL_181;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      if (inSpecifierSize >= 0x38)
      {
        v41 = 1684369510;
        return GetCodecPropertyFromFormatInfo(inSpecifier, outPropertyDataSize, 0, v41);
      }

      return 561213539;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    if (inSpecifierSize != 56)
    {
      return 561213539;
    }

    v42 = *(inSpecifier + 12);
    v43 = *(inSpecifier + 5);
LABEL_276:

    return AudioFormatProperty_ChannelLayoutSizeForISOChannelLayout(v42, v43, inSpecifier, outPropertyDataSize, 0);
  }

  if (inPropertyID == 1685220460)
  {
    goto LABEL_182;
  }

  if (inPropertyID == 1685283692)
  {
    if (inSpecifierSize == 4)
    {
      if (inSpecifier)
      {
        DecoderSpecificBitStreamFromESDS = 0;
        v11 = 20;
        goto LABEL_183;
      }

      return -50;
    }

    return 561213539;
  }

  if (inPropertyID != 1701014883)
  {
    return DecoderSpecificBitStreamFromESDS;
  }

  if (!inSpecifier)
  {
    return -50;
  }

  if (inSpecifierSize < 0x18)
  {
    return 561213539;
  }

  return AudioFormatProperty_EncapsulatedMagicCookieFromCanonicalMagicCookie(inSpecifier, outPropertyDataSize, 0);
}

void sub_18F600E64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_18F600EE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t))
{
  if (a2)
  {
    if (v23)
    {
      (STACK[0x658])(v23);
    }

    if (v22)
    {
      a22(v22);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F600958);
  }

  JUMPOUT(0x18F600ED8);
}

void sub_18F600F34(void *a1, int a2)
{
  if (a2)
  {
    os_unfair_recursive_lock_unlock();
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F600958);
  }

  JUMPOUT(0x18F600ED8);
}

void sub_18F600FA0(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F600958);
  }

  JUMPOUT(0x18F600ED8);
}

void sub_18F600FB0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F600FBCLL);
  }

  JUMPOUT(0x18F600ED8);
}

void RegistryAccess::instance(RegistryAccess *this)
{
  {
    if (v1)
    {
      RegistryAccess::RegistryAccess(v1);
    }
  }
}

void RegistryAccess::RegistryAccess(RegistryAccess *this)
{
  RegistryAccess::instance(void)::inst = 0;
  qword_1ED746318 = 0;
  operator new();
}

void sub_18F6010FC(_Unwind_Exception *a1)
{
  v2 = v1;
  MEMORY[0x193ADF220](v2, 0x1081C408399A26FLL);
  v4 = qword_1ED746318;
  qword_1ED746318 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

acv2::ConverterRegistry *acv2::ConverterRegistry::ConverterRegistry(acv2::ConverterRegistry *this)
{
  *this = &unk_1F0334928;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  qmemcpy(this + 40, "mcplmcplvnocmcpllppa", 20);
  *(this + 4) = &unk_1F03349D8;
  *(this + 32) = 0;
  v3 = this + 32;
  std::vector<IPCAUClient::RemoteAUServer *>::emplace_back<IPCAUClient::RemoteAUServer * const&>(this + 8, &v3);
  return this;
}

void sub_18F601208(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::ConverterRegistry::GetAvailableEncodeSampleRatesInfo(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  FactoryBySpecifier = acv2::ConverterRegistry::FindFactoryBySpecifier(this, a2, a3);
  if (FactoryBySpecifier)
  {
    v5 = *(*FactoryBySpecifier + 64);

    return v5();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v7 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "ConverterFactory.cpp";
      v10 = 1024;
      v11 = 446;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for encode sample rates info", &v8, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::ConverterRegistry::MakeFactories(acv2::ConverterRegistry *this, const AudioClassDescription *a2, unsigned int a3, double a4)
{
  v6 = 0;
  v7 = 0;
  *&inDesc.componentType = a4;
  inDesc.componentFlags = 0;
  inDesc.componentFlagsMask = 0;
  inDesc.componentManufacturer = a2;
  while (1)
  {
    Next = AudioComponentFindNext(v6, &inDesc);
    if (!Next)
    {
      break;
    }

    v6 = Next;
    if (Impl_AudioGetComponentInfo(Next, &v14, 0))
    {
      break;
    }

    cf = 0;
    if (Impl_AudioGetComponentInfo(v6, 0, &cf))
    {
      if (cf)
      {
        CFRelease(cf);
      }

      return v7 & 1;
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v9 == v10)
    {
LABEL_14:
      if (v14.componentType == 1634037347)
      {
        operator new();
      }

      if (v14.componentType == 1633969507)
      {
        operator new();
      }

      v7 = 1;
    }

    else
    {
      while (1)
      {
        v11 = *v9;
        if (*(*v9 + 12) == a3 && (!v14.componentType || v11[4] == v14.componentType) && (!v14.componentSubType || v11[5] == v14.componentSubType) && (!v14.componentManufacturer || v11[6] == v14.componentManufacturer))
        {
          break;
        }

        v9 += 8;
        if (v9 == v10)
        {
          goto LABEL_14;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v7 & 1;
}

uint64_t acv2::ConverterRegistry::MakeEncoderFactories(acv2::ConverterRegistry *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
LABEL_8:
    if (a2 == 1970037111)
    {
      operator new();
    }

    if (a2 == 1634492791)
    {
      operator new();
    }

    LODWORD(v7) = vdup_n_s32(0x61656E63u).u32[0];
    HIDWORD(v7) = a2;

    return acv2::ConverterRegistry::MakeFactories(this, 0, a2, v7);
  }

  else
  {
    while (1)
    {
      if (*(*v2 + 20) == a2)
      {
        v4 = *(*v2 + 16);
        if (v4 == 1634037347 || v4 == 1852597614)
        {
          return 0;
        }
      }

      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t caulk::synchronized<AudioComponentMgr_NSExtension,std::recursive_mutex,caulk::empty_atomic_interface<AudioComponentMgr_NSExtension>>::synchronized<>(uint64_t a1)
{
  v2 = MEMORY[0x193ADEF60]();
  *(v2 + 104) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 64) = &unk_1F03265C8;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 1;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  out_token[0] = 0;
  v3 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.coreaudio.list_components", out_token, v3, &__block_literal_global_1702);

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 64) = &unk_1F0326898;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void sub_18F601888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  a10 = &v10[1].__m_.__opaque[8];
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::recursive_mutex::~recursive_mutex(v10);
  _Unwind_Resume(a1);
}

AudioComponent AudioComponentRegister(const AudioComponentDescription *inDesc, CFStringRef inName, UInt32 inVersion, AudioComponentFactoryFunction inFactory)
{
  v11[8] = *MEMORY[0x1E69E9840];
  if (inDesc && inName && inFactory)
  {
    GlobalComponentPluginMgr(&v10);
    if (EmbeddedComponentManager::isComponentDescriptionVisible(inDesc->componentFlags, v7))
    {
      applesauce::CF::StringRef::from_get(&cf, inName);
      v11[0] = &unk_1F032B9E0;
      v11[1] = inFactory;
      v11[3] = v11;
      operator new();
    }

    if (v10)
    {
      std::recursive_mutex::unlock(v10);
    }
  }

  return 0;
}

void sub_18F601AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::recursive_mutex *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
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

void sub_18F601C10(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AudioComponentPlugInInterface * (*)(AudioComponentDescription const*),std::allocator<AudioComponentPlugInInterface * (*)(AudioComponentDescription const*)>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032B9E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t acv2::ConverterRegistry::FindFactoryBySpecifier(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3)
{
  switch(a2)
  {
    case 0u:
      return 0;
    case 0x28u:
      v3 = a3[2];
      return (*(*this + 16))(this, 1819304813, v3, 0, 0);
    case 4u:
      v3 = *a3;
      return (*(*this + 16))(this, 1819304813, v3, 0, 0);
  }

  if (a2 % 0xC)
  {
    return 0;
  }

  else
  {
    return (*(*this + 16))(this, 1819304813, a3[1], a3, a2 / 0xC);
  }
}

uint64_t AudioComponentMgr_RegistrarService::initPhase2(AudioComponentMgr_RegistrarService *this)
{
  v2 = EmbeddedComponentManager::registerInternalAudioUnits(this);
  EmbeddedComponentManager::registerInternalAudioCodecs(v2);
  *(this + 80) = dyld_program_sdk_at_least();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (AudioComponentMgr_RegistrarService::connectToRegistrationServer(void)::onceToken != -1)
  {
    dispatch_once(&AudioComponentMgr_RegistrarService::connectToRegistrationServer(void)::onceToken, block);
  }

  v3 = *(*this + 120);

  return v3(this, 0, 0);
}

void SystemAUsSoftLink::instance(SystemAUsSoftLink *this)
{
  {
    if (v1)
    {
      SystemAUsSoftLink::SystemAUsSoftLink(v1);
    }
  }
}

void SystemAUsSoftLink::SystemAUsSoftLink(SystemAUsSoftLink *this)
{
  SystemAUsSoftLink::instance(void)::global = 0;
  off_1ED7463E8 = 0;
  off_1ED7463F0 = 0;
  v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libEmbeddedSystemAUs.dylib", 1);
  if (!v1)
  {
    __assert_rtn("SystemAUsSoftLink", "AudioToolboxSoftLink.h", 58, "lib != nullptr");
  }

  v2 = v1;
  DLSymbol<void ()(void)>::init(&SystemAUsSoftLink::instance(void)::global, v1, "RegisterAudioUnits_Toolbox");
  DLSymbol<void ()(void)>::init(&off_1ED7463E8, v2, "RegisterAudioUnits_Instruments");
  off_1ED7463F0 = dlsym(v2, "AudioOutputUnitPublish_Impl");
  if (!off_1ED7463F0)
  {
    __assert_rtn("init", "DLSymbol.h", 23, "mImpl != nullptr");
  }
}

void *DLSymbol<void ()(void)>::init(void *a1, void *__handle, char *__symbol)
{
  result = dlsym(__handle, __symbol);
  *a1 = result;
  if (!result)
  {
    __assert_rtn("init", "DLSymbol.h", 23, "mImpl != nullptr");
  }

  return result;
}

uint64_t std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t APComponent::APComponent(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, CFTypeRef *a6, int a7, uint64_t a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F033CA40;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v10 = *(a4 + 16);
  v11 = *(a4 + 8);
  v12 = *(a4 + 12) & 0xFFFFFFE3 | (4 * ((a5 >> 2) & 7));
  *(a1 + 36) = *a4;
  *(a1 + 44) = v11;
  *(a1 + 48) = v12;
  *(a1 + 52) = v10;
  *(a1 + 56) = a7;
  *(a1 + 60) = a3;
  v13 = *a6;
  if (*a6)
  {
    CFRetain(*a6);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__value_func[abi:ne200100](a1 + 80, a8);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_18F602168(_Unwind_Exception *a1)
{
  applesauce::CF::StringRef::~StringRef((v1 + 64));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t EmbeddedComponentManager::registerInternalAudioUnits(EmbeddedComponentManager *this)
{
  v1 = tkqMjk4y;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"AllAUsPublic", @"com.apple.coreaudio", 0);
  if ((AppBooleanValue & 1) == 0 && (v1 & 0xC000) == 0)
  {
    AppBooleanValue = SecTaskCreateFromSelf(0);
    if (AppBooleanValue)
    {
      v3 = AppBooleanValue;
      v4 = SecTaskCopyValueForEntitlement(AppBooleanValue, @"com.apple.coreaudio.register-internal-aus", 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFGetTypeID(v4);
        if (v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5))
        {
          atomic_fetch_or(&tkqMjk4y, 0x8000u);
        }

        CFRelease(v5);
      }

      CFRelease(v3);
    }
  }

  SystemAUsSoftLink::instance(AppBooleanValue);
  v7 = SystemAUsSoftLink::instance(void)::global();
  SystemAUsSoftLink::instance(v7);
  off_1ED7463E8();
  v8 = *(*GetAudioDSPManager() + 24);

  return v8();
}

uint64_t AudioComponentMgr_Base::_addComponent(char **a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(*a2 + 36);
  if (v3 == 1145392463 || *(*a2 + 40) == 1145392463 || *(*a2 + 44) == 1145392463)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v6 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "AudioComponentPluginMgr.mm";
      v21 = 1024;
      v22 = 1139;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't register component with 'DEMO' type, subtype, or manufacturer.", &v19, 0x12u);
    }

    return 0;
  }

  if (v3 == 1635087216)
  {
    if (!(*(*a1 + 14))(a1))
    {
      return 0;
    }

    v2 = *a2;
  }

  v9 = a1 + 2;
  SortedPosition = AudioComponentVector::findSortedPosition(a1[2], a1[3], (v2 + 36));
  v11 = SortedPosition;
  if (a1[3] == SortedPosition || (v12 = *SortedPosition, v13 = *a2, *(*SortedPosition + 36) != *(*a2 + 36)) || v12[10] != v13[10] || v12[11] != v13[11] || v12[14] != v13[14])
  {
    v17 = a1 + 2;
    v16 = v11;
    goto LABEL_23;
  }

  result = (*(*a1 + 12))(a1, SortedPosition, a2);
  if (result)
  {
    return result;
  }

  if (*(*a2 + 60) > *(*v11 + 60))
  {
    v15 = v11 - *v9;
    std::vector<std::shared_ptr<APComponent>>::erase[abi:ne200100](v9, v11);
    v16 = &(*v9)[v15];
    v17 = v9;
LABEL_23:
    AudioComponentVector::insertSorted(v17, v16, a2);
    return *a2;
  }

  return 0;
}

uint64_t AudioComponentMgr_Base::addComponentLocally(uint64_t a1, char *a2)
{
  v3 = AudioComponentMgr_Base::_addComponent(a1, a2);
  v4 = v3;
  v5 = (a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  while (v6 != v7)
  {
    v8 = *v6;
    v6 += 2;
    *v5 = v8;
    v5 = (v8 + 24);
  }

  *v5 = 0;
  if (v3)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_84);
  }

  return v4;
}

void AudioComponentVector::insertSorted(void *a1, char *a2, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    if (v17 >> 3 > v15)
    {
      v15 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v15;
    }

    v19 = v16 >> 4;
    v33 = a1;
    if (v18)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v18);
    }

    v21 = (16 * v19);
    v30 = 0;
    v31 = 16 * v19;
    v32 = (16 * v19);
    if (!v19)
    {
      if (v16 < 1)
      {
        if (v14 == a2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v16 >> 3;
        }

        v34 = a1;
        std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v22);
      }

      v21 = (v21 - (((v16 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v31 = v21;
      *&v32 = v21;
    }

    v23 = *(a3 + 1);
    *v21 = *a3;
    v21[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      v21 = v32;
    }

    *&v32 = v21 + 2;
    memcpy(v21 + 2, a2, a1[1] - a2);
    v24 = *a1;
    v25 = v31;
    *&v32 = v32 + a1[1] - a2;
    a1[1] = a2;
    v26 = (a2 - v24);
    v27 = (v25 - (a2 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    v29 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v28;
    *(&v32 + 1) = v29;
    v30 = v28;
    v31 = v28;
    std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(&v30);
  }

  else if (a2 == v6)
  {
    v20 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 8) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    std::vector<std::shared_ptr<APComponent>>::__move_range(a1, a2, v6, a2 + 16);
    v8 = a1[1] <= a3 || a2 > a3;
    v9 = 16;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = *(v10 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(a2 + 1);
    *a2 = v12;
    *(a2 + 1) = v11;
    if (v13)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

uint64_t GetAudioDSPManager()
{
  {
    GetAudioDSPManager::instance = GetAudioDSPManager::$_0::operator()();
  }

  return GetAudioDSPManager::instance;
}

void APComponent::~APComponent(APComponent *this)
{
  APComponent::~APComponent(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033CA40;
  v2 = *(this + 14);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    CFRelease(v4);
  }

  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](this + 80);
  v5 = *(this + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t std::__shared_ptr_pointer<APComponent *,std::shared_ptr<APComponent>::__shared_ptr_default_delete<APComponent,APComponent>,std::allocator<APComponent>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  assertXPCServiceReachable(&cfstr_ComAppleAudioA_7.isa);
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.AudioComponentRegistrar" options:4096];
  v3 = AudioComponentRegistrarProtocol_XPCInterface();
  [v2 setRemoteObjectInterface:v3];

  v4 = objc_opt_new();
  [v2 setExportedObject:v4];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034E750];
  [v2 setExportedInterface:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke_2;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = v1;
  [v2 setInterruptionHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN34AudioComponentMgr_RegistrarService27connectToRegistrationServerEv_block_invoke_3;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v1;
  [v2 setInvalidationHandler:v7];
  [v2 resume];
  v6 = *(v1 + 88);
  *(v1 + 88) = v2;
}

void sub_18F602A80(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void assertXPCServiceReachable(NSString *a1)
{
  v2 = a1;
  if (assertXPCServiceReachable(NSString *)::gAssertReachable < 0)
  {
    CASmartPreferences::Read(@"AssertComponentRegistrarReachable", @"com.apple.coreaudio", &assertXPCServiceReachable(NSString *)::gAssertReachable, v1);
  }

  if (assertXPCServiceReachable(NSString *)::gAssertReachable >= 1 && (*special_port = 0, task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]), bootstrap_look_up(special_port[1], [(NSString *)v2 UTF8String], special_port)))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
  }
}

void std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void EmbeddedComponentManager::registerInternalAudioCodecs(EmbeddedComponentManager *this)
{
  v45 = *MEMORY[0x1E69E9840];
  memcpy(__dst, "/System/Library/Frameworks/AudioToolbox.framework", sizeof(__dst));
  v1 = strlen(__dst);
  v2 = (v1 + 1);
  __dst[v1] = 47;
  strncpy(&__dst[v2], "Codecs.plist", 1024 - v2);
  v3 = *MEMORY[0x1E695E480];
  v4 = strlen(__dst);
  v5 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __dst, v4, 0);
  if (!v5 || (v6 = v5, v7 = CFReadStreamCreateWithFile(v3, v5), CFRelease(v6), !v7))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (!CFReadStreamOpen(v7))
  {
LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  v8 = CFPropertyListCreateWithStream(v3, v7, 0, 0, 0, 0);
  if (!v8)
  {
    v27 = CADefaultLog();
    v11 = v27;
    if (!v27)
    {
      goto LABEL_32;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buffer = 136315394;
      v41 = "EmbeddedAudioCodecLoader.cpp";
      v42 = 1024;
      v43 = 61;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't get property list from Codec plist read stream\n", buffer, 0x12u);
    }

    goto LABEL_31;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"codecList");
  v11 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  else
  {
    v29 = CADefaultLog();
    if (v29)
    {
      v30 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buffer = 136315394;
        v41 = "EmbeddedAudioCodecLoader.cpp";
        v42 = 1024;
        v43 = 67;
        _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't get codec array from Codec plist property list\n", buffer, 0x12u);
      }
    }
  }

  CFRelease(v9);
LABEL_32:
  CFReadStreamClose(v7);
  CFRelease(v7);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count < 0)
    {
LABEL_26:
      CFRelease(v11);
      return;
    }

    v31 = 0;
    v12 = Count + 1;
    goto LABEL_10;
  }

LABEL_9:
  v12 = 1;
  v31 = 1;
LABEL_10:
  v13 = 1;
  do
  {
    v14 = "AudioCodecs";
    if (v13 != 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v13 - 2);
      if (!ValueAtIndex)
      {
        break;
      }

      v14 = buffer;
      if (!CFStringGetCString(ValueAtIndex, buffer, 256, 0x600u))
      {
        break;
      }
    }

    strncpy(&__dst[v2], v14, 1024 - v2);
    v16 = dlopen(__dst, 0);
    if (!v16)
    {
      v18 = CADefaultLog();
      if (!v18)
      {
        continue;
      }

      v19 = v18;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      v20 = dlerror();
      *buf = 136315906;
      v33 = "EmbeddedAudioCodecLoader.cpp";
      v34 = 1024;
      v35 = 102;
      v36 = 2080;
      v37 = __dst;
      v38 = 2080;
      v39 = v20;
      v21 = v19;
      v22 = "%25s:%-5d couldn't open library %s:\n%s";
LABEL_23:
      _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x26u);
      continue;
    }

    v17 = dlsym(v16, "RegisterExternalAudioCodecs");
    if (!v17)
    {
      v23 = CADefaultLog();
      if (!v23)
      {
        continue;
      }

      v24 = v23;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      v25 = dlerror();
      *buf = 136315906;
      v33 = "EmbeddedAudioCodecLoader.cpp";
      v34 = 1024;
      v35 = 108;
      v36 = 2080;
      v37 = "RegisterExternalAudioCodecs";
      v38 = 2080;
      v39 = v25;
      v21 = v24;
      v22 = "%25s:%-5d couldn't lookup symbol %s:\n%s";
      goto LABEL_23;
    }

    v17(0);
  }

  while (v12 > v13++);
  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }
}

uint64_t std::__function::__func<CASmartPreferences::Read(__CFString const*,__CFString const*,int &)::{lambda(long long)#1},std::allocator<CASmartPreferences::Read(__CFString const*,__CFString const*,int &)::{lambda(long long)#1}>,void ()(long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0336F08;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100]((a1 + 16));

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

id AudioComponentRegistrarProtocol_XPCInterface(void)
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0354628];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_getComponentList_linkedSDKRequiresEntitlement_includeExtensions_forceWaitForExtensions_reply_ argumentIndex:3 ofReply:1];

  return v0;
}

uint64_t std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<APComponent>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 8) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = (v9 + v5);
      v11 = *(v9 + v5);
      *v10 = 0;
      v10[1] = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

uint64_t GetAudioDSPManager::$_0::operator()()
{
  v0 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (!v0)
  {
    v3 = dlerror();
    abort_report_np("libAudioDSP.dylib failed to load: %s", v3);
    goto LABEL_7;
  }

  v1 = dlsym(v0, "GetAudioDSPManager");
  if (!v1)
  {
LABEL_7:
    v4 = dlerror();
    v5 = abort_report_np("GetAudioDSPManager symbol not found: %s", v4);
    return AudioComponentMgr_RegistrarService::inExtensionServiceProcess(v5);
  }

  return v1();
}

BOOL AudioComponentMgr_RegistrarService::inExtensionServiceProcess(AudioComponentMgr_RegistrarService *this)
{
  v1 = (*(*this + 128))(this);
  v2 = v1 != 0;

  return v2;
}

uint64_t AudioComponentMgr_NSExtension::handleDuplicateRegistrationAttempt(AudioComponentMgr_RegistrarService *a1, uint64_t *a2, uint64_t *a3)
{
  if (AudioComponentMgr_RegistrarService::inExtensionServiceProcess(a1))
  {
    return 0;
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v6 + 64))(v6);
  v8 = (v7 != 0) ^ ((*(**a3 + 64))() == 0);
  if ((v8 & 1) == 0)
  {
    std::shared_ptr<APComponent>::shared_ptr[abi:ne200100]<APComponent,0>(&v26, *(v6 + 8), *(v6 + 16));
    v9 = (*(*v26 + 64))(v26);
    v10 = (*(**a3 + 64))();
    if (v9)
    {
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v9 + 208);
      *(v9 + 200) = v12;
      *(v9 + 208) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = *a3;
      v7 = v26;
      v15 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(v14 + 152);
      *(v14 + 144) = v7;
      *(v14 + 152) = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        v7 = v26;
      }

      v17 = v27;
      if (!v27)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v21 = v26;
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = *(v10 + 208);
      *(v10 + 200) = v21;
      *(v10 + 208) = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *a3;
      v24 = a3[1];
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = *(v23 + 152);
      *(v23 + 144) = v23;
      *(v23 + 152) = v24;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v7 = *a3;
      v17 = a3[1];
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_16:
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v7 != v6)
    {
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = a2[1];
      *a2 = v7;
      a2[1] = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v8)
  {
    return 0;
  }

  return v7;
}

void sub_18F603620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void CASmartPreferences::Read(CASmartPreferences *this, const __CFString *a2, const __CFString *a3, int *a4)
{
  v5[8] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F0336F08;
  v4[1] = a3;
  v4[3] = v4;
  CASmartPreferences::instance(this);
  v4[4] = MEMORY[0x1E69E5040];
  std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](v5, v4);
  v5[7] = 0;
  operator new();
}

void sub_18F6037DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ConnectionInfo::_canUseExtensions(ConnectionInfo *this)
{
  if (!this->mLinkedSDKRequiresEntitlement)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&this->mConnection);
  v2 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_auditToken(WeakRetained);
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  token = v10;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  v5 = v4;
  if (v4)
  {
    v6 = SecTaskCopyValueForEntitlement(v4, @"inter-app-audio", 0);
    v7 = v6;
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      v3 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void AudioComponentRegistrarImpl::replyWithComponentList(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 208;
  if (a2)
  {
    v11 = 168;
  }

  v18 = a1 + v11;
  v19 = 0;
  if (v17 && *(a1 + 256) && (v12 = atomic_load((a1 + 2)), (v12 & 1) != 0))
  {
    v13 = *(a1 + 256);
    os_unfair_lock_lock(v13);
    v14 = AUExtensionScanner::getExtensionComponentList(&v13[2], v17);
    if (v13)
    {
      os_unfair_lock_unlock(v13);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = PurgeableDataWrapper::accessor::data(&v18);
  if (a2)
  {
    v16 = atomic_load((a1 + 2));
  }

  else
  {
    v16 = 0;
  }

  v10[2](v10, v15, v16 & 1, v9, v14);

  *(a1 + 1) = 1;
  if (v19 == 1)
  {
    [*(v18 + 32) endContentAccess];
  }
}

void sub_18F603C08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, char a12)
{
  if (v14)
  {
    os_unfair_lock_unlock(v14);
  }

  if (a12 == 1)
  {
    [*(a11 + 32) endContentAccess];
  }

  _Unwind_Resume(a1);
}

id PurgeableDataWrapper::accessor::data(PurgeableDataWrapper::accessor *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *this;
    v3 = *(*this + 32);
    if (v3)
    {
      if ([v3 beginContentAccess])
      {
LABEL_7:
        *(this + 8) = 1;
        goto LABEL_8;
      }

      v2 = *this;
    }

    v4 = *(v2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = MEMORY[0x1E696AE58];
    v6 = (*(*v4 + 48))(v4);
    v7 = [v5 dataWithData:v6];
    v8 = *(*this + 32);
    *(*this + 32) = v7;

    goto LABEL_7;
  }

LABEL_8:
  v9 = *(*this + 32);

  return v9;
}

id std::__function::__func<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_1,std::allocator<AudioComponentRegistrarImpl::AudioComponentRegistrarImpl(BOOL,AudioComponentRegistrar *)::$_1>,NSData * ()(void)>::operator()(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v5 = *"psua";
  v6 = 0;
  memset(&v4, 0, 24);
  std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v4, *(v1 + 136), *(v1 + 144), (*(v1 + 144) - *(v1 + 136)) >> 4);
  v4.mSorted = *(v1 + 160);
  v7[0] = &unk_1F032E118;
  v7[1] = &v5;
  v7[3] = v7;
  AudioComponentVector::remove_and_erase_if (&v4, v7);
  std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](v7);
  v2 = AudioComponentVector::serialized(&v4);
  v7[0] = &v4;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v7);

  return v2;
}

void sub_18F603E40(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t AudioComponentVector::remove_and_erase_if (void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
LABEL_18:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v6 + 48))(v6, *v3))
      {
        break;
      }

      v3 += 2;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_15;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 2; i != v4; i += 2)
      {
        v8 = *(a2 + 24);
        if (!v8)
        {
          goto LABEL_18;
        }

        if (((*(*v8 + 48))(v8, *i) & 1) == 0)
        {
          v9 = *i;
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

LABEL_15:
  v11 = a1[1];

  return std::vector<std::shared_ptr<APComponent>>::erase(a1, v3, v11);
}

uint64_t std::vector<std::shared_ptr<APComponent>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void AudioComponentVector::sort(AudioComponentVector *this)
{
  if (!this->mSorted)
  {
    begin = this->__begin_;
    end = this->__end_;
    v4 = 126 - 2 * __clz((end - begin) >> 4);
    if (end == begin)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,false>(begin, end, v5, 1);
    this->mSorted = 1;
  }
}

void std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL AIFFAudioFormat::ExtensionIsThisFormat(AIFFAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"aiff", 1uLL))
  {
    return CFStringCompare(theString1, @"aif", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

void AudioFileFormatRegistry::AddAudioFileType(AudioFileFormatRegistry *this, AudioFileFormatBase *a2)
{
  v3 = *(a2 + 2);
  LODWORD(v46) = v3;
  *(&v46 + 1) = a2;
  v5 = *(this + 4);
  v4 = *(this + 5);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = *(this + 5);
  }

  else
  {
    v7 = v6 >> 4;
    v8 = *(this + 4);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[16 * (v7 >> 1)];
      v12 = *v10;
      v11 = v10 + 16;
      v7 += ~(v7 >> 1);
      if (v12 < v3)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
  }

  v13 = *(this + 6);
  if (v4 >= v13)
  {
    v16 = (v6 >> 4) + 1;
    if (v16 >> 60)
    {
      goto LABEL_54;
    }

    v17 = v8 - v5;
    v18 = v13 - v5;
    v19 = (v13 - v5) >> 3;
    if (v19 > v16)
    {
      v16 = v19;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v16;
    }

    v21 = v17 >> 4;
    if (v20)
    {
      std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](v20);
    }

    v22 = (16 * v21);
    v23 = 16 * v21;
    if (!v21)
    {
      if (v17 < 1)
      {
        if (v8 == v5)
        {
          v26 = 1;
        }

        else
        {
          v26 = v17 >> 3;
        }

        std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](v26);
      }

      v22 = (v22 - (((v17 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v23 = v22;
    }

    *v22 = v46;
    v27 = v23 + 16;
    memcpy((v23 + 16), v8, *(this + 5) - v8);
    v28 = *(this + 4);
    v45 = (v27 + *(this + 5) - v8);
    *(this + 5) = v8;
    v29 = v8 - v28;
    v30 = v22 - (v8 - v28);
    memcpy(v30, v28, v29);
    v31 = *(this + 4);
    *(this + 4) = v30;
    *(this + 40) = v45;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else if (v8 == v4)
  {
    *v4 = v46;
    *(this + 5) = v4 + 16;
  }

  else
  {
    v14 = v8 + 16;
    if (v4 < 0x10)
    {
      v15 = *(this + 5);
    }

    else
    {
      v15 = (v4 + 16);
      *v4 = *(v4 - 1);
    }

    *(this + 5) = v15;
    if (v4 != v14)
    {
      memmove(v8 + 16, v8, v4 - v14);
      v15 = *(this + 5);
    }

    v24 = v15 <= &v46 || v8 > &v46;
    v25 = 16;
    if (v24)
    {
      v25 = 0;
    }

    *v8 = *(&v46 + v25);
  }

  v33 = *(this + 2);
  v32 = *(this + 3);
  if (v33 < v32)
  {
    *v33 = v46;
    v34 = (v33 + 1);
    goto LABEL_53;
  }

  v35 = *(this + 1);
  v36 = (v33 - v35) >> 4;
  v37 = v36 + 1;
  if ((v36 + 1) >> 60)
  {
LABEL_54:
    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v38 = v32 - v35;
  if (v38 >> 3 > v37)
  {
    v37 = v38 >> 3;
  }

  if (v38 >= 0x7FFFFFFFFFFFFFF0)
  {
    v39 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v39 = v37;
  }

  if (v39)
  {
    std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](v39);
  }

  v40 = (16 * v36);
  *v40 = v46;
  v34 = 16 * v36 + 16;
  v41 = *(this + 1);
  v42 = *(this + 2) - v41;
  v43 = 16 * v36 - v42;
  memcpy(v40 - v42, v41, v42);
  v44 = *(this + 1);
  *(this + 1) = v43;
  *(this + 2) = v34;
  *(this + 3) = 0;
  if (v44)
  {
    operator delete(v44);
  }

LABEL_53:
  *(this + 2) = v34;
}

void sub_18F6044D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AudioFileTypePair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL CAFAudioFormat::ExtensionIsThisFormat(CAFAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"caf", 1uLL))
  {
    return CFStringCompare(theString1, @"caff", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

BOOL AIFFAudioFormat::FileDataIsThisFormat(AIFFAudioFormat *this, unsigned int a2, _DWORD *a3)
{
  if (a2 < 0xC)
  {
    return 0;
  }

  return *a3 == 1297239878 && a3[2] == 1179011393;
}

void AIFFAudioFile::AIFFAudioFile(AIFFAudioFile *this, int a2)
{
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 20) = 1;
  *(this + 21) = a2;
  *(this + 11) = 0;
  *(this + 24) = -1;
  *(this + 50) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0x100000000;
  *(this + 34) = 65792;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 168) = xmmword_18F9018B0;
  *(this + 46) = 16;
  *(this + 94) = 258;
  *this = &unk_1F032DBA8;
  *(this + 56) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 58) = 0;
}

uint64_t AIFFAudioFile::OpenFromDataSource(AIFFAudioFile *this)
{
  v68 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0uLL;
  v46 = 0;
  inSpecifierSize = 0;
  v54 = 0u;
  v55 = 0u;
  outPropertyData = 0u;
  v48 = 0u;
  v49 = 0;
  *(this + 9) = 0;
  (*(*this + 240))(this, 0);
  *(this + 190) = 0;
  v2 = this + 190;
  v3 = (*(**(this + 13) + 24))(*(this + 13), &v52);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v58 = "AIFFAudioFile.cpp";
      WORD4(v58) = 1024;
      *(&v58 + 10) = 1290;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  GetSize Failed";
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v8 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 8, &v56, &v53);
  v3 = v8;
  v6 = 1685348671;
  if (v8 == -39)
  {
    goto LABEL_97;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v58 = "AIFFAudioFile.cpp";
      WORD4(v58) = 1024;
      *(&v58 + 10) = 1296;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  FSRead Failed 1";
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v9 = v56.i32[0];
  v56.i32[0] = bswap32(v56.u32[0]);
  if (v9 != 1297239878)
  {
    goto LABEL_97;
  }

  v56.i32[1] = bswap32(v56.u32[1]);
  *&v50 = 0x8464F524DLL;
  *(&v50 + 1) = v56.i32[1] + 8;
  v51 = 0;
  std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v50);
  if (v52 > (v56.i32[1] + 8))
  {
    v52 = (v56.i32[1] + 8);
  }

  v3 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 12, &v67, &v53);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v58 = "AIFFAudioFile.cpp";
      WORD4(v58) = 1024;
      *(&v58 + 10) = 1318;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  FSRead Failed 2";
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v42 = v67.i32[2];
  v10 = bswap32(v67.u32[2]);
  *(this + 21) = v10;
  if (v10 != 1095321155 && v10 != 1095321158)
  {
    v6 = 4294967246;
    goto LABEL_97;
  }

  if (v52 < 0xD)
  {
    inSpecifier = 0;
    goto LABEL_73;
  }

  inSpecifier = 0;
  v11 = 0;
  v12 = 12;
LABEL_27:
  v44 = -16 - v12;
  for (i = -v12; ; LODWORD(i) = i + 1)
  {
    v14 = (*(**(this + 13) + 48))(*(this + 13), 0, v12, 8, &v56, &v53);
    v3 = v14;
    if (v14)
    {
      if (v14 != -39)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v58 = "AIFFAudioFile.cpp";
          WORD4(v58) = 1024;
          *(&v58 + 10) = 1338;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  FSRead Failed 1";
          goto LABEL_4;
        }

        goto LABEL_5;
      }

LABEL_73:
      if (v54 == 1129270605)
      {
        if (!DWORD2(outPropertyData))
        {
          v3 = FillDescriptionFromCommonChunk(&v54, &outPropertyData, inSpecifierSize, inSpecifier);
          if (v3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&v58 = "AIFFAudioFile.cpp";
              WORD4(v58) = 1024;
              *(&v58 + 10) = 1478;
              v4 = MEMORY[0x1E69E9C10];
              v5 = "%25s:%-5d  FillDescriptionFromCommonChunk Failed";
              goto LABEL_4;
            }

            goto LABEL_5;
          }
        }

        if (*&outPropertyData > 0.0)
        {
          (*(*this + 656))(this, v48, *&outPropertyData);
          (*(*this + 256))(this, *(&v54 + 10));
          v3 = (*(*this + 184))(this, &outPropertyData);
          if (v3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&v58 = "AIFFAudioFile.cpp";
              WORD4(v58) = 1024;
              *(&v58 + 10) = 1487;
              v4 = MEMORY[0x1E69E9C10];
              v5 = "%25s:%-5d  bad data format";
              goto LABEL_4;
            }

            goto LABEL_5;
          }

          if (DWORD2(outPropertyData) != 1819304813)
          {
            goto LABEL_134;
          }

          v37 = *(this + 9) + 8;
          for (j = 4; ; --j)
          {
            if ((*(**(this + 13) + 48))(*(this + 13), 0, v37, 10, &v67, &v53))
            {
              v6 = 0;
              goto LABEL_97;
            }

            *buf = 0;
            *(&v58 + 4) = &v67;
            HIDWORD(v58) = v53;
            v59 = 0;
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = 3940;
            if (v53 >= 0xA)
            {
              if (v67.u16[0] != 2935)
              {
                if (v67.u16[0] != 30475)
                {
                  goto LABEL_118;
                }

                v59 = 1;
              }

              buf[0] = 1;
            }

LABEL_118:
            if (!AC3PacketParser::IsValid(buf))
            {
              goto LABEL_132;
            }

            if (!j)
            {
              *&outPropertyData = v60;
              v48 = v61;
              v49 = v62;
              DWORD2(outPropertyData) = 1667326771;
              HIDWORD(outPropertyData) = (2 * v59) | 0xC;
              LODWORD(v48) = 6144;
              if (!(*(*this + 184))(this, &outPropertyData))
              {
                (*(*this + 656))(this, 6144);
                v40 = (*(*this + 232))(this);
                (*(*this + 256))(this, v40 / 6144);
                *(this + 122) = v63;
              }

LABEL_132:
              if (v64)
              {
                free(v64);
              }

LABEL_134:
              v6 = 0;
LABEL_84:
              v32 = v50 == 1397968452;
LABEL_85:
              v33 = v32;
              goto LABEL_88;
            }

            if (v64)
            {
              free(v64);
            }

            v37 += 6144;
          }
        }

        v6 = 1718449215;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *&v58 = "AIFFAudioFile.cpp";
        WORD4(v58) = 1024;
        *(&v58 + 10) = 1482;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  Invalid sampling rate";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *&v58 = "AIFFAudioFile.cpp";
        WORD4(v58) = 1024;
        *(&v58 + 10) = 1472;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  Never found the Common Chunk";
      }

      _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
      goto LABEL_84;
    }

    v15 = v56.i32[0];
    v16 = vrev32_s8(v56);
    v56 = v16;
    *&v50 = v16.u32[0] | 0x800000000;
    v17 = v16.i32[1] + 8;
    v18 = v12;
    *(&v50 + 1) = v17;
    v51 = v12;
    v19 = v52;
    v20 = (i + v52);
    if (v15 == 1145983827 && v17 >= 0x11 && v17 > v20)
    {
      if (v54 != 1129270605)
      {
        v39 = v16.i32[0];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v58 = "AIFFAudioFile.cpp";
          WORD4(v58) = 1024;
          *(&v58 + 10) = 1355;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Never found the Common Chunk", buf, 0x12u);
          v32 = v39 == 1397968452;
          goto LABEL_85;
        }

        v33 = 1;
LABEL_88:
        *(this + 20) = v33;
        goto LABEL_89;
      }

      v3 = FillDescriptionFromCommonChunk(&v54, &outPropertyData, inSpecifierSize, inSpecifier);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v58 = "AIFFAudioFile.cpp";
          WORD4(v58) = 1024;
          *(&v58 + 10) = 1359;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  FillDescriptionFromCommonChunk Failed";
          goto LABEL_4;
        }

        goto LABEL_5;
      }

      v17 = ((v44 + v19) & -v48) + 16;
      *(&v50 + 1) = v17;
    }

    if (v17 > v20)
    {
      goto LABEL_73;
    }

    std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v50);
    if (v56.i32[0] <= 1397968451)
    {
      v23 = v18;
      if (v56.i32[0] == 1129270605)
      {
        v24 = *(**(this + 13) + 48);
        if (v42 == 1128679745)
        {
          v3 = v24();
          if (v3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_5;
            }

            *buf = 136315394;
            *&v58 = "AIFFAudioFile.cpp";
            WORD4(v58) = 1024;
            *(&v58 + 10) = 1378;
            v4 = MEMORY[0x1E69E9C10];
            v5 = "%25s:%-5d  FSRead Failed 3";
            goto LABEL_4;
          }

          *&v54 = vrev32_s8(*&v54);
          WORD4(v54) = bswap32(WORD4(v54)) >> 16;
          *(&v54 + 10) = bswap32(*(&v54 + 10));
          HIWORD(v54) = bswap32(HIWORD(v54)) >> 16;
          *(&v55 + 10) = bswap32(*(&v55 + 10));
          v25 = (DWORD1(v54) - 21) & 0xFFFFFFFE;
          if (v25 >= 1)
          {
            v26 = v25 >= 0x100 ? 256 : v25;
            v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v18 + 30, v26, this + 190, &v53);
            if (v3)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_5;
              }

              *buf = 136315394;
              *&v58 = "AIFFAudioFile.cpp";
              WORD4(v58) = 1024;
              *(&v58 + 10) = 1386;
              v4 = MEMORY[0x1E69E9C10];
              v5 = "%25s:%-5d  FSRead Failed 4";
LABEL_4:
              _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
              goto LABEL_5;
            }
          }

          if (!*v2)
          {
            v27 = *(&v55 + 10);
            *(this + 24) = *(&v55 + 10);
            *(this + 191) = v27;
            *(this + 190) = 4;
          }
        }

        else
        {
          v3 = v24();
          if (v3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_5;
            }

            *buf = 136315394;
            *&v58 = "AIFFAudioFile.cpp";
            WORD4(v58) = 1024;
            *(&v58 + 10) = 1402;
            v4 = MEMORY[0x1E69E9C10];
            v5 = "%25s:%-5d  FSRead Failed 5";
            goto LABEL_4;
          }

          *&v54 = vrev32_s8(*&v54);
          WORD4(v54) = bswap32(WORD4(v54)) >> 16;
          *(&v54 + 10) = bswap32(*(&v54 + 10));
          HIWORD(v54) = bswap32(HIWORD(v54)) >> 16;
          *(&v55 + 10) = 1313820229;
          *v2 = 1852788256;
          *(this + 194) = 101;
          *v2 = 4;
        }

        goto LABEL_67;
      }

      if (v56.i32[0] == 1229206304)
      {
        *(this + 59) = v18 + 8;
        if (ID3ParserOpen(this, AIFFID3CallbackProc, this + 58))
        {
          *(this + 59) = 0;
        }

        goto LABEL_67;
      }

      goto LABEL_47;
    }

    v23 = v18;
    if (v56.i32[0] == 1397968452)
    {
      *(this + 56) = v18;
      v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v18, 16, &v67, &v53);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&v58 = "AIFFAudioFile.cpp";
          WORD4(v58) = 1024;
          *(&v58 + 10) = 1420;
          v4 = MEMORY[0x1E69E9C10];
          v5 = "%25s:%-5d  FSRead Failed 6";
          goto LABEL_4;
        }

        goto LABEL_5;
      }

      v28 = vrev32q_s8(v67);
      v67 = v28;
      *(this + 9) = v18 + v28.u32[2] + 16;
      (*(*this + 240))(this, v28.u32[1] - v28.u32[2] - 8);
LABEL_67:
      v11 = v56.i8[4] & 1;
      v12 = v23 + ((v56.i32[1] + 1) & 0xFFFFFFFE) + 8;
      if (v12 >= v52)
      {
        goto LABEL_73;
      }

      goto LABEL_27;
    }

    if (v56.i32[0] == 2002876005)
    {
      break;
    }

LABEL_47:
    if ((v56.i8[0] & 0xE0) != 0 || (v11 & 1) == 0)
    {
      goto LABEL_67;
    }

    v11 = 0;
    v12 = v23 - 1;
    ++v44;
  }

  inSpecifierSize = v17 - 8;
  if (v17 == 8)
  {
    goto LABEL_67;
  }

  CADeprecated::CAAutoFree<unsigned char>::alloc(&v46, (v17 - 8), 0);
  inSpecifier = v46;
  v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v18 + 8, inSpecifierSize);
  if (!v3)
  {
    goto LABEL_67;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&v58 = "AIFFAudioFile.cpp";
    WORD4(v58) = 1024;
    *(&v58 + 10) = 1447;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "%25s:%-5d  FSRead Failed 5";
    goto LABEL_4;
  }

LABEL_5:
  *(this + 20) = v50 == 1397968452;
  v6 = v3;
  if (v3 == -39)
  {
    if (*(&v55 + 10))
    {
      v7 = *(this + 9) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v6 = 1685348671;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_97;
  }

LABEL_89:
  if ((*(this + 100) & 2) != 0 && DWORD2(outPropertyData) == 1819304813)
  {
    if (v49 > 8 && (BYTE12(outPropertyData) & 2) == 0)
    {
      v6 = 1886547263;
    }

    else
    {
      v6 = v6;
    }
  }

LABEL_97:
  if (v46)
  {
    free(v46);
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&v58 = "AIFFAudioFile.cpp";
      WORD4(v58) = 1024;
      *(&v58 + 10) = 1045;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d   AIFFAudioFile::OpenFromDataSource Failed", buf, 0x12u);
    }

    return v6;
  }

  if ((*(this + 100) & 2) == 0)
  {
    return v6;
  }

  result = 1886547263;
  v36 = *(this + 8);
  if (v36 != 842231401 && v36 != 1936684916)
  {
    return v6;
  }

  return result;
}

void sub_18F605784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = *(v14 + 80);
  if (v16)
  {
    free(v16);
  }

  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetUserChunkSize(CAFAudioFile *this, int a2, int a3, unsigned int *a4)
{
  result = 1667787583;
  v8 = this + 144;
  v6 = *(this + 18);
  v7 = *(v8 + 1);
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    do
    {
      v14 = (v6 + 24 * v10);
      if (*v14 == a2)
      {
        if (v11 == a3)
        {
          result = 0;
          *a4 = v14[2] - 12;
          return result;
        }

        ++v11;
      }

      v10 = v13;
    }

    while (v12 > v13++);
  }

  return result;
}

uint64_t CAFAudioFile::GetProperty(CAFAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 > 1886283374)
  {
    if (a2 == 1886283375)
    {
      if (*a3 >= 0x10)
      {
        valid = CAFAudioFile::NumberValidFrames(this);
        result = 0;
        *a4 = valid;
        a4[1] = *(this + 23);
        *a3 = 16;
        return result;
      }

      return 561211770;
    }

    if (a2 == 1920168566)
    {
      if ((*(this + 100) & 2) == 0)
      {
        return 1869627199;
      }

      if (*a3 == 8)
      {
        result = 0;
        *a4 = *(this + 25);
        return result;
      }

      return 561211770;
    }

    goto LABEL_10;
  }

  if (a2 != 1667787108)
  {
    if (a2 == 1751217000)
    {
      if (*a3 == 20)
      {
        LODWORD(v20) = 20;
        return (*(*this + 584))(this, 1751217000, 0, &v20, a4);
      }

      return 561211770;
    }

LABEL_10:

    return AudioFileObject::GetProperty(this, a2, a3, a4);
  }

  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v8 = *(this + 18);
  if (*(this + 19) != v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v20, *(v8 + 24 * v9), (v8 + 24 * v9));
      v9 = v10;
      v8 = *(this + 18);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v8) >> 3) > v10++);
    v12 = *a3;
    if (v12 >= 4)
    {
      v13 = v20;
      if (v20 != v21)
      {
        v14 = 0;
        v15 = v12 >> 2;
        do
        {
          *(a4 + v14) = *(v13 + 28);
          v16 = *(v13 + 8);
          v17 = v13;
          if (v16)
          {
            do
            {
              v13 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v13 = *(v17 + 16);
              v18 = *v13 == v17;
              v17 = v13;
            }

            while (!v18);
          }

          ++v14;
        }

        while (v14 < v15 && v13 != v21);
      }
    }
  }

  return 0;
}

uint64_t AudioFileObject::DoClose(AudioFileObject *this)
{
  if (*(this + 136))
  {
    result = (*(*this + 224))(this);
    if (result)
    {
      return result;
    }

    *(this + 136) = 0;
  }

  v3 = *(*this + 56);

  return v3(this);
}

uint64_t CAFAudioFile::GetEstimatedDuration(CAFAudioFile *this, double *a2)
{
  v3 = *(this + 3);
  v4 = *(this + 11);
  LODWORD(size) = 0;
  v5 = 0.0;
  if (v3 != 0.0)
  {
    if ((*(*this + 736))(this, 1885432692, 0, &size))
    {
      v7 = 0;
    }

    else
    {
      v7 = size >= 0x18;
    }

    if (v7)
    {
      v11 = 0;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v11, size, 1);
      v8 = v11;
      if ((*(*this + 752))(this, 1885432692, 0, 0, &size, v11))
      {
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = vrev64q_s8(*v8->i8);
        *v8->i8 = v9;
        v8[2] = vrev32_s8(v8[2]);
        v5 = (v9.i64[1] & ~(v9.i64[1] >> 63)) / v3;
      }

      free(v8);
    }

    else
    {
      v5 = ((*(*this + 248))(this) * v4) / v3;
    }
  }

LABEL_12:
  *a2 = v5;
  return 0;
}

void sub_18F605CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CAFAudioFile::GetPropertyInfo(CAFAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 > 1886283374)
  {
    if (a2 == 1886283375)
    {
      if (a3)
      {
        v6 = 16;
        goto LABEL_24;
      }

LABEL_25:
      if (!a4)
      {
        return 0;
      }

      v7 = 1;
LABEL_27:
      *a4 = v7;
      return 0;
    }

    if (a2 == 1920168566)
    {
      if (a3)
      {
        *a3 = 8;
      }

      if (!a4)
      {
        return 0;
      }

      v7 = (*(this + 100) >> 1) & 1;
      goto LABEL_27;
    }
  }

  else
  {
    if (a2 == 1667787108)
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a3)
      {
        v16 = 0;
        v17 = 0;
        v15 = &v16;
        v9 = *(this + 18);
        if (*(this + 19) == v9)
        {
          v13 = 0;
          v14 = 0;
        }

        else
        {
          v10 = 0;
          v11 = 1;
          do
          {
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v15, *(v9 + 24 * v10), (v9 + 24 * v10));
            v10 = v11;
            v9 = *(this + 18);
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v9) >> 3) > v11++);
          v13 = v16;
          v14 = 4 * v17;
        }

        *a3 = v14;
      }

      return 0;
    }

    if (a2 == 1751217000)
    {
      if (a3)
      {
        v6 = 20;
LABEL_24:
        *a3 = v6;
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
}

uint64_t CAFAudioFile::GetMagicCookieDataSize(CAFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  v3 = *(this + 18);
  v4 = *(this + 19) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v7 = 1;
    while (1)
    {
      v8 = (v3 + 24 * v5);
      if (*v8 == 1802857321)
      {
        break;
      }

      v5 = v7;
      if (v6 <= v7++)
      {
        goto LABEL_7;
      }
    }

    if (a2)
    {
      v10 = v8[2] - 12;
      goto LABEL_11;
    }
  }

  else
  {
LABEL_7:
    if (a2)
    {
      v10 = 0;
LABEL_11:
      *a2 = v10;
    }
  }

  return 0;
}

OSStatus AudioFileReadPackets(AudioFileID inAudioFile, Boolean inUseCache, UInt32 *outNumBytes, AudioStreamPacketDescription *outPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, void *outBuffer)
{
  if (!ioNumPackets)
  {
    return -50;
  }

  v8 = -50;
  if ((inStartingPacket & 0x8000000000000000) == 0 && *ioNumPackets)
  {
    v13 = inUseCache;
    v16 = inAudioFile;
    v17 = 0;
    if (AudioFileLocker::Lock(&v16))
    {
      if (v17)
      {
        v14 = (*(*v17 + 104))(v17, v13, outNumBytes, outPacketDescriptions, inStartingPacket, ioNumPackets, outBuffer);
        AudioFileLocker::~AudioFileLocker(&v16);
        if (v14 == -39)
        {
          return 0;
        }

        else
        {
          return v14;
        }
      }
    }

    else
    {
      v8 = -38;
    }

    AudioFileLocker::~AudioFileLocker(&v16);
  }

  return v8;
}

void sub_18F606014(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    __cxa_end_catch();
    JUMPOUT(0x18F605FD4);
  }

  __cxa_end_catch();
  JUMPOUT(0x18F605FF4);
}

uint64_t AudioFileObject::ReadPackets(AudioFileObject *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "AudioFileObject.cpp";
      v19 = 1024;
      v20 = 867;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  NULL buffer";
      goto LABEL_17;
    }

    return 4294967246;
  }

  if (!a6 || !*a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "AudioFileObject.cpp";
      v19 = 1024;
      v20 = 869;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  invalid num packets parameter";
LABEL_17:
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v16, &v17, 0x12u);
      return 4294967246;
    }

    return 4294967246;
  }

  v10 = *(this + 10);
  v17 = v10 * *a6;
  result = (*(*this + 72))(this, a2, v10 * a5, &v17, a7);
  if (!result || result == -39)
  {
    v12 = v17;
    v13 = *(this + 10);
    if (v17 != v13 * *a6)
    {
      v14 = v17 / v13;
      *a6 = v17 / v13;
      v12 = *(this + 10) * v14;
    }

    if (a3)
    {
      *a3 = v12;
    }

    if (result == -39)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t CAFAudioFile::ReadPackets(CAFAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 10))
  {
    v13 = *(this + 11) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (a6 && (v14 = *a6, v14))
    {
      v15 = *(this + 15);
      if (!v15)
      {
        return 1685348671;
      }

      v16 = *(v15 + 24);
      if (v16 <= a5)
      {
        if (a3)
        {
          *a3 = 0;
        }

        *a6 = 0;
        return 4294967257;
      }

      if (v14 + a5 > v16)
      {
        *a6 = v16 - a5;
      }

      if (a3)
      {
        *a3 = 0;
      }

      CompressedPacketTable::operator[](buf, v15, a5);
      v18 = *buf;
      CompressedPacketTable::operator[](buf, v15, a5 + *a6 - 1);
      v19 = *buf - v18 + v32[0];
      if (v19 <= 0xFFFFFFFFLL)
      {
        v30 = *buf - v18 + v32[0];
        if (a7)
        {
          v20 = (*(*this + 72))(this, a2, v18, &v30, a7);
          v21 = v20;
          if (v20 != -39 && v20)
          {
            if (a3)
            {
              *a3 = 0;
            }

            *a6 = 0;
            return v21;
          }

          LODWORD(v19) = v30;
          if (a3)
          {
            *a3 = v30;
          }
        }

        else
        {
          v21 = 0;
        }

        if (*a6)
        {
          v23 = 0;
          v24 = 0;
          v25 = v18 + v19;
          if (a7)
          {
            v26 = 0;
          }

          else
          {
            v26 = v18;
          }

          p_mDataByteSize = &a4->mDataByteSize;
          do
          {
            CompressedPacketTable::operator[](buf, v15, a5 + v23);
            v28 = v32[0];
            if (*buf + v32[0] > v25)
            {
              break;
            }

            if (a4)
            {
              v29 = *&buf[8];
              *(p_mDataByteSize - 3) = v24 + v26;
              *(p_mDataByteSize - 1) = v29;
              *p_mDataByteSize = v28;
            }

            v24 += v28;
            ++v23;
            p_mDataByteSize += 4;
          }

          while (v23 < *a6);
        }

        else
        {
          LODWORD(v23) = 0;
        }

        *a6 = v23;
        return v21;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v32[0]) = 1024;
      *(v32 + 2) = 3100;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid num packets parameter", buf, 0x12u);
    }

    return 4294967246;
  }

  return AudioFileObject::ReadPackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t AudioFileObject::ReadBytes(AudioFileObject *this, int a2, uint64_t a3, unsigned int *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4 && a5)
  {
    v10 = *(this + 9);
    if ((*(*this + 232))(this) <= a3)
    {
      *a4 = 0;
      return 4294967257;
    }

    else
    {
      v11 = v10 + a3;
      v12 = v11 + *a4;
      v13 = *(this + 9) + (*(*this + 232))(this);
      if (v12 <= v13)
      {
        v14 = *a4;
      }

      else
      {
        v14 = (*(*this + 232))(this) - v11 + *(this + 18);
        *a4 = v14;
      }

      LODWORD(result) = (*(**(this + 13) + 48))(*(this + 13), 32 * (a2 == 0), v11, v14, a5, a4);
      if (result)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12 <= v13;
      }

      if (v16)
      {
        return result;
      }

      else
      {
        return 4294967257;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "AudioFileObject.cpp";
      v19 = 1024;
      v20 = 773;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid num bytes parameter", &v17, 0x12u);
    }

    return 4294967246;
  }
}

OSStatus AudioFileClose(AudioFileID inAudioFile)
{
  v8 = inAudioFile;
  v9 = 0;
  __lk.__m_ = &AudioFileMutex(void)::global;
  __lk.__owns_ = 1;
  std::mutex::lock(&AudioFileMutex(void)::global);
  if (!inAudioFile)
  {
    goto LABEL_15;
  }

  v2 = BaseOpaqueObject::ResolveOpaqueRef();
  v9 = v2;
  if (!v2)
  {
    v8 = 0;
LABEL_15:
    v5 = 1;
    goto LABEL_16;
  }

  if (*(v2 + 12))
  {
    ++*(v2 + 16);
    do
    {
      if (*(v2 + 20))
      {
        --*(v2 + 16);
        goto LABEL_15;
      }

      std::condition_variable::wait(&AudioFileCondVar(void)::global, &__lk);
      v2 = v9;
    }

    while (*(v9 + 12));
    v3 = *(v9 + 20);
    --*(v9 + 16);
    if (v3)
    {
      goto LABEL_15;
    }

    v4 = *(v2 + 12) + 1;
  }

  else
  {
    v4 = 1;
  }

  *(v2 + 12) = v4;
  *(v2 + 20) = 1;
  std::condition_variable::notify_one(&AudioFileCondVar(void)::global);
  while (*(v9 + 16))
  {
    std::condition_variable::wait(&AudioFileCondVar(void)::global, &__lk);
  }

  v5 = 0;
LABEL_16:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v5)
  {
    v6 = -38;
    goto LABEL_24;
  }

  if (!v9)
  {
    v6 = -50;
    goto LABEL_24;
  }

  v6 = (*(*v9 + 72))(v9);
  if (v6)
  {
LABEL_24:
    AudioFileLocker::~AudioFileLocker(&v8);
    return v6;
  }

  (*(*v9 + 8))(v9);
  v9 = 0;
  AudioFileLocker::~AudioFileLocker(&v8);
  return 0;
}

void sub_18F606900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F6068ECLL);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(void *a1, unsigned int a2)
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

void Cached_DataSource::~Cached_DataSource(Cached_DataSource *this)
{
  *this = &unk_1F033E180;
  if (*(this + 72))
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 5);
  if (v3)
  {
    free(v3);
    *(this + 5) = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    free(v4);
    *(this + 3) = 0;
  }
}

{
  Cached_DataSource::~Cached_DataSource(this);

  JUMPOUT(0x193ADF220);
}

void CAFAudioFile::~CAFAudioFile(CAFAudioFile *this)
{
  *this = &unk_1F03365C8;
  v2 = *(this + 32);
  *(this + 32) = 0;
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  AudioFileObject::~AudioFileObject(this);
}

{
  CAFAudioFile::~CAFAudioFile(this);

  JUMPOUT(0x193ADF220);
}

uint64_t CAFAudioFile::Close(CAFAudioFile *this)
{
  v2 = this + 216;
  v3 = *(this + 27);
  if (v3 != 0.0)
  {
    v4 = *(this + 3);
    _ZF = v4 == 0.0 || v3 == v4;
    if (!_ZF && CAFAudioFile::NumberValidFrames(this) >= 1)
    {
      v6 = *(this + 27) / *(this + 3);
      v7 = *(this + 23);
      v8.i64[0] = v7;
      v8.i64[1] = SHIDWORD(v7);
      __asm { FMOV            V1.2D, #0.5 }

      v15 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_n_f64(_Q1, vcvtq_f64_s64(v8), v6))));
      *(this + 22) = (vcvtmd_s64_f64(v6 * (CAFAudioFile::NumberValidFrames(this) + *(this + 46) + *(this + 47)) + 0.5) - vadd_s32(vdup_lane_s32(v15, 1), v15).u32[0]);
      *(this + 23) = v15;
      CAFAudioFile::UpdatePacketTableChunk(this);
      (*(*this + 192))(this, v2);
    }
  }

  v13 = *(this + 13);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 13) = 0;
  return 0;
}

void UnixFile_DataSource::~UnixFile_DataSource(UnixFile_DataSource *this)
{
  *this = &unk_1F03263D0;
  if (*(this + 8))
  {
    close(*(this + 3));
  }
}

{
  UnixFile_DataSource::~UnixFile_DataSource(this);

  JUMPOUT(0x193ADF220);
}

void AudioFileObjectHandle::~AudioFileObjectHandle(AudioFileObjectHandle *this)
{
  *this = &unk_1F032F2F0;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F032F3D8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  AudioFileObjectHandle::~AudioFileObjectHandle(this);

  JUMPOUT(0x193ADF220);
}

void AudioFileObject::~AudioFileObject(AudioFileObject *this)
{
  *this = &unk_1F033DE90;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AudioFileObject::DeletePacketTable(this);
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }
}

CompressedPacketTable *AudioFileObject::DeletePacketTable(AudioFileObject *this)
{
  result = *(this + 15);
  if (result)
  {
    CompressedPacketTable::~CompressedPacketTable(result);
    result = MEMORY[0x193ADF220]();
  }

  *(this + 15) = 0;
  return result;
}

OSStatus AudioUnitGetPropertyInfo(AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitScope inScope, AudioUnitElement inElement, UInt32 *outDataSize, Boolean *outWritable)
{
  if (!inUnit)
  {
    return -50;
  }

  v8 = *&inElement;
  v9 = *&inScope;
  v10 = *&inID;
  v11 = (*(*inUnit + 8))(inUnit);
  if (!v11)
  {
    return 560947818;
  }

  v12 = v11;
  if (*((**v11)(v11) + 38) != 24949)
  {
    return -3000;
  }

  if (!*(*((**v12)(v12) + 112) + 16))
  {
    return -4;
  }

  if (!v12[3])
  {
    return -66740;
  }

  v13 = (**v12)(v12);
  if (v10 == 62)
  {
    result = 0;
    *outDataSize = 4;
  }

  else if (v10 == 65 && (v12[11] & 1) != 0)
  {
    if (outDataSize)
    {
      *outDataSize = 4;
    }

    result = 0;
    if (outWritable)
    {
      *outWritable = 1;
    }
  }

  else
  {
    v14 = *(*(v13 + 112) + 16);
    v15 = v12[3];

    return v14(v15, v10, v9, v8, outDataSize, outWritable);
  }

  return result;
}

double DSPGraph::Graph::getLatencyInSeconds(DSPGraph::Graph *this)
{
  if (((*(this + 39) - *(this + 38)) & 0x7FFFFFFF8) == 0)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = DSPGraph::Graph::out(this, v2);
    v5 = (*(*v4 + 72))(v4);
    v6 = DSPGraph::Box::upstreamLatencyInTicks(v4);
    v7 = *(*(v4 + 1) + 696);
    if ((v6 + v5) / v7 >= v3)
    {
      v3 = (v6 + v5) / v7;
    }

    ++v2;
  }

  while (v2 < ((*(this + 39) - *(this + 38)) >> 3));
  return v3;
}

uint64_t DSPGraph::Graph::out(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = *(this + 38);
  if (a2 >= ((*(this + 39) - v2) >> 3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "out");
    std::string::basic_string[abi:ne200100]<0>(&v4, "Graph::out inIndex out of range");
    DSPGraph::ThrowException(1919837985, &v6, 1360, &v5, &v4);
  }

  return *(v2 + 8 * a2);
}

void sub_18F60722C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

unint64_t DSPGraph::RingBufferBox::selfLatencyInTicks(DSPGraph::RingBufferBox *this)
{
  v1 = *(this + 194);
  v2 = *(*(this + 1) + 696);
  return v2 / (*(*this + 664))(this) * v1;
}

uint64_t DSPGraph::GraphOutput::ringBufferSampleRate(DSPGraph::GraphOutput *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v6, "in");
    v5 = this + 32;
    if (*(this + 55) < 0)
    {
      v5 = *v5;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F6073AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

unint64_t DSPGraph::Box::upstreamLatencyInTicks(DSPGraph::Box *this)
{
  if (*(this + 760) == 1)
  {
    return *(this + 94);
  }

  v3 = *(this + 8);
  v4 = *(this + 9);
  if (v3 == v4)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v5 = DSPGraph::InputPort::upstreamLatencyInTicks(v3);
      if (v2 <= v5)
      {
        v2 = v5;
      }

      v3 = (v3 + 32);
    }

    while (v3 != v4);
  }

  *(this + 94) = v2;
  *(this + 760) = 1;
  return v2;
}

uint64_t isInternalBuild(void)
{
  {
    isInternalBuild(void)::sIsInternalBuild = os_variant_has_internal_diagnostics();
  }

  return isInternalBuild(void)::sIsInternalBuild;
}

uint64_t FillDescriptionFromCommonChunk(uint64_t a1, void *outPropertyData, UInt32 inSpecifierSize, void *inSpecifier)
{
  outPropertyData[4] = 0;
  *outPropertyData = 0u;
  *(outPropertyData + 1) = 0u;
  v8 = *(a1 + 16);
  v9 = v8;
  v10 = *(a1 + 17) | ((v8 & 0x7F) << 8);
  v11 = bswap32(*(a1 + 18));
  v12 = bswap32(*(a1 + 22));
  v13 = 0.0;
  if (v10)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 == 0;
  }

  if (!v14 || v12 != 0)
  {
    if (v10 == 0x7FFF)
    {
      v13 = INFINITY;
    }

    else
    {
      v16 = ldexp(v11, v10 - 16414);
      v13 = v16 + ldexp(v12, v10 - 16446);
    }
  }

  result = 1718449215;
  if (v9 < 0)
  {
    v13 = -v13;
  }

  *outPropertyData = v13;
  v18 = *(a1 + 26);
  *(outPropertyData + 2) = v18;
  v19 = *(a1 + 8);
  v20 = *(a1 + 14);
  *(outPropertyData + 7) = v19;
  *(outPropertyData + 8) = v20;
  if (v18 == 1196641568)
  {
    *(outPropertyData + 2) = 1634169709;
LABEL_15:
    *(outPropertyData + 12) = 0;
    outPropertyData[4] = 0;
    *(outPropertyData + 20) = 0;
    ioPropertyDataSize = 40;
    result = AudioFormatGetProperty(0x666D7469u, inSpecifierSize, inSpecifier, &ioPropertyDataSize, outPropertyData);
    if (*(outPropertyData + 2) != 1819304813)
    {
      return result;
    }

    v21 = *(outPropertyData + 3);
    goto LABEL_55;
  }

  v22 = (v20 + 7) >> 3;
  if (v18 <= 1768829491)
  {
    if (v18 > 1313820228)
    {
      if (v18 == 1313820229)
      {
        v35 = v22 * v19;
        *(outPropertyData + 5) = 1;
        *(outPropertyData + 6) = v35;
        *(outPropertyData + 4) = v35;
        *(outPropertyData + 2) = 1819304813;
        if ((v20 & 7) != 0)
        {
          v21 = 20;
          *(outPropertyData + 3) = 20;
          v28 = 22;
        }

        else
        {
          v21 = 12;
          *(outPropertyData + 3) = 12;
          v28 = 14;
        }

        goto LABEL_51;
      }

      if (v18 != 1718367026)
      {
        v24 = 1718367796;
        goto LABEL_36;
      }
    }

    else
    {
      if (v18 == 842231401)
      {
        result = 0;
        v34 = 4 * v19;
        *(outPropertyData + 5) = 1;
        *(outPropertyData + 6) = v34;
        *(outPropertyData + 4) = v34;
        v30 = 32;
        goto LABEL_47;
      }

      if (v18 != 1179398962)
      {
        v24 = 1179399732;
LABEL_36:
        if (v18 != v24)
        {
          goto LABEL_15;
        }

        result = 0;
        v25 = 8 * v19;
        *(outPropertyData + 5) = 1;
        *(outPropertyData + 6) = v25;
        *(outPropertyData + 4) = v25;
        *(outPropertyData + 8) = 64;
        outPropertyData[1] = 0x96C70636DLL;
        v21 = 9;
LABEL_55:
        *(outPropertyData + 3) = v21 | 2;
        return result;
      }
    }

    v27 = 4 * v19;
    *(outPropertyData + 5) = 1;
    *(outPropertyData + 6) = v27;
    *(outPropertyData + 4) = v27;
    *(outPropertyData + 8) = 32;
    outPropertyData[1] = 0x96C70636DLL;
    v28 = 11;
    v21 = 9;
    goto LABEL_51;
  }

  if (v18 > 1836253268)
  {
    if (v18 <= 1936684915)
    {
      if (v18 == 1836253269)
      {
        return result;
      }

      if (v18 != 1918990112)
      {
        goto LABEL_15;
      }

      result = 0;
      v23 = v22 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v23;
      *(outPropertyData + 4) = v23;
      *(outPropertyData + 2) = 1819304813;
      if ((v20 + 7) <= 0xF)
      {
        v21 = 10;
      }

      else
      {
        v21 = 14;
      }

      goto LABEL_55;
    }

    if (v18 != 1936684916)
    {
      if (v18 != 1953984371)
      {
        goto LABEL_15;
      }

      result = 0;
      v26 = v22 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v26;
      *(outPropertyData + 4) = v26;
      outPropertyData[1] = 0xE6C70636DLL;
      v21 = 14;
      goto LABEL_55;
    }

    result = 0;
    v29 = 2 * v19;
    *(outPropertyData + 5) = 1;
    *(outPropertyData + 6) = v29;
    *(outPropertyData + 4) = v29;
    v30 = 16;
LABEL_47:
    *(outPropertyData + 8) = v30;
    outPropertyData[1] = 0xC6C70636DLL;
    return result;
  }

  switch(v18)
  {
    case 1768829492:
      v31 = 3 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v31;
      *(outPropertyData + 4) = v31;
      v32 = 24;
      break;
    case 1768829746:
      v33 = 4 * v19;
      *(outPropertyData + 5) = 1;
      *(outPropertyData + 6) = v33;
      *(outPropertyData + 4) = v33;
      v32 = 32;
      break;
    case 1836253264:
      return result;
    default:
      goto LABEL_15;
  }

  *(outPropertyData + 8) = v32;
  outPropertyData[1] = 0xC6C70636DLL;
  v28 = 14;
  v21 = 12;
LABEL_51:
  if (inSpecifierSize < 0x16)
  {
    result = 0;
    goto LABEL_55;
  }

  result = 0;
  if (!*(inSpecifier + 10))
  {
    *(outPropertyData + 3) = v28;
  }

  return result;
}

BOOL AIFFAudioFile::IsDataFormatSupported(AIFFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  mFormatID = a2->mFormatID;
  if (mFormatID == 1667326771)
  {
    return 1;
  }

  v3 = *(this + 21);
  if (v3 != 1095321155)
  {
    if (v3 == 1095321158)
    {
      if (mFormatID != 1819304813)
      {
        return 0;
      }

      mFormatFlags = a2->mFormatFlags;
      if ((mFormatFlags & 5) != 4)
      {
        return 0;
      }

      if ((mFormatFlags & 2) != 0)
      {
        return 1;
      }

      return a2->mBitsPerChannel < 9 || (*(this + 100) & 2) == 0;
    }

    goto LABEL_22;
  }

  v5 = 0;
  if (mFormatID > 1634169708)
  {
    if (mFormatID <= 1768775987)
    {
      if (mFormatID == 1634169709)
      {
        goto LABEL_22;
      }

      v6 = 1634492791;
    }

    else
    {
      if (mFormatID == 1768775988 || mFormatID == 1970037111)
      {
        goto LABEL_22;
      }

      v6 = 1819304813;
    }
  }

  else if (mFormatID <= 1363430705)
  {
    if (mFormatID == 1296122675)
    {
      goto LABEL_22;
    }

    v6 = 1296122678;
  }

  else
  {
    if (mFormatID == 1363430706 || mFormatID == 1363430723)
    {
      goto LABEL_22;
    }

    v6 = 1365470320;
  }

  if (mFormatID == v6)
  {
LABEL_22:
    if (mFormatID != 1819304813 || (a2->mFormatFlags & 2) != 0)
    {
      return 1;
    }

    return a2->mBitsPerChannel < 9 || (*(this + 100) & 2) == 0;
  }

  return v5;
}

uint64_t AC3PacketParser::IsValid(AC3PacketParser *this)
{
  if (*this != 1)
  {
    return 0;
  }

  if (*(this + 1))
  {
    return 1;
  }

  if (ParseAC3Header(*(this + 1), 0xAu, (this + 24), this + 16, this + 17, 0, this + 21, 0))
  {
    return 0;
  }

  result = 1;
  *(this + 1) = 1;
  return result;
}

uint64_t ChunkyAudioFile::GetProperty(ChunkyAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 == 1751217000)
  {
    if (*a3 == 20)
    {
      LODWORD(v20) = 20;
      return (*(*this + 584))(this, 1751217000, 0, &v20, a4);
    }

    else
    {
      return 561211770;
    }
  }

  else if (a2 == 1667787108)
  {
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    v7 = *(this + 18);
    if (*(this + 19) != v7)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 24 * v8);
        if (v10 != (*(*this + 736))(this))
        {
          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v20, *(*(this + 18) + 24 * v8), (*(this + 18) + 24 * v8));
        }

        v8 = v9;
        v7 = *(this + 18);
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v7) >> 3) > v9++);
      v12 = *a3;
      if (v12 >= 4)
      {
        v13 = v20;
        if (v20 != v21)
        {
          v14 = 0;
          v15 = v12 >> 2;
          do
          {
            *(a4 + v14) = *(v13 + 28);
            v16 = *(v13 + 8);
            v17 = v13;
            if (v16)
            {
              do
              {
                v13 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v13 = *(v17 + 16);
                v18 = *v13 == v17;
                v17 = v13;
              }

              while (!v18);
            }

            ++v14;
          }

          while (v14 < v15 && v13 != v21);
        }
      }
    }

    return 0;
  }

  else
  {

    return AudioFileObject::GetProperty(this, a2, a3, a4);
  }
}

uint64_t AIFFAudioFile::GetProperty(AIFFAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  result = 561211770;
  if (a3 && a4)
  {
    if (a2 == 1768174447)
    {
      result = 1886681407;
      v6 = *(this + 59);
      if (v6 && (*(this + 100) & 2) == 0)
      {
        result = 561211770;
        if (*a3 >= 8)
        {
          result = 0;
          *a4 = v6;
          *a3 = 8;
        }
      }
    }

    else
    {
      return ChunkyAudioFile::GetProperty(this, a2, a3, a4);
    }
  }

  return result;
}

uint64_t ChunkyAudioFile::GetPropertyInfo(ChunkyAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  switch(a2)
  {
    case 1920168566:
      if (a3)
      {
        *a3 = 8;
      }

      if (!a4)
      {
        return 0;
      }

      v13 = (*(this + 100) >> 1) & 1;
LABEL_21:
      *a4 = v13;
      return 0;
    case 1751217000:
      if (a3)
      {
        *a3 = 20;
      }

      if (!a4)
      {
        return 0;
      }

      v13 = 1;
      goto LABEL_21;
    case 1667787108:
      if (a4)
      {
        *a4 = 0;
      }

      if (a3)
      {
        v16 = 0;
        v17 = 0;
        v15 = &v16;
        v6 = *(this + 18);
        if (*(this + 19) == v6)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v7 = 0;
          v8 = 1;
          do
          {
            v9 = *(v6 + 24 * v7);
            if (v9 != (*(*this + 736))(this))
            {
              std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v15, *(*(this + 18) + 24 * v7), (*(this + 18) + 24 * v7));
            }

            v7 = v8;
            v6 = *(this + 18);
          }

          while (0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v6) >> 3) > v8++);
          v11 = v16;
          v12 = 4 * v17;
        }

        *a3 = v12;
      }

      return 0;
  }

  return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
}

uint64_t AIFFAudioFile::GetPropertyInfo(AIFFAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 != 1768174447)
  {
    return ChunkyAudioFile::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    *a3 = 8;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t AIFFAudioFile::GetMagicCookieDataSize(AIFFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1667326771)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a2)
    {
      *a2 = 0;
      v21 = 0;
      v4 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9) + 8, 10, v22, &v21);
      if (v4)
      {
        return v4;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0xF6400000000;
      if (v21 < 0xA)
      {
        goto LABEL_23;
      }

      if (v22[0] != 2935)
      {
        if (v22[0] != 30475)
        {
LABEL_23:
          if (AC3PacketParser::IsValid(&v14))
          {
            *a2 = 11;
          }

          if (v19)
          {
            free(v19);
          }

          return v4;
        }

        v17 = 1;
      }

      LOBYTE(v14) = 1;
      goto LABEL_23;
    }

    return 0;
  }

  if (a3)
  {
    *a3 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *(this + 18);
  v6 = *(this + 19) - v5;
  if (v6)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v9 = 1;
    while (1)
    {
      v10 = (v5 + 24 * v7);
      if (*v10 == 2002876005)
      {
        break;
      }

      v7 = v9;
      if (v8 <= v9++)
      {
        goto LABEL_17;
      }
    }

    v12 = v10[2] - 8;
  }

  else
  {
LABEL_17:
    v12 = 0;
  }

  v4 = 0;
  *a2 = v12;
  return v4;
}

uint64_t AudioFileObject::GetFormatListInfo(AudioFileObject *this, unsigned int *a2, unsigned int *a3)
{
  *a2 = 48;
  *a3 = 0;
  return 0;
}

uint64_t AudioFileObject::GetEstimatedDuration(AudioFileObject *this, double *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    v4 = *(this + 3);
    v5 = ((*(*this + 248))(this) * v3) / v4;
  }

  else
  {
    v5 = 0.0;
  }

  *a2 = v5;
  return 0;
}

uint64_t AIFFAudioFile::GetChannelLayoutSize(AIFFAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (*(this + 8) == 1667326771)
  {
    result = 0;
    v4 = 32;
  }

  else
  {
    v5 = *(this + 18);
    v6 = *(this + 19) - v5;
    if (v6)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v9 = 1;
      while (1)
      {
        v10 = (v5 + 24 * v7);
        if (*v10 == 1128808782)
        {
          break;
        }

        v7 = v9;
        if (v8 <= v9++)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

    if (!a2)
    {
      return 0;
    }

    if (v10)
    {
      result = 0;
      v4 = v10[2] - 8;
    }

    else
    {
      v4 = 0;
      result = 1667787583;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t AIFFAudioFile::GetChannelLayout(AIFFAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  if (*(this + 8) == 1667326771)
  {
    *&a3->mChannelLayoutTag = 0u;
    *&a3->mChannelDescriptions[0].mChannelFlags = 0u;
    a3->mChannelLayoutTag = *(this + 122);
    result = 0;
    if (a2)
    {
      *a2 = 32;
    }
  }

  else
  {
    v6 = *(this + 18);
    v7 = *(this + 19) - v6;
    if (v7)
    {
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 1;
      while (1)
      {
        v11 = v6 + 24 * v8;
        if (*v11 == 1128808782)
        {
          break;
        }

        v8 = v10;
        if (v9 <= v10++)
        {
          goto LABEL_8;
        }
      }

      v13 = *(v11 + 8) - 8;
      if (*a2 >= v13)
      {
        result = (*(**(this + 13) + 48))(*(this + 13), 0, *(v11 + 16) + 8);
        if (!result)
        {
          AudioChannelLayout_BtoN(a3, v13);
          result = 0;
          *a2 = v13;
        }
      }

      else
      {
        return 561211770;
      }
    }

    else
    {
LABEL_8:
      *a2 = 0;
      return 1667787583;
    }
  }

  return result;
}

int8x16_t AudioChannelLayout_BtoN(AudioChannelLayout *a1, unint64_t a2)
{
  v2 = a2 - 12;
  if (a2 >= 0xC)
  {
    *result.i8 = vrev32_s8(*&a1->mChannelLayoutTag);
    *&a1->mChannelLayoutTag = result.i64[0];
    v4 = bswap32(a1->mNumberChannelDescriptions);
    a1->mNumberChannelDescriptions = v4;
    if (a2 >= 0x20)
    {
      if (v4 >= (((a2 & 0xFFFFFFFC) - 12) / 0x14))
      {
        v4 = ((a2 & 0xFFFFFFFC) - 12) / 0x14;
      }

      a1->mNumberChannelDescriptions = v4;
      if (20 * v4 <= v2)
      {
        v5 = v4;
      }

      else
      {
        v5 = (v2 / 0x14);
      }

      if (v5)
      {
        v6 = &a1->mChannelDescriptions[0].mCoordinates[2];
        do
        {
          result = vrev32q_s8(*(v6 - 1));
          *(v6 - 1) = result;
          *v6 = bswap32(*v6);
          v6 += 5;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t ChunkyAudioFile::GetLoudnessInfo(ChunkyAudioFile *this, CACFDictionary *a2)
{
  v14 = 0;
  v4 = (*(*this + 744))(this, 1819243876, 0, &v14);
  if (!v4)
  {
    CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&bytes, v14, 1);
    v4 = (*(*this + 760))(this, 1819243876, 0, 0, &v14, bytes);
    if (!v4)
    {
      errorString = 0;
      v11 = 1;
      v10 = CFDataCreate(0, bytes, v14);
      v5 = CFPropertyListCreateFromXMLData(*MEMORY[0x1E695E480], v10, 0, &errorString);
      if (errorString)
      {
        CFRelease(errorString);
      }

      v4 = 1667787583;
      if (v5)
      {
        theDict = v5;
        v9 = 1;
        v6 = CFGetTypeID(v5);
        if (v6 == CFDictionaryGetTypeID())
        {
          CACFDictionary::SetCFMutableDictionaryFromCopy(a2, theDict, 1);
          v4 = 0;
        }

        CACFObject<void const*>::~CACFObject(&theDict);
      }

      CACFData::~CACFData(&v10);
    }

    if (bytes)
    {
      free(bytes);
    }
  }

  return v4;
}

void sub_18F608640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileGetLoudnessInfoFromSoundCheckDictionary(AudioFileObject *a1, CACFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = 257;
  v4 = (*(*a1 + 464))(a1, &Mutable);
  if (!v4)
  {
    AudioFileGetLoudnessInfoFromSoundCheckDictionary(&Mutable, a2);
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return v4;
}

uint64_t ChunkyAudioFile::GetUserChunkSize(ChunkyAudioFile *this, int a2, int a3, unsigned int *a4)
{
  result = 1667787583;
  v8 = this + 144;
  v6 = *(this + 18);
  v7 = *(v8 + 1);
  v9 = v7 - v6;
  if (v7 != v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
    v13 = 1;
    do
    {
      v14 = v6 + 24 * v10;
      if (*v14 == a2)
      {
        if (v11 == a3)
        {
          v16 = *(v14 + 4);
          v17 = *(v14 + 8);
          if (v17 <= ~v16)
          {
            result = 0;
            *a4 = v17 - v16;
          }

          return result;
        }

        ++v11;
      }

      v10 = v13;
    }

    while (v12 > v13++);
  }

  return result;
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void AudioComponentMgr_RegistrarService::retrieveComponents(id *this, uint64_t a2, uint64_t a3)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = CFAbsoluteTimeGetCurrent();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = [this[11] synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_69];
  v7 = (*(*this + 16))(this);
  v8 = *(this + 80);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN34AudioComponentMgr_RegistrarService18retrieveComponentsEbb_block_invoke_70;
  v9[3] = &unk_1E72BA7C8;
  v9[4] = v14;
  v9[5] = &v10;
  v9[6] = this;
  [v6 getComponentList:v7 linkedSDKRequiresEntitlement:v8 includeExtensions:a2 forceWaitForExtensions:a3 reply:v9];

  if (*(v11 + 24) == 1 && a2)
  {
    *(this + 96) = 1;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
}

void sub_18F6089B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

BOOL std::__function::__func<AudioComponentVector::no_extensions_except(AudioComponentDescription &)::$_0,std::allocator<AudioComponentVector::no_extensions_except(AudioComponentDescription &)::$_0>,BOOL ()(APComponent &)>::operator()(uint64_t a1, _DWORD *a2)
{
  if (a2[8] != 3)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*v2 && a2[9] == *v2)
  {
    return 0;
  }

  v4 = v2[1];
  if (v4 && a2[10] == v4)
  {
    return 0;
  }

  v6 = v2[2];
  return !v6 || a2[11] != v6;
}

id AudioComponentVector::serialized(AudioComponentVector *this)
{
  v15 = *MEMORY[0x1E69E9840];
  AudioComponentVector::sort(this);
  v2 = [[_ACComponentVector alloc] initWithVector:this];
  v8 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v5 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "AudioComponentVector.mm";
      v11 = 1024;
      v12 = 349;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error serializing AudioComponentVector: %@", buf, 0x1Cu);
    }
  }

  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(a2, (a2 + v11), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(a1, v12, a3, a1[1]);
  }
}

void std::vector<std::shared_ptr<APComponent>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

APComponent *APComponent::name(APComponent *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void ___ZN34AudioComponentMgr_RegistrarService18retrieveComponentsEbb_block_invoke_70(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a4;
  v10 = a5;
  v11 = a1[6];
  *(*(a1[4] + 8) + 24) = CFAbsoluteTimeGetCurrent();
  *(*(a1[5] + 8) + 24) = 1;
  AudioComponentMgr_RegistrarService::mergeServerRegistrations(v11, v12, a3 ^ 1, v9, v10);
}

void AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentMgr_RegistrarService *this, NSData *a2, char a3, NSData *a4, NSArray *a5)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  AudioComponentVector::createWithSerializedData(&v21, a2);
  v11 = v9;
  v12 = v10;
  v13 = *(this + 97);
  *(this + 97) = 1;
  if (!v21.mSorted)
  {
    __assert_rtn("mergeServerRegistrations", "AudioComponentPluginMgr.mm", 653, "currentServerRegistrations.sorted()");
  }

  v28 = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v34[0] = &unk_1F03269A8;
  v34[1] = this;
  v34[2] = &v28;
  v34[3] = v34;
  AudioComponentVector::remove_and_erase_if (&v21, v34);
  std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](v34);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v24, v21.__begin_, v21.__end_, (v21.__end_ - v21.__begin_) >> 4);
  v14 = 126 - 2 * __clz((v25 - v24) >> 4);
  mSorted = v21.mSorted;
  if (v25 == v24)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,false>(v24, v25, v15, 1);
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v33[0] = &unk_1F03269F0;
  v33[1] = &v28;
  v33[3] = v33;
  AudioComponentVector::remove_and_erase_if (&v24, v33);
  std::__function::__value_func<BOOL ()(APComponent &)>::~__value_func[abi:ne200100](v33);
  v16 = v24;
  v17 = v25;
  while (v16 != v17)
  {
    AudioComponentVector::remove(&v21, *v16);
    v16 += 2;
  }

  if (a3)
  {
    begin = v21.__begin_;
    end = v21.__end_;
    while (begin != end)
    {
      if (*(*begin + 32) == 3)
      {
        *(*begin + 48) |= 1u;
      }

      begin += 16;
    }
  }

  v20 = !AudioComponentMgr_RegistrarService::inExtensionServiceProcess(this);
  if (!v12)
  {
    LOBYTE(v20) = 1;
  }

  if (!v20)
  {
    (*(*this + 136))(&v23, this, v12);
    AudioComponentVector::append(&v21, v23.__begin_, v23.__end_);
    v22.__begin_ = &v23;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  AudioComponentVector::subtract(&v23, &v21, (this + 112));
  AudioComponentVector::subtract(&v22, (this + 112), &v21);
  if (v13 & 1) != 0 || gAudioComponentLogCategory && (*(gAudioComponentLogCategory + 8))
  {
    AudioComponentVector::showAll(&v23, "addedComponents");
    AudioComponentVector::showAll(&v22, "removedComponents");
  }

  AudioComponentMgr_Base::addAndRemoveComponents(this, &v23, v22.__begin_, v22.__end_);
  if ((this + 112) != &v21)
  {
    std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(this + 14, v21.__begin_, v21.__end_, (v21.__end_ - v21.__begin_) >> 4);
  }

  *(this + 136) = v21.mSorted;
  if (v13)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_82);
  }

  v32 = &v22;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v32);
  v22.__begin_ = &v23;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v22);
  v23.__begin_ = &v24;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v23);

  v34[0] = &v21;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v34);
}

void sub_18F60940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void ****a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a13 = &a17;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a17 = &a21;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);

  a21 = &a9;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a21);

  _Unwind_Resume(a1);
}

void AudioComponentVector::createWithSerializedData(AudioComponentVector *this, NSData *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0;
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
  v5 = v9;
  if (v5)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v6 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = "AudioComponentVector.mm";
      v12 = 1024;
      v13 = 360;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error deserializing AudioComponentVector: %@", buf, 0x1Cu);
    }

    *&this->__begin_ = 0u;
    *&this->__cap_ = 0u;
    v7 = 1;
  }

  else
  {
    *(v4 + 32) = 1;
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__cap_ = 0;
    std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(this, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 4);
    v7 = *(v4 + 32);
  }

  this->mSorted = v7;
}

void applesauce::CF::StringRef::from_ns(applesauce::CF::StringRef *this, NSString *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFStringGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_18F609774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::from_ns(applesauce::CF::ArrayRef *this, NSArray *a2)
{
  v3 = a2;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *this = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFArrayGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }
}

void sub_18F609858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

uint64_t AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(uint64_t a1, uint64_t a2, int a3, CFTypeRef *a4, int a5, const void **a6, const void **a7, const void **a8)
{
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  *(a1 + 20) = a3;
  v14 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = a5;
  v15 = *a6;
  if (v15)
  {
    CFRetain(v15);
  }

  *(a1 + 40) = v15;
  v16 = *a7;
  if (v16)
  {
    CFRetain(v16);
  }

  *(a1 + 48) = v16;
  v17 = *a8;
  if (v17)
  {
    CFRetain(v17);
  }

  *(a1 + 56) = v17;
  return a1;
}

void APComponent_NSExtension::create_shared(APComponent_NSExtension *this, const AudioComponentRegistrationInfo *a2, NSString *a3, NSExtension *a4)
{
  a3;
  v5 = a4;
  operator new();
}

void sub_18F609A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  (*(*v11 + 24))(v11, a2, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void APComponent_NSExtension::APComponent_NSExtension(APComponent_NSExtension *this, const AudioComponentRegistrationInfo *a2, NSString *a3, NSExtension *a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  *this = &unk_1F033C098;
  v9 = *(a2 + 5);
  v10 = *(a2 + 8);
  v16[0] = &unk_1F033C468;
  v16[1] = this;
  v16[3] = v16;
  APComponent::APComponent(this, 3, 70, a2, v9, a2 + 3, v10, v16);
  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](v16);
  *this = &unk_1F033C098;
  v11 = v7;
  *(this + 20) = v11;
  v12 = v8;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = v12;
  v13 = *(a2 + 5);
  if (v13)
  {
    CFRetain(*(a2 + 5));
  }

  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = v13;
  v14 = *(this + 15);
  v15 = *(a2 + 7);
  *(this + 15) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_18F609C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<APComponent_NSExtension::APComponent_NSExtension(AudioComponentRegistrationInfo const&,NSString *,NSExtension *)::$_0,std::allocator<APComponent_NSExtension::APComponent_NSExtension(AudioComponentRegistrationInfo const&,NSString *,NSExtension *)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F033C468;
  a2[1] = v2;
  return result;
}

void AudioComponentRegistrationInfo::~AudioComponentRegistrationInfo(AudioComponentRegistrationInfo *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    CFRelease(v5);
  }
}

const void **std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100](const void **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    *(v3 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 16;
  }

  v2[1] = v6;
  return result;
}

__n128 std::__function::__func<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_0,std::allocator<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_0>,BOOL ()(APComponent &)>::operator()(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  if ((v4 - 2) < 2)
  {
    if (!AudioComponentMgr_RegistrarService::inExtensionServiceProcess(*(a1 + 8)))
    {
      goto LABEL_18;
    }
  }

  else if (v4 == 1)
  {
    v6 = (*(*a2 + 80))(a2);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = *(v6 + 168);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v12 + 1) + 8 * i) intValue] == 16777228)
          {

            goto LABEL_18;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v4 != 4)
  {
LABEL_18:
    v11 = *(a1 + 16);
    result = *(a2 + 36);
    *(v11 + 12) = *(a2 + 48);
    *v11 = result;
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v117 = (a2 - 16);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8] >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, v117);
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
          if ((APComponent::Key::sortCompare((*v117 + 36), (*(a1 + 4) + 36), 1) & 0x80000000) != 0)
          {
            v49 = *(a1 + 4);
            *(a1 + 4) = *(a2 - 2);
            *(a2 - 2) = v49;
            v50 = *(a1 + 5);
            *(a1 + 5) = *(a2 - 1);
            *(a2 - 1) = v50;
            if ((APComponent::Key::sortCompare((*(a1 + 4) + 36), (*(a1 + 2) + 36), 1) & 0x80000000) != 0)
            {
              v52 = *(a1 + 1);
              v51 = *(a1 + 2);
              *(a1 + 1) = v51;
              *(a1 + 2) = v52;
              if ((APComponent::Key::sortCompare((v51 + 36), (*a1 + 36), 1) & 0x80000000) != 0)
              {
                v53 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v53;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, v117);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v46 = APComponent::Key::sortCompare((*v117 + 36), (*a1 + 36), 1);
        if (v46 < 0)
        {
          v47 = *a1;
          *a1 = *(a2 - 2);
          *(a2 - 2) = v47;
          v48 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v48;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v116 = a2;
      v69 = v10 >> 1;
      v70 = v10 >> 1;
      do
      {
        v71 = v70;
        if (v69 >= v70)
        {
          v72 = (2 * v70) | 1;
          v73 = &a1[16 * v72];
          if (2 * v70 + 2 < v9 && APComponent::Key::sortCompare((*v73 + 36), (*(v73 + 2) + 36), 1) < 0)
          {
            v73 += 16;
            v72 = 2 * v71 + 2;
          }

          v74 = &a1[16 * v71];
          if ((APComponent::Key::sortCompare((*v73 + 36), (*v74 + 36), 1) & 0x80000000) == 0)
          {
            v75 = *v74;
            *v74 = 0;
            *(v74 + 1) = 0;
            v118 = v75;
            v76 = v75;
            do
            {
              v77 = v73;
              v78 = *v73;
              *v73 = 0;
              *(v73 + 1) = 0;
              v79 = *(v74 + 1);
              *v74 = v78;
              if (v79)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v79);
              }

              if (v69 < v72)
              {
                break;
              }

              v80 = (2 * v72) | 1;
              v73 = &a1[16 * v80];
              v72 = 2 * v72 + 2;
              if (v72 >= v9)
              {
                v72 = v80;
              }

              else if (APComponent::Key::sortCompare((*v73 + 36), (*(v73 + 2) + 36), 1) >= 0)
              {
                v72 = v80;
              }

              else
              {
                v73 += 16;
              }

              v74 = v77;
            }

            while ((APComponent::Key::sortCompare((*v73 + 36), (v76 + 36), 1) & 0x80000000) == 0);
            v81 = *(v77 + 1);
            *v77 = v118;
            if (v81)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v81);
            }
          }
        }

        v70 = v71 - 1;
      }

      while (v71);
      v82 = v116;
      while (2)
      {
        v83 = 0;
        v84 = v82;
        v85 = *a1;
        v119 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v86 = a1;
        do
        {
          v87 = &v86[16 * v83];
          v88 = v87 + 16;
          v89 = (2 * v83) | 1;
          v83 = 2 * v83 + 2;
          if (v83 >= v9)
          {
            v83 = v89;
          }

          else
          {
            v91 = *(v87 + 4);
            v90 = v87 + 32;
            if (APComponent::Key::sortCompare((*(v90 - 2) + 36), (v91 + 36), 1) >= 0)
            {
              v83 = v89;
            }

            else
            {
              v88 = v90;
            }
          }

          v92 = *v88;
          *v88 = 0;
          *(v88 + 1) = 0;
          v93 = *(v86 + 1);
          *v86 = v92;
          if (v93)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v93);
          }

          v86 = v88;
        }

        while (v83 <= ((v9 - 2) >> 1));
        v82 = v84 - 16;
        if (v88 == v84 - 16)
        {
          v107 = *(v88 + 1);
          *v88 = v85;
          *(v88 + 1) = v119;
          if (!v107)
          {
            goto LABEL_140;
          }
        }

        else
        {
          v94 = *(v84 - 1);
          *v82 = 0;
          *(v84 - 1) = 0;
          v95 = *(v88 + 1);
          *v88 = v94;
          if (v95)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v95);
          }

          v96 = *(v84 - 1);
          *(v84 - 2) = v85;
          *(v84 - 1) = v119;
          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          v97 = (v88 + 16 - a1) >> 4;
          v98 = v97 < 2;
          v99 = v97 - 2;
          if (v98)
          {
            goto LABEL_140;
          }

          v100 = v99 >> 1;
          v101 = &a1[16 * (v99 >> 1)];
          if ((APComponent::Key::sortCompare((*v101 + 36), (*v88 + 36), 1) & 0x80000000) == 0)
          {
            goto LABEL_140;
          }

          v102 = *v88;
          v103 = *(v88 + 1);
          *v88 = 0;
          *(v88 + 1) = 0;
          do
          {
            v104 = v101;
            v105 = *v101;
            *v101 = 0;
            *(v101 + 1) = 0;
            v106 = *(v88 + 1);
            *v88 = v105;
            if (v106)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v106);
            }

            if (!v100)
            {
              break;
            }

            v100 = (v100 - 1) >> 1;
            v101 = &a1[16 * v100];
            v88 = v104;
          }

          while ((APComponent::Key::sortCompare((*v101 + 36), (v102 + 36), 1) & 0x80000000) != 0);
          v107 = *(v104 + 1);
          *v104 = v102;
          *(v104 + 1) = v103;
          if (!v107)
          {
LABEL_140:
            v98 = v9-- <= 2;
            if (v98)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v107);
      goto LABEL_140;
    }

    v11 = v9 >> 1;
    v12 = &a1[16 * (v9 >> 1)];
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(&a1[16 * (v9 >> 1)], a1, v117);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, &a1[16 * (v9 >> 1)], v117);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1 + 2, v12 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1 + 4, &a1[16 * v11 + 16], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(v12 - 2, &a1[16 * (v9 >> 1)], &a1[16 * v11 + 16]);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
    }

    --a3;
    if ((a4 & 1) != 0 || (APComponent::Key::sortCompare((*(a1 - 2) + 36), (*a1 + 36), 1) & 0x80000000) != 0)
    {
      v15 = *a1;
      v14 = *(a1 + 1);
      v16 = a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      do
      {
        v17 = *(v16 + 2);
        v16 += 16;
      }

      while ((APComponent::Key::sortCompare((v17 + 36), (v15 + 36), 1) & 0x80000000) != 0);
      v18 = a2;
      if (v16 - 16 == a1)
      {
        v18 = a2;
        do
        {
          if (v16 >= v18)
          {
            break;
          }

          v20 = *(v18 - 2);
          v18 -= 16;
        }

        while ((APComponent::Key::sortCompare((v20 + 36), (v15 + 36), 1) & 0x80000000) == 0);
      }

      else
      {
        do
        {
          v19 = *(v18 - 2);
          v18 -= 16;
        }

        while ((APComponent::Key::sortCompare((v19 + 36), (v15 + 36), 1) & 0x80000000) == 0);
      }

      v8 = v16;
      if (v16 < v18)
      {
        v21 = v18;
        do
        {
          v22 = *v8;
          *v8 = *v21;
          *v21 = v22;
          v23 = *(v8 + 8);
          *(v8 + 8) = *(v21 + 1);
          *(v21 + 1) = v23;
          do
          {
            v24 = *(v8 + 16);
            v8 += 16;
          }

          while ((APComponent::Key::sortCompare((v24 + 36), (v15 + 36), 1) & 0x80000000) != 0);
          do
          {
            v25 = *(v21 - 2);
            v21 -= 16;
          }

          while ((APComponent::Key::sortCompare((v25 + 36), (v15 + 36), 1) & 0x80000000) == 0);
        }

        while (v8 < v21);
      }

      v26 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v27 = *v26;
        *v26 = 0;
        *(v8 - 8) = 0;
        v28 = *(a1 + 1);
        *a1 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      v29 = *(v8 - 8);
      *(v8 - 16) = v15;
      *(v8 - 8) = v14;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v16 < v18)
      {
        goto LABEL_38;
      }

      v30 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v30)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v30)
      {
LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,false>(a1, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v32 = *a1;
      v31 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      if ((APComponent::Key::sortCompare((v32 + 36), (*v117 + 36), 1) & 0x80000000) != 0)
      {
        v8 = a1;
        do
        {
          v35 = *(v8 + 16);
          v8 += 16;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v35 + 36), 1) & 0x80000000) == 0);
      }

      else
      {
        v33 = a1 + 16;
        do
        {
          v8 = v33;
          if (v33 >= a2)
          {
            break;
          }

          v34 = APComponent::Key::sortCompare((v32 + 36), (*v33 + 36), 1);
          v33 = (v8 + 16);
        }

        while ((v34 & 0x80000000) == 0);
      }

      v36 = a2;
      if (v8 < a2)
      {
        v36 = a2;
        do
        {
          v37 = *(v36 - 2);
          v36 -= 16;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v37 + 36), 1) & 0x80000000) != 0);
      }

      while (v8 < v36)
      {
        v38 = *v8;
        *v8 = *v36;
        *v36 = v38;
        v39 = *(v8 + 8);
        *(v8 + 8) = *(v36 + 1);
        *(v36 + 1) = v39;
        do
        {
          v40 = *(v8 + 16);
          v8 += 16;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v40 + 36), 1) & 0x80000000) == 0);
        do
        {
          v41 = *(v36 - 2);
          v36 -= 16;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v41 + 36), 1) & 0x80000000) != 0);
      }

      v42 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v43 = *v42;
        *v42 = 0;
        *(v8 - 8) = 0;
        v44 = *(a1 + 1);
        *a1 = v43;
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }
      }

      a4 = 0;
      v45 = *(v8 - 8);
      *(v8 - 16) = v32;
      *(v8 - 8) = v31;
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        a4 = 0;
      }
    }
  }

  v54 = a1 + 16;
  v56 = a1 == a2 || v54 == a2;
  if (a4)
  {
    if (!v56)
    {
      v57 = 0;
      v58 = a1;
      do
      {
        v59 = v58;
        v58 = v54;
        if ((APComponent::Key::sortCompare((*(v59 + 2) + 36), (*v59 + 36), 1) & 0x80000000) != 0)
        {
          v60 = *v58;
          v61 = *(v59 + 3);
          v62 = v57;
          *v58 = 0;
          *(v58 + 1) = 0;
          while (1)
          {
            v63 = &a1[v62];
            v64 = *&a1[v62];
            *v63 = 0;
            *(v63 + 1) = 0;
            v65 = *&a1[v62 + 24];
            *(v63 + 1) = v64;
            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }

            if (!v62)
            {
              break;
            }

            v66 = APComponent::Key::sortCompare((v60 + 36), (*&a1[v62 - 16] + 36), 1);
            v62 -= 16;
            if ((v66 & 0x80000000) == 0)
            {
              v67 = &a1[v62 + 16];
              goto LABEL_90;
            }
          }

          v67 = a1;
LABEL_90:
          v68 = *(v67 + 1);
          *v67 = v60;
          *(v67 + 1) = v61;
          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }
        }

        v54 = v58 + 16;
        v57 += 16;
      }

      while (v58 + 16 != a2);
    }
  }

  else if (!v56)
  {
    do
    {
      v108 = a1;
      a1 = v54;
      if ((APComponent::Key::sortCompare((*(v108 + 2) + 36), (*v108 + 36), 1) & 0x80000000) != 0)
      {
        v109 = *a1;
        v110 = *(v108 + 3);
        v111 = a1;
        *a1 = 0;
        *(a1 + 1) = 0;
        do
        {
          v112 = *(v111 - 1);
          *(v111 - 2) = 0;
          *(v111 - 1) = 0;
          v113 = *(v111 + 1);
          *v111 = v112;
          if (v113)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v113);
          }

          v114 = APComponent::Key::sortCompare((v109 + 36), (*(v111 - 4) + 36), 1);
          v111 -= 16;
        }

        while (v114 < 0);
        v115 = *(v111 + 1);
        *v111 = v109;
        *(v111 + 1) = v110;
        if (v115)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        }
      }

      v54 = a1 + 16;
    }

    while (a1 + 16 != a2);
  }
}

void sub_18F60A958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 1);
  result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 1);
  if (v6 < 0)
  {
    v13 = *a1;
    if ((result & 0x80000000) != 0)
    {
      *a1 = *a3;
      *a3 = v13;
      v17 = a3 + 1;
      v12 = a1 + 1;
    }

    else
    {
      *a1 = *a2;
      v14 = a2[1];
      *a2 = v13;
      v15 = a1[1];
      a1[1] = v14;
      a2[1] = v15;
      result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 1);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = a3 + 1;
      v12 = a2 + 1;
    }

    v10 = v17;
    goto LABEL_10;
  }

  if ((result & 0x80000000) != 0)
  {
    v8 = *a2;
    *a2 = *a3;
    *a3 = v8;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    result = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 1);
    if ((result & 0x80000000) != 0)
    {
      v11 = *a1;
      *a1 = *a2;
      v12 = a1 + 1;
      *a2 = v11;
LABEL_10:
      v18 = *v12;
      *v12 = *v10;
      *v10 = v18;
    }
  }

  return result;
}

uint64_t std::__function::__func<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_1,std::allocator<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_1>,BOOL ()(APComponent &)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 == 1)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 36);
    *(v5 + 12) = *(a2 + 48);
    *v5 = v6;
  }

  else if (v2 == 4)
  {
    v3 = *(a1 + 8);
    if (*(a2 + 36) == *v3 && *(a2 + 44) == *(v3 + 8))
    {
      return 0;
    }
  }

  return 1;
}

void AudioComponentVector::subtract(AudioComponentVector *this, AudioComponentVector *a2, AudioComponentVector *a3)
{
  AudioComponentVector::sort(a2);
  AudioComponentVector::sort(a3);
  begin = a2->__begin_;
  end = a2->__end_;
  this->__end_ = 0;
  this->__cap_ = 0;
  this->__begin_ = 0;
  v21 = this;
  LOBYTE(v22) = 0;
  if (end != begin)
  {
    std::vector<std::shared_ptr<APComponent>>::__vallocate[abi:ne200100](this, (end - begin) >> 4);
  }

  this->mSorted = 1;
  v21 = a3->__begin_;
  v20 = 0;
  std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(begin, end, 0);
  v8 = this->__begin_;
  v9 = this->__end_;
  v11 = v10 - this->__begin_;
  v12 = v11 >> 4;
  v13 = (v9 - this->__begin_) >> 4;
  if (v11 >> 4 <= v13)
  {
    if (v12 < v13)
    {
      v18 = &v8[v11];
      while (v9 != v18)
      {
        v19 = *(v9 - 1);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v9 -= 16;
      }

      this->__end_ = v18;
    }
  }

  else
  {
    v14 = v12 - v13;
    cap = this->__cap_;
    if (v12 - v13 > (cap - v9) >> 4)
    {
      if (!(v12 >> 60))
      {
        v23 = this;
        v16 = cap - v8;
        if (v16 >> 3 > v12)
        {
          v12 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v12;
        }

        std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v17);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v14);
    this->__end_ = &v9[16 * v14];
  }
}

void sub_18F60ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *,std::shared_ptr<APComponent> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void AudioComponentMgr_Base::addAndRemoveComponents(char **this, const AudioComponentVector *a2, const AudioComponentVector *a3, const AudioComponentVector *a4)
{
  if (a3 != a4)
  {
    v7 = a3;
    do
    {
      SortedPosition = AudioComponentVector::findSortedPosition(this[2], this[3], (v7->__begin_ + 36));
      v9 = this[3];
      if (v9 != SortedPosition)
      {
        v10 = SortedPosition;
        v11 = *SortedPosition;
        begin = v7->__begin_;
        if (*(*SortedPosition + 36) == *(v7->__begin_ + 9) && v11[10] == begin[10] && v11[11] == begin[11] && v11[14] == begin[14])
        {
          v13 = *(SortedPosition + 1);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            v9 = this[3];
          }

          if (SortedPosition + 16 == v9)
          {
            v16 = SortedPosition;
          }

          else
          {
            do
            {
              v14 = *(v10 + 1);
              *(v10 + 2) = 0;
              *(v10 + 3) = 0;
              v15 = *(v10 + 1);
              *v10 = v14;
              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }

              v16 = v10 + 16;
              v17 = v10 + 32;
              v10 += 16;
            }

            while (v17 != v9);
            v9 = this[3];
          }

          while (v9 != v16)
          {
            v18 = *(v9 - 1);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v9 -= 16;
          }

          this[3] = v16;
          (*(*this + 13))(this, v11);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }
      }

      v7 = (v7 + 16);
    }

    while (v7 != a4);
  }

  v20 = a2->__begin_;
  end = a2->__end_;
  while (v20 != end)
  {
    AudioComponentMgr_Base::_addComponent(this, v20);
    v20 += 16;
  }

  v21 = this + 1;
  v22 = this[2];
  v23 = this[3];
  while (v22 != v23)
  {
    v24 = *v22;
    v22 += 16;
    *v21 = v24;
    v21 = (v24 + 24);
  }

  *v21 = 0;
}

void sub_18F60B038(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

acv2::CodecConverterFactory *acv2::CodecConverterFactory::CodecConverterFactory(acv2::CodecConverterFactory *this, int a2, int a3, OpaqueAudioComponent *a4, AudioComponentDescription *a5, CFTypeRef cf)
{
  componentManufacturer = a5->componentManufacturer;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 2) = *&a5->componentType;
  *(this + 6) = componentManufacturer;
  *this = &unk_1F032FE48;
  *(this + 4) = a4;
  if (cf)
  {
    CFRetain(cf);
    *(this + 5) = cf;
    v9 = CFGetTypeID(cf);
    if (v9 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *(this + 5) = 0;
  }

  *(this + 48) = 0;
  *(this + 52) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0;
  return this;
}

void sub_18F60B140(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t acv2::CodecConverterFactory::GetAvailableEncodeSampleRatesInfo(AudioComponent *this, unsigned int *a2)
{
  outInstance = 0;
  PropertyInfo = AudioComponentInstanceNew(this[4], &outInstance);
  if (!PropertyInfo)
  {
    outWritable = 0;
    PropertyInfo = AudioCodecGetPropertyInfo(outInstance, 0x616F7372u, a2, &outWritable);
    AudioComponentInstanceDispose(outInstance);
  }

  return PropertyInfo;
}

uint64_t acv2::ConverterRegistry::GetAvailableEncodeSampleRates(acv2::ConverterRegistry *this, unsigned int a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  FactoryBySpecifier = acv2::ConverterRegistry::FindFactoryBySpecifier(this, a2, a3);
  if (FactoryBySpecifier)
  {
    v6 = *(*FactoryBySpecifier + 96);

    return v6();
  }

  else
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v8 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ConverterFactory.cpp";
      v11 = 1024;
      v12 = 613;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to find converter that supports given format for encode sample rates", &v9, 0x12u);
    }

    return 1718449215;
  }
}

uint64_t acv2::CodecConverterFactory::GetAvailableEncodeSampleRates(AudioComponent *this, unsigned int *a2, void *a3)
{
  outInstance = 0;
  Property = AudioComponentInstanceNew(this[4], &outInstance);
  if (!Property)
  {
    Property = AudioCodecGetProperty(outInstance, 0x616F7372u, a2, a3);
    AudioComponentInstanceDispose(outInstance);
  }

  return Property;
}

float DSPGraph::Graph::getParameter(DSPGraph::Graph *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 65, a2);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "getParameter : inParamID not found");
    DSPGraph::ThrowException(1852204065, &v8, 2399, &v7, &v6);
  }

  if (*(v2 + 32) != 1)
  {
    return *(v2 + 7);
  }

  v3 = v2[5];
  if (v2[6] == v3)
  {
    return *(v2 + 7);
  }

  v4 = *(**v3 + 88);

  v4();
  return result;
}

void sub_18F60B48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *DSPGraph::Graph::setParameter(DSPGraph::Graph *this, unsigned int a2, float a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::find<unsigned int>(this + 65, a2);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter : inParamID not found");
    DSPGraph::ThrowException(1852204065, &v9, 2385, &v8, &v7);
  }

  *(result + 7) = a3;
  v5 = result[5];
  v6 = result[6];
  while (v5 != v6)
  {
    result = (*(**v5 + 80))(*v5, v5[2], v5[3], v5[4], 0, a3);
    v5 += 6;
  }

  return result;
}

void sub_18F60B5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t DSPGraph::AUBox::setParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4, AudioUnitParameterValue a5, UInt32 a6)
{
  result = AudioUnitSetParameter(this[106], a2, a3, a4, a5, a6);
  if (result)
  {
    v11 = result;
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v13, "AudioUnitSetParameter");
    DSPGraph::ThrowException(v11, &v12, 1702, &v14, &v13);
  }

  if (*(this[1] + 767) == 1)
  {
    memset(&v12, 0, sizeof(v12));
    v12.mArgument.mParameter.mAudioUnit = this[106];
    *&v12.mArgument.mProperty.mPropertyID = __PAIR64__(a3, a2);
    v12.mArgument.mParameter.mElement = a4;
    return AUEventListenerNotify(0, 0, &v12);
  }

  return result;
}

void sub_18F60B6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *Float32ToNativeInt16Scaled_ARM(_OWORD *result, __n128 *a2, unsigned int a3, float a4, int32x4_t a5)
{
  if (a3 >= 8)
  {
    v5 = a3 >> 3;
    do
    {
      v6 = *result;
      v7 = *(result + 1);
      result += 2;
      a5 = vqmovn_high_s32(vqmovn_s32(vcvtaq_s32_f32(vmulq_n_f32(v6, a4))), vcvtaq_s32_f32(vmulq_n_f32(v7, a4)));
      *a2++ = a5;
      --v5;
    }

    while (v5);
  }

  v8 = a3 & 7;
  if ((a3 & 7) != 0)
  {
    do
    {
      v9 = *result;
      result = (result + 4);
      a5.i32[0] = llroundf(v9 * a4);
      *a5.i8 = vqmovn_s32(a5);
      a2->n128_u16[0] = a5.i16[0];
      a2 = (a2 + 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t TDeinterleaver_SIMD<PCMSInt32_SIMD>::Deinterleave(unint64_t result, char *a2, void **a3, int a4)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v5 = *a3;

    return memcpy(v5, a2, 4 * a4);
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = result;
  v11 = 16 * result;
  v12 = 4 * result;
  while (result >= 8)
  {
    v13 = &a2[4 * v6];
    v14 = &a3[v6];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    v20 = v14[5];
    v21 = v14[6];
    v22 = v14[7];
    if (v7 >= 7)
    {
      v23 = 0;
      v24 = v9;
      do
      {
        v25 = v13;
        v26 = *v13;
        v27 = *(v13 + 1);
        v28 = &v13[v12];
        v29 = *v28;
        v30 = v28[1];
        v31 = &v28->i8[v12];
        v32 = *v31;
        v33 = *(v31 + 1);
        v34 = &v31[v12];
        *&v35 = vzip1q_s32(v26, v29).u64[0];
        DWORD2(v35) = v32;
        HIDWORD(v35) = *v34;
        *&v36 = vtrn2q_s32(v26, v29).u64[0];
        DWORD2(v36) = DWORD1(v32);
        HIDWORD(v36) = HIDWORD(*v34);
        *&v37 = vzip2q_s32(v26, v29).u64[0];
        DWORD2(v37) = DWORD2(v32);
        HIDWORD(v37) = *(v34 + 1);
        v26.i64[0] = vuzp2q_s32(vuzp2q_s32(v26, v29), v26).u64[0];
        v26.i32[2] = HIDWORD(v32);
        v26.i32[3] = HIDWORD(*v34);
        v29.i64[0] = vzip1q_s32(v27, v30).u64[0];
        v29.i32[2] = v33;
        v29.i32[3] = *(v34 + 1);
        *&v32 = vtrn2q_s32(v27, v30).u64[0];
        DWORD2(v32) = DWORD1(v33);
        HIDWORD(v32) = HIDWORD(*(v34 + 2));
        *&v38 = vzip2q_s32(v27, v30).u64[0];
        DWORD2(v38) = DWORD2(v33);
        HIDWORD(v38) = *(v34 + 3);
        v27.i64[0] = vuzp2q_s32(vuzp2q_s32(v27, v30), v27).u64[0];
        v27.i64[1] = __PAIR64__(HIDWORD(*(v34 + 1)), HIDWORD(v33));
        *&v15[v23] = v35;
        *&v16[v23] = v36;
        *&v18[v23] = v37;
        *&v17[v23] = v26;
        *&v19[v23] = v29;
        *&v20[v23] = v32;
        *&v21[v23] = v38;
        *&v22[v23] = v27;
        v23 += 4;
        v13 = &v34[v12];
        --v24;
      }

      while (v24);
      v13 = &v25[v11];
      v15 = (v15 + v23 * 4);
      v16 = (v16 + v23 * 4);
      v18 = (v18 + v23 * 4);
      v17 = (v17 + v23 * 4);
      v19 = (v19 + v23 * 4);
      v20 = (v20 + v23 * 4);
      v21 = (v21 + v23 * 4);
      v22 = (v22 + v23 * 4);
    }

    if ((a4 & 3) != 0)
    {
      v39 = (v13 + 16);
      v40 = a4 & 3;
      do
      {
        v41 = *(v39 - 1);
        v42 = *v39;
        *v15++ = v41;
        *v16++ = DWORD1(v41);
        *v18++ = DWORD2(v41);
        *v17++ = HIDWORD(v41);
        *v19++ = v42;
        *v20++ = DWORD1(v42);
        *v21++ = DWORD2(v42);
        *v22++ = HIDWORD(v42);
        v39 = (v39 + v12);
        --v40;
      }

      while (v40);
    }

    v43 = -8;
    v44 = 8;
LABEL_34:
    v6 += v44;
    result = (result + v43);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 4)
  {
    v45 = &a2[4 * v6];
    v46 = &a3[v6];
    v47 = *v46;
    v48 = v46[1];
    v50 = v46[2];
    v49 = v46[3];
    if (v7 >= 7)
    {
      v51 = 0;
      v52 = v9;
      do
      {
        v53 = v45;
        v54 = *v45;
        v55 = &v45[v12];
        v56 = *v55;
        v57 = &v55->i8[v12];
        v58 = *v57;
        v59 = &v57[v12];
        *&v60 = vzip1q_s32(v54, v56).u64[0];
        DWORD2(v60) = v58;
        HIDWORD(v60) = *v59;
        *&v61 = vtrn2q_s32(v54, v56).u64[0];
        DWORD2(v61) = DWORD1(v58);
        HIDWORD(v61) = HIDWORD(*v59);
        *&v62 = vzip2q_s32(v54, v56).u64[0];
        DWORD2(v62) = DWORD2(v58);
        HIDWORD(v62) = *(v59 + 1);
        v54.i64[0] = vuzp2q_s32(vuzp2q_s32(v54, v56), v54).u64[0];
        v54.i32[2] = HIDWORD(v58);
        v54.i32[3] = HIDWORD(*v59);
        *&v47[v51] = v60;
        *&v48[v51] = v61;
        *&v50[v51] = v62;
        *&v49[v51] = v54;
        v51 += 4;
        v45 = &v59[v12];
        --v52;
      }

      while (v52);
      v45 = &v53[v11];
      v49 = (v49 + v51 * 4);
      v50 = (v50 + v51 * 4);
      v48 = (v48 + v51 * 4);
      v47 = (v47 + v51 * 4);
    }

    v63 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v64 = *v45;
        *v47++ = *v45;
        *v48++ = v64.i32[1];
        *v50++ = v64.i32[2];
        *v49++ = v64.i32[3];
        v45 += v12;
        --v63;
      }

      while (v63);
    }

    v43 = -4;
    v44 = 4;
    goto LABEL_34;
  }

  if (result >= 2)
  {
    v65 = &a2[4 * v6];
    v66 = &a3[v6];
    v67 = *v66;
    v68 = v66[1];
    v69 = v9;
    if (v7 >= 7)
    {
      do
      {
        v70 = v65;
        v71 = *v65;
        v72 = &v65[v12];
        v73 = *v72;
        v74 = (v72 + v12);
        v75 = *v74;
        v76 = (v74 + v12);
        *&v77 = vzip1_s32(v71, v73);
        DWORD2(v77) = v75.i32[0];
        HIDWORD(v77) = *v76;
        *&v78 = vzip2_s32(v71, v73);
        DWORD2(v78) = vdup_lane_s32(v75, 1).u32[0];
        HIDWORD(v78) = HIDWORD(*v76);
        *v67++ = v77;
        *v68++ = v78;
        v65 = v76 + v12;
        --v69;
      }

      while (v69);
      v65 = &v70[v11];
    }

    v79 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v80 = *v65;
        *v67 = *v65;
        v67 = (v67 + 4);
        *v68 = v80.i32[1];
        v68 = (v68 + 4);
        v65 += v12;
        --v79;
      }

      while (v79);
    }

    v43 = -2;
    v44 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v81 = a3[v6];
    v82 = 4 * v10;
    v83 = &a2[4 * v6];
    do
    {
      *v81++ = *v83;
      v83 += v82;
      --a4;
    }

    while (a4);
  }

  return result;
}