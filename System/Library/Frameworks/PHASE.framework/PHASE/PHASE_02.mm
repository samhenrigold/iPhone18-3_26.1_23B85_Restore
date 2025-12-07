uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_23A323A50(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](v1);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::SpatialModeler::AudibleEarlyReflection *a1, uint64_t a2)
{
  v3 = a1;
  {
    if (a1)
    {
      *&Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::Vector<float,3ul> const&,Phase::Vector<float,3ul> const&)::invOrientationTolerance = 1.0 / Phase::SpatialModeler::AudibleEarlyReflection::sAerPlaneHashingToleranceFactorOrientationInternal(a1);
    }
  }

  v4 = Phase::SpatialModeler::AudibleEarlyReflection::sAerPlaneHashingToleranceFactorOrientationInternal(a1);
  v5 = v4 * *v3;
  v6 = roundf(v5) * *&Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::Vector<float,3ul> const&,Phase::Vector<float,3ul> const&)::invOrientationTolerance;
  v13 = vrnda_f32(vmul_n_f32(*(v3 + 4), v4));
  v7 = vmul_n_f32(v13, *&Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal(Phase::Vector<float,3ul> const&,Phase::Vector<float,3ul> const&)::invOrientationTolerance);
  v8 = vmul_f32(v7, v7);
  *v9.i32 = sqrtf(((v6 * v6) + v8.f32[0]) + v8.f32[1]);
  v10 = vmul_f32(*(a2 + 4), vdiv_f32(v7, vdup_lane_s32(v9, 0)));
  v11 = v13.f32[0];
  v12 = 269431639 * llroundf(v5);
  v13.f32[0] = (v10.f32[1] + ((*a2 * (v6 / *v9.i32)) + v10.f32[0])) * 1.9117;
  v14 = 0.5;
  if (v13.f32[0] < 0.0)
  {
    v14 = -0.5;
  }

  return v12 + 93309929 * v11 + 775157 * v13.f32[1] + 74831 * (v13.f32[0] + v14);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE86340](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_23A323C48(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EE860D0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

  MEMORY[0x23EE860E0](v13);
  return a1;
}

void sub_23A323DB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EE860E0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23A323D90);
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
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
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

void sub_23A323FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Phase::DspLayer23::AudioConnections *Phase::DspLayer23::AudioConnections::AudioConnections(Phase::DspLayer23::AudioConnections *this)
{
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (atomic_load_explicit(&Phase::DspLayer23::zeroFlag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&Phase::DspLayer23::zeroFlag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::DspLayer23::AudioConnections::AudioConnections(void)::$_0 &&>>);
  }

  return this;
}

uint64_t Phase::DspLayer23::AudioConnections::Add(Phase::DspLayer23::AudioConnections *this, float *a2)
{
  v4 = *(this + 15);
  if (v4 > 0xD)
  {
    if (v4 > 0x3FF)
    {
      return 0;
    }

    v6 = *(this + 14);
    if (v4 == 14)
    {
      if (v6)
      {
        v4 = 14;
      }

      else
      {
        v6 = malloc_type_malloc(0x1F90uLL, 0x80040B8603338uLL);
        *(this + 14) = v6;
        v4 = *(this + 15);
      }
    }

    v5 = &v6[8 * v4 - 112];
  }

  else
  {
    v5 = this + 8 * v4;
  }

  *v5 = a2;
  *(this + 15) = v4 + 1;
  return 1;
}

uint64_t Phase::DspLayer23::AudioConnections::Remove(Phase::DspLayer23::AudioConnections *this, float *a2)
{
  v2 = *(this + 15);
  if (v2 > 0xE)
  {
    v4 = 0;
    v5 = v2 - 15;
    do
    {
      if (*(this + v4) == a2)
      {
        *(this + v4) = *(*(this + 14) + 8 * v5);
        goto LABEL_15;
      }

      v4 += 8;
    }

    while (v4 != 112);
    v6 = 0;
    v7 = *(this + 14);
    while (*(v7 + 8 * v6) != a2)
    {
      if (v2 - 14 == ++v6)
      {
        return 0;
      }
    }

    if (v5 > v6)
    {
      *(v7 + 8 * v6) = *(v7 + 8 * v5);
    }

LABEL_15:
    v9 = v2 - 1;
  }

  else
  {
    if (!v2)
    {
      return 0;
    }

    v3 = 0;
    while (*(this + v3) != a2)
    {
      if (v2 == ++v3)
      {
        return 0;
      }
    }

    v9 = v2 - 1;
    if (v9 > v3)
    {
      *(this + v3) = *(this + v9);
    }
  }

  *(this + 15) = v9;
  return 1;
}

uint64_t Phase::DspLayer23::AudioConnections::GetConnection(uint64_t this, float *a2)
{
  v2 = this;
  v3 = *(this + 120);
  if (v3 >= 0xF)
  {
    v4 = 14;
    while (*this != a2)
    {
      this += 8;
      if (!--v4)
      {
        this = *(v2 + 112);
        v5 = v3 - 14;
        while (*this != a2)
        {
          this += 8;
          if (!--v5)
          {
            return 0;
          }
        }

        return this;
      }
    }
  }

  else if (v3)
  {
    while (*v2 != a2)
    {
      v2 += 8;
      if (!--v3)
      {
        return 0;
      }
    }

    return v2;
  }

  else
  {
    return 0;
  }

  return this;
}

float *Phase::DspLayer23::AudioConnections::Sum(float **this, unint64_t a2, float *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = this[15];
  if (v5 == 1)
  {
    return *this;
  }

  if (!v5)
  {
    return Phase::DspLayer23::ZERO_BUFFER;
  }

  v6 = a3;
  if (v5 > 0xE)
  {
    if (v5 == 15)
    {
      Phase::DspLayer23::AudioConnections::InternalSum(this, 0xEuLL, a2, this, a3);
      v7 = *this[14];
    }

    else
    {
      MEMORY[0x28223BE20](this);
      v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, v8);
      Phase::DspLayer23::AudioConnections::InternalSum(v10, 0xEuLL, a2, this, v6);
      Phase::DspLayer23::AudioConnections::InternalSum(v11, this[15] - 14, a2, this[14], v9);
      v7 = v9;
    }

    MEMORY[0x23EE871C0](v7, 1, v6, 1, v6, 1, a2);
  }

  else
  {
    Phase::DspLayer23::AudioConnections::InternalSum(this, v5, a2, this, a3);
  }

  return v6;
}

void Phase::DspLayer23::AudioConnections::InternalSum(Phase::DspLayer23::AudioConnections *this, unint64_t a2, unint64_t a3, float **a4, float *a5)
{
  v5 = *a4;
  if (a3 < 0x20)
  {
    i = 0;
    if (!a3)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = 0;
  do
  {
    v7 = (v5 + 4 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    v7 += 4;
    v12 = *v7;
    v13 = v7[1];
    v14 = v7[2];
    v15 = v7[3];
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = a4 + 1;
    v20 = a2 - 1;
    if (a2 >= 2)
    {
      do
      {
        v21 = *v19++;
        v22 = (v21 + 4 * v6);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v22 += 4;
        v8 = vaddq_f32(v8, v23);
        v16 = vaddq_f32(v16, v24);
        v17 = vaddq_f32(v17, v25);
        v18 = vaddq_f32(v18, v26);
        v12 = vaddq_f32(v12, *v22);
        v13 = vaddq_f32(v13, v22[1]);
        v14 = vaddq_f32(v14, v22[2]);
        v15 = vaddq_f32(v15, v22[3]);
        --v20;
      }

      while (v20);
    }

    v27 = &a5[v6];
    *v27 = v8;
    *(v27 + 1) = v16;
    *(v27 + 2) = v17;
    *(v27 + 3) = v18;
    v27 += 16;
    *v27 = v12;
    *(v27 + 1) = v13;
    *(v27 + 2) = v14;
    *(v27 + 3) = v15;
    v6 += 32;
    a3 -= 32;
  }

  while (a3 > 0x1F);
  for (i = v6 & 0xFFFFFFE0; a3; a3 -= 4)
  {
LABEL_9:
    v29 = *(v5 + 4 * i);
    v30 = a4 + 1;
    v31 = a2 - 1;
    if (a2 >= 2)
    {
      do
      {
        v32 = *v30++;
        v29 = vaddq_f32(v29, *(v32 + 4 * i));
        --v31;
      }

      while (v31);
    }

    *&a5[i] = v29;
    i += 4;
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::DspLayer23::AudioConnections::AudioConnections(void)::$_0 &&>>()
{
  v0 = malloc_type_malloc(0x4000uLL, 0x100004052888210uLL);
  Phase::DspLayer23::ZERO_BUFFER = v0;

  bzero(v0, 0x4000uLL);
}

BOOL Phase::Controller::SystemAudioIO::IsValidFormat(Phase::Controller::SystemAudioIO *this, AVAudioFormat *a2)
{
  v2 = this;
  v3 = v2;
  v5 = v2 && ([(Phase::Controller::SystemAudioIO *)v2 sampleRate], v4 > 0.0) && [(Phase::Controller::SystemAudioIO *)v3 channelCount]!= 0;

  return v5;
}

id Phase::Controller::SystemAudioIO::GetOutputChannelLayout(Phase::Controller::SystemAudioIO *this, AVAudioFormat *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = v2;
  if (!v2)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 544);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioIOBase.mm";
      *&buf[12] = 1024;
      *&buf[14] = 29;
      v13 = "%25s:%-5d Undefined audio output format (AVAudioFormat* is nil).";
LABEL_27:
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    }

LABEL_28:
    v5 = 0;
    goto LABEL_29;
  }

  v4 = [(Phase::Controller::SystemAudioIO *)v2 channelLayout];
  v5 = v4;
  if (!v4)
  {
LABEL_19:

    v14 = [(Phase::Controller::SystemAudioIO *)v3 channelCount];
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = 6553601;
      }

      else
      {
        if (v14 != 2)
        {
          v17 = **(Phase::Logger::GetInstance(v14) + 544);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AudioIOBase.mm";
            *&buf[12] = 1024;
            *&buf[14] = 62;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Undefined output channel layout for channel count > 2. Using stereo as a fallback.", buf, 0x12u);
          }

          v18 = [(Phase::Controller::SystemAudioIO *)v3 channelCount];
          memset(buf, 0, sizeof(buf));
          std::__allocate_at_least[abi:ne200100]<std::allocator<AudioChannelDescription>>(buf, v18);
        }

        v15 = 6619138;
      }

      v5 = [MEMORY[0x277CB8368] layoutWithLayoutTag:v15];
      goto LABEL_29;
    }

    v12 = **(Phase::Logger::GetInstance(v14) + 544);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioIOBase.mm";
      *&buf[12] = 1024;
      *&buf[14] = 57;
      v13 = "%25s:%-5d 0 output channels.";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v6 = [v4 layout];
  v7 = v6[2];
  if (v7 <= 1)
  {
    v7 = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * v7 + 12);
  memcpy(__dst[0], v6, 20 * v6[2] + 12);
  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(__dst, buf);
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  v8 = *buf;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 2);
  if (v9 > 0x40)
  {
    std::terminate();
  }

  if (*&buf[8] == *buf)
  {
    if (!*&buf[8])
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 2);
  }

  if (**buf == -1)
  {
    v19 = 0;
    v20 = v10 - 1;
    v21 = 20;
    while (v20 != v19)
    {
      v22 = *(*buf + v21);
      v21 += 20;
      ++v19;
      if (v22 != -1)
      {
        v23 = v5;
        *&buf[8] = v8;
        operator delete(v8);
        if (v9 > v19)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    *&buf[8] = *buf;
    operator delete(*buf);
    goto LABEL_19;
  }

  v11 = v5;
  *&buf[8] = v8;
  operator delete(v8);
LABEL_14:

LABEL_29:

  return v5;
}

void sub_23A324984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SystemAudioIO::GetRenderedChannels(Phase::Controller::SystemAudioIO *this, AVAudioChannelLayout *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = v2;
  if (!v2)
  {
    goto LABEL_25;
  }

  v2 = [(Phase::Controller::SystemAudioIO *)v2 layout];
  if (!v2)
  {
    goto LABEL_25;
  }

  v4 = [(Phase::Controller::SystemAudioIO *)v3 layout];
  v5 = v4[2];
  if (v5 <= 1)
  {
    v5 = 1;
  }

  std::vector<char>::vector[abi:ne200100](&__dst, 20 * v5 + 12);
  memcpy(__dst, v4, 20 * v4[2] + 12);
  Phase::ChannelLayout::GetChannelLayoutChannelDescriptions(&__dst, __p);
  if (__dst)
  {
    v19 = __dst;
    operator delete(__dst);
  }

  v6 = *__p;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*&__p[8] - *__p) >> 2);
  if (v7 > 0x40)
  {
    std::terminate();
  }

  if (*&__p[8] == *__p)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v10 = *v6;
      v6 += 5;
      if ((v10 + 1) >= 2)
      {
        v9 |= 1 << v8;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v11 = [(Phase::Controller::SystemAudioIO *)v3 layout];
  v12 = v11[2];
  if (v12 <= 1)
  {
    v12 = 1;
  }

  std::vector<char>::vector[abi:ne200100](&__dst, 20 * v12 + 12);
  memcpy(__dst, v11, 20 * v11[2] + 12);
  NumActiveChannels = Phase::ChannelLayout::GetNumActiveChannels(&__dst, v9);
  v2 = *__p;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((*&__p[8] - *__p) >> 2);
  if (__dst)
  {
    v19 = __dst;
    operator delete(__dst);
    v2 = *__p;
  }

  if (v14 == NumActiveChannels)
  {
    v9 = -1;
  }

  if (v2)
  {
    *&__p[8] = v2;
    operator delete(v2);
  }

  if (!v9)
  {
LABEL_25:
    v15 = **(Phase::Logger::GetInstance(v2) + 544);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      Phase::ChannelLayout::GetStringDescription(&__dst, [(Phase::Controller::SystemAudioIO *)v3 layout]);
      if (v20 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      *__p = 136315650;
      *&__p[4] = "AudioIOBase.mm";
      *&__p[12] = 1024;
      *&__p[14] = 105;
      v22 = 2080;
      v23 = p_dst;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d System output layout does not contain any valid channel description.\n%s", __p, 0x1Cu);
      if (v20 < 0)
      {
        operator delete(__dst);
      }
    }

    v9 = 0;
  }

  return v9;
}

void sub_23A324CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

Phase::Controller::SystemAudioIO::AudioIOBase *Phase::Controller::SystemAudioIO::AudioIOBase::AudioIOBase(Phase::Controller::SystemAudioIO::AudioIOBase *this, Phase::Controller::VoiceManager *a2)
{
  v3 = 0;
  *this = &unk_284D2F870;
  *(this + 1) = a2;
  *(this + 1) = xmmword_23A554AC0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 36) = 0;
  do
  {
    v4 = this + v3;
    v4[152] = 0;
    *(v4 + 156) = 0u;
    *(v4 + 172) = 0u;
    *(v4 + 188) = 0u;
    *(v4 + 204) = 0u;
    *(v4 + 55) = 0;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + v3 + 224));
    *(v4 + 29) = 0;
    v3 += 88;
  }

  while (v3 != 176);
  *(this + 82) = 0;
  return this;
}

void sub_23A324DB8(_Unwind_Exception *a1)
{
  std::unique_ptr<Phase::Controller::SpeechDetector>::reset[abi:ne200100]((v2 + 216), 0);

  if (v1)
  {
    v4 = (v2 + 64);
    v5 = -v1;
    do
    {
      Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::~IOConfiguration(v4);
      v4 = (v6 - 88);
      v5 += 88;
    }

    while (v5);
  }

  _Unwind_Resume(a1);
}

Phase::Controller::SpeechDetector::SpeechDetectorImpl ***std::unique_ptr<Phase::Controller::SpeechDetector>::reset[abi:ne200100](Phase::Controller::SpeechDetector::SpeechDetectorImpl ***result, Phase::Controller::SpeechDetector::SpeechDetectorImpl **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v2, 0);
    std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(Phase::Controller::SystemAudioIO::AudioIOBase *this@<X0>, int **a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 88))(this);
  __dst[0] = 0;
  v5 = std::vector<char>::vector[abi:ne200100](v26, 32, __dst);
  v6 = v26[0];
  *v26[0] = 6619138;
  v6[2] = 0;
  if (!v4 || (v5 = [v4 layout]) == 0)
  {
    v15 = **(Phase::Logger::GetInstance(v5) + 544);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__dst = 136315394;
      *&__dst[4] = "AudioIOBase.mm";
      *&__dst[12] = 1024;
      *&__dst[14] = 164;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Undefined hardware output channel layout, falling back to stereo.", __dst, 0x12u);
    }

    goto LABEL_20;
  }

  v7 = [v4 layout];
  v9 = Phase::ChannelLayout::IsLayoutSupported(v7, v8);
  if ((v9 & 1) == 0)
  {
    v16 = **(Phase::Logger::GetInstance(v9) + 544);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      Phase::ChannelLayout::GetStringDescription(__p, [v4 layout]);
      v17 = v25 >= 0 ? __p : __p[0];
      *__dst = 136315650;
      *&__dst[4] = "AudioIOBase.mm";
      *&__dst[12] = 1024;
      *&__dst[14] = 169;
      v28 = 2080;
      v29 = v17;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported hardware output channel layout, falling back to stereo.\n%s", __dst, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_20;
  }

  v10 = [v4 layout];
  v11 = v10[2];
  if (v11 <= 1)
  {
    v11 = 1;
  }

  std::vector<char>::vector[abi:ne200100](__dst, 20 * v11 + 12);
  memcpy(*__dst, v10, 20 * v10[2] + 12);
  RenderedChannels = Phase::Controller::SystemAudioIO::GetRenderedChannels(v4, v12);
  Phase::ChannelLayout::ReduceLayout(__dst, RenderedChannels, a2);
  if (*__dst)
  {
    *&__dst[8] = *__dst;
    operator delete(*__dst);
  }

  if (!Phase::ChannelLayout::IsLayoutSupported(a2))
  {
    v14 = *a2;
    if (*a2)
    {
      a2[1] = v14;
      operator delete(v14);
    }

LABEL_20:
    v18 = (*(*this + 80))(this);
    if (v18 == 1)
    {
      v21 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315650;
        *&__dst[4] = "AudioIOBase.mm";
        *&__dst[12] = 1024;
        *&__dst[14] = 202;
        v28 = 2048;
        v29 = this;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Output layout not supported.\n                                    Falling back to mono.\n                                    Make sure that a valid speaker layout is set for the device in Audio and MIDI settings.", __dst, 0x1Cu);
      }

      __dst[0] = 0;
      std::vector<char>::vector[abi:ne200100](a2, 32, __dst);
      v20 = 6553601;
    }

    else if (v18)
    {
      v22 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315650;
        *&__dst[4] = "AudioIOBase.mm";
        *&__dst[12] = 1024;
        *&__dst[14] = 213;
        v28 = 2048;
        v29 = this;
        _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Output layout not supported.\n                                    Falling back to stereo over the first 2 output channels.\n                                    Make sure that a valid speaker layout is set for the device in Audio and MIDI settings.", __dst, 0x1Cu);
      }

      __dst[0] = 0;
      std::vector<char>::vector[abi:ne200100](a2, 32, __dst);
      v20 = 6619138;
    }

    else
    {
      v19 = **(Phase::Logger::GetInstance(v18) + 400);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *__dst = 136315650;
        *&__dst[4] = "AudioIOBase.mm";
        *&__dst[12] = 1024;
        *&__dst[14] = 191;
        v28 = 2048;
        v29 = this;
        _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Output layout not supported, with 0 output channels.", __dst, 0x1Cu);
      }

      __dst[0] = 0;
      std::vector<char>::vector[abi:ne200100](a2, 32, __dst);
      v20 = -65536;
    }

    v23 = *a2;
    v23[1] = 0;
    v23[2] = 0;
    *v23 = v20;
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void sub_23A325310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::BeginRouteChange(Phase::Controller::SystemAudioIO::AudioIOBase *this)
{
  v19 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v3 = os_signpost_id_generate(**(Instance + 544));
  v4 = Phase::Logger::GetInstance(v3);
  if (*(v4 + 552) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(v4) + 544);
    v6 = v5;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Phase_BeginRouteChange", "Begin route change", &v15, 2u);
    }
  }

  v7 = (*(*this + 64))(this);
  v8 = *(this + 82);
  if (v7)
  {
    if (v8)
    {
      v13 = **(Phase::Logger::GetInstance(v7) + 544);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "AudioIOBase.mm";
        v17 = 1024;
        v18 = 233;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: mRouteChangeResumeSemaphore == 0U is false.", &v15, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: mRouteChangeResumeSemaphore == 0U is false.");
    }

    *(this + 82) = 1;
    *(this + 16) = *(this + 14);
    *(this + 136) = *(this + 120);
    (*(*this + 56))(this);
  }

  else if (v8)
  {
    *(this + 82) = v8 + 1;
  }

  (*(*this + 32))(this);
  v9 = (*(*this + 24))(this);
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 552) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 544);
    v12 = v11;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_END, v3, "Phase_BeginRouteChange", "Begin route change done", &v15, 2u);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOBase::EndRouteChange(atomic_uint *this)
{
  v38 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v3 = os_signpost_id_generate(**(Instance + 544));
  v4 = Phase::Logger::GetInstance(v3);
  if (*(v4 + 552) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(v4) + 544);
    v6 = v5;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v32) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Phase_EndRouteChange", "End route change", &v32, 2u);
    }
  }

  v7 = this[82];
  if (v7 == 1)
  {
    if (this[34])
    {
      v8 = mach_absolute_time();
      v9 = *(this + 16);
      v10 = (*(*this + 104))(this);
      v11 = (*(*this + 120))(this);
      v12 = ((v8 - v9) * 0.0000000416666667 * v10);
      v13 = vcvtpd_u64_f64(256.0 / v11);
      v14 = vcvtad_u64_f64(v12 / v11);
      if (v12 <= 0x100)
      {
        v12 = 256;
      }

      if (v13 <= v14)
      {
        v13 = v14;
      }

      v15 = v13 * v11;
      if (v11)
      {
        v16 = v15;
      }

      else
      {
        v16 = v12;
      }

      v17 = Phase::Logger::GetInstance(v11);
      v18 = os_signpost_id_generate(**(v17 + 544));
      v19 = Phase::Logger::GetInstance(v18);
      if (*(v19 + 552) == 1)
      {
        v20 = **(Phase::Logger::GetInstance(v19) + 544);
        v21 = v20;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          v32 = 67109120;
          LODWORD(v33) = v16;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Phase_FlushFrames", "End route change: start flush %i frames", &v32, 8u);
        }
      }

      if (v16)
      {
        v22 = v16 + 128;
        do
        {
          Phase::Controller::DVM_RT::Update(*(**(**(this + 1) + 696) + 168));
          v22 -= 128;
        }

        while (v22 > 0x80);
      }

      v23 = Phase::Logger::GetInstance(v19);
      if (*(v23 + 552) == 1)
      {
        v24 = **(Phase::Logger::GetInstance(v23) + 544);
        v25 = v24;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          LOWORD(v32) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v25, OS_SIGNPOST_INTERVAL_END, v18, "Phase_EndRouteChange", "End route change: end flush frames", &v32, 2u);
        }
      }

      v26 = **(Phase::Logger::GetInstance(v23) + 544);
      v27 = v26;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315650;
        v33 = "AudioIOBase.mm";
        v34 = 1024;
        v35 = 339;
        v36 = 1024;
        v37 = v16;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Flushed %i audio frames.", &v32, 0x18u);
      }

      *(this + 16) = v8;
      *(this + 136) = 1;
    }

    v4 = (*(*this + 40))(this);
    v7 = this[82];
  }

  if (v7)
  {
    this[82] = v7 - 1;
  }

  if (atomic_load(this + 36))
  {
    atomic_fetch_add(this + 36, 0xFFFFFFFF);
  }

  v29 = Phase::Logger::GetInstance(v4);
  if (*(v29 + 552) == 1)
  {
    v30 = **(Phase::Logger::GetInstance(v29) + 544);
    v31 = v30;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      LOWORD(v32) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v31, OS_SIGNPOST_INTERVAL_END, v3, "Phase_EndRouteChange", "End route change done", &v32, 2u);
    }
  }
}

void sub_23A325ACC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(Phase::Controller::SystemAudioIO::AudioIOBase *this, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v5 = 0;
  v6 = *(Instance + 403);
  v7 = this + 152;
  v8 = 1;
  v9 = "audioio-out";
  do
  {
    v10 = v8;
    v11 = &v7[88 * v5];
    if (((v6 >> v5) & 1) == 0 || !a2 || *v11 != 1)
    {
      goto LABEL_17;
    }

    v12 = **(Phase::Logger::GetInstance(Instance) + 544);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(v11 + 2) description];
      v14 = v13;
      v15 = [v13 cStringUsingEncoding:4];
      *buf = 136316162;
      *&buf[4] = "AudioIOBase.mm";
      v31 = 1024;
      v32 = 354;
      v33 = 2048;
      *v34 = this;
      *&v34[8] = 1024;
      *&v34[10] = v5;
      v35 = 2080;
      v36 = v15;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: element[%d] format = %s", buf, 0x2Cu);
    }

    if (!*(v11 + 13) || *(v11 + 3) <= 0.0)
    {
      v24 = **(Phase::Logger::GetInstance(v16) + 544);
      v25 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v11 + 1);
        *buf = 136315650;
        *&buf[4] = "AudioIOBase.mm";
        v31 = 1024;
        v32 = 372;
        v33 = 1024;
        *v34 = v26;
        _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: ERROR: invalid capture format!", buf, 0x18u);
      }

LABEL_17:
      Instance = Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::StopCaptures(&v7[88 * v5]);
      goto LABEL_18;
    }

    Phase::Logger::CreateAudioCapturer(buf, v9, v11 + 24);
    v17 = *buf;
    *buf = 0;
    v18 = *(v11 + 10);
    *(v11 + 10) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
      v19 = *buf;
      *buf = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      v17 = *(v11 + 10);
    }

    if (v17)
    {
      v20 = (*(*v17 + 64))(v17, 10000);
      v21 = **(Phase::Logger::GetInstance(v20) + 544);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v11 + 1);
        v23 = (*(**(v11 + 10) + 56))(*(v11 + 10));
        *buf = 136315906;
        *&buf[4] = "AudioIOBase.mm";
        v31 = 1024;
        v32 = 380;
        v33 = 1024;
        *v34 = v22;
        *&v34[4] = 2080;
        *&v34[6] = v23;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: writing capture to %s", buf, 0x22u);
      }
    }

    else
    {
      v27 = **(Phase::Logger::GetInstance(0) + 544);
      v28 = v27;
      Instance = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (Instance)
      {
        v29 = *(v11 + 1);
        *buf = 136315650;
        *&buf[4] = "AudioIOBase.mm";
        v31 = 1024;
        v32 = 384;
        v33 = 1024;
        *v34 = v29;
        _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: Error: could not create capture file!", buf, 0x18u);
      }
    }

LABEL_18:
    v8 = 0;
    v9 = "audioio-in";
    v5 = 1;
  }

  while ((v10 & 1) != 0);
}

Phase::Logger *Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::StopCaptures(Phase::Logger *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 10))
  {
    v1 = this;
    v2 = **(Phase::Logger::GetInstance(this) + 544);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 1);
      v4 = 136315650;
      v5 = "AudioIOBase.mm";
      v6 = 1024;
      v7 = 392;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio[%d]: stopping capture", &v4, 0x18u);
    }

    this = *(v1 + 10);
    *(v1 + 10) = 0;
    if (this)
    {
      return (*(*this + 8))(this);
    }
  }

  return this;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(uint64_t this, const AudioTimeStamp *a2, uint64_t a3, const AudioBufferList *a4)
{
  v4 = *(this + 80);
  if (v4)
  {
    (*(*v4 + 24))(*(this + 80), a3, a4, 0);
    mHostTime = a2->mHostTime;
    mSampleTime = a2->mSampleTime;
    v9 = *(*v4 + 72);

    return v9(v4, mHostTime, mSampleTime, a3);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AudioChannelDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::~IOConfiguration(Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<Phase::Controller::SpeechDetector>::reset[abi:ne200100](this + 8, 0);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::AudioIOPlatformAdapter(uint64_t a1, Phase::Controller::VoiceManager *a2, void *a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  Phase::Controller::SystemAudioIO::AudioIOBase::AudioIOBase(a1, a2);
  *a1 = &unk_284D2F918;
  *(a1 + 336) = a4;
  v8 = v7;
  *(a1 + 344) = v8;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  v9 = 0;
  *(a1 + 448) = malloc_type_malloc(0x1E0uLL, 0x108004068AA72D0uLL);
  do
  {
    v10 = *(a1 + 448);
    v11 = malloc_type_malloc(0x200uLL, 0x100004052888210uLL);
    v12 = v10 + v9;
    *v12 = v11;
    *(v12 + 8) = 128;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v11[30] = 0u;
    v11[31] = 0u;
    v11[28] = 0u;
    v11[29] = 0u;
    v11[26] = 0u;
    v11[27] = 0u;
    v11[24] = 0u;
    v11[25] = 0u;
    v11[22] = 0u;
    v11[23] = 0u;
    v11[20] = 0u;
    v11[21] = 0u;
    v11[18] = 0u;
    v11[19] = 0u;
    v11[16] = 0u;
    v11[17] = 0u;
    v11[14] = 0u;
    v11[15] = 0u;
    v11[12] = 0u;
    v11[13] = 0u;
    v11[10] = 0u;
    v11[11] = 0u;
    v11[8] = 0u;
    v11[9] = 0u;
    v11[6] = 0u;
    v11[7] = 0u;
    v11[4] = 0u;
    v11[5] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    v9 += 40;
    *v11 = 0u;
    v11[1] = 0u;
  }

  while (v9 != 480);
  if (_MergedGlobals_12 != -1)
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global);
  }

  if (off_27DF97878)
  {
    v13 = off_27DF97878();
    v14 = _MergedGlobals_12;
    *(a1 + 440) = v13;
    if (v14 != -1)
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global);
    }
  }

  else
  {
    v13 = 0;
    *(a1 + 440) = 0;
  }

  if (off_27DF978A0)
  {
    off_27DF978A0(v13, 0);
  }

  v19 = *(a1 + 440);
  memset(__p, 0, 24);
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(__p, &v19, &v20, 1uLL);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v15 = AudioIssueDetectorLibraryLoader(void)::libSym(8, __p);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 424) = v15;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
    v15 = *(a1 + 424);
  }

  if (!v15)
  {
    v16 = **(Phase::Logger::GetInstance(0) + 544);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "AudioIOPlatformAdapter.mm";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 52;
      WORD1(__p[2]) = 2048;
      *(&__p[2] + 4) = a1;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to create AID", __p, 0x1Cu);
    }
  }

  return a1;
}

void sub_23A3264E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  std::optional<CA::AudioBuffersDeprecated>::~optional(v10 + 400);
  v13 = *(v10 + 376);
  if (v13)
  {
    *(v10 + 384) = v13;
    operator delete(v13);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(v10);
  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(Phase::Controller::SystemAudioIO::AudioIOBase *this)
{
  v2 = 0;
  *this = &unk_284D2F870;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 320);
    *(this + v2 + 320) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v3 + 38);
    *(v3 + 38) = 0;
    if (v5)
    {
      std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v5, 0);
      std::unique_ptr<Phase::Controller::SpeechDetector::SpeechDetectorImpl>::reset[abi:ne200100](v5, 0);
      MEMORY[0x23EE864A0](v5, 0x20C4093837F09);
    }

    v2 -= 88;
  }

  while (v2 != -176);
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::~AudioIOPlatformAdapter(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  v2 = 0;
  *this = &unk_284D2F918;
  do
  {
    free(*(*(this + 56) + v2));
    v2 += 40;
  }

  while (v2 != 480);
  free(*(this + 56));
  (*(*this + 32))(this);
  v3 = *(this + 53);
  if (v3)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
    }

    if (off_27DF94D18)
    {
      off_27DF94D18(v3);
    }

    *(this + 53) = 0;
  }

  v4 = *(this + 55);
  if (v4)
  {
    if (_MergedGlobals_12 != -1)
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global);
    }

    if (off_27DF978D0)
    {
      off_27DF978D0(v4);
    }

    *(this + 55) = 0;
  }

  if (*(this + 408) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  v5 = *(this + 47);
  if (v5)
  {
    *(this + 48) = v5;
    operator delete(v5);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(this);
}

{
  Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::~AudioIOPlatformAdapter(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::EnableBus(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this, unsigned int a2, char a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v23 = a3;
  if (*(this + 352))
  {
    return 4294956447;
  }

  v6 = this + 88 * a2;
  v9 = v6[152];
  v7 = v6 + 152;
  v8 = v9;
  *v7 = a3;
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    v22 = a2 == 1;
    v11 = [objc_opt_class() instanceMethodSignatureForSelector:sel_enableIO_direction_];
    v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v11];
    [v12 setTarget:*(this + 43)];
    [v12 setSelector:sel_enableIO_direction_];
    [v12 setArgument:&v23 atIndex:2];
    [v12 setArgument:&v22 atIndex:3];
    [v12 invoke];
    v21 = 0;
    v13 = [v12 getReturnValue:&v21];
    if ((v21 & 1) == 0)
    {
      *v7 = v8;
      v14 = **(Phase::Logger::GetInstance(v13) + 544);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *v7;
        if (v23)
        {
          v16 = "enable";
        }

        else
        {
          v16 = "disable";
        }

        *buf = 136316418;
        v25 = "AudioIOPlatformAdapter.mm";
        v26 = 1024;
        v27 = 119;
        v28 = 2048;
        v29 = this;
        v30 = 2080;
        v31 = v16;
        v32 = 1024;
        v33 = a2;
        v34 = 1024;
        v35 = v15;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: could not %s bus %d, final state %d", buf, 0x32u);
      }
    }
  }

  v17 = **(Phase::Logger::GetInstance(v10) + 544);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v18)
  {
    v19 = *v7;
    v20 = "disabled";
    v25 = "AudioIOPlatformAdapter.mm";
    *buf = 136316162;
    v26 = 1024;
    if (v19)
    {
      v20 = "enabled";
    }

    v27 = 124;
    v28 = 2048;
    v29 = this;
    v30 = 2080;
    v31 = v20;
    v32 = 1024;
    v33 = a2;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: %s bus %d for Audio IO", buf, 0x2Cu);
    return 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Initialize(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  v93 = *MEMORY[0x277D85DE8];
  if (*(this + 352))
  {
    return 0;
  }

  if (*(this + 240) == 1)
  {
    v4 = (*(*this + 144))(this, 1);
    if (v4)
    {
      v2 = v4;
      v5 = **(Phase::Logger::GetInstance(v4) + 544);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      v6 = *(this + 43);
      *buf = 136316162;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 147;
      v89 = 2048;
      v90 = this;
      v91 = 2080;
      *v92 = "input";
      *&v92[8] = 2048;
      *&v92[10] = v6;
LABEL_31:
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: could not get %s HW format from platform@%p, initialize failed!", buf, 0x30u);
      return v2;
    }

    v7 = *(this + 32);
    if (!Phase::Controller::SystemAudioIO::IsValidFormat(v7, v8))
    {
      std::terminate();
    }

    [*(this + 43) bufferFrameSize];
    [(Phase::Controller::SystemAudioIO *)v7 channelCount];
    std::__optional_destruct_base<CA::AudioBuffersDeprecated,false>::reset[abi:ne200100](this + 400);
    v9 = ExtendedAudioBufferList_Create();
    v10 = CA::AudioBuffersBase::AudioBuffersBase(this + 50, v9, 1);
    *(this + 408) = 1;
    v11 = **(Phase::Logger::GetInstance(v10) + 544);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v12 = [(Phase::Controller::SystemAudioIO *)v7 streamDescription];
        v13 = *v12;
        v14 = *(v12 + 16);
        v86 = *(v12 + 32);
        v84 = v13;
        v85 = v14;
        CA::StreamDescription::AsString(&v87, &v84, v15, *&v14);
        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v87;
        }

        else
        {
          v16 = v87.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v16 = "invalid";
      }

      v17 = [(Phase::Controller::SystemAudioIO *)v7 channelLayout];
      v18 = [v17 layout];
      if (v18)
      {
        v1 = [(Phase::Controller::SystemAudioIO *)v7 channelLayout];
        Phase::ChannelLayout::GetStringDescription(__p, [v1 layout]);
        if (v83 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }
      }

      else
      {
        v19 = "None";
      }

      *buf = 136316162;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      v89 = 2048;
      v90 = this;
      v91 = 2080;
      *v92 = v16;
      *&v92[8] = 2080;
      *&v92[10] = v19;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: initialize: input asbd <%s>, channel layout: \n%s", buf, 0x30u);
      if (v18)
      {
        if (v83 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v7 && SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(this + 152) == 1)
  {
    v20 = (*(*this + 144))(this, 0);
    v2 = v20;
    if (v20)
    {
      v5 = **(Phase::Logger::GetInstance(v20) + 544);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      v21 = *(this + 43);
      *buf = 136316162;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 176;
      v89 = 2048;
      v90 = this;
      v91 = 2080;
      *v92 = "output";
      *&v92[8] = 2048;
      *&v92[10] = v21;
      goto LABEL_31;
    }

    v22 = (*(*this + 88))(this);
    *(this + 45) = Phase::Controller::SystemAudioIO::GetRenderedChannels(v22, v23);
    if (v22)
    {
      v24 = [(Phase::Controller::SystemAudioIO *)v22 layout];
      v25 = v24[2];
      if (v25 <= 1)
      {
        v25 = 1;
      }

      std::vector<char>::vector[abi:ne200100](buf, 20 * v25 + 12);
      memcpy(*buf, v24, 20 * v24[2] + 12);
      *(this + 92) = Phase::ChannelLayout::GetNumActiveChannels(buf, *(this + 45));
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    else
    {
      *(this + 92) = 0;
    }

    v26 = 0;
    *(this + 48) = *(this + 47);
    while (1)
    {
      v27 = (*(*this + 80))(this);
      if (v26 >= v27)
      {
        break;
      }

      if ((*(this + 45) >> v26))
      {
        v29 = *(this + 48);
        v28 = *(this + 49);
        if (v29 >= v28)
        {
          v31 = *(this + 47);
          v32 = v29 - v31;
          v33 = (v29 - v31) >> 2;
          v34 = v33 + 1;
          if ((v33 + 1) >> 62)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v35 = v28 - v31;
          if (v35 >> 1 > v34)
          {
            v34 = v35 >> 1;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v36 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 376, v36);
          }

          v37 = (v29 - v31) >> 2;
          v38 = (4 * v33);
          v39 = (4 * v33 - 4 * v37);
          *v38 = v26;
          v30 = v38 + 1;
          memcpy(v39, v31, v32);
          v40 = *(this + 47);
          *(this + 47) = v39;
          *(this + 48) = v30;
          *(this + 49) = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = v26;
          v30 = v29 + 4;
        }

        *(this + 48) = v30;
      }

      ++v26;
    }

    if (*(this + 92) == (*(this + 48) - *(this + 47)) >> 2)
    {
      v41 = *(this + 21);
      IsValidFormat = Phase::Controller::SystemAudioIO::IsValidFormat(v41, v42);
      if (IsValidFormat)
      {
        v44 = *(this + 55);
        if (v44)
        {
          AudioStatisticsStartReporter(v44);
        }

        v45 = *(this + 53);
        if (!v45)
        {
          goto LABEL_78;
        }

        AudioIssueDetectorClientReset(v45);
        v46 = *(this + 53);
        BYTE3(v90) = 16;
        strcpy(buf, "phase-spatialout");
        v47 = [(Phase::Controller::SystemAudioIO *)v41 streamDescription];
        v48 = (*(*this + 112))(this);
        v49 = AudioIssueDetectorClientSetNodeFormatWithDirection(v46, buf, v47, v48);
        v50 = v49;
        if (SBYTE3(v90) < 0)
        {
          operator delete(*buf);
        }

        if (v50)
        {
          v51 = **(Phase::Logger::GetInstance(v49) + 544);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = [(Phase::Controller::SystemAudioIO *)v41 description];
            v53 = v52;
            v54 = [v52 UTF8String];
            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 234;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v54;
            *&v92[8] = 1024;
            *&v92[10] = v50;
            _os_log_impl(&dword_23A302000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to set format for AID node with format %s, err = %d", buf, 0x2Cu);
          }
        }

        else
        {
          v45 = AudioIssueDetectorClientInitialize(*(this + 53));
          v59 = v45;
          if (!v45)
          {
            *(this + 432) = 1;
            goto LABEL_78;
          }

          v51 = **(Phase::Logger::GetInstance(v45) + 544);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v60 = [(Phase::Controller::SystemAudioIO *)v41 description];
            v61 = v60;
            v62 = [v60 UTF8String];
            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 243;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v62;
            *&v92[8] = 1024;
            *&v92[10] = v59;
            _os_log_impl(&dword_23A302000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to initialize AID node with format %s, err = %d", buf, 0x2Cu);
          }
        }

LABEL_78:
        v63 = **(Phase::Logger::GetInstance(v45) + 544);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          if (v41)
          {
            v64 = [(Phase::Controller::SystemAudioIO *)v41 streamDescription];
            v65 = *v64;
            v66 = *(v64 + 16);
            v86 = *(v64 + 32);
            v84 = v65;
            v85 = v66;
            v67 = &v81;
            CA::StreamDescription::AsString(&v81, &v84, v68, *&v66);
            if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v67 = v81.__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            v67 = "invalid";
          }

          if (v22)
          {
            Phase::ChannelLayout::GetStringDescription(v79, [(Phase::Controller::SystemAudioIO *)v22 layout]);
            if (v80 >= 0)
            {
              v69 = v79;
            }

            else
            {
              v69 = v79[0];
            }

            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 255;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v67;
            *&v92[8] = 2080;
            *&v92[10] = v69;
            _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: initialize: output asbd <%s>, channel layout: \n%s", buf, 0x30u);
            if (v80 < 0)
            {
              operator delete(v79[0]);
            }
          }

          else
          {
            *buf = 136316162;
            *&buf[4] = "AudioIOPlatformAdapter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 255;
            v89 = 2048;
            v90 = this;
            v91 = 2080;
            *v92 = v67;
            *&v92[8] = 2080;
            *&v92[10] = "None";
            _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: initialize: output asbd <%s>, channel layout: \n%s", buf, 0x30u);
          }

          if (v41 && SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_95;
      }

      v58 = **(Phase::Logger::GetInstance(IsValidFormat) + 544);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioIOPlatformAdapter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 207;
        v89 = 2048;
        v90 = this;
        _os_log_impl(&dword_23A302000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: output channel format not valid, initialize failed!", buf, 0x1Cu);
      }
    }

    else
    {
      v55 = **(Phase::Logger::GetInstance(v27) + 544);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *(this + 92);
        v57 = (*(this + 48) - *(this + 47)) >> 2;
        *buf = 136316162;
        *&buf[4] = "AudioIOPlatformAdapter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 199;
        v89 = 2048;
        v90 = this;
        v91 = 1024;
        *v92 = v56;
        *&v92[4] = 2048;
        *&v92[6] = v57;
        _os_log_impl(&dword_23A302000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: output channel count %d does not match the active channel count %zu, initialize failed!", buf, 0x2Cu);
      }
    }

    return 4294956428;
  }

LABEL_95:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e333_v48__0r__PHASEIOCycleInfo__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_Q_8Q16__PHASEIOStream__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_IB__AudioBufferList__24Q32__PHASEIOStream__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_IB__AudioBufferList__40l;
  aBlock[4] = this;
  v70 = _Block_copy(aBlock);
  v71 = [*(this + 43) registerIOBlock:v70];
  v72 = v71;
  if ((v71 & 1) == 0)
  {
    v73 = **(Phase::Logger::GetInstance(v71) + 544);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = *(this + 43);
      *buf = 136315906;
      *&buf[4] = "AudioIOPlatformAdapter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 274;
      v89 = 2048;
      v90 = this;
      v91 = 2048;
      *v92 = v74;
      _os_log_impl(&dword_23A302000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: could not set IO block on platform@%p, initialize failed!", buf, 0x26u);
    }
  }

  *(this + 352) = v72;
  v75 = *(this + 43);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke_11;
  v77[3] = &__block_descriptor_40_e32_v16__0___PHASERouteChangeInfo__8l;
  v77[4] = this;
  [v75 registerRouteChangeNotification:v77];
  if (v72)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4294956433;
  }

  return v2;
}

void CA::StreamDescription::AsString(std::string *__return_ptr a1@<X8>, CA::StreamDescription *this@<X0>, const char *a3@<X1>, int8x8_t a4@<D1>)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string(a1, "%2u ch, %6.0f Hz, 'freq'", a3, *(this + 7), *this);
    return;
  }

  if (v6 == 1819304813 && *(this + 5) == 1)
  {
    v7 = *(this + 6);
    if (v7 == *(this + 4))
    {
      v8 = *(this + 8);
      if (v7 >= v8 >> 3)
      {
        v9 = *(this + 7);
        if (v9)
        {
          v10 = *(this + 3);
          if ((v10 & 0x20) == 0)
          {
            if (v7 % v9)
            {
              goto LABEL_19;
            }

            v7 /= v9;
          }

          if ((v10 & 2) == 0 && 8 * v7 == v8)
          {
            if (v10)
            {
              if ((v10 & 0x1F84) == 0)
              {
                if (v7 == 4)
                {
                  v12 = 1;
                  goto LABEL_162;
                }

                if (v7 == 8)
                {
                  v12 = 4;
                  goto LABEL_162;
                }
              }
            }

            else if ((v10 & 4) != 0)
            {
              v11 = (v10 >> 7) & 0x3F;
              if (v11 == 24 && v7 == 4)
              {
                v12 = 3;
LABEL_162:
                if ((v10 & 0x20) != 0)
                {
                  v56 = ", deinterleaved";
                }

                else
                {
                  v56 = ", interleaved";
                }

                if (v9 == 1)
                {
                  v56 = "";
                }

                caulk::make_string(a1, "%2u ch, %6.0f Hz, %s%s", a3, v9, *this, *(&off_278B4EC88 + v12), v56);
                return;
              }

              if (!v11 && v7 == 4)
              {
                v12 = 5;
                goto LABEL_162;
              }

              if (!v11 && v7 == 2)
              {
                v12 = 2;
                goto LABEL_162;
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  v13 = *(this + 7);
  v14 = *this;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6 == 0;
  }

  if (v15 && v14 == 0.0)
  {
    caulk::make_string(a1, "%2u ch, %6.0f Hz", a3, 0, *this);
    return;
  }

  a4.i32[0] = bswap32(v6);
  v16 = vzip1_s8(a4, *&v14);
  v17.i64[0] = 0x1F0000001FLL;
  v17.i64[1] = 0x1F0000001FLL;
  v18.i64[0] = 0x5F0000005FLL;
  v18.i64[1] = 0x5F0000005FLL;
  *(&v60.__r_.__value_.__s + 23) = 4;
  LODWORD(v60.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
  v60.__r_.__value_.__s.__data_[4] = 0;
  caulk::make_string(&v58, "%2u ch, %6.0f Hz, %s (0x%08X) ", a3, v13, *&v14, &v60, *(this + 3));
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v20 = *(this + 2);
  if (v20 <= 1819304812)
  {
    if (v20 != 1634492771 && v20 != 1634497332 && v20 != 1718378851)
    {
LABEL_70:
      caulk::make_string(&v60, "%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", v19, *(this + 8), *(this + 4), *(this + 5), *(this + 6));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v58;
      }

      else
      {
        v33 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

LABEL_62:
      v35 = std::string::insert(&v60, 0, v33, size);
      v36 = *&v35->__r_.__value_.__l.__data_;
      a1->__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&a1->__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v37 = v60.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_45:
    v29 = *(this + 3);
    if ((v29 - 1) < 4 || !v29 && (v20 == 1634497332 || v20 == 1936487278 || v20 == 1936487267))
    {
      caulk::make_string(&v60, "from %u-bit source, ", v19, CA::StreamDescription::AsString(void)const::kSourceBits[v29]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v60;
      }

      else
      {
        v30 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = v60.__r_.__value_.__l.__size_;
      }

      std::string::append(&v58, v30, v31);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v58, "from UNKNOWN source bit depth, ", 0x1FuLL);
    }

    caulk::make_string(&v60, "%u frames/packet", v32, *(this + 5));
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v58;
    }

    else
    {
      v33 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    goto LABEL_62;
  }

  if (v20 == 1936487278 || v20 == 1936487267)
  {
    goto LABEL_45;
  }

  if (v20 != 1819304813)
  {
    goto LABEL_70;
  }

  v21 = *(this + 3);
  v22 = *(this + 6);
  v23 = v21 & 0x20;
  v24 = "";
  if (!v22)
  {
    goto LABEL_37;
  }

  if ((v21 & 0x20) != 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = *(this + 7);
    if (!v25)
    {
      v23 = 0;
LABEL_37:
      v26 = " signed";
      if ((v21 & 4) == 0)
      {
        v26 = " unsigned";
      }

      if (v21)
      {
        v27 = "float";
      }

      else
      {
        v27 = "integer";
      }

      if (v21)
      {
        v28 = "";
      }

      else
      {
        v28 = v26;
      }

LABEL_102:
      v60.__r_.__value_.__s.__data_[0] = 0;
      if (v23)
      {
        v42 = ", deinterleaved";
      }

      else
      {
        v42 = "";
      }

      v39 = "";
      v43 = "";
      goto LABEL_106;
    }
  }

  v38 = v22 / v25;
  if (v22 / v25 < 2)
  {
    v41 = " signed";
    if ((v21 & 4) == 0)
    {
      v41 = " unsigned";
    }

    if (v21)
    {
      v27 = "float";
    }

    else
    {
      v27 = "integer";
    }

    if (v21)
    {
      v28 = "";
    }

    else
    {
      v28 = v41;
    }

    if (v25 > v22)
    {
      goto LABEL_102;
    }

    v38 = 1;
    v39 = "";
  }

  else
  {
    if ((v21 & 2) != 0)
    {
      v39 = " big-endian";
    }

    else
    {
      v39 = " little-endian";
    }

    v40 = " unsigned";
    if ((v21 & 4) != 0)
    {
      v40 = " signed";
    }

    if (v21)
    {
      v27 = "float";
    }

    else
    {
      v27 = "integer";
    }

    if (v21)
    {
      v28 = "";
    }

    else
    {
      v28 = v40;
    }
  }

  v44 = *(this + 7);
  if ((v21 & 0x20) != 0)
  {
    v45 = 1;
  }

  else
  {
    v45 = *(this + 7);
  }

  if (v45)
  {
    v45 = 8 * (v22 / v45);
  }

  if (v45 == *(this + 8))
  {
    v60.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if ((v21 & 8) != 0)
    {
      v46 = "";
    }

    else
    {
      v46 = "un";
    }

    snprintf(&v60, 0x20uLL, "%spacked in %u bytes", v46, v38);
    v22 = *(this + 6);
    v21 = *(this + 3);
    if (!v22)
    {
      v47 = 0;
      v23 = *(this + 3) & 0x20;
      goto LABEL_128;
    }

    v44 = *(this + 7);
    v23 = *(this + 3) & 0x20;
  }

  if (v23)
  {
    v47 = 1;
  }

  else
  {
    v47 = v44;
  }

  if (v47)
  {
    v47 = 8 * (v22 / v47);
  }

LABEL_128:
  v48 = *(this + 8);
  v49 = " high-aligned";
  if ((v21 & 0x10) == 0)
  {
    v49 = " low-aligned";
  }

  if ((v48 & 7) == 0 && v47 == v48)
  {
    v43 = "";
  }

  else
  {
    v43 = v49;
  }

  if (v23)
  {
    v42 = ", deinterleaved";
  }

  else
  {
    v42 = "";
  }

  if (v60.__r_.__value_.__s.__data_[0])
  {
    v24 = ", ";
    goto LABEL_141;
  }

LABEL_106:
  if (*v43)
  {
    v24 = ", ";
  }

LABEL_141:
  if (((v21 >> 7) & 0x3F) != 0)
  {
    snprintf(__str, 0x14uLL, "%u.%u");
  }

  else
  {
    snprintf(__str, 0x14uLL, "%u");
  }

  caulk::make_string(&v57, "%s-bit%s%s %s%s%s%s%s", v51, __str, v39, v28, v27, v24, &v60, v43, v42);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v58;
  }

  else
  {
    v52 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v58.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(&v57, 0, v52, v53);
  v55 = *&v54->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    v37 = v57.__r_.__value_.__r.__words[0];
LABEL_64:
    operator delete(v37);
  }

LABEL_65:
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_23A327F0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AudioStatisticsStartReporter(uint64_t a1)
{
  if (_MergedGlobals_12 != -1)
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global);
  }

  if (off_27DF97890)
  {
    v2 = off_27DF97890;

    v2(a1);
  }
}

void AudioIssueDetectorClientReset(uint64_t a1)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (off_27DF94D30)
  {
    v2 = off_27DF94D30;

    v2(a1);
  }
}

uint64_t AudioIssueDetectorClientSetNodeFormatWithDirection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (!off_27DF94D28)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = off_27DF94D28;

  return v8(a1, a2, 2, 1, a3, a4);
}

uint64_t AudioIssueDetectorClientInitialize(uint64_t a1)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (!off_27DF94D10)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = off_27DF94D10;

  return v2(a1);
}

void ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __s[32] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  if (atomic_load((v11 + 144)))
  {
    v13 = 0;
    if (a3 && a4)
    {
      v13 = *(a4 + 64);
    }

    kdebug_trace();
    v14 = _os_log_pack_size();
    Instance = Phase::Logger::GetInstance(v14);
    message = caulk::deferred_logger::create_message(*(Instance + 1248), v14 + 88, 0);
    if (message)
    {
      v17 = _os_log_pack_fill(message + 40, v14, 0, &dword_23A302000, "AudioIOPlatformAdapter: skipping IO input cycle at host time %llu for %u frames", v168, v169);
      v18 = *(a2 + 72);
      *v17 = 134218240;
      *(v17 + 4) = v18;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v13;
      Phase::Logger::GetInstance(v17);
      caulk::concurrent::messenger::enqueue();
    }
  }

  else if (*(v11 + 240) == 1 && a4 && a3 && (*(v11 + 408) & 1) != 0)
  {
    if ((*(a2 + 120) & 3) != 0)
    {
      v19 = (a2 + 64);
      kdebug_trace();
      v20 = *(a4 + 72);
      v21 = *v20;
      if (v21 == 1)
      {
        LODWORD(__s[0]) = 0;
        if (*(v11 + 304) && caulk::pooled_semaphore_mutex::try_lock((v11 + 312)))
        {
          v22 = *(v11 + 304);
          if (v22 && *v22)
          {
            Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(*v22, *(a4 + 72), __s);
          }

          caulk::pooled_semaphore_mutex::_unlock((v11 + 312));
        }

        Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(*(v11 + 8));
      }

      else
      {
        v23 = a6;
        v24 = *(v11 + 400);
        if (v21)
        {
          v25 = 0;
          v26 = v20 + 2;
          v27 = *(v24 + 64);
          v28 = *(a4 + 64);
          do
          {
            if (v28)
            {
              v29 = *&v26[4 * v25 + 2];
              v30 = v27;
              v31 = v28;
              do
              {
                v32 = *v29++;
                *v30 = v32;
                v30 += v21;
                --v31;
              }

              while (v31);
            }

            ++v25;
            ++v27;
          }

          while (v25 != v21);
        }

        LODWORD(__s[0]) = 0;
        if (*(v11 + 304) && caulk::pooled_semaphore_mutex::try_lock((v11 + 312)))
        {
          v33 = *(v11 + 304);
          if (v33 && *v33)
          {
            Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(*v33, (v24 + 48), __s);
          }

          caulk::pooled_semaphore_mutex::_unlock((v11 + 312));
        }

        Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(*(v11 + 8));
        a6 = v23;
      }

      v34 = Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(v11 + 240, v19, *(a4 + 64), *(a4 + 72));
      if (*(Phase::Logger::GetInstance(v34) + 1632) == 1)
      {
        v35 = *(v11 + 336);
        Phase::Trace::PostSignalStatsTraceIfSignificant(5663, *(*(a4 + 72) + 16), *(a4 + 64), v35);
      }

      kdebug_trace();
    }

    else
    {
      __s[0] = *(a1 + 32);
      Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&>(v11, "audioio@%p: error: invalid input timestamp, flags 0x%x", __s, (a2 + 120));
    }
  }

  if (!a6)
  {
    return;
  }

  if (!a5)
  {
    return;
  }

  v36 = *(a1 + 32);
  if ((*(v36 + 152) & 1) == 0)
  {
    return;
  }

  v37 = *(a6 + 72);
  if (!v37)
  {
    v38 = 0xFFFFFFFFLL;
    goto LABEL_52;
  }

  v38 = *v37;
  if (!v38 || !*(v37 + 2))
  {
LABEL_52:
    strcpy(__s, "(%d): ");
    strcat(__s, "audioio@%p: invalid output ABL: %p / %d / %p");
    ShouldFire = Phase::Throttle::ShouldFire((v36 + 16), 0);
    if (ShouldFire)
    {
      v45 = snprintf(__str, 0x100uLL, __s, ShouldFire, v36, v37, v38, 0);
      v46 = **(Phase::Logger::GetInstance(v45) + 544);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v177 = "AudioIOBase.hpp";
        v178 = 1024;
        v179 = 133;
        v180 = 2080;
        v181 = __str;
        _os_log_impl(&dword_23A302000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }
    }

    return;
  }

  if ((*(a2 + 184) & 3) == 0)
  {
    __s[0] = v36;
    Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&>(v36, "audioio@%p: error: invalid output timestamp, flags 0x%x", __s, (a2 + 184));
    return;
  }

  if ((*(v36 + 104) & 1) == 0)
  {
    v39 = *(a2 + 128);
    v40 = *(a2 + 144);
    v41 = *(a2 + 160);
    *(v36 + 88) = *(a2 + 176);
    *(v36 + 72) = v41;
    *(v36 + 56) = v40;
    *(v36 + 40) = v39;
    *(v36 + 104) = 1;
    LODWORD(v38) = *v37;
  }

  *__str = v37[2 * (v38 == 1)];
  if (atomic_load((v36 + 144)))
  {
    v43 = *(a6 + 64);
    *(a6 + 68) = 1;
    if (v38 == 1)
    {
      bzero(*(v37 + 2), v37[3]);
    }

    else
    {
      v48 = *__str;
      if (*__str)
      {
        v49 = (v37 + 4);
        do
        {
          bzero(*v49, *(v49 - 1));
          v49 += 2;
          --v48;
        }

        while (v48);
      }
    }

    kdebug_trace();
    v50 = _os_log_pack_size();
    v51 = Phase::Logger::GetInstance(v50);
    v52 = caulk::deferred_logger::create_message(*(v51 + 1248), v50 + 88, 0);
    if (v52)
    {
      v53 = _os_log_pack_fill(v52 + 40, v50, 0, &dword_23A302000, "AudioIOPlatformAdapter: skipping IO output cycle at host time %llu for %u frames", v168, v169);
      v54 = *(a2 + 136);
      *v53 = 134218240;
      *(v53 + 4) = v54;
      *(v53 + 12) = 1024;
      *(v53 + 14) = v43;
      Phase::Logger::GetInstance(v53);
      caulk::concurrent::messenger::enqueue();
    }

    return;
  }

  v47 = *__str;
  if (*__str < *(v36 + 368))
  {
    __s[0] = v36;
    Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&,int &>(v36, __s, __str, (v36 + 368));
    return;
  }

  v171 = *__str;
  v172 = (a2 + 128);
  *(v36 + 416) = *(a6 + 64);
  if (*(v36 + 136) == 1)
  {
    v55 = mach_absolute_time();
    v56 = *(v36 + 128);
    v57 = (*(*v36 + 104))(v36);
    v58 = _os_log_pack_size();
    v59 = Phase::Logger::GetInstance(v58);
    v60 = caulk::deferred_logger::create_message(*(v59 + 1248), v58 + 88, 0);
    if (v60)
    {
      v61 = _os_log_pack_fill(v60 + 40, v58, 0, &dword_23A302000, "AudioIOPlatformAdapter: skipped flushing %u frames at IO resume.", v168);
      *v61 = 67109120;
      *(v61 + 1) = ((v55 - v56) * 0.0000000416666667 * v57);
      Phase::Logger::GetInstance(v61);
      caulk::concurrent::messenger::enqueue();
    }

    v47 = v171;
    if (*(v36 + 136) == 1)
    {
      *(v36 + 136) = 0;
    }
  }

  kdebug_trace();
  Phase::Controller::VoiceManager::Implementation::IOSetCurrentTimeStampAndFramesToRender(**(v36 + 8), v172, *(a6 + 64));
  Phase::Controller::VoiceManager::IOExecuteRealtimeActions(*(v36 + 8), v172);
  if (v38 != 1)
  {
    v66 = *(**(**(v36 + 8) + 696) + 184);
    v67 = *(v66 + 24);
    v68 = v47;
    if (v47 > v67)
    {
      v69 = &v37[4 * v67 + 4];
      v70 = *(v66 + 24);
      do
      {
        bzero(*v69, *(v69 - 1));
        ++v70;
        v69 += 2;
      }

      while (v47 > v70);
      v66 = *(**(**(v36 + 8) + 696) + 184);
      v68 = v67;
    }

    v173 = *(v66 + 72);
    v71 = *(a6 + 64);
    v175 = v68;
    v170 = a6;
    if (v68 != 2)
    {
      if (v68 == 1)
      {
        v72 = 0;
        v73 = *(v37 + 2);
        while (1)
        {
          v74 = *(v36 + 448);
          v75 = *(v74 + 16);
          v76 = *(v74 + 24);
          v77 = v76 - v75;
          if (v76 >= v75)
          {
            if (v76 > v75)
            {
              if (!v71)
              {
                goto LABEL_97;
              }

              goto LABEL_90;
            }

            if ((*(v74 + 32) & 1) == 0)
            {
              goto LABEL_97;
            }

            v76 = *(v74 + 8);
            v78 = v76 == 0;
          }

          else
          {
            v76 = *(v74 + 8);
            v78 = v77 + v76 == 0;
          }

          if (v78 || v71 == 0)
          {
LABEL_97:
            while (v71 >= v173)
            {
              v84 = *(**(v36 + 8) + 696);
              v85 = *v84;
              Phase::Controller::DVM_RT::Update(*(*v84 + 168));
              memcpy((v73 + 4 * v72), **(*(v85 + 184) + 40), 4 * v173);
              v71 -= v173;
              v72 += v173;
            }

            if (v71)
            {
              v86 = *(**(v36 + 8) + 696);
              v87 = *v86;
              Phase::Controller::DVM_RT::Update(*(*v86 + 168));
              v88 = *(*(v87 + 184) + 40);
              memcpy((v73 + 4 * v72), *v88, 4 * v71);
              v89 = v173 - v71;
              v90 = *(v36 + 448);
              v91 = *v88 + 4 * v71;
              goto LABEL_130;
            }

            goto LABEL_170;
          }

LABEL_90:
          v80 = v76 - v75;
          if (v80 >= v71)
          {
            v81 = v71;
          }

          else
          {
            v81 = v80;
          }

          memcpy((v73 + 4 * v72), (*v74 + 4 * v75), 4 * v81);
          v71 -= v81;
          v72 += v81;
          if (v81)
          {
            v82 = *(v36 + 448);
            v83 = *(v82 + 16) + v81;
            if (v83 == *(v82 + 8))
            {
              v83 = 0;
            }

            *(v82 + 16) = v83;
            *(v82 + 32) = 0;
          }
        }
      }

      v115 = 0;
      v116 = v68;
      v174 = v68;
      while (1)
      {
        v117 = *(v36 + 448);
        v118 = *(v117 + 16);
        v119 = *(v117 + 24);
        v120 = v119 >= v118;
        v121 = v119 - v118;
        if (v120)
        {
          if (v121 == 0 || !v120)
          {
            if (*(v117 + 32) != 1)
            {
              goto LABEL_161;
            }

            v121 = *(v117 + 8);
          }
        }

        else
        {
          v121 += *(v117 + 8);
        }

        if (v121)
        {
          v122 = v71 == 0;
        }

        else
        {
          v122 = 1;
        }

        if (v122)
        {
LABEL_161:
          while (v71 >= v173)
          {
            v135 = v115;
            v136 = *(**(v36 + 8) + 696);
            v137 = *v136;
            Phase::Controller::DVM_RT::Update(*(*v136 + 168));
            if (v175 >= 1)
            {
              v138 = *(*(v137 + 184) + 40);
              v140 = v174;
              v139 = (v37 + 4);
              do
              {
                v141 = *v139;
                v139 += 2;
                v142 = (v141 + 4 * v135);
                v143 = *v138++;
                memcpy(v142, v143, 4 * v173);
                --v140;
              }

              while (v140);
            }

            v71 -= v173;
            v115 = v135 + v173;
          }

          if (!v71)
          {
            goto LABEL_170;
          }

          v144 = *(**(v36 + 8) + 696);
          v145 = *v144;
          Phase::Controller::DVM_RT::Update(*(*v144 + 168));
          if (v175 >= 1)
          {
            v146 = 0;
            v147 = *(*(v145 + 184) + 40);
            v148 = v115;
            v149 = v71;
            v150 = 4 * v71;
            v151 = v173 - v71;
            v152 = (v37 + 4);
            v153 = v174;
            do
            {
              v154 = *v152;
              v152 += 2;
              memcpy((v154 + 4 * v148), *v147, v150);
              v155 = *v147++;
              Phase::DspLayer23::BasicReblocker<float>::Write(*(v36 + 448) + v146, &v155[4 * v149], v151);
              v146 += 40;
              --v153;
            }

            while (v153);
            goto LABEL_170;
          }

          goto LABEL_177;
        }

        if (v68 >= 1)
        {
          break;
        }

        LODWORD(v132) = 0;
LABEL_160:
        v71 -= v132;
        v115 += v132;
      }

      v123 = 0;
      v124 = v37 + 4;
      while (1)
      {
        v125 = *(v36 + 448);
        v126 = (v125 + v123);
        v127 = *(v125 + v123 + 16);
        v128 = *(v125 + v123 + 24);
        v129 = v128 - v127;
        if (v128 >= v127)
        {
          if (v128 > v127)
          {
            goto LABEL_150;
          }

          v131 = v125 + v123;
          if (*(v131 + 32) != 1)
          {
            v129 = 0;
            goto LABEL_150;
          }

          v130 = *(v131 + 8);
        }

        else
        {
          v130 = v126[1];
        }

        v129 = v130 - v127;
LABEL_150:
        if (v129 >= v71)
        {
          v132 = v71;
        }

        else
        {
          v132 = v129;
        }

        memcpy((*v124 + 4 * v115), (*v126 + 4 * v127), 4 * v132);
        if (v129)
        {
          v133 = *(v36 + 448) + v123;
          v134 = *(v133 + 16) + v132;
          if (v134 == *(v133 + 8))
          {
            v134 = 0;
          }

          *(v133 + 16) = v134;
          *(v133 + 32) = 0;
        }

        v123 += 40;
        v124 += 2;
        if (!--v116)
        {
          v68 = v175;
          v116 = v174;
          goto LABEL_160;
        }
      }
    }

    v92 = 0;
    while (1)
    {
      v93 = *(v36 + 448);
      v94 = *(v93 + 16);
      v95 = *(v93 + 24);
      v96 = v95 >= v94;
      v97 = v95 - v94;
      if (v96)
      {
        if (v97 == 0 || !v96)
        {
          if (*(v93 + 32) != 1)
          {
            goto LABEL_126;
          }

          v97 = *(v93 + 8);
        }

        v98 = v97 == 0;
      }

      else
      {
        v98 = v97 + *(v93 + 8) == 0;
      }

      if (v98 || v71 == 0)
      {
LABEL_126:
        while (v71 >= v173)
        {
          v109 = *(**(v36 + 8) + 696);
          v110 = *v109;
          Phase::Controller::DVM_RT::Update(*(*v109 + 168));
          v111 = *(*(v110 + 184) + 40);
          memcpy((*(v37 + 2) + 4 * v92), *v111, 4 * v173);
          memcpy((*(v37 + 4) + 4 * v92), v111[1], 4 * v173);
          v71 -= v173;
          v92 += v173;
        }

        if (v71)
        {
          v112 = *(**(v36 + 8) + 696);
          v113 = *v112;
          Phase::Controller::DVM_RT::Update(*(*v112 + 168));
          v114 = *(*(v113 + 184) + 40);
          memcpy((*(v37 + 2) + 4 * v92), *v114, 4 * v71);
          memcpy((*(v37 + 4) + 4 * v92), v114[1], 4 * v71);
          Phase::DspLayer23::BasicReblocker<float>::Write(*(v36 + 448), *v114 + 4 * v71, v173 - v71);
          v91 = v114[1] + 4 * v71;
          v90 = *(v36 + 448) + 40;
          v89 = v173 - v71;
LABEL_130:
          Phase::DspLayer23::BasicReblocker<float>::Write(v90, v91, v89);
        }

LABEL_170:
        if (v175 >= 1)
        {
          v156 = (v37 + 4);
          v157 = 1;
          a6 = v170;
          v158 = v171;
          do
          {
            LODWORD(__s[0]) = 0;
            vDSP_rmsqv(*v156, 1, __s, *(v170 + 64));
            v159 = *__s;
            if (v157 >= v175)
            {
              break;
            }

            ++v157;
            v156 += 2;
          }

          while (*__s < 0.000015849);
          *(v170 + 68) = *__s < 0.000015849;
          if (!v171 || v159 >= 0.000015849)
          {
            goto LABEL_180;
          }

LABEL_178:
          v160 = (v37 + 4);
          do
          {
            bzero(*v160, *(v160 - 1));
            v160 += 2;
            --v158;
          }

          while (v158);
          goto LABEL_180;
        }

LABEL_177:
        a6 = v170;
        *(v170 + 68) = 1;
        v158 = v171;
        if (!v171)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      v100 = *(v93 + 56);
      v101 = *(v93 + 64);
      v102 = v101 >= v100;
      v103 = v101 - v100;
      if (v102)
      {
        if (v103 != 0 && v102)
        {
          goto LABEL_117;
        }

        if (*(v93 + 72) != 1)
        {
          v103 = 0;
          goto LABEL_117;
        }
      }

      v103 = *(v93 + 48) - v100;
LABEL_117:
      v104 = (*(v93 + 40) + 4 * v100);
      if (v103 >= v71)
      {
        v105 = v71;
      }

      else
      {
        v105 = v103;
      }

      memcpy((*(v37 + 2) + 4 * v92), (*v93 + 4 * v94), 4 * v105);
      memcpy((*(v37 + 4) + 4 * v92), v104, 4 * v105);
      v71 -= v105;
      v92 += v105;
      if (v105)
      {
        v106 = *(v36 + 448);
        v107 = *(v106 + 16) + v105;
        if (v107 == *(v106 + 8))
        {
          v107 = 0;
        }

        *(v106 + 16) = v107;
        *(v106 + 32) = 0;
        v108 = *(v106 + 56) + v105;
        if (v108 == *(v106 + 48))
        {
          v108 = 0;
        }

        *(v106 + 56) = v108;
        *(v106 + 72) = 0;
      }
    }
  }

  bzero(*(v37 + 2), v37[3]);
  v62 = _os_log_pack_size();
  v63 = Phase::Logger::GetInstance(v62);
  v64 = caulk::deferred_logger::create_message(*(v63 + 1248), v62 + 88, 0);
  if (v64)
  {
    v65 = _os_log_pack_fill(v64 + 40, v62, 0, &dword_23A302000, "AudioIOPlatformAdapter: No implementation is provided for interleaved output. Block will be silent.");
    *v65 = 0;
    Phase::Logger::GetInstance(v65);
    caulk::concurrent::messenger::enqueue();
  }

  *(a6 + 68) = 1;
LABEL_180:
  *(v36 + 112) = mach_absolute_time();
  *(v36 + 120) = 1;
  Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(v36 + 152, v172, *(a6 + 64), v37);
  v163 = *(v36 + 424);
  if (v163)
  {
    if (*(v36 + 432) == 1)
    {
      v163 = AudioIssueDetectorClientAnalyzeBuffer(v163, v37, *(a6 + 64), v172, v161, v162);
      *buf = v163;
      if (v163)
      {
        __s[0] = v36;
        Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,int &>(v36, __s, buf);
      }
    }
  }

  if (*(Phase::Logger::GetInstance(v163) + 1632) == 1)
  {
    v164 = *(a6 + 64);
    v165 = *(v37 + 2);
    if (v164)
    {
      for (i = 0; i != v164; ++i)
      {
        if (fabsf(v165[i]) > 0.01)
        {
          break;
        }
      }
    }

    else
    {
      v164 = 0;
    }

    v167 = *(v36 + 336);
    Phase::Trace::PostSignalStatsTraceIfSignificant(5664, v165, v164, v167);
  }

  mach_absolute_time();
  __udivti3();
  kdebug_trace();
}

void ___ZN5Phase10Controller13SystemAudioIO22AudioIOPlatformAdapter10InitializeEv_block_invoke_11(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = **(Phase::Logger::GetInstance(v3) + 544);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(Phase::Logger *)v3 description];
    v6 = [v5 description];
    v28 = 136315906;
    v29 = "AudioIOPlatformAdapter.mm";
    v30 = 1024;
    v31 = 952;
    v32 = 2048;
    v33 = v2;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d audioio@%p: route change notification received with description \n%@", &v28, 0x26u);
  }

  v7 = [(Phase::Logger *)v3 description];
  v8 = [v7 objectForKeyedSubscript:@"beginning"];

  v9 = [(Phase::Logger *)v3 description];
  v10 = [v9 objectForKeyedSubscript:@"end"];

  v11 = [(Phase::Logger *)v3 description];
  if ([v11 count] != 2 || !v8 || !v10)
  {

LABEL_11:
    v20 = **(Phase::Logger::GetInstance(v14) + 544);
    v21 = v20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "AudioIOPlatformAdapter.mm";
      v30 = 1024;
      v31 = 960;
      v19 = "%25s:%-5d Invalid route change information received from PHASEPlatform";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 18;
LABEL_18:
      _os_log_impl(&dword_23A302000, v22, v23, v19, &v28, v24);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v12 = [v8 BOOLValue];
  v13 = [v10 BOOLValue];

  if (((v12 ^ v13) & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = [v8 BOOLValue];
  if (v15)
  {
    v16 = **(Phase::Logger::GetInstance(v15) + 544);
    v17 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v2 + 40);
      v28 = 136315650;
      v29 = "AudioIOPlatformAdapter.mm";
      v30 = 1024;
      v31 = 967;
      v32 = 2048;
      v33 = v18;
      v19 = "%25s:%-5d [AudioIOPlatformAdapter] Route change begin at timestamp %f";
LABEL_17:
      v22 = v16;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 28;
      goto LABEL_18;
    }
  }

  else
  {
    v25 = Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(**(v2 + 8));
    if (v25)
    {
      atomic_fetch_add((v2 + 144), 1u);
    }

    v16 = **(Phase::Logger::GetInstance(v25) + 544);
    v26 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v2 + 40);
      v28 = 136315650;
      v29 = "AudioIOPlatformAdapter.mm";
      v30 = 1024;
      v31 = 979;
      v32 = 2048;
      v33 = v27;
      v19 = "%25s:%-5d [AudioIOPlatformAdapter] Route change end at timestamp %f";
      goto LABEL_17;
    }
  }

LABEL_19:
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Uninitialize(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 352) != 1)
  {
    return;
  }

  [*(this + 43) registerRouteChangeNotification:0];
  (*(*this + 56))(this);
  [*(this + 43) registerIOBlock:0];
  v2 = std::__optional_destruct_base<CA::AudioBuffersDeprecated,false>::reset[abi:ne200100](this + 400);
  *(this + 352) = 0;
  v3 = *(this + 53);
  if (v3)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
    }

    if (off_27DF94D30)
    {
      v2 = off_27DF94D30(v3);
      v4 = v2;
      if (!v2)
      {
LABEL_11:
        *(this + 432) = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v4 = -1;
    }

    v5 = **(Phase::Logger::GetInstance(v2) + 544);
    v2 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v8 = 136315906;
      v9 = "AudioIOPlatformAdapter.mm";
      v10 = 1024;
      v11 = 307;
      v12 = 2048;
      v13 = this;
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: failed to reset AID, err = %d", &v8, 0x22u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v6 = *(this + 55);
  if (v6)
  {
    if (_MergedGlobals_12 != -1)
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global);
    }

    if (off_27DF97898)
    {
      v2 = off_27DF97898(v6);
    }
  }

  v7 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "AudioIOPlatformAdapter.mm";
    v10 = 1024;
    v11 = 319;
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: uninitialized", &v8, 0x1Cu);
  }
}

uint64_t std::__optional_destruct_base<CA::AudioBuffersDeprecated,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    result = ExtendedAudioBufferList_Destroy();
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Start(id *this)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*(this + 353) | 2) != 2)
  {
    return 0;
  }

  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 552) == 1)
  {
    v3 = **(Phase::Logger::GetInstance(Instance) + 544);
    v4 = Phase::Logger::GetInstance(v3);
    v5 = os_signpost_id_generate(**(v4 + 544));
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v3))
      {
        if (*(this + 240))
        {
          v7 = "in";
        }

        else
        {
          v7 = "-";
        }

        if (*(this + 152))
        {
          v8 = "out";
        }

        else
        {
          v8 = "-";
        }

        [this[31] sampleRate];
        v10 = v9;
        v11 = [this[31] channelCount];
        [this[20] sampleRate];
        v13 = v12;
        v14 = [this[20] channelCount];
        [this[32] sampleRate];
        v16 = v15;
        v17 = [this[32] channelCount];
        [this[21] sampleRate];
        v19 = v18;
        v20 = [this[21] channelCount];
        v27 = 136317442;
        v28 = v7;
        v29 = 2080;
        *v30 = v8;
        *&v30[8] = 2048;
        *&v30[10] = v10;
        *&v30[18] = 1024;
        *v31 = v11;
        *&v31[4] = 2048;
        v32 = v13;
        v33 = 1024;
        v34 = v14;
        v35 = 2048;
        v36 = v16;
        v37 = 1024;
        v38 = v17;
        v39 = 2048;
        v40 = v19;
        v41 = 1024;
        v42 = v20;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Start", "enable [%s, %s], hardware format [%.f/%d, %.f/%d], client format [%.f/%d, %.f/%d]", &v27, 0x56u);
      }
    }
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 1);
  v21 = [this[43] start];
  if (v21)
  {
    v22 = 0;
    *(this + 353) = 1;
  }

  else
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v22 = 4294956433;
  }

  v23 = **(Phase::Logger::GetInstance(v21) + 544);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(this + 240);
    v25 = *(this + 152);
    v27 = 136316418;
    v28 = "AudioIOPlatformAdapter.mm";
    v29 = 1024;
    *v30 = 351;
    *&v30[4] = 2048;
    *&v30[6] = this;
    *&v30[14] = 1024;
    *&v30[16] = v24;
    *v31 = 1024;
    *&v31[2] = v25;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = v22;
    _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: start IO (input %d, output %d), err %d", &v27, 0x2Eu);
  }

  return v22;
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Pause(id *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 353) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Pause", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[43] stop];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    *(this + 353) = 2;
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v8 = **(Phase::Logger::GetInstance(v7) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "AudioIOPlatformAdapter.mm";
      v11 = 1024;
      v12 = 367;
      v13 = 2048;
      v14 = this;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: paused IO", &v9, 0x1Cu);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::Stop(id *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 353) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Stop", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[43] stop];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    if (*(this + 120) == 1)
    {
      *(this + 120) = 0;
    }

    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v8 = **(Phase::Logger::GetInstance(v7) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "AudioIOPlatformAdapter.mm";
      v11 = 1024;
      v12 = 382;
      v13 = 2048;
      v14 = this;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audioio@%p: stopped IO", &v9, 0x1Cu);
    }
  }

  *(this + 353) = 0;
}

id Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetHWFormat(id *this, int a2)
{
  v2 = [this[43] streamInfoForIndex:0 direction:a2 == 1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 format];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::UpdateFormats(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = this + 88 * a2;
  *(v4 + 39) = a2;
  v5 = (*(*this + 136))(this);
  v6 = *(v4 + 20);
  *(v4 + 20) = v5;

  objc_storeStrong(v4 + 21, *(v4 + 20));
  IsValidFormat = *(v4 + 20);
  if (IsValidFormat && (IsValidFormat = Phase::Controller::SystemAudioIO::IsValidFormat(IsValidFormat, v7), (IsValidFormat & 1) != 0))
  {
    v9 = *(v4 + 21);
    if (!v9)
    {
      std::terminate();
    }

    v10 = [v9 streamDescription];
    result = 0;
    v12 = *(v10 + 32);
    v13 = *(v10 + 16);
    *(v4 + 11) = *v10;
    *(v4 + 12) = v13;
    *(v4 + 26) = v12;
  }

  else
  {
    v14 = **(Phase::Logger::GetInstance(IsValidFormat) + 544);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = "output";
      v17 = "AudioIOPlatformAdapter.mm";
      v18 = 1024;
      v19 = 406;
      v16 = 136315906;
      if (a2 == 1)
      {
        v15 = "input";
      }

      v20 = 2048;
      v21 = this;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d audioio@%p: error: invalid %s HW format!", &v16, 0x26u);
    }

    return 4294956433;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::IsRunning(id *this)
{
  if (*(this + 353) == 1)
  {
    return [this[43] running];
  }

  else
  {
    return 0;
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetInputChannelCount(id *this)
{
  v1 = [this[43] streamInfoForIndex:0 direction:1];
  v2 = [v1 format];
  v3 = [v2 channelCount];

  return v3;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetOutputChannelCount(id *this)
{
  v1 = [this[43] streamInfoForIndex:0 direction:0];
  v2 = [v1 format];
  v3 = [v2 channelCount];

  return v3;
}

id Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetOutputChannelLayout(id *this)
{
  v1 = [this[43] streamInfoForIndex:0 direction:0];
  v2 = [v1 format];
  v4 = Phase::Controller::SystemAudioIO::GetOutputChannelLayout(v2, v3);

  return v4;
}

void Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetCurrentOutputRoute(id *this@<X0>, uint64_t a2@<X8>)
{
  v4 = [this[43] streamInfoForIndex:0 direction:0];
  Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(this, __p);
  Phase::Controller::AudioRouteDescription::AudioRouteDescription(a2, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_23A32A1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::GetLastFrameCount(Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *this)
{
  if (*(this + 52) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(this + 52);
  }
}

id Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter::CopyWorkGroup(id *this)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [this[43] workgroup];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&>(uint64_t a1, const char *a2, void *a3, unsigned int *a4, ...)
{
  v18 = *MEMORY[0x277D85DE8];
  strcpy(__s1, "(%d): ");
  strcat(__s1, a2);
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v8 = snprintf(__str, 0x100uLL, __s1, ShouldFire, *a3, *a4);
    v9 = **(Phase::Logger::GetInstance(v8) + 544);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "AudioIOBase.hpp";
      v12 = 1024;
      v13 = 133;
      v14 = 2080;
      v15 = __str;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,unsigned int const&,int &>(uint64_t a1, void *a2, unsigned int *a3, unsigned int *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  strcpy(__s, "(%d): ");
  strcat(__s, "audioio@%p: error: mismatch in channel count, actual %u, expected %u");
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v8 = snprintf(__str, 0x100uLL, __s, ShouldFire, *a2, *a3, *a4);
    v9 = **(Phase::Logger::GetInstance(v8) + 544);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "AudioIOBase.hpp";
      v12 = 1024;
      v13 = 133;
      v14 = 2080;
      v15 = __str;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

BOOL Phase::DspLayer23::BasicReblocker<float>::Write(uint64_t a1, const void *a2, unint64_t a3)
{
  v5 = *(a1 + 16);
  for (i = *(a1 + 24); ; i = 0)
  {
    if (i > v5)
    {
LABEL_3:
      v7 = *(a1 + 8) - i;
      goto LABEL_8;
    }

    if (i >= v5)
    {
      if ((*(a1 + 32) & 1) == 0)
      {
        goto LABEL_3;
      }

      v7 = 0;
    }

    else
    {
      v7 = v5 - i;
    }

LABEL_8:
    if (v7 >= a3)
    {
      break;
    }

    v8 = i >= v5;
    v9 = i - v5;
    if (v8)
    {
      if (v9 == 0 || !v8)
      {
        if (*(a1 + 32) != 1)
        {
          goto LABEL_15;
        }

        v9 = *(a1 + 8);
      }
    }

    else
    {
      v9 += *(a1 + 8);
    }

    if (v9)
    {
      return v7 >= a3;
    }

LABEL_15:
    v5 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  memcpy((*a1 + 4 * i), a2, 4 * a3);
  if (a3)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24) + a3;
    if (v11 == *(a1 + 8))
    {
      v11 = 0;
    }

    *(a1 + 24) = v11;
    *(a1 + 32) = v11 == v10;
  }

  return v7 >= a3;
}

uint64_t AudioIssueDetectorClientAnalyzeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, const AudioBufferList *a4, unsigned int a5, const AudioTimeStamp *a6)
{
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_44);
  }

  if (!off_27DF94D38)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = off_27DF94D38;

  return v10(a1, 2, 0, a2, a3, a4);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<Phase::Controller::SystemAudioIO::AudioIOPlatformAdapter *,int &>(uint64_t a1, void *a2, unsigned int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  strcpy(__s, "(%d): ");
  strcat(__s, "audioio@%p: failed to analyze buffer %d");
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v6 = snprintf(__str, 0x100uLL, __s, ShouldFire, *a2, *a3);
    v7 = **(Phase::Logger::GetInstance(v6) + 544);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AudioIOBase.hpp";
      v10 = 1024;
      v11 = 133;
      v12 = 2080;
      v13 = __str;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    qword_27DF97870 = dlsym(result, "CreateSharedCAReportingClient");
    off_27DF97878 = dlsym(v1, "CAReportingClientCreateReporterID");
    qword_27DF97880 = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    qword_27DF97888 = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    off_27DF97890 = dlsym(v1, "CAReportingClientStartReporter");
    off_27DF97898 = dlsym(v1, "CAReportingClientStopReporter");
    off_27DF978A0 = dlsym(v1, "CAReportingClientSetAudioServiceType");
    qword_27DF978A8 = dlsym(v1, "CAReportingClientGetAudioServiceType");
    qword_27DF978B0 = dlsym(v1, "CAReportingClientSetConfiguration");
    qword_27DF978B8 = dlsym(v1, "CAReportingClientCopyConfiguration");
    qword_27DF978C0 = dlsym(v1, "CAReportingClientSendMessage");
    qword_27DF978C8 = dlsym(v1, "CAReportingClientSendSingleMessage");
    off_27DF978D0 = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    qword_27DF978D8 = result;
  }

  return result;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    off_27DF94D10 = dlsym(v1, "AudioIssueDetectorInitialize");
    off_27DF94D18 = dlsym(v1, "AudioIssueDetectorDispose");
    qword_27DF94D20 = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    off_27DF94D28 = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    off_27DF94D30 = dlsym(v1, "AudioIssueDetectorReset");
    off_27DF94D38 = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    qword_27DF94D40 = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    qword_27DF94D48 = dlsym(v1, "AudioIssueDetectorRemoveNode");
    qword_27DF94D50 = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    qword_27DF94D58 = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    qword_27DF94D60 = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    qword_27DF94D68 = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_27DF94D70 = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t *std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A32AB8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::optional<CA::AudioBuffersDeprecated>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  return a1;
}

void *CA::AudioBuffersBase::AudioBuffersBase(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
  }

  ExtendedAudioBufferList_Prepare();
  return a1;
}

void caulk::make_string(std::string *__return_ptr a1@<X8>, caulk *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    std::string::resize(a1, (v5 + 1), 0);
    v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v9 = vsnprintf(v7, size, this, va);
    std::string::resize(a1, v9, 0);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t Phase::Controller::AudioRouteDescription::AudioRouteDescription(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>((a1 + 16), *a3, *(a3 + 8), *(a3 + 8) - *a3);
  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,objc_object * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (off_284D2F9F0[v2])(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t Phase::Throttle::ShouldFire(Phase::Throttle *this, double *a2)
{
  v4 = mach_absolute_time();
  v5 = *(this + 1);
  if (!v5)
  {
    *(this + 1) = v4;
    v5 = v4;
  }

  v6 = v4 - v5;
  if (a2)
  {
    *a2 = v6 * 0.0000000416666667;
  }

  if (v6 >= *this)
  {
    *(this + 1) = v4;
    result = (*(this + 4) + 1);
    *(this + 4) = 0;
  }

  else
  {
    result = 0;
    ++*(this + 4);
  }

  return result;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::AudioIOUnit(Phase::Controller::SystemAudioIO::AudioIOUnit *this, Phase::Controller::VoiceManager *a2, double a3)
{
  v4 = Phase::Controller::SystemAudioIO::AudioIOBase::AudioIOBase(this, a2);
  *v4 = &unk_284D2FA30;
  *(v4 + 42) = a3;
  *(v4 + 43) = 0;
  *(v4 + 44) = 0;
  *(v4 + 360) = 0;
  operator new();
}

void sub_23A32B098(_Unwind_Exception *a1)
{
  v3 = *(v1 + 376);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(v1);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<Phase::Controller::SystemAudioIO::Implementation>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::SystemAudioIO::Implementation::~Implementation(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::~AudioIOUnit(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = 0;
  *this = &unk_284D2FA30;
  do
  {
    free(*(*(this + 49) + v2));
    v2 += 40;
  }

  while (v2 != 480);
  free(*(this + 49));
  Phase::Controller::SystemAudioIO::AudioIOUnit::Cleanup(this);
  v3 = *(this + 47);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  Phase::Controller::SystemAudioIO::AudioIOBase::~AudioIOBase(this);
}

{
  Phase::Controller::SystemAudioIO::AudioIOUnit::~AudioIOUnit(this);

  JUMPOUT(0x23EE864A0);
}

OpaqueAudioComponentInstance *Phase::Controller::SystemAudioIO::AudioIOUnit::Cleanup(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (v2)
  {
    [v2 stopHardware];
    [*(this + 44) deallocateRenderResources];
    [*(this + 44) invalidateAudioUnit];
    v3 = *(this + 44);
    *(this + 44) = 0;
  }

  result = *(this + 43);
  if (result)
  {
    result = AudioComponentInstanceDispose(result);
    *(this + 43) = 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::EnableBus(Phase::Controller::SystemAudioIO::AudioIOUnit *this, unsigned int a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
  {
    std::terminate();
  }

  v6 = *(this + 44);
  if (v6)
  {
    v6 = [v6 renderResourcesAllocated];
    if (v6)
    {
      return 4294956447;
    }
  }

  *(this + 88 * a2 + 152) = a3;
  v8 = **(Phase::Logger::GetInstance(v6) + 544);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v10 = "Disabled";
    v12 = "AudioIOUnit.mm";
    v14 = 346;
    v15 = 2080;
    v11 = 136315906;
    v13 = 1024;
    if (a3)
    {
      v10 = "Enabled";
    }

    v16 = v10;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s bus %d for Audio IO.", &v11, 0x22u);
    return 0;
  }

  return result;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::Initialize(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    if (*(this + 43))
    {
      v4 = *(this + 44);
      if (v4)
      {
LABEL_6:
        [v4 setOutputEnabled:*(this + 152)];
        [*(this + 44) setInputEnabled:*(this + 240)];
        v5 = *(this + 44);
        v44 = 0;
        [v5 allocateRenderResourcesAndReturnError:&v44];
        v6 = v44;
        v7 = v6;
        if (v6)
        {
          v3 = [v6 code];
LABEL_8:

          return v3;
        }

        if (*(this + 152) == 1)
        {
          v12 = [*(this + 44) isOutputEnabled];
          if ((v12 & 1) == 0)
          {
            v22 = **(Phase::Logger::GetInstance(v12) + 544);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "AudioIOUnit.mm";
              *&buf[12] = 1024;
              *&buf[14] = 388;
              *&buf[18] = 2048;
              *&buf[20] = this;
              v23 = "%25s:%-5d audioio@%p: output is not enabled on the IOUnit!";
LABEL_32:
              _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x1Cu);
            }

LABEL_33:
            v3 = 4294956420;
            goto LABEL_8;
          }

          v3 = (*(*this + 144))(this, 0);
          if (v3)
          {
            goto LABEL_8;
          }

          Phase::Controller::SystemAudioIO::AudioIOUnit::SetOutputProvider(this);
        }

        if ((*(this + 240) & 1) == 0)
        {
          goto LABEL_23;
        }

        v13 = [*(this + 44) isInputEnabled];
        if (v13)
        {
          v3 = (*(*this + 144))(this, 1);
          if (v3)
          {
            goto LABEL_8;
          }

          Phase::Controller::SystemAudioIO::AudioIOUnit::SetInputHandler(this);
LABEL_23:
          v14 = (*(*this + 136))(this, 0);
          v15 = (*(*this + 88))(this);
          v16 = **(Phase::Logger::GetInstance(v15) + 544);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (v14)
            {
              v17 = [v14 streamDescription];
              v18 = *v17;
              v19 = *(v17 + 16);
              v48 = *(v17 + 32);
              *buf = v18;
              *&buf[16] = v19;
              v20 = &v43;
              CA::StreamDescription::AsString(&v43, buf, v21, *&v19);
              if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v20 = v43.__r_.__value_.__r.__words[0];
              }
            }

            else
            {
              v20 = "invalid";
            }

            if (v15)
            {
              Phase::ChannelLayout::GetStringDescription(__p, [(Phase::Logger *)v15 layout]);
              if (v42 >= 0)
              {
                v24 = __p;
              }

              else
              {
                v24 = __p[0];
              }

              *v45 = 136315906;
              *&v45[4] = "AudioIOUnit.mm";
              *&v45[12] = 1024;
              *&v45[14] = 421;
              *&v45[18] = 2080;
              *&v45[20] = v20;
              *&v45[28] = 2080;
              *&v45[30] = v24;
              _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d initialized: output asbd <%s>, channel layout: \n%s", v45, 0x26u);
              if (v42 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              *v45 = 136315906;
              *&v45[4] = "AudioIOUnit.mm";
              *&v45[12] = 1024;
              *&v45[14] = 421;
              *&v45[18] = 2080;
              *&v45[20] = v20;
              *&v45[28] = 2080;
              *&v45[30] = "None";
              _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d initialized: output asbd <%s>, channel layout: \n%s", v45, 0x26u);
            }

            if (v14 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }
          }

          v25 = *(this + 46);
          v26 = v25[1];
          if (!v26 || (v27 = *v25, (v28 = std::__shared_weak_count::lock(v26)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v29 = v28;
          p_shared_weak_owners = &v28->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          v31 = [MEMORY[0x277CCAB98] defaultCenter];
          v32 = *MEMORY[0x277CB8210];
          v33 = v25[3];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3321888768;
          *&buf[16] = ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke;
          *&buf[24] = &__block_descriptor_48_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE_e24_v16__0__NSNotification_8l;
          v48 = v27;
          v49 = v29;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v34 = [v31 addObserverForName:v32 object:v33 queue:0 usingBlock:buf];
          v35 = v25[4];
          v25[4] = v34;

          v36 = [MEMORY[0x277CCAB98] defaultCenter];
          v37 = *MEMORY[0x277CB8068];
          v38 = v25[3];
          *v45 = MEMORY[0x277D85DD0];
          *&v45[8] = 3321888768;
          *&v45[16] = ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke_70;
          *&v45[24] = &__block_descriptor_48_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE_e24_v16__0__NSNotification_8l;
          *&v45[32] = v27;
          v46 = v29;
          atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v39 = [v36 addObserverForName:v37 object:v38 queue:0 usingBlock:v45];
          v40 = v25[5];
          v25[5] = v39;

          if (v46)
          {
            std::__shared_weak_count::__release_weak(v46);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_weak(v49);
          }

          std::__shared_weak_count::__release_weak(v29);

          v3 = 0;
          goto LABEL_8;
        }

        v22 = **(Phase::Logger::GetInstance(v13) + 544);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AudioIOUnit.mm";
          *&buf[12] = 1024;
          *&buf[14] = 406;
          *&buf[18] = 2048;
          *&buf[20] = this;
          v23 = "%25s:%-5d audioio@%p: input is not enabled on the IOUnit!";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    Next = AudioComponentFindNext(0, "uouacoirlppa");
    if (Next)
    {
      v3 = AudioComponentInstanceNew(Next, this + 43);
      if (v3)
      {
LABEL_13:
        Phase::Controller::SystemAudioIO::AudioIOUnit::Cleanup(this);
        return v3;
      }

      v9 = [MEMORY[0x277CEFD18] auAudioUnitForAudioUnit:*(this + 43)];
      v10 = *(this + 44);
      *(this + 44) = v9;

      v4 = *(this + 44);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v3 = 4294956421;
    goto LABEL_13;
  }

  return 0;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::SetOutputProvider(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 isOutputEnabled] & 1) == 0)
  {
    goto LABEL_30;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = this + 40;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v3 = *this;
  v26[3] = *(this + 1);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = this + 152;
  v4 = (*(v3 + 88))(this);
  RenderedChannels = Phase::Controller::SystemAudioIO::GetRenderedChannels(v4, v5);
  if (v4)
  {
    v7 = [(Phase::Controller::SystemAudioIO *)v4 layout];
    v8 = v7[2];
    if (v8 <= 1)
    {
      v8 = 1;
    }

    std::vector<char>::vector[abi:ne200100](&__dst, 20 * v8 + 12);
    memcpy(__dst, v7, 20 * v7[2] + 12);
    NumActiveChannels = Phase::ChannelLayout::GetNumActiveChannels(&__dst, RenderedChannels);
    if (__dst)
    {
      v23 = __dst;
      operator delete(__dst);
    }
  }

  else
  {
    NumActiveChannels = 0;
  }

  v10 = 0;
  __dst = 0;
  v23 = 0;
  v24 = 0;
  while (v10 < (*(*this + 80))(this))
  {
    if ((RenderedChannels >> v10))
    {
      v11 = v23;
      if (v23 >= v24)
      {
        v13 = __dst;
        v14 = v23 - __dst;
        v15 = (v23 - __dst) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v17 = v24 - __dst;
        if ((v24 - __dst) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__dst, v18);
        }

        *(4 * v15) = v10;
        v12 = 4 * v15 + 4;
        memcpy(0, v13, v14);
        v19 = __dst;
        __dst = 0;
        v23 = v12;
        v24 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v23 = v10;
        v12 = (v11 + 4);
      }

      v23 = v12;
    }

    ++v10;
  }

  if (NumActiveChannels != (v23 - __dst) >> 2)
  {
LABEL_30:
    std::terminate();
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit17SetOutputProviderEv_block_invoke;
  v20[3] = &unk_278B4ECE0;
  v21 = NumActiveChannels;
  v20[4] = v27;
  v20[5] = v26;
  v20[7] = this;
  v20[8] = RenderedChannels;
  v20[6] = v25;
  [*(this + 44) setOutputProvider:v20];
  if (__dst)
  {
    v23 = __dst;
    operator delete(__dst);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);
}

void sub_23A32BD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::SetInputHandler(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 isInputEnabled] & 1) == 0 || (v9[0] = 0, v9[1] = v9, v9[2] = 0x2020000000, v9[3] = this + 240, v8[0] = 0, v8[1] = v8, v8[2] = 0x2020000000, v8[3] = *(this + 1), (v3 = *(this + 73)) == 0) || (v4 = *(this + 72)) == 0)
  {
    std::terminate();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit15SetInputHandlerEv_block_invoke;
  v5[3] = &unk_278B4ED08;
  v6 = v3;
  v7 = v4;
  v5[4] = v9;
  v5[5] = v8;
  v5[6] = this;
  [*(this + 44) setInputHandler:v5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
}

void sub_23A32BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::Uninitialize(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2)
  {
    v2 = [v2 renderResourcesAllocated];
    if (v2)
    {
      v3 = *(this + 46);
      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      [v4 removeObserver:*(v3 + 32)];

      v5 = *(v3 + 32);
      *(v3 + 32) = 0;

      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      [v6 removeObserver:*(v3 + 40)];

      v7 = *(v3 + 40);
      *(v3 + 40) = 0;

      [*(this + 44) stopHardware];
      v2 = [*(this + 44) deallocateRenderResources];
    }
  }

  v8 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AudioIOUnit.mm";
    v11 = 1024;
    v12 = 438;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Uninitialized audio IO", &v9, 0x12u);
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::Start(id *this)
{
  v99[19] = *MEMORY[0x277D85DE8];
  if ((*(this + 360) | 2) != 2)
  {
    return 0;
  }

  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 552) == 1)
  {
    v3 = **(Phase::Logger::GetInstance(Instance) + 544);
    v4 = Phase::Logger::GetInstance(v3);
    v5 = os_signpost_id_generate(**(v4 + 544));
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v3))
      {
        if (*(this + 240))
        {
          v7 = "in";
        }

        else
        {
          v7 = "-";
        }

        if (*(this + 152))
        {
          v8 = "out";
        }

        else
        {
          v8 = "-";
        }

        [this[31] sampleRate];
        v10 = v9;
        v11 = [this[31] channelCount];
        [this[20] sampleRate];
        v13 = v12;
        v14 = [this[20] channelCount];
        [this[32] sampleRate];
        v16 = v15;
        v17 = [this[32] channelCount];
        [this[21] sampleRate];
        v19 = v18;
        v20 = [this[21] channelCount];
        *buf = 136317442;
        *&buf[4] = v7;
        v83 = 2080;
        *v84 = v8;
        *&v84[8] = 2048;
        *&v84[10] = v10;
        LOWORD(v85.__locale_) = 1024;
        *(&v85.__locale_ + 2) = v11;
        HIWORD(v85.__locale_) = 2048;
        v86 = v13;
        v87 = 1024;
        v88 = v14;
        v89 = 2048;
        v90 = v16;
        LOWORD(__src) = 1024;
        *(&__src + 2) = v17;
        HIWORD(__src) = 2048;
        v92 = v19;
        v93 = 1024;
        v94 = v20;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Start", "enable [%s, %s], hardware format [%.f/%d, %.f/%d], client format [%.f/%d, %.f/%d]", buf, 0x56u);
      }
    }
  }

  v21 = this[44];
  if (v21 && ([v21 renderResourcesAllocated] & 1) != 0 || (v22 = (*(*this + 3))(this), !v22))
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 1);
    v23 = this[44];
    v71 = 0;
    [v23 startHardwareAndReturnError:&v71];
    v24 = v71;
    v25 = [v24 code];
    v22 = v25;
    if (v25)
    {
      Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
      v27 = **(Phase::Logger::GetInstance(v26) + 544);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [(Phase::Logger *)v26 description];
        v29 = v28;
        v30 = [v28 UTF8String];
        *buf = 136315650;
        *&buf[4] = "AudioIOUnit.mm";
        v83 = 1024;
        *v84 = 474;
        *&v84[4] = 2080;
        *&v84[6] = v30;
        _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Error starting Audio IO. Err = %s", buf, 0x1Cu);
      }

LABEL_62:
      return v22;
    }

    if (*(*(**(*this[1] + 696) + 184) + 24) >= 1)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = this[49] + v31;
        *(v33 + 2) = 0;
        *(v33 + 3) = 0;
        v33[32] = 0;
        bzero(*v33, 4 * *(v33 + 1));
        ++v32;
        v31 += 40;
      }

      while (v32 < *(*(**(*this[1] + 696) + 184) + 24));
    }

    *(this + 360) = 1;
    v26 = **(Phase::Logger::GetInstance(v25) + 544);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v34 = this[46];
    v35 = [MEMORY[0x277CB83F8] sharedInstance];
    v36 = [v35 currentRoute];
    v37 = [v36 outputs];

    v38 = [v37 count];
    v39 = v38;
    if (!v38)
    {
      v63 = **(Phase::Logger::GetInstance(v38) + 544);
      v64 = v63;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AudioIOUnit.mm";
        v83 = 1024;
        *v84 = 167;
        _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d New Audio session route has no outputs.", buf, 0x12u);
      }

      strcpy(v70, "Invalid AVAudioSession");
      HIBYTE(v70[2]) = 22;
      v65 = v70;
      goto LABEL_60;
    }

    if (v38 != 1)
    {
      v40 = **(Phase::Logger::GetInstance(v38) + 544);
      v41 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioIOUnit.mm";
        v83 = 1024;
        *v84 = 176;
        *&v84[4] = 1024;
        *&v84[6] = v39;
        _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d AVAudioSession route has more than 1 output; using the first of %i outputs.", buf, 0x18u);
      }
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], "AVAudioSession ", 15);
    v43 = [v37 objectAtIndexedSubscript:0];
    v44 = [v43 portName];
    v45 = v44;
    v46 = [v44 UTF8String];
    v47 = strlen(v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v46, v47);

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], " of type ", 9);
    v49 = [v37 objectAtIndexedSubscript:0];
    v50 = [v49 portType];
    v51 = v50;
    v52 = [v50 UTF8String];
    v53 = strlen(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v52, v53);

    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], ", with ", 7);
    v55 = [v37 objectAtIndexedSubscript:0];
    v56 = [v55 channels];
    v57 = MEMORY[0x23EE86130](v54, [v56 count]);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " channels", 9);
    std::ios_base::getloc((v58 + *(*v58 - 24)));
    v59 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
    (v59->__vftable[2].~facet_0)(v59, 10);
    std::locale::~locale(&v73);
    std::ostream::put();
    std::ostream::flush();

    Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(v34[2], __p);
    Phase::ChannelLayout::GetStringDescription(__p, &v73);
    if ((v75 & 0x80u) == 0)
    {
      locale = &v73;
    }

    else
    {
      locale = v73.__locale_;
    }

    if ((v75 & 0x80u) == 0)
    {
      v61 = v75;
    }

    else
    {
      v61 = v74;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84[2], locale, v61);
    if (v75 < 0)
    {
      operator delete(v73.__locale_);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v98 & 0x10) != 0)
    {
      v66 = v97;
      if (v97 < v92)
      {
        v97 = v92;
        v66 = v92;
      }

      v67 = __src;
    }

    else
    {
      if ((v98 & 8) == 0)
      {
        v62 = 0;
        HIBYTE(v70[2]) = 0;
LABEL_55:
        *(v70 + v62) = 0;
        *buf = *MEMORY[0x277D82818];
        v68 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        *&v84[2] = v68;
        *&v84[10] = MEMORY[0x277D82878] + 16;
        if (v96 < 0)
        {
          operator delete(v95);
        }

        *&v84[10] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v85);
        std::iostream::~basic_iostream();
        MEMORY[0x23EE863B0](v99);
        if (SHIBYTE(v70[2]) >= 0)
        {
          v65 = v70;
        }

        else
        {
          v65 = v70[0];
        }

LABEL_60:

        *v76 = 136315650;
        v77 = "AudioIOUnit.mm";
        v78 = 1024;
        v79 = 486;
        v80 = 2080;
        v81 = v65;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started Audio IO on output: %s", v76, 0x1Cu);
        if (SHIBYTE(v70[2]) < 0)
        {
          operator delete(v70[0]);
        }

        goto LABEL_62;
      }

      v67 = v86;
      v66 = v90;
    }

    v62 = v66 - v67;
    if (v66 - v67 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v62 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v70[2]) = v66 - v67;
    if (v62)
    {
      memmove(v70, v67, v62);
    }

    goto LABEL_55;
  }

  return v22;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::Pause(id *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 360) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Pause", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[44] stopHardware];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    *(this + 360) = 2;
    Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
    v8 = **(Phase::Logger::GetInstance(v7) + 544);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AudioIOUnit.mm";
      v11 = 1024;
      v12 = 509;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Paused Audio IO.", &v9, 0x12u);
    }
  }
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::Stop(id *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 360) == 1)
  {
    Instance = Phase::Logger::GetInstance(this);
    if (*(Instance + 552) == 1)
    {
      v3 = **(Phase::Logger::GetInstance(Instance) + 544);
      v4 = Phase::Logger::GetInstance(v3);
      v5 = os_signpost_id_generate(**(v4 + 544));
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v3, OS_SIGNPOST_EVENT, v6, "Phase_AudioIO_Stop", &unk_23A5C28A2, &v9, 2u);
        }
      }
    }

    [this[44] stopHardware];
    if (*(this + 104) == 1)
    {
      *(this + 104) = 0;
    }

    if (*(this + 120) == 1)
    {
      *(this + 120) = 0;
    }
  }

  *(this + 360) = 0;
  Phase::Controller::SystemAudioIO::AudioIOBase::StartStopInternalCaptures(this, 0);
  v8 = **(Phase::Logger::GetInstance(v7) + 544);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AudioIOUnit.mm";
    v11 = 1024;
    v12 = 528;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped Audio IO.", &v9, 0x12u);
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetInputChannelCount(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    std::terminate();
  }

  v3 = (*(*this + 136))(this, 1);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 channelCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetOutputChannelCount(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    std::terminate();
  }

  v3 = (*(*this + 136))(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 channelCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id Phase::Controller::SystemAudioIO::AudioIOUnit::GetOutputChannelLayout(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v2 = *(this + 44);
  if (!v2 || ([v2 renderResourcesAllocated] & 1) == 0)
  {
    std::terminate();
  }

  v3 = (*(*this + 136))(this, 0);
  v5 = Phase::Controller::SystemAudioIO::GetOutputChannelLayout(v3, v4);

  return v5;
}

void Phase::Controller::SystemAudioIO::AudioIOUnit::GetCurrentOutputRoute(Phase::Controller::SystemAudioIO::AudioIOUnit *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 46);
  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = [v4 currentRoute];
  v6 = [v5 outputs];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(*(v3 + 16), &__p);
    Phase::Controller::AudioRouteDescription::AudioRouteDescription(a2, v7, &__p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  else
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::GetRenderedChannelLayout(*(v3 + 16), &__p);
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>((a2 + 16), __p, v9, v9 - __p);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }
}

void sub_23A32D1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,unsigned int,objc_object * {__strong}>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double Phase::Controller::SystemAudioIO::AudioIOUnit::GetSampleRate(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2 && (v2 = [(Phase::Logger *)v2 renderResourcesAllocated], (v2 & 1) != 0))
  {
    v3 = [*(this + 44) outputBusses];
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 format];
    [v5 sampleRate];
    v7 = v6;
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(v2) + 544);
    v7 = 48000.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "AudioIOUnit.mm";
      v12 = 1024;
      v13 = 567;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting sample rate from uninitialized AudioIOUnit - returning default value of 48000", &v10, 0x12u);
    }
  }

  return v7;
}

void sub_23A32D358(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetMaximumFramesToRender(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2)
  {
    v2 = [v2 renderResourcesAllocated];
    if (v2)
    {
      return [*(this + 44) maximumFramesToRender];
    }
  }

  v4 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AudioIOUnit.mm";
    v7 = 1024;
    v8 = 578;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting maximum frames to rernder from uninitialized AudioIOUnit - returning default value of 4096", &v5, 0x12u);
  }

  return 4096;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::GetLastFrameCount(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 44);
  if (v2)
  {
    v2 = [v2 renderResourcesAllocated];
    if (v2)
    {
      return *(this + 48);
    }
  }

  v4 = **(Phase::Logger::GetInstance(v2) + 544);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AudioIOUnit.mm";
    v7 = 1024;
    v8 = 589;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting maximum frames to rernder from uninitialized AudioIOUnit - returning default value of 4096", &v5, 0x12u);
  }

  return 4096;
}

id Phase::Controller::SystemAudioIO::AudioIOUnit::GetHWFormat(Phase::Controller::SystemAudioIO::AudioIOUnit *this, unsigned int a2)
{
  v3 = *(this + 44);
  if (a2 == 1)
  {
    [v3 inputBusses];
  }

  else
  {
    [v3 outputBusses];
  }
  v4 = ;
  if ([v4 count] <= a2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:?];
    v6 = [v5 format];
  }

  return v6;
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::UpdateFormats(Phase::Controller::SystemAudioIO::AudioIOUnit *this, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(this + 44);
  if (a2)
  {
    [v4 setInputEnabled:1];
  }

  else
  {
    [v4 setOutputEnabled:1];
  }

  v5 = this + 88 * a2;
  *(v5 + 39) = a2;
  v6 = (*(*this + 136))(this, a2);
  v7 = *(v5 + 20);
  *(v5 + 20) = v6;

  if (!*(v5 + 20))
  {
    goto LABEL_26;
  }

  v8 = *(v5 + 21);
  *(v5 + 21) = 0;

  v9 = [*(v5 + 20) channelLayout];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CB83A8]);
    v11 = *(this + 42);
    v12 = [*(v5 + 20) channelLayout];
    v13 = [v10 initWithCommonFormat:1 sampleRate:1 interleaved:v12 channelLayout:v11];
    v14 = *(v5 + 21);
    *(v5 + 21) = v13;
  }

  else
  {
    if ([*(v5 + 20) channelCount] >= 3)
    {
      goto LABEL_26;
    }

    v15 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:objc_msgSend(*(v5 + 20) channels:"channelCount") interleaved:1, *(this + 42)];
    v12 = *(v5 + 21);
    *(v5 + 21) = v15;
  }

  if (!*(v5 + 21))
  {
LABEL_26:
    std::terminate();
  }

  v17 = **(Phase::Logger::GetInstance(v16) + 544);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(v5 + 21) channelCount];
    v19 = [*(v5 + 21) channelLayout];
    Phase::ChannelLayout::GetStringFromLayoutTag(__p, [v19 layoutTag]);
    if (v32 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "AudioIOUnit.mm";
    v34 = 1024;
    v35 = 744;
    v36 = 1024;
    v37 = v18;
    v38 = 2080;
    v39 = v20;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hardware output: %i channels with layout %s", buf, 0x22u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v21 = *(v5 + 21);
  v22 = *(this + 44);
  if (a2 == 1)
  {
    [v22 outputBusses];
  }

  else
  {
    [v22 inputBusses];
  }
  v23 = ;
  if ([v23 count] <= a2)
  {

    return 4294956417;
  }

  else
  {
    v24 = [v23 objectAtIndexedSubscript:?];
    *buf = 0;
    [v24 setFormat:v21 error:buf];
    v25 = *buf;

    v26 = [v25 code];
    if (!v26)
    {
      v27 = [*(v5 + 21) streamDescription];
      v26 = 0;
      v28 = *v27;
      v29 = *(v27 + 16);
      *(v5 + 26) = *(v27 + 32);
      *(v5 + 11) = v28;
      *(v5 + 12) = v29;
    }
  }

  return v26;
}

uint64_t ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit17SetOutputProviderEv_block_invoke(uint64_t a1, int *a2, __int128 *a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  v160 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 56);
  if (!a6)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v8 = *a6;
  if (!v8 || !*(a6 + 2))
  {
LABEL_12:
    strcpy(v159, "(%d): ");
    strcat(v159, "invalid IO buffer: %p / %d / %p");
    ShouldFire = Phase::Throttle::ShouldFire((v7 + 16), 0);
    if (!ShouldFire)
    {
      return 4294956433;
    }

    v26 = snprintf(v158, 0x100uLL, v159, ShouldFire, a6, v8, 0);
    v27 = **(Phase::Logger::GetInstance(v26) + 544);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 4294956433;
    }

LABEL_14:
    v152 = 136315650;
    v153 = "AudioIOBase.hpp";
    v154 = 1024;
    v155 = 133;
    v156 = 2080;
    v157 = v158;
    _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v152, 0x1Cu);
    return 4294956433;
  }

  if (v8 != 1)
  {
    strcpy(v159, "(%d): ");
    strcat(v159, "expected interleaved IO buffer, got deinterleaved %d buffers");
    v28 = Phase::Throttle::ShouldFire((v7 + 16), 0);
    if (!v28)
    {
      return 4294956433;
    }

    v29 = snprintf(v158, 0x100uLL, v159, v28, v8);
    goto LABEL_21;
  }

  if ((*(a3 + 56) & 3) == 0)
  {
    strcpy(v159, "(%d): ");
    strcat(v159, "did not receive a valid IO sample/host time");
    v30 = Phase::Throttle::ShouldFire((v7 + 16), 0);
    if (!v30)
    {
      return 4294956433;
    }

    v29 = snprintf(v158, 0x100uLL, v159, v30);
LABEL_21:
    v27 = **(Phase::Logger::GetInstance(v29) + 544);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 4294956433;
    }

    goto LABEL_14;
  }

  v11 = a1;
  v12 = *(*(*(a1 + 32) + 8) + 24);
  if ((*(v12 + 64) & 1) == 0)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = a3[3];
    *(v12 + 32) = a3[2];
    *(v12 + 48) = v15;
    *v12 = v13;
    *(v12 + 16) = v14;
    *(v12 + 64) = 1;
  }

  v16 = a4;
  *(v7 + 384) = a4;
  v17 = *a3;
  v158[0] = a6[2];
  if (atomic_load((v7 + 144)))
  {
    *a2 |= 0x10u;
    bzero(*(a6 + 2), a6[3]);
    kdebug_trace();
    v19 = a3;
    v20 = _os_log_pack_size();
    Instance = Phase::Logger::GetInstance(v20);
    result = caulk::deferred_logger::create_message(*(Instance + 1248), v20 + 88, 0);
    if (result)
    {
      v23 = _os_log_pack_fill(result + 40, v20, 0, &dword_23A302000, "AudioIOUnit: skipping IO output cycle at host time %llu for %u frames", v142, v143);
      v24 = *(v19 + 1);
      *v23 = 134218240;
      *(v23 + 4) = v24;
      *(v23 + 12) = 1024;
      *(v23 + 14) = a4;
      Phase::Logger::GetInstance(v23);
      caulk::concurrent::messenger::enqueue();
      return 0;
    }

    return result;
  }

  v31 = v158[0];
  if (v158[0] < *(a1 + 72))
  {
    Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<int const&,unsigned int const&>(v7, (a1 + 72), v158);
    return 4294956433;
  }

  v32 = *(v7 + 136);
  v150 = v7;
  v143 = a2;
  v144 = a4;
  if (v32 == 1)
  {
    v33 = mach_absolute_time();
    v34 = *(v7 + 128);
    v35 = (*(*v7 + 104))(v7);
    v36 = _os_log_pack_size();
    v37 = Phase::Logger::GetInstance(v36);
    message = caulk::deferred_logger::create_message(*(v37 + 1248), v36 + 88, 0);
    if (message)
    {
      v39 = _os_log_pack_fill(message + 40, v36, 0, &dword_23A302000, "AudioIOUnit: skipped flushing %u frames at IO resume.", v142);
      *v39 = 67109120;
      *(v39 + 1) = ((v33 - v34) * 0.0000000416666667 * v35);
      Phase::Logger::GetInstance(v39);
      caulk::concurrent::messenger::enqueue();
    }

    v7 = v150;
    v16 = v144;
    if (*(v150 + 136) == 1)
    {
      *(v150 + 136) = 0;
    }
  }

  kdebug_trace();
  Phase::Controller::VoiceManager::Implementation::IOSetCurrentTimeStampAndFramesToRender(**(*(v11[5] + 8) + 24), a3, v16);
  v40 = *(*(v11[5] + 8) + 24);
  v146 = a4;
  v41 = Phase::Controller::VoiceManager::IOExecuteRealtimeActions(v40, a3);
  v42 = *(a6 + 2);
  v151 = *(*(**(**(v7 + 8) + 696) + 184) + 72);
  v145 = a3;
  if (v31 == 2)
  {
    v60 = 0;
    v61 = v146;
    while (1)
    {
      v62 = *(v7 + 392);
      v63 = *(v62 + 16);
      v64 = *(v62 + 24);
      v65 = v64 >= v63;
      v66 = v64 - v63;
      if (v65)
      {
        v68 = v151;
        if (v66 == 0 || !v65)
        {
          if (*(v62 + 32) != 1)
          {
            goto LABEL_127;
          }

          v66 = *(v62 + 8);
        }

        if (v66)
        {
          v69 = v61 == 0;
        }

        else
        {
          v69 = 1;
        }

        if (v69)
        {
LABEL_127:
          if (v61 >= v68)
          {
            v108 = 2 * v60;
            v109 = 2 * v68;
            do
            {
              v110 = *(**(*(v11[5] + 8) + 24) + 696);
              v111 = *v110;
              Phase::Controller::DVM_RT::Update(*(*v110 + 168));
              vDSP_ztoc(*(*(v111 + 184) + 40), 1, (v42 + 4 * v108), 2, v151);
              v61 -= v151;
              v60 += v151;
              v108 += v109;
            }

            while (v61 >= v151);
          }

          if (v61)
          {
            v112 = *(**(*(v11[5] + 8) + 24) + 696);
            v113 = *v112;
            Phase::Controller::DVM_RT::Update(*(*v112 + 168));
            v114 = *(*(v113 + 184) + 40);
            vDSP_ztoc(v114, 1, (v42 + 4 * (2 * v60)), 2, v61);
            Phase::DspLayer23::BasicReblocker<float>::Write(*(v150 + 392), &v114->realp[v61], v151 - v61);
            Phase::DspLayer23::BasicReblocker<float>::Write(*(v150 + 392) + 40, &v114->imagp[v61], v151 - v61);
          }

          goto LABEL_163;
        }
      }

      else
      {
        if (v66 + *(v62 + 8))
        {
          v67 = v61 == 0;
        }

        else
        {
          v67 = 1;
        }

        v68 = v151;
        if (v67)
        {
          goto LABEL_127;
        }
      }

      v159[0].realp = 0;
      v159[0].imagp = 0;
      v159[0].realp = (*v62 + 4 * v63);
      v70 = *(v62 + 56);
      v71 = *(v62 + 64);
      v72 = v71 >= v70;
      v73 = v71 - v70;
      if (!v72)
      {
        break;
      }

      if (v73 == 0 || !v72)
      {
        if (*(v62 + 72) == 1)
        {
          break;
        }

        v73 = 0;
      }

LABEL_75:
      v159[0].imagp = (*(v62 + 40) + 4 * v70);
      if (v73 >= v61)
      {
        v74 = v61;
      }

      else
      {
        v74 = v73;
      }

      vDSP_ztoc(v159, 1, (v42 + 4 * (2 * v60)), 2, v74);
      v7 = v150;
      if (v74)
      {
        v75 = *(v150 + 392);
        v76 = *(v75 + 16) + v74;
        if (v76 == *(v75 + 8))
        {
          v76 = 0;
        }

        *(v75 + 16) = v76;
        *(v75 + 32) = 0;
        v77 = *(v75 + 56) + v74;
        if (v77 == *(v75 + 48))
        {
          v77 = 0;
        }

        *(v75 + 56) = v77;
        *(v75 + 72) = 0;
      }

      v61 -= v74;
      v60 += v74;
    }

    v73 = *(v62 + 48) - v70;
    goto LABEL_75;
  }

  if (v31 == 1)
  {
    v43 = 0;
    v44 = v146;
    while (1)
    {
      v45 = *(v7 + 392);
      v46 = *(v45 + 16);
      v47 = *(v45 + 24);
      v48 = v47 - v46;
      if (v47 >= v46)
      {
        if (v47 > v46)
        {
          if (!v44)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if ((*(v45 + 32) & 1) == 0)
        {
          goto LABEL_51;
        }

        v47 = *(v45 + 8);
        v49 = v47 == 0;
      }

      else
      {
        v47 = *(v45 + 8);
        v49 = v48 + v47 == 0;
      }

      if (v49 || v44 == 0)
      {
LABEL_51:
        while (v44 >= v151)
        {
          v55 = *(**(*(v11[5] + 8) + 24) + 696);
          v56 = *v55;
          Phase::Controller::DVM_RT::Update(*(*v55 + 168));
          memcpy((v42 + 4 * v43), **(*(v56 + 184) + 40), 4 * v151);
          v44 -= v151;
          v43 += v151;
        }

        if (v44)
        {
          v57 = *(**(*(v11[5] + 8) + 24) + 696);
          v58 = *v57;
          Phase::Controller::DVM_RT::Update(*(*v57 + 168));
          v59 = *(*(v58 + 184) + 40);
          memcpy((v42 + 4 * v43), *v59, 4 * v44);
          Phase::DspLayer23::BasicReblocker<float>::Write(*(v150 + 392), *v59 + 4 * v44, v151 - v44);
        }

        goto LABEL_163;
      }

LABEL_44:
      v51 = v47 - v46;
      if (v51 >= v44)
      {
        v52 = v44;
      }

      else
      {
        v52 = v51;
      }

      memcpy((v42 + 4 * v43), (*v45 + 4 * v46), 4 * v52);
      v44 -= v52;
      v43 += v52;
      if (v52)
      {
        v53 = *(v7 + 392);
        v54 = *(v53 + 16) + v52;
        if (v54 == *(v53 + 8))
        {
          v54 = 0;
        }

        *(v53 + 16) = v54;
        *(v53 + 32) = 0;
      }
    }
  }

  v78 = 0;
  v79 = *(*(**(**(*(v11[5] + 8) + 24) + 696) + 184) + 24);
  v80 = *(v7 + 392);
  v81 = *(v80 + 24);
  v148 = v11;
  v149 = v81;
  v147 = 8 * v31;
  v82 = v146;
LABEL_86:
  while (2)
  {
    v83 = *(v80 + 16);
    v84 = v149 >= v83;
    v85 = v149 - v83;
    if (v84)
    {
      if (v85 == 0 || !v84)
      {
        if (*(v80 + 32) != 1)
        {
          break;
        }

        v85 = *(v80 + 8);
      }
    }

    else
    {
      v85 += *(v80 + 8);
    }

    if (v85)
    {
      v86 = v82 == 0;
    }

    else
    {
      v86 = 1;
    }

    if (!v86)
    {
      v87 = v82;
      MEMORY[0x28223BE20](v41);
      v89 = &v142 - ((v88 + 15) & 0xFFFFFFFF0);
      bzero(v89, v88);
      v82 = v87;
      v11 = v148;
      if (!v31)
      {
        continue;
      }

      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = v148[8];
      while (((v93 >> v90) & 1) == 0)
      {
LABEL_104:
        if (v31 == ++v90)
        {
          v98 = v82;
          if (v92 < v82)
          {
            v98 = v92;
          }

          if (v92)
          {
            v99 = 0;
            if (v98 <= 1)
            {
              v100 = 1;
            }

            else
            {
              v100 = v98;
            }

            do
            {
              v101 = 0;
              v102 = v78;
              do
              {
                if ((v93 >> v101))
                {
                  v103 = *(*&v89[8 * v101] + 4 * v99);
                }

                else
                {
                  v103 = 0;
                }

                *(v42 + 4 * (v78 + v101++)) = v103;
              }

              while (v31 != v101);
              ++v99;
              v78 += v101;
            }

            while (v99 != v100);
            v78 = v102 + v101;
          }

          v104 = 0;
          v105 = 0;
          v82 = (v82 - v98);
          do
          {
            if ((v93 >> v104))
            {
              if (v92)
              {
                v106 = v80 + 40 * v105;
                v107 = *(v106 + 16) + v98;
                if (v107 == *(v106 + 8))
                {
                  v107 = 0;
                }

                *(v106 + 16) = v107;
                *(v106 + 32) = 0;
              }

              if (++v105 >= v79)
              {
                __assert_rtn("SetOutputProvider_block_invoke", "AudioIOUnit.mm", 1038, "v < numVEOutputChannels");
              }
            }

            ++v104;
          }

          while (v31 != v104);
          goto LABEL_86;
        }
      }

      v94 = v80 + 40 * v91;
      v96 = *(v94 + 16);
      v95 = *(v94 + 24);
      v97 = v95 >= v96;
      v92 = v95 - v96;
      if (!v97)
      {
        goto LABEL_99;
      }

      if (v92 == 0 || !v97)
      {
        if (*(v94 + 32) == 1)
        {
LABEL_99:
          v92 = *(v94 + 8) - v96;
          goto LABEL_103;
        }

        v92 = 0;
      }

LABEL_103:
      ++v91;
      *&v89[8 * v90] = *v94 + 4 * v96;
      if (v91 >= v79)
      {
        __assert_rtn("SetOutputProvider_block_invoke", "AudioIOUnit.mm", 1016, "v < numVEOutputChannels");
      }

      goto LABEL_104;
    }

    break;
  }

  for (i = v151; v82 >= i; LODWORD(v82) = v121 - i)
  {
    v116 = v82;
    v117 = *(**(*(v11[5] + 8) + 24) + 696);
    v118 = *v117;
    Phase::Controller::DVM_RT::Update(*(*v117 + 168));
    if (i < 1)
    {
      v121 = v116;
    }

    else
    {
      v119 = 0;
      v120 = *(*(v118 + 184) + 40);
      v121 = v116;
      do
      {
        if (v31)
        {
          v122 = 0;
          v123 = v11[8];
          do
          {
            if ((v123 >> v122))
            {
              v124 = *(*(v120 + 8 * v122) + 4 * v119);
            }

            else
            {
              v124 = 0;
            }

            *(v42 + 4 * (v78 + v122++)) = v124;
          }

          while (v31 != v122);
          v78 += v122;
        }

        ++v119;
      }

      while (v119 != i);
    }
  }

  if (v82)
  {
    v125 = *(**(*(v11[5] + 8) + 24) + 696);
    v126 = *v125;
    v127 = v82;
    Phase::Controller::DVM_RT::Update(*(*v125 + 168));
    v128 = v127;
    v11 = v148;
    v129 = 0;
    v130 = *(*(v126 + 184) + 40);
    v131 = v128;
    v132 = v128;
    do
    {
      v133 = v132;
      while (!v31)
      {
        if (!--v133)
        {
          goto LABEL_163;
        }
      }

      v134 = 0;
      v135 = v11[8];
      do
      {
        if ((v135 >> v134))
        {
          v136 = *(*(v130 + 8 * v134) + 4 * v129);
        }

        else
        {
          v136 = 0;
        }

        *(v42 + 4 * (v78 + v134++)) = v136;
      }

      while (v31 != v134);
      ++v129;
      --v132;
      v78 += v134;
    }

    while (v129 != v128);
    v137 = 0;
    v138 = 0;
    v139 = v151 - v128;
    do
    {
      if ((v11[8] >> v137))
      {
        v140 = v138 + 1;
        Phase::DspLayer23::BasicReblocker<float>::Write(*(v150 + 392) + 40 * v138, (*(v130 + 8 * v137) + 4 * v131), v139);
        v138 = v140;
        if (v140 >= v79)
        {
          __assert_rtn("SetOutputProvider_block_invoke", "AudioIOUnit.mm", 1084, "v < numVEOutputChannels");
        }
      }

      ++v137;
    }

    while (v31 != v137);
  }

LABEL_163:
  LODWORD(v159[0].realp) = 0;
  vDSP_rmsqv(*(a6 + 2), 1, v159, v31 * v146);
  if (*&v159[0].realp < 0.000001)
  {
    *v143 |= 0x10u;
    bzero(*(a6 + 2), a6[3]);
  }

  **(*(v11[4] + 8) + 24) = (v17 + v144);
  v141 = v150;
  *(*(*(v11[4] + 8) + 24) + 8) = (v145->mHostTime + v145->mRateScalar * (v146 / *(v150 + 336) * 24000000.0));
  *(v141 + 112) = mach_absolute_time();
  *(v141 + 120) = 1;
  if ((*(*(*(v11[4] + 8) + 24) + 64) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  mach_absolute_time();
  __udivti3();
  kdebug_trace();
  Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(*(*(v11[6] + 8) + 24), v145, v146, a6);
  return 0;
}

void sub_23A32E7C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::SystemAudioIO::AudioIOBase::IOProcError<int const&,unsigned int const&>(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  strcpy(__s, "(%d): ");
  strcat(__s, "expected at least %i channels, got %i channels");
  ShouldFire = Phase::Throttle::ShouldFire((a1 + 16), 0);
  if (ShouldFire)
  {
    v6 = snprintf(__str, 0x100uLL, __s, ShouldFire, *a2, *a3);
    v7 = **(Phase::Logger::GetInstance(v6) + 544);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AudioIOBase.hpp";
      v10 = 1024;
      v11 = 133;
      v12 = 2080;
      v13 = __str;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }
  }
}

void ___ZN5Phase10Controller13SystemAudioIO11AudioIOUnit15SetInputHandlerEv_block_invoke(uint64_t a1, AudioUnitRenderActionFlags *a2, AudioTimeStamp *inTimeStamp, uint64_t inNumberFrames, uint64_t inOutputBusNumber)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  if (atomic_load((v7 + 144)))
  {
    kdebug_trace();
    v9 = _os_log_pack_size();
    Instance = Phase::Logger::GetInstance(v9);
    message = caulk::deferred_logger::create_message(*(Instance + 1248), v9 + 88, 0);
    if (message)
    {
      v12 = _os_log_pack_fill(message + 40, v9, 0, &dword_23A302000, "AudioIOUnit: skipping IO input cycle at host time %llu for %u frames", v24, v25);
      mHostTime = inTimeStamp->mHostTime;
      *v12 = 134218240;
      *(v12 + 4) = mHostTime;
      *(v12 + 12) = 1024;
      *(v12 + 14) = inNumberFrames;
      Phase::Logger::GetInstance(v12);

      caulk::concurrent::messenger::enqueue();
    }
  }

  else
  {
    ioData.mBuffers[0].mData = 0;
    v16 = *(a1 + 56);
    v17 = *(a1 + 60);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = v16;
    *&ioData.mBuffers[0].mDataByteSize = (v17 * inNumberFrames);
    v18 = AudioUnitRender(*(v7 + 344), a2, inTimeStamp, inOutputBusNumber, inNumberFrames, &ioData);
    if (v18)
    {
      strcpy(__s, "(%d): ");
      strcat(__s, "error %d on input bus %ld timestamp %0.2f frameCount %u");
      ShouldFire = Phase::Throttle::ShouldFire((v7 + 16), 0);
      if (ShouldFire)
      {
        v20 = snprintf(__str, 0x100uLL, __s, ShouldFire, v18, inOutputBusNumber, *&inTimeStamp->mSampleTime, inNumberFrames);
        v21 = **(Phase::Logger::GetInstance(v20) + 544);
        v22 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v28 = "AudioIOBase.hpp";
          v29 = 1024;
          v30 = 133;
          v31 = 2080;
          v32 = __str;
          _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }
    }

    else
    {
      Phase::Controller::SystemAudioIO::AudioIOBase::IOConfiguration::WriteCaptureBufferList(*(*(*(a1 + 32) + 8) + 24), inTimeStamp, inNumberFrames, &ioData);
      *__s = 0;
      if (*(v7 + 304) && caulk::pooled_semaphore_mutex::try_lock((v7 + 312)))
      {
        v23 = *(v7 + 304);
        if (v23 && *v23)
        {
          Phase::Controller::SpeechDetector::SpeechDetectorImpl::ProcessAndGetLatest(*v23, &ioData, __s);
        }

        caulk::pooled_semaphore_mutex::_unlock((v7 + 312));
      }

      Phase::Controller::VoiceManager::IOExecuteRealtimeInputActions(*(*(*(a1 + 40) + 8) + 24));
    }
  }
}

uint64_t Phase::Controller::SystemAudioIO::AudioIOUnit::OnOutputRouteChanged(Phase::Controller::SystemAudioIO::AudioIOUnit *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 544);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AudioIOUnit.mm";
    v6 = 1024;
    v7 = 1212;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Audio route change notification sent to voice manager.", &v4, 0x12u);
  }

  result = Phase::Controller::VoiceManager::Implementation::AudioIOConfigChanged(**(this + 1));
  if (result)
  {
    atomic_fetch_add(this + 36, 1u);
  }

  return result;
}

id Phase::Controller::SystemAudioIO::AudioIOUnit::CopyWorkGroup(AudioUnit *this)
{
  v14 = *MEMORY[0x277D85DE8];
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(this[43], 0x7DFu, 0, 0, &outData, &ioDataSize);
  v2 = Property;
  if (Property)
  {
    v3 = **(Phase::Logger::GetInstance(Property) + 544);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AudioIOUnit.mm";
      v10 = 1024;
      v11 = 1230;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get workgroup from output audio unit: %d", buf, 0x18u);
    }

    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

void ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = **(Phase::Logger::GetInstance(v5) + 544);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v3 userInfo];
          v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CB8220]];
          v11 = [v10 unsignedIntValue];
          v12 = [v3 userInfo];
          v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CB8218]];
          v14 = 136315906;
          v15 = "AudioIOUnit.mm";
          v16 = 1024;
          v17 = 87;
          v18 = 1024;
          v19 = v11;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received AVAudioSession route change notification with reason %u and previous route:\n%@", &v14, 0x22u);
        }

        if (*(v7 + 48))
        {
          *(v7 + 49) = 1;
        }

        else
        {
          Phase::Controller::SystemAudioIO::AudioIOUnit::OnOutputRouteChanged(*(v7 + 16));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_23A32F064(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c74_ZTSNSt3__18weak_ptrIN5Phase10Controller13SystemAudioIO14ImplementationEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5Phase10Controller13SystemAudioIO14Implementation10InitializeEv_block_invoke_70(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (!v7)
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_19;
      }

      v8 = [v3 userInfo];
      v9 = [v8 valueForKey:*MEMORY[0x277CB8080]];
      v10 = [v9 intValue];

      if (v10)
      {
        if (v10 != 1 || (*(v7 + 48) = 1, v12 = **(Phase::Logger::GetInstance(v11) + 544), v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO), !v11))
        {
LABEL_15:
          if (*(v7 + 49) == 1)
          {
            v14 = **(Phase::Logger::GetInstance(v11) + 544);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = 136315650;
              v16 = "AudioIOUnit.mm";
              v17 = 1024;
              v18 = 138;
              v19 = 1024;
              v20 = v10;
              _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Dangling route change flag at interruption (%u) reception.", &v15, 0x18u);
            }
          }

          goto LABEL_18;
        }

        v15 = 136315394;
        v16 = "AudioIOUnit.mm";
        v17 = 1024;
        v18 = 116;
        v13 = "%25s:%-5d Received AVAudioSessionInterruptionTypeBegan interruption";
      }

      else
      {
        if (*(v7 + 48) == 1)
        {
          if (*(v7 + 49) == 1)
          {
            v11 = Phase::Controller::SystemAudioIO::AudioIOUnit::OnOutputRouteChanged(*(v7 + 16));
            *(v7 + 49) = 0;
          }

          *(v7 + 48) = 0;
        }

        v12 = **(Phase::Logger::GetInstance(v11) + 544);
        v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (!v11)
        {
          goto LABEL_15;
        }

        v15 = 136315394;
        v16 = "AudioIOUnit.mm";
        v17 = 1024;
        v18 = 132;
        v13 = "%25s:%-5d Received AVAudioSessionInterruptionTypeEnded interruption";
      }

      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_INFO, v13, &v15, 0x12u);
      goto LABEL_15;
    }
  }

LABEL_19:
}

void sub_23A32F33C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
}

Phase::Controller::SystemAudioIO::Implementation *Phase::Controller::SystemAudioIO::Implementation::Implementation(Phase::Controller::SystemAudioIO::Implementation *this, Phase::Controller::SystemAudioIO::AudioIOUnit *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  *(this + 24) = 0;
  return this;
}

void sub_23A32F418(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SystemAudioIO::Implementation::~Implementation(id *this)
{
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *std::shared_ptr<Phase::Controller::SystemAudioIO::Implementation>::shared_ptr[abi:ne200100]<Phase::Controller::SystemAudioIO::Implementation,std::default_delete<Phase::Controller::SystemAudioIO::Implementation>,0>(uint64_t *a1, uint64_t *a2)
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

void std::shared_ptr<Phase::Controller::SystemAudioIO::Implementation>::__enable_weak_this[abi:ne200100]<Phase::Controller::SystemAudioIO::Implementation,Phase::Controller::SystemAudioIO::Implementation,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<Phase::Controller::SystemAudioIO::Implementation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

id *std::__shared_ptr_pointer<Phase::Controller::SystemAudioIO::Implementation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    Phase::Controller::SystemAudioIO::Implementation::~Implementation(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::SpatialModeler::BaseModelerErrorCategory::message(int __val@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "Base Modeler Error code: ", 0x19uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_23A32F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::BaseModelerErrorCategory::~BaseModelerErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::BinauralSpatializer::BinauralSpatializer(uint64_t a1, __int128 *a2, const IR::IRDataAttributes *a3, char a4, uint64_t a5)
{
  LOBYTE(__p[0]) = 0;
  std::vector<char>::vector[abi:ne200100](v14, 32, __p);
  v10 = v14[0];
  *v14[0] = 6684674;
  v10[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Binaural");
  Phase::Controller::Spatializer::Spatializer(a1, a2, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  *a1 = &unk_284D2FBA0;
  IR::IRDataAttributes::IRDataAttributes(a1 + 96, a3);
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  return a1;
}

void sub_23A32F7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::BinauralSpatializer::~BinauralSpatializer(void **this)
{
  *this = &unk_284D2FBA0;
  IR::IRDataAttributes::~IRDataAttributes((this + 12));

  Phase::Controller::Spatializer::~Spatializer(this);
}

{
  *this = &unk_284D2FBA0;
  IR::IRDataAttributes::~IRDataAttributes((this + 12));
  Phase::Controller::Spatializer::~Spatializer(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A32FDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  __cxa_free_exception(v20);
  if (*(v18 + 391) < 0)
  {
    operator delete(*(v18 + 368));
  }

  v22 = *(v18 + 352);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::unique_ptr<Phase::Controller::HrirAsset>::~unique_ptr[abi:ne200100]((v18 + 320));
  IR::IRDataAttributes::~IRDataAttributes((v18 + 160));
  v23 = *(v18 + 152);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::array<Phase::Controller::SpatializerFilterHandle,2ul>::~array(v19);
  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  v8 = *(a2 + 64);
  if (v8)
  {
    CFRetain(*(a2 + 64));
  }

  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 88);
  if (v9)
  {
    CFRetain(*(a2 + 88));
  }

  *(a1 + 88) = v9;
  v10 = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 96) = v10;
  v11 = *(a2 + 128);
  if (v11)
  {
    CFRetain(*(a2 + 128));
  }

  *(a1 + 128) = v11;
  v12 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v12;
  return a1;
}

void IR::IRDataAttributes::~IRDataAttributes(IR::IRDataAttributes *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::__shared_ptr_emplace<Phase::Controller::BinauralEncoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D2FBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t **std::unique_ptr<Phase::Controller::HrirAsset>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<Phase::Controller::HrirAsset::Implementation>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x23EE864A0](v3, 0x20C4093837F09);
  }

  return a1;
}

void Phase::Controller::BinauralEncoder::~BinauralEncoder(Phase::Controller::BinauralEncoder *this)
{
  Phase::Controller::BinauralEncoder::~BinauralEncoder(this);

  JUMPOUT(0x23EE864A0);
}

{
  *this = &unk_284D2FC10;
  if (*(this + 304) == 1)
  {
    IR::IRDataLoader::instance(this);
    if (*(this + 367) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 43), *(this + 44));
    }

    else
    {
      __p = *(this + 344);
    }

    IR::IRDataLoader::removeFromPersonalizedHRTFCallbackPool();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<Phase::Controller::HrirAsset>::~unique_ptr[abi:ne200100](this + 37);
  IR::IRDataAttributes::~IRDataAttributes((this + 136));
  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  for (i = 0; i != -96; i -= 48)
  {
    v5 = *(this + i + 112);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(this + i + 96);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(this + i + 80);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void Phase::Controller::BinauralEncoder::Initialize(Phase::Controller::BinauralEncoder *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 46) = 0;
  if (*(this + 304) == 1)
  {
    IR::IRDataLoader::instance(this);
    if (*(this + 367) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 43), *(this + 44));
    }

    else
    {
      __p = *(this + 344);
    }

    v3 = 0;
    operator new();
  }

  if ((Phase::Controller::BinauralEncoder::BuildFilterDatabase(this, 0) & 1) == 0)
  {
    std::terminate();
  }

  Phase::Controller::BinauralEncoder::SetFilterTypeInUse(this, 0);
}

void sub_23A330258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::BinauralEncoder::GetFiltersAndDelays(IR::IRData **a1, float *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a1[15];
  if (!v6)
  {
    v20 = **(Phase::Logger::GetInstance(0) + 592);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "BinauralSpatializer.mm";
      v31 = 1024;
      v32 = 161;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != mIRData.get() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != mIRData.get() is false.");
  }

  FilterLength = IR::IRData::getFilterLength(v6);
  if (FilterLength > a3)
  {
    v22 = **(Phase::Logger::GetInstance(FilterLength) + 592);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "BinauralSpatializer.mm";
      v31 = 1024;
      v32 = 163;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inFilterLengthInsamples >= mIRData->getFilterLength() is false.", buf, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "PRECONDITION: inFilterLengthInsamples >= mIRData->getFilterLength() is false.");
  }

  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a2);
  IR::IRCoordinates::IRCoordinates(buf);
  NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(a1[15]);
  if (NumFiltersPerSpatialPoint != 2)
  {
    v24 = **(Phase::Logger::GetInstance(NumFiltersPerSpatialPoint) + 592);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "BinauralSpatializer.mm";
      *&v28[12] = 1024;
      *&v28[14] = 170;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: numOutputChannels == 2 is false.", v28, 0x12u);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v25, "PRECONDITION: numOutputChannels == 2 is false.");
  }

  IR::IRCoordinates::set();
  IR::IRCoordinates::set();
  v13 = IR::IRData::getFilterLength(a1[15]);
  std::vector<float>::vector[abi:ne200100](&__p, v13);
  std::vector<std::vector<float>>::vector[abi:ne200100](v28, 2uLL);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  std::vector<float>::vector[abi:ne200100](&__p, 2uLL);
  IR::IRData::getInterpolatedTimeDomainCoeffs();
  v14 = 0;
  for (i = 0; i < (*(*a1 + 6))(a1); ++i)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*&v28[8] - *v28) >> 3) <= i)
    {
      std::vector<std::vector<float>>::__throw_out_of_range[abi:ne200100]();
    }

    v16 = *(*v28 + v14);
    v17 = *(a4 + 8 * i);
    v18 = IR::IRData::getFilterLength(a1[15]);
    memcpy(v17, v16, 4 * v18);
    *(a5 + 4 * i) = *(__p + i);
    v14 += 24;
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  __p = v28;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 1;
}

void Phase::Controller::BinauralEncoder::AcquireFilters(Phase::Controller::BinauralEncoder *this@<X0>, Phase::Controller::SpatializerFilterHandle *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(this + 36);
  if (v3 >= 2)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  v5 = Phase::Controller::SpatializerFilterHandle::SpatializerFilterHandle(a2, (this + 48 * v3 + 24));
  if (!*a2)
  {
    v6 = **(Phase::Logger::GetInstance(v5) + 592);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::BinauralEncoder::GetDescription(__p, this, a2);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315906;
      v11 = "BinauralSpatializer.mm";
      v12 = 1024;
      v13 = 116;
      v14 = 2080;
      v15 = v7;
      v16 = 2048;
      v17 = v3;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d [BinauralSpatializer] %s Acquiring invalid filter handle for filter type %lu", buf, 0x26u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void Phase::Controller::BinauralEncoder::GetDescription(Phase::Controller::BinauralEncoder *this@<X0>, Phase::Controller::BinauralEncoder *a2@<X8>)
{
  (*(*this + 32))(&v4);
  Phase::Controller::BinauralEncoder::GetDescription(a2, this, &v4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t Phase::Controller::BinauralEncoder::GetWorkBufferSizeInBytes(uint64_t a1, uint64_t a2, float *a3)
{
  if (**(a1 + 312) <= *a3)
  {
    return 0;
  }

  else
  {
    return 8 * *(*a2 + 8);
  }
}

uint64_t Phase::Controller::BinauralEncoder::GetNearestFilter(Phase::Logger *a1, Phase::Controller::SpatializerFilterDatabase **a2, float *a3, uint64_t a4)
{
  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a3);
  v8 = *(a1 + 39);
  NearestFilterData = Phase::Controller::SpatializerFilterDatabase::GetNearestFilterData(*a2, a3[1], a3[2]);
  MiddleFilter = Phase::Controller::SpatializerFilterDatabase::GetMiddleFilter(*a2, 3u);
  v12 = *(*a2 + 2);

  return Phase::Controller::BinauralUtility::ApplyInHeadFilter(v8, NearestFilterData, MiddleFilter, v12, a3, a4, v11);
}

void Phase::Controller::BinauralEncoder::Update(Phase::Controller::BinauralEncoder *this, double a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 304))
  {
    if ((*(this + 337) & 1) == 0)
    {
      *(this + 337) = 1;
      Phase::Controller::BinauralEncoder::SwapSpatializationFilters(this, 1);
    }

    v4 = *(this + 40);
    v3 = *(this + 41);
    *(this + 40) = 0;
    *(this + 41) = 0;
    if (!v4)
    {
      goto LABEL_28;
    }

    if (*v4 != 1)
    {
LABEL_17:
      v9 = *v4;
      v10 = atomic_load(this + 36);
      if (v9 != v10)
      {
        (*(*this + 40))(v19, this);
        Phase::Controller::BinauralEncoder::SetFilterTypeInUse(this, *v4);
        v12 = **(Phase::Logger::GetInstance(v11) + 592);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v20;
          v14 = v19[0];
          (*(*this + 40))(__p, this);
          v15 = v19;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315906;
          v22 = "BinauralSpatializer.mm";
          v23 = 1024;
          v24 = 380;
          v25 = 2080;
          v26 = v15;
          v27 = 2080;
          v28 = v16;
          _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Swapped spatialization filters from %s to %s", buf, 0x26u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        atomic_store(1u, this + 336);
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

LABEL_28:
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      return;
    }

    *v4 = 0;
    if (*(v4 + 8) == 1)
    {
      if (!Phase::Controller::BinauralEncoder::BuildFilterDatabase(this, 1))
      {
        goto LABEL_17;
      }

LABEL_11:
      *v4 = 1;
      goto LABEL_17;
    }

    if (*(this + 9))
    {
      v5 = IR::IRDataLoader::instance(this);
      v6 = IR::IRDataLoader::checkIfPersonalizedHRTFIsAllowed(v5);
      if (v6)
      {
        goto LABEL_11;
      }

      v7 = **(Phase::Logger::GetInstance(v6) + 592);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315394;
      v22 = "BinauralSpatializer.mm";
      v23 = 1024;
      v24 = 360;
      v8 = "%25s:%-5d Use Personalized HRIR data not allowed - using Default.";
    }

    else
    {
      v7 = **(Phase::Logger::GetInstance(this) + 592);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315394;
      v22 = "BinauralSpatializer.mm";
      v23 = 1024;
      v24 = 356;
      v8 = "%25s:%-5d No valid Personalized HRIR data database found - using Default.";
    }

    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
    goto LABEL_17;
  }
}

void sub_23A330D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::BinauralEncoder::HaveFiltersChanged(Phase::Controller::BinauralEncoder *this)
{
  v1 = atomic_load(this + 336);
  if (v1)
  {
    atomic_store(0, this + 336);
  }

  return v1 & 1;
}

void Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(Phase::Controller::SpatializerFilterHandle *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::array<Phase::Controller::SpatializerFilterHandle,2ul>::~array(uint64_t a1)
{
  for (i = 0; i != -96; i -= 48)
  {
    v3 = *(a1 + i + 88);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(a1 + i + 72);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(a1 + i + 56);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return a1;
}

std::__shared_weak_count *Phase::Controller::BinauralEncoder::BuildFilterDatabase(uint64_t a1, uint64_t a2)
{
  __p[7] = *MEMORY[0x277D85DE8];
  *(a1 + 184) = 2 * (a2 == 1);
  IR::IRDataLoader::instance(a1);
  memset(__p, 0, 24);
  IR::IRDataLoader::load();
  v4 = *(a1 + 128);
  *(a1 + 120) = v19;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(a1 + 120);
  if (!v5)
  {
    v13 = **(Phase::Logger::GetInstance(0) + 592);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = "BinauralSpatializer.mm";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 261;
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d IRDataLoader failed to load HRIR. Skipping database initialization.", __p, 0x12u);
    return 0;
  }

  if (a2 != 1)
  {
    goto LABEL_9;
  }

  IRDataAttributes = IR::IRData::getIRDataAttributes(v5);
  if (*(IRDataAttributes + 12))
  {
    v5 = *(a1 + 120);
LABEL_9:
    FilterLength = IR::IRData::getFilterLength(v5);
    IR::IRData::getMaxDelay(*(a1 + 120));
    v9 = FilterLength + v8;
    v10 = v9 - 1;
    if ((v9 ^ (v9 - 1)) <= v9 - 1)
    {
      v11 = 1;
      do
      {
        v10 |= v10 >> v11;
        v12 = v11 >= 0x10;
        v11 *= 2;
      }

      while (!v12);
    }

    __p[0] = *(a1 + 16);
    std::allocate_shared[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase,std::allocator<Phase::Controller::SpatializerFilterDatabase>,Phase::Controller::Spatializer const*&,Phase::Controller::SpatializerEncoder const*&,unsigned int &,0>();
  }

  v15 = **(Phase::Logger::GetInstance(IRDataAttributes) + 592);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = "BinauralSpatializer.mm";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 272;
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d IRDataLoader failed to load personalized HRIR. Skipping database initialization.", __p, 0x12u);
  }

  v16 = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  result = *(a1 + 128);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (result)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    return 0;
  }

  return result;
}

void Phase::Controller::BinauralEncoder::SetFilterTypeInUse(unint64_t *a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1 + 36;
  atomic_store(a2, a1 + 36);
  v4 = **(Phase::Logger::GetInstance(a1) + 592);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = atomic_load(v3);
    (*(*a1 + 40))(__p, a1);
    v6 = "Personalized";
    if (!v5)
    {
      v6 = "Default";
    }

    v11 = "BinauralSpatializer.mm";
    *buf = 136315906;
    v12 = 1024;
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v13 = 392;
    v14 = 2080;
    v15 = v6;
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using %s HRIR filter database - %s.", buf, 0x26u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

__n128 std::__function::__func<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D2FC90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::BinauralEncoder::*)(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity),Phase::Controller::BinauralEncoder*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<Phase::Controller::BinauralEncoder::FilterSwapInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D2FCD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void applesauce::CF::DataRef::~DataRef(const void **this)
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

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_23A331864(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A331A40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *Phase::Controller::BinauralEncoder::GetDescription(Phase::Controller::BinauralEncoder *this, const Phase::Controller::SpatializerFilterHandle *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  atomic_load(a2 + 36);
  v5 = *a2;
  if (*a3)
  {
    (*(v5 + 56))(a2, a3);
    (*(*a2 + 48))(a2);
    snprintf(__str, 0x100uLL, "<Encoder Type: Binaural, Filter Type: %s, Filter Length: %d, Output Channel Count: %d>");
  }

  else
  {
    (*(v5 + 48))(a2);
    snprintf(__str, 0x100uLL, "<Encoder Type: Binaural, Filter Type: %s, Filter Length: Unavailable, Output Channel Count: %d>");
  }

  return std::string::basic_string[abi:ne200100]<0>(this, __str);
}

uint64_t *std::unique_ptr<Phase::Controller::HrirAsset>::reset[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::unique_ptr<Phase::Controller::HrirAsset::Implementation>::~unique_ptr[abi:ne200100](result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::BinauralUtility::BinauralUtility(Phase::Controller::BinauralUtility *this, float a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = 0;
  LODWORD(v4) = 1065353216;
  std::vector<float>::vector[abi:ne200100](this + 2, 2uLL, &v4);
  v4 = 0x42B4000043870000;
  memset(v3, 0, sizeof(v3));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v3, &v4, __p, 2uLL);
  v4 = 0;
  memset(v2, 0, sizeof(v2));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v2, &v4, __p, 2uLL);
  LODWORD(v4) = 1;
  *__p = 0u;
  v6 = 0u;
  v7 = 0u;
  operator new();
}

void sub_23A331E24(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  v22 = v20;
  MEMORY[0x23EE864A0](v22, 0x20C4093837F09);
  AudioDSP::Core::VBAP::InitParameters::~InitParameters(&buf);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = **(Phase::Logger::GetInstance(v24) + 592);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "BinauralUtility.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 37;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d [BinauralUtility] VBAP encoder init: invalid output channel layout!", &buf, 0x12u);
    }

    std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](v18, 0);
    __cxa_end_catch();
    JUMPOUT(0x23A331DECLL);
  }

  v26 = *v19;
  if (*v19)
  {
    *(v17 + 24) = v26;
    operator delete(v26);
  }

  std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](v18, 0);
  _Unwind_Resume(a1);
}

AudioDSP::Core::VBAP *std::unique_ptr<AudioDSP::Core::VBAP>::reset[abi:ne200100](AudioDSP::Core::VBAP **a1, AudioDSP::Core::VBAP *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AudioDSP::Core::VBAP::~VBAP(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Controller::BinauralUtility::ApplyInHeadFilter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, float *a5, uint64_t a6, double a7)
{
  v32 = *MEMORY[0x277D85DE8];
  *&a7 = *a5;
  v8 = *a1;
  if (*a5 >= *a1)
  {
    return *a2;
  }

  v9 = a6;
  if (!a6)
  {
    v24 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "BinauralUtility.cpp";
      v30 = 1024;
      v31 = 70;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInWorkBuffer is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: nullptr != pInWorkBuffer is false.");
  }

  v14 = *&a7 / v8;
  v28 = *&a7 / v8;
  *buf = 1065353216;
  v15 = std::vector<float>::assign(a1 + 2, 2uLL, buf, *&a7);
  if (!a1[1])
  {
    v26 = **(Phase::Logger::GetInstance(v15) + 592);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "BinauralUtility.cpp";
      v30 = 1024;
      v31 = 90;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != mpVBAPPanner is false.", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v27, "PRECONDITION: nullptr != mpVBAPPanner is false.");
  }

  v16 = (a5[2] * 0.017453);
  v17 = __sincos_stret(((a5[1] + -90.0) * 0.017453));
  v19 = __sincos_stret(v16);
  v18.f64[0] = v19.__cosval;
  sinval = v17.__sinval;
  v18.f64[1] = v19.__sinval;
  *buf = vcvt_f32_f64(vmulq_n_f64(v18, v17.__cosval));
  *&buf[8] = sinval;
  AudioDSP::Core::VBAP::calculateVBAPGains();
  v21 = *a3;
  v22 = *a2;
  *a1[2] = vmul_n_f32(*a1[2], sqrtf(1.0 - (v14 * v14)));
  MEMORY[0x23EE87290](v21, 2);
  MEMORY[0x23EE87290](v21 + 4, 2, a1[2] + 4, v9 + 4, 2, a4);
  MEMORY[0x23EE87280](v22, 1, &v28, v9, 1, v9, 1, 2 * a4);
  return v9;
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

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23A554B70)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_23A554B60)))).i32[1])
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
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_23A554B70)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_23A554B60)))).i32[1])
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

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_23A33267C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSP::Core::VBAP::InitParameters::~InitParameters(AudioDSP::Core::VBAP::InitParameters *this)
{
  v3 = (this + 32);
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::logic_error *_ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_284D2FD28;
  return result;
}

double Phase::BitBlockAllocator<Phase::SystemAllocator>::Destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Phase::BitBlockAllocator<Phase::SystemAllocator>::Reset(a1, a2, a3, a4);
  if (*(a1 + 32))
  {
    operator delete(*(a1 + 16));
  }

  *a1 = 0xFFFF00000000;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void Phase::BitBlockAllocator<Phase::SystemAllocator>::Initialize(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0xFFFF00000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = (a2 + 63) & 0xFFFFFFC0;
  if (v5 > 0x8000)
  {
    __assert_rtn("Initialize", "BitBlockAllocator.cpp", 28, "maximumBlockCount <= kBlockMax");
  }

  v10 = (a2 + 63) >> 6;
  v11 = 8 * ((v10 + 63) >> 6);
  v12 = 16 * v10;
  v13 = (v11 + v12);
  if (v11 + v12)
  {
    v13 = operator new(v13);
  }

  *a1 = v5;
  *(a1 + 6) = a3;
  *(a1 + 16) = v13;
  *(a1 + 24) = v13 + v11;
  v14 = 1;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  do
  {
    v15 = v14;
    v16 = v14 & a3;
    v14 *= 2;
  }

  while (!v16);
  *(a1 + 8) = v15;
  Phase::Memset8(v13, 0, v11);
  v17 = *(a1 + 24);

  Phase::Memset8(v17, 0, v12);
}

void Phase::BitBlockAllocator<Phase::SystemAllocator>::Reset(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 1) = -65536;
  a1[5] = 0;
  v5 = *a1;
  v6 = v5 >> 6;
  Phase::Memset8(*(a1 + 2), 0, (((v5 >> 6) + 63) >> 3) & 0xF8);
  if (v5 >= 0x40)
  {
    v7 = *(a1 + 3);
    do
    {
      v8 = v7[1];
      if (v8)
      {
        operator delete(v8);
      }

      else if (*v7)
      {
        __assert_rtn("Reset", "BitBlockAllocator.cpp", 86, "pBottomEntry->mBits == 0");
      }

      *v7 = 0;
      v7[1] = 0;
      v7 += 2;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }
}

char *Phase::BitBlockAllocator<Phase::SystemAllocator>::Allocate(Phase::Logger *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (!*a1)
  {
LABEL_5:
    v6 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "BitBlockAllocator.cpp";
      v27 = 1024;
      v28 = 144;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::OutOfMemory): BitBlockAllocator::Allocate(): failed!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(exception, "BitBlockAllocator::Allocate(): failed!");
  }

  v3 = 0;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  while (*v4 == -1)
  {
    ++v4;
    v5 += 1024;
    v3 -= 4096;
    if (!(((v1 + 4095) >> 12 << 12) + v3))
    {
      goto LABEL_5;
    }
  }

  v8 = __clz(~*v4);
  v9 = *(v5 + 16 * v8);
  v10 = __clz(~v9);
  v11 = v10 + (v8 << 6) - v3;
  if (v11 >= v1)
  {
    v22 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "BitBlockAllocator.cpp";
      v27 = 1024;
      v28 = 140;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (Phase::OutOfMemory): BitBlockAllocator::Allocate(): failed!", buf, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(v23, "BitBlockAllocator::Allocate(): failed!");
  }

  v12 = v5 + 16 * v8;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = *(v5 + 16 * v8);
    goto LABEL_20;
  }

  v15 = *(a1 + 3);
  if (!*(a1 + 3))
  {
    goto LABEL_18;
  }

  v16 = v15 << 6;
  v17 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    v13 = operator new(v15 << 6);
    goto LABEL_19;
  }

  if ((v17 & (v17 - 1)) != 0)
  {
    log = **(Phase::Logger::GetInstance(0) + 192);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "SystemAllocator.hpp";
      v27 = 1024;
      v28 = 47;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&dword_23A302000, log, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", buf, 0x1Cu);
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = operator new(v16, v17);
LABEL_19:
  *(v12 + 8) = v13;
  v14 = *(v5 + 16 * v8);
LABEL_20:
  v18 = 0x8000000000000000 >> v10;
  if (v9 == -1)
  {
    v18 = 0;
  }

  v19 = v14 | v18;
  *(v5 + 16 * v8) = v19;
  if (v19 == -1)
  {
    *v4 |= 0x8000000000000000 >> v8;
  }

  ++*(a1 + 1);
  ++*(a1 + 5);
  v20 = *(a1 + 2);
  if (v20 <= v11)
  {
    LOWORD(v20) = v11;
  }

  *(a1 + 2) = v20;
  return &v13[v10 * *(a1 + 3)];
}

void Phase::BitBlockAllocator<Phase::SystemAllocator>::Free(uint64_t a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || (v4 = *(a1 + 4), v4 < a2))
  {
    v11 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "BitBlockAllocator.cpp";
      v17 = 1024;
      v18 = 151;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range) [(inIndex < 0) || (inIndex > mHighestInUse) is true]: BitBlockAllocator::Free(): Invalid index %d!", &v15, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "BitBlockAllocator::Free(): Invalid index %d!");
  }

  v5 = *(a1 + 24) + 16 * (a2 >> 6);
  if ((*v5 & (0x8000000000000000 >> a2)) == 0)
  {
    v13 = **(Phase::Logger::GetInstance(a1) + 320);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "BitBlockAllocator.cpp";
      v17 = 1024;
      v18 = 158;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [(pBottomEntry->mBits & maskBottom) == 0 is true]: BitBlockAllocator::Free(): Internal failure!", &v15, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v14, "BitBlockAllocator::Free(): Internal failure!");
  }

  *(*(a1 + 16) + 8 * (a2 >> 12)) &= ~(0x8000000000000000 >> (a2 >> 6));
  v6 = *v5 & ~(0x8000000000000000 >> a2);
  *v5 = v6;
  if (v6)
  {
    v4 = v4;
  }

  else
  {
    operator delete(*(v5 + 8));
    *(v5 + 8) = 0;
    v4 = *(a1 + 4);
  }

  --*(a1 + 2);
  if (a2 == v4)
  {
    v7 = v4 - 1;
    v8 = (v4 - 1);
    if (v8 >= -1)
    {
      LOWORD(v8) = -1;
    }

    while ((v7 & 0x8000) == 0)
    {
      v9 = v7;
      v10 = *(*(a1 + 24) + 16 * ((v7-- >> 6) & 0x1FF));
      if (v10 << v9 < 0)
      {
        LOWORD(v8) = v9;
        break;
      }
    }

    *(a1 + 4) = v8;
  }
}

void Phase::OutOfMemory::~OutOfMemory(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

double Phase::Controller::sClamp<double>(Phase::Logger *a1, double a2, double a3, double a4)
{
  v4 = a2;
  v20 = *MEMORY[0x277D85DE8];
  if (a2 < a3 || a2 > a4)
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 720);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "CvmParameter.hpp";
      v12 = 1024;
      v13 = 33;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Value is out of bounds. Clamping %f to range [%f, %f]", &v10, 0x30u);
    }

    return fmin(fmax(v4, a3), a4);
  }

  return v4;
}

uint64_t Phase::ChannelLayout::GetLayoutTagFromString(uint64_t a1)
{
  __str = MEMORY[0x28223BE20](a1);
  v348 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v64, "Mono");
  LODWORD(v66.__locale_) = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v67, "Stereo");
  v68 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(&v69, "StereoHeadphones");
  v71 = 6684674;
  std::string::basic_string[abi:ne200100]<0>(&v72, "MatrixStereo");
  v73 = 6750210;
  std::string::basic_string[abi:ne200100]<0>(v74, "MidSide");
  v75 = 6815746;
  std::string::basic_string[abi:ne200100]<0>(v76, "XY");
  v77 = 6881282;
  std::string::basic_string[abi:ne200100]<0>(v78, "Binaural");
  v79 = 6946818;
  std::string::basic_string[abi:ne200100]<0>(v80, "Ambisonic_B_Format");
  v81 = 7012356;
  std::string::basic_string[abi:ne200100]<0>(v82, "Quadraphonic");
  v83 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v84, "Pentagonal");
  v85 = 7143429;
  std::string::basic_string[abi:ne200100]<0>(v86, "Hexagonal");
  v87 = 7208966;
  std::string::basic_string[abi:ne200100]<0>(v88, "Octagonal");
  v89 = 7274504;
  std::string::basic_string[abi:ne200100]<0>(v90, "Cube");
  v91 = 7340040;
  std::string::basic_string[abi:ne200100]<0>(v92, "MPEG_1_0");
  v93 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v94, "MPEG_2_0");
  v95 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v96, "MPEG_3_0_A");
  v97 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v98, "MPEG_3_0_B");
  v99 = 7471107;
  std::string::basic_string[abi:ne200100]<0>(v100, "MPEG_4_0_A");
  v101 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v102, "MPEG_4_0_B");
  v103 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v104, "MPEG_5_0_A");
  v105 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v106, "MPEG_5_0_B");
  v107 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v108, "MPEG_5_0_C");
  v109 = 7798789;
  std::string::basic_string[abi:ne200100]<0>(v110, "MPEG_5_0_D");
  v111 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v112, "MPEG_5_1_A");
  v113 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v114, "MPEG_5_1_B");
  v115 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v116, "MPEG_5_1_C");
  v117 = 8060934;
  std::string::basic_string[abi:ne200100]<0>(v118, "MPEG_5_1_D");
  v119 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v120, "MPEG_6_1_A");
  v121 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v122, "MPEG_7_1_A");
  v123 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v124, "MPEG_7_1_B");
  v125 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v126, "MPEG_7_1_C");
  v127 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v128, "Emagic_Default_7_1");
  v129 = 8454152;
  std::string::basic_string[abi:ne200100]<0>(v130, "SMPTE_DTV");
  v131 = 8519688;
  std::string::basic_string[abi:ne200100]<0>(v132, "ITU_1_0");
  v133 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v134, "ITU_2_0");
  v135 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v136, "ITU_2_1");
  v137 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v138, "ITU_2_2");
  v139 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v140, "ITU_3_0");
  v141 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v142, "ITU_3_1");
  v143 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v144, "ITU_3_2");
  v145 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v146, "ITU_3_2_1");
  v147 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v148, "ITU_3_4_1");
  v149 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v150, "DVD_0");
  v151 = 6553601;
  std::string::basic_string[abi:ne200100]<0>(v152, "DVD_1");
  v153 = 6619138;
  std::string::basic_string[abi:ne200100]<0>(v154, "DVD_2");
  v155 = 8585219;
  std::string::basic_string[abi:ne200100]<0>(v156, "DVD_3");
  v157 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v158, "DVD_4");
  v159 = 8716291;
  std::string::basic_string[abi:ne200100]<0>(v160, "DVD_5");
  v161 = 8781828;
  std::string::basic_string[abi:ne200100]<0>(v162, "DVD_6");
  v163 = 8847365;
  std::string::basic_string[abi:ne200100]<0>(v164, "DVD_7");
  v165 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v166, "DVD_8");
  v167 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v168, "DVD_9");
  v169 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v170, "DVD_10");
  v171 = 8912900;
  std::string::basic_string[abi:ne200100]<0>(v172, "DVD_11");
  v173 = 8978437;
  std::string::basic_string[abi:ne200100]<0>(v174, "DVD_12");
  v175 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v176, "DVD_13");
  v177 = 7536644;
  std::string::basic_string[abi:ne200100]<0>(v178, "DVD_14");
  v179 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v180, "DVD_15");
  v181 = 8912900;
  std::string::basic_string[abi:ne200100]<0>(v182, "DVD_16");
  v183 = 8978437;
  std::string::basic_string[abi:ne200100]<0>(v184, "DVD_17");
  v185 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v186, "DVD_18");
  v187 = 9043973;
  std::string::basic_string[abi:ne200100]<0>(v188, "DVD_19");
  v189 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v190, "DVD_20");
  v1 = __str;
  v191 = 7995398;
  std::string::basic_string[abi:ne200100]<0>(v192, "AudioUnit_4");
  v193 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v194, "AudioUnit_5");
  v195 = 7143429;
  std::string::basic_string[abi:ne200100]<0>(v196, "AudioUnit_6");
  v197 = 7208966;
  std::string::basic_string[abi:ne200100]<0>(v198, "AudioUnit_8");
  v199 = 7274504;
  std::string::basic_string[abi:ne200100]<0>(v200, "AudioUnit_5_0");
  v201 = 7733253;
  std::string::basic_string[abi:ne200100]<0>(v202, "AudioUnit_6_0");
  v203 = 9109510;
  std::string::basic_string[abi:ne200100]<0>(v204, "AudioUnit_7_0");
  v205 = 9175047;
  std::string::basic_string[abi:ne200100]<0>(v206, "AudioUnit_7_0_Front");
  v207 = 9699335;
  std::string::basic_string[abi:ne200100]<0>(v208, "AudioUnit_5_1");
  v209 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v210, "AudioUnit_6_1");
  v211 = 8192007;
  std::string::basic_string[abi:ne200100]<0>(v212, "AudioUnit_7_1");
  v213 = 8388616;
  std::string::basic_string[abi:ne200100]<0>(v214, "AudioUnit_7_1_Front");
  v215 = 8257544;
  std::string::basic_string[abi:ne200100]<0>(v216, "AAC_3_0");
  v217 = 7471107;
  std::string::basic_string[abi:ne200100]<0>(v218, "AAC_Quadraphonic");
  v219 = 7077892;
  std::string::basic_string[abi:ne200100]<0>(v220, "AAC_4_0");
  v221 = 7602180;
  std::string::basic_string[abi:ne200100]<0>(v222, "AAC_5_0");
  v223 = 7864325;
  std::string::basic_string[abi:ne200100]<0>(v224, "AAC_5_1");
  v225 = 8126470;
  std::string::basic_string[abi:ne200100]<0>(v226, "AAC_6_0");
  v227 = 9240582;
  std::string::basic_string[abi:ne200100]<0>(v228, "AAC_6_1");
  v229 = 9306119;
  std::string::basic_string[abi:ne200100]<0>(v230, "AAC_7_0");
  v231 = 9371655;
  std::string::basic_string[abi:ne200100]<0>(v232, "AAC_7_1");
  v233 = 8323080;
  std::string::basic_string[abi:ne200100]<0>(v234, "AAC_7_1_B");
  v235 = 11993096;
  std::string::basic_string[abi:ne200100]<0>(v236, "AAC_7_1_C");
  v237 = 12058632;
  std::string::basic_string[abi:ne200100]<0>(v238, "AAC_Octagonal");
  v239 = 9437192;
  std::string::basic_string[abi:ne200100]<0>(v240, "TMH_10_2_std");
  v241 = 9502736;
  std::string::basic_string[abi:ne200100]<0>(v242, "TMH_10_2_full");
  v243 = 9568277;
  std::string::basic_string[abi:ne200100]<0>(v244, "AC3_1_0_1");
  v245 = 9764866;
  std::string::basic_string[abi:ne200100]<0>(v246, "AC3_3_0");
  v247 = 9830403;
  std::string::basic_string[abi:ne200100]<0>(v248, "AC3_3_1");
  v249 = 9895940;
  std::string::basic_string[abi:ne200100]<0>(v250, "AC3_3_0_1");
  v251 = 9961476;
  std::string::basic_string[abi:ne200100]<0>(v252, "AC3_2_1_1");
  v253 = 10027012;
  std::string::basic_string[abi:ne200100]<0>(v254, "AC3_3_1_1");
  v255 = 10092549;
  std::string::basic_string[abi:ne200100]<0>(v256, "EAC_6_0_A");
  v257 = 10158086;
  std::string::basic_string[abi:ne200100]<0>(v258, "EAC_7_0_A");
  v259 = 10223623;
  std::string::basic_string[abi:ne200100]<0>(v260, "EAC3_6_1_A");
  v261 = 10289159;
  std::string::basic_string[abi:ne200100]<0>(v262, "EAC3_6_1_B");
  v263 = 10354695;
  std::string::basic_string[abi:ne200100]<0>(v264, "EAC3_6_1_C");
  v265 = 10420231;
  std::string::basic_string[abi:ne200100]<0>(v266, "EAC3_7_1_A");
  v267 = 10485768;
  std::string::basic_string[abi:ne200100]<0>(v268, "EAC3_7_1_B");
  v269 = 10551304;
  std::string::basic_string[abi:ne200100]<0>(v270, "EAC3_7_1_C");
  v271 = 10616840;
  std::string::basic_string[abi:ne200100]<0>(v272, "EAC3_7_1_D");
  v273 = 10682376;
  std::string::basic_string[abi:ne200100]<0>(v274, "EAC3_7_1_E");
  v275 = 10747912;
  std::string::basic_string[abi:ne200100]<0>(v276, "EAC3_7_1_F");
  v277 = 10813448;
  std::string::basic_string[abi:ne200100]<0>(v278, "EAC3_7_1_G");
  v279 = 10878984;
  std::string::basic_string[abi:ne200100]<0>(v280, "EAC3_7_1_H");
  v281 = 10944520;
  std::string::basic_string[abi:ne200100]<0>(v282, "DTS_3_1");
  v283 = 11010052;
  std::string::basic_string[abi:ne200100]<0>(v284, "DTS_4_1");
  v285 = 11075589;
  std::string::basic_string[abi:ne200100]<0>(v286, "DTS_6_0_A");
  v287 = 11141126;
  std::string::basic_string[abi:ne200100]<0>(v288, "DTS_6_0_B");
  v289 = 11206662;
  std::string::basic_string[abi:ne200100]<0>(v290, "DTS_6_0_C");
  v291 = 11272198;
  std::string::basic_string[abi:ne200100]<0>(v292, "DTS_6_1_A");
  v293 = 11337735;
  std::string::basic_string[abi:ne200100]<0>(v294, "DTS_6_1_B");
  v295 = 11403271;
  std::string::basic_string[abi:ne200100]<0>(v296, "DTS_6_1_C");
  v297 = 11468807;
  std::string::basic_string[abi:ne200100]<0>(v298, "DTS_7_0");
  v299 = 11534343;
  std::string::basic_string[abi:ne200100]<0>(v300, "DTS_7_1");
  v301 = 11599880;
  std::string::basic_string[abi:ne200100]<0>(v302, "DTS_8_0_A");
  v303 = 11665416;
  std::string::basic_string[abi:ne200100]<0>(v304, "DTS_8_0_B");
  v305 = 11730952;
  std::string::basic_string[abi:ne200100]<0>(v306, "DTS_8_1_A");
  v307 = 11796489;
  std::string::basic_string[abi:ne200100]<0>(v308, "DTS_8_1_B");
  v309 = 11862025;
  std::string::basic_string[abi:ne200100]<0>(v310, "DTS_6_1_D");
  v311 = 11927559;
  std::string::basic_string[abi:ne200100]<0>(v312, "WAVE_2_1");
  v313 = 8716291;
  std::string::basic_string[abi:ne200100]<0>(v314, "WAVE_3_0");
  v315 = 7405571;
  std::string::basic_string[abi:ne200100]<0>(v316, "WAVE_4_0_A");
  v317 = 8650756;
  std::string::basic_string[abi:ne200100]<0>(v318, "WAVE_4_0_B");
  v319 = 12124164;
  std::string::basic_string[abi:ne200100]<0>(v320, "WAVE_5_0_A");
  v321 = 7667717;
  std::string::basic_string[abi:ne200100]<0>(v322, "WAVE_5_0_B");
  v323 = 12189701;
  std::string::basic_string[abi:ne200100]<0>(v324, "WAVE_5_1_A");
  v325 = 7929862;
  std::string::basic_string[abi:ne200100]<0>(v326, "WAVE_5_1_B");
  v327 = 12255238;
  std::string::basic_string[abi:ne200100]<0>(v328, "WAVE_6_1");
  v329 = 12320775;
  std::string::basic_string[abi:ne200100]<0>(v330, "WAVE_7_1");
  v331 = 12386312;
  std::string::basic_string[abi:ne200100]<0>(v332, "Atmos_5_1_2");
  v333 = 12713992;
  std::string::basic_string[abi:ne200100]<0>(v334, "Atmos_5_1_4");
  v335 = 12779530;
  std::string::basic_string[abi:ne200100]<0>(v336, "Atmos_7_1_2");
  v337 = 12845066;
  std::string::basic_string[abi:ne200100]<0>(v338, "Atmos_7_1_4");
  v339 = 12582924;
  std::string::basic_string[abi:ne200100]<0>(v340, "Atmos_9_1_6");
  v341 = 12648464;
  std::string::basic_string[abi:ne200100]<0>(v342, "BeginReserved");
  v343 = -268435456;
  std::string::basic_string[abi:ne200100]<0>(v344, "EndReserved");
  v345 = -65537;
  std::string::basic_string[abi:ne200100]<0>(&v346, "Unknown");
  *&v347[1] = -65536;
  std::map<std::string,unsigned int>::map[abi:ne200100](v62, &v64, 141);
  v2 = v347;
  v3 = -4512;
  v4 = v347;
  do
  {
    v5 = *v4;
    v4 -= 32;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 32;
  }

  while (v3);
  v61 = -65536;
  v6 = v63[0];
  if (!v63[0])
  {
    goto LABEL_18;
  }

  v7 = v63;
  do
  {
    v8 = v7;
    v9 = v6 + 32;
    v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, __str);
    if ((v10 & 0x80u) == 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = v8;
    }

    v6 = *&v6[(v10 >> 4) & 8];
  }

  while (v6);
  if (v7 == v63 || ((v10 & 0x80u) == 0 ? (v11 = v9) : (v11 = (v8 + 4)), (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, v11) & 0x80) != 0))
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(&v64, "HOA_ACN_SN3D");
    LODWORD(v66.__locale_) = 12451840;
    std::string::basic_string[abi:ne200100]<0>(v67, "HOA_ACN_N3D");
    v68 = 12517376;
    std::map<std::string,unsigned int>::map[abi:ne200100](&v59, &v64, 2);
    for (i = 0; i != -8; i -= 4)
    {
      if (SHIBYTE(v67[i + 2]) < 0)
      {
        operator delete(v67[i]);
      }
    }

    v15 = v59;
    if (v59 == v60)
    {
      v54 = -65536;
    }

    else
    {
      v52 = *MEMORY[0x277D82820];
      v51 = *(MEMORY[0x277D82820] + 24);
      v54 = -65536;
      do
      {
        if (*(v15 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v57, v15[4], v15[5]);
        }

        else
        {
          v57 = *(v15 + 4);
        }

        v16 = *(v15 + 14);
        v58 = v16;
        v17 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
        if (v17 >= 0)
        {
          v18 = v1;
        }

        else
        {
          v18 = v1->__r_.__value_.__r.__words[0];
        }

        if (v17 >= 0)
        {
          size = HIBYTE(v1->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v1->__r_.__value_.__l.__size_;
        }

        v20 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v57;
        }

        else
        {
          v21 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v57.__r_.__value_.__l.__size_;
        }

        if (!v22)
        {
          goto LABEL_49;
        }

        if (size >= v22)
        {
          v23 = (v18 + size);
          v24 = v21->__r_.__value_.__s.__data_[0];
          v25 = size;
          v26 = v18;
          while (1)
          {
            v27 = v25 - v22;
            if (v27 == -1 || (v28 = memchr(v26, v24, v27 + 1)) == 0)
            {
LABEL_46:
              v1 = __str;
              goto LABEL_56;
            }

            v29 = v28;
            if (!memcmp(v28, v21, v22))
            {
              break;
            }

            v26 = (&v29->__r_.__value_.__l.__data_ + 1);
            v25 = v23 - (&v29->__r_.__value_.__l.__data_ + 1);
            if (v25 < v22)
            {
              goto LABEL_46;
            }
          }

          v1 = __str;
          if (v29 != v23 && v29 == v18)
          {
LABEL_49:
            v61 = v16;
            std::string::basic_string(&v56, v1, v22, size, &v64);
            v55 = 0;
            std::istringstream::basic_istringstream[abi:ne200100](&v64, &v56);
            MEMORY[0x23EE860A0](&v64, &v55);
            v30 = *(v67 + *(v64 - 24));
            *&v64 = v52;
            *(&v64 + *(v52 - 24)) = v51;
            v65 = MEMORY[0x277D82878] + 16;
            if (SHIBYTE(v72) < 0)
            {
              operator delete(v70);
            }

            v65 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(&v66);
            std::istream::~istream();
            MEMORY[0x23EE863B0](&v73);
            v31 = ((v55 + 1) * (v55 + 1)) | v16;
            if ((v30 & 5) != 0)
            {
              v31 = -65536;
            }

            v54 = v31;
            v61 = v31;
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            v20 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }
        }

LABEL_56:
        if (v20 < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        v32 = v15[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v15[2];
            v34 = *v33 == v15;
            v15 = v33;
          }

          while (!v34);
        }

        v15 = v33;
      }

      while (v33 != v60);
    }

    std::string::basic_string[abi:ne200100]<0>(&v57, "DiscreteInOrder");
    v58 = 9633792;
    v35 = v1->__r_.__value_.__l.__size_;
    if ((v1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v1 = v1->__r_.__value_.__r.__words[0];
      v36 = v35;
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v57;
    }

    else
    {
      v37 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v57.__r_.__value_.__l.__size_;
    }

    if (v38)
    {
      if (v36 >= v38)
      {
        v39 = (v1 + v36);
        v40 = v37->__r_.__value_.__s.__data_[0];
        v41 = v36;
        v42 = v1;
        do
        {
          v43 = v41 - v38;
          if (v43 == -1)
          {
            break;
          }

          v44 = memchr(v42, v40, v43 + 1);
          if (!v44)
          {
            break;
          }

          v45 = v44;
          if (!memcmp(v44, v37, v38))
          {
            if (v45 == v39 || v45 != v1)
            {
              break;
            }

            goto LABEL_85;
          }

          v42 = (&v45->__r_.__value_.__l.__data_ + 1);
          v41 = v39 - (&v45->__r_.__value_.__l.__data_ + 1);
        }

        while (v41 >= v38);
      }
    }

    else
    {
LABEL_85:
      v61 = 9633792;
      std::string::basic_string(&v56, __str, v38, v36, &v64);
      v55 = 0;
      std::istringstream::basic_istringstream[abi:ne200100](&v64, &v56);
      v46 = MEMORY[0x277D82820];
      MEMORY[0x23EE860A0](&v64, &v55);
      *&v64 = *v46;
      *(&v64 + *(v64 - 24)) = v46[3];
      v65 = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v70);
      }

      v65 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v66);
      std::istream::~istream();
      MEMORY[0x23EE863B0](&v73);
      v54 = v55 | 0x930000;
      v61 = v55 | 0x930000;
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    if (v54 == -65536)
    {
      std::istringstream::basic_istringstream[abi:ne200100](&v64, __str);
      v47 = MEMORY[0x277D82820];
      MEMORY[0x23EE860A0](&v64, &v61);
      v48 = *(v67 + *(v64 - 24)) & 5;
      *&v64 = *v47;
      *(&v64 + *(v64 - 24)) = v47[3];
      v65 = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v70);
      }

      v65 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v66);
      std::istream::~istream();
      MEMORY[0x23EE863B0](&v73);
      if (v48)
      {
        v61 = -65536;
      }
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v60[0]);
    v13 = &v61;
  }

  else
  {
    v12 = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(v62, &v64, __str);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    v13 = (v12 + 56);
  }

  v49 = *v13;
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(v63[0]);
  return v49;
}

uint64_t std::istringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v5 = a1 + 16;
  v6 = *(MEMORY[0x277D82820] + 16);
  v7 = *(MEMORY[0x277D82820] + 8);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 16));
  v9 = MEMORY[0x277D82898] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *a1 = v9;
  *(a1 + 120) = v4;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE86340](a1 + 24);
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}