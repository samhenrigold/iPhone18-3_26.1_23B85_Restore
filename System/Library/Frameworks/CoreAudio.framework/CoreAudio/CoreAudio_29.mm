void sub_1DE41339C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Resampler2::InitializeVarispeedMode(Resampler2 *this)
{
  if ((this + 1) >= 0x20)
  {
    v1 = ((this + 1) >> 5) - 1;
  }

  else
  {
    v1 = 0;
  }

  pthread_mutex_lock(&sInitLocker);
  if (!sVarispeedRefCount[v1])
  {
    v2 = sVarispeedSincKernels[v1];
    if (!v2)
    {
      operator new();
    }

    std::vector<SincKernel *>::reserve(v2, 0x24uLL);
    v3 = vcvtpd_s64_f64(exp2(0 / 36.0 / 1200.0) * 100.0);
    if (v3 - 100 > 0)
    {
      v4 = 0;
      v5 = vdupq_n_s64(v3 - 101);
      v6 = &dword_1EE012638;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DE757E30)));
        if (vuzp1_s16(v8, *v5.i8).u8[0])
        {
          *(v6 - 2) = 0;
        }

        if (vuzp1_s16(v8, *&v5).i8[2])
        {
          *(v6 - 1) = 0;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1DE757E20)))).i32[1])
        {
          *v6 = 0;
          v6[1] = 0;
        }

        v4 += 4;
        v6 += 4;
      }

      while (((v3 - 97) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    operator new();
  }

  ++sVarispeedRefCount[v1];
  return pthread_mutex_unlock(&sInitLocker);
}

uint64_t Resampler2::ShutdownVarispeedMode(Resampler2 *this)
{
  v1 = this;
  pthread_mutex_lock(&sInitLocker);
  if ((v1 + 1) >= 0x20)
  {
    v2 = ((v1 + 1) >> 5) - 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sVarispeedRefCount[v2];
  if (v3 >= 1)
  {
    sVarispeedRefCount[v2] = --v3;
  }

  if (!v3)
  {
    v4 = sVarispeedSincKernels[v2];
    if (v4)
    {
      v5 = *v4;
      if (v4[1] != *v4)
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = *(v5 + 8 * v6);
          if (v8)
          {
            free(*v8);
            MEMORY[0x1E12C1730](v8, 0x1080C4003DAF236);
            v4 = sVarispeedSincKernels[v2];
            v5 = *v4;
          }

          v6 = v7++;
        }

        while (v6 < (v4[1] - v5) >> 3);
      }

      v4[1] = v5;
    }
  }

  return pthread_mutex_unlock(&sInitLocker);
}

uint64_t Resampler2::SetVarispeedRate(uint64_t this, double a2)
{
  if (*(this + 176) == 1)
  {
    *(this + 256) = 0;
    *(this + 160) = a2;
    *(this + 168) = 1.0 / a2;
    *(this + 125) = 0;
    v2 = Resampler2::ConvertLinear;
    if (*(this + 108) != 1818848869)
    {
      v2 = Resampler2::ConvertSIMD<Resampler2::FixedRate>;
      if (*(this + 120) <= 0)
      {
        v2 = Resampler2::ConvertScalar<Resampler2::FixedRate>;
      }
    }

    *this = v2;
    *(this + 8) = 0;
    return Resampler2::SetVarispeedSinc(this, a2);
  }

  return this;
}

uint64_t Resampler2::GetNumberOfSourceFrames(Resampler2 *this, unsigned int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(this + 125) & 1) == 0)
  {
    if ((*(this + 124) & 1) == 0)
    {
      v8 = a2;
      if (*(this + 256) == 1)
      {
        v9 = *(this + 29);
        v10 = *(this + 30);
        v11 = v9 + a3;
        if (v8 <= 1000000000.0)
        {
          v12 = a2;
        }

        else
        {
          v12 = 1000000000.0;
        }

        if (v10 <= v11)
        {
          v15 = *(this + 26);
          v16 = (v11 - v10) * v15;
          v17 = *(this + 28);
          v18 = floor(v10 + (v16 + 1000000000.0) / v15);
          v19 = v12 + v11;
          if (v19 >= v18)
          {
            v19 = v18;
          }

          if (v10 <= v19)
          {
            v13 = v17 + v15 * (v19 - v10);
          }

          else
          {
            v13 = *(this + 27) + (v19 - v9) * (*(this + 25) + *(this + 31) * 0.5 * (v19 - v9));
          }

          v14 = v16 + v17;
        }

        else if (v9 <= v11)
        {
          v20 = *(this + 31);
          v21 = *(this + 25);
          v22 = *(this + 27);
          v23 = *(this + 28);
          v14 = v22 + (v11 - v9) * (v21 + v20 * 0.5 * (v11 - v9));
          v24 = v14 + 1000000000.0;
          if (v23 <= v14 + 1000000000.0)
          {
            v26 = 40;
            v27 = (v24 - v23) / *(this + 26);
          }

          else
          {
            v25 = v24 - v22;
            if (v20 == 0.0)
            {
              v26 = 32;
              v27 = v25 / v21;
            }

            else
            {
              v27 = (sqrt(v21 * v21 + (v20 + v20) * v25) - v21) / v20;
              v26 = 32;
            }
          }

          v28 = floor(v27 + *(this + v26 + 200));
          v29 = v12 + v11;
          if (v10 < v28)
          {
            v28 = *(this + 30);
          }

          if (v29 >= v28)
          {
            v29 = v28;
          }

          if (v10 <= v29)
          {
            v13 = (v29 - v10) * *(this + 26) + v23;
          }

          else
          {
            v13 = v22 + (v29 - v9) * (v21 + v20 * 0.5 * (v29 - v9));
          }
        }

        else
        {
          v13 = 1.79769313e308;
          v14 = 0.0;
        }

        v5 = vcvtpd_u64_f64(v13 - v14);
      }

      else
      {
        v5 = *(this + 20) * v8;
      }

      goto LABEL_9;
    }

LABEL_8:
    v5 = a2;
LABEL_9:
    v6 = 1.0;
    if (*(this + 27) != 1818848869)
    {
      LODWORD(v6) = *(*(this + 6) + 12);
      v6 = *&v6 + -1.0;
    }

    v7 = vcvtpd_s64_f64(v6 + *(this + 19) + v5 + -0.0001 - *(this + 16));
    return v7 & ~(v7 >> 31);
  }

  if (*(this + 124))
  {
    goto LABEL_8;
  }

  if (*(this + 27) == 1818848869)
  {
    v3 = 2;
  }

  else
  {
    v3 = *(*(this + 6) + 12);
  }

  v7 = v3 + ~*(this + 16) + (*(this + 25) * a2 + *(this + 24) + *(this + 29) - 1) / *(this + 29);
  return v7 & ~(v7 >> 31);
}

uint64_t Resampler2::PreFlight(Resampler2 *this, unsigned int *a2, unsigned int *a3)
{
  v6 = *a3;
  result = Resampler2::GetNumberOfSourceFrames(this, *a3, 0);
  v8 = *a2;
  if (*(this + 125) == 1 && (*(this + 124) & 1) == 0)
  {
    if (*(this + 27) == 1818848869)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1 - *(*(this + 6) + 12);
    }

    v13 = ((v12 + v8 + *(this + 16)) * *(this + 29) - *(this + 24)) / *(this + 25);
    v11 = v13 & ~(v13 >> 31);
  }

  else
  {
    v9 = 1.0;
    if (*(this + 27) != 1818848869)
    {
      LODWORD(v9) = *(*(this + 6) + 12);
      v9 = *&v9 + -1.0;
    }

    v10 = (*(this + 16) + v8) - v9 - *(this + 19);
    if ((*(this + 124) & 1) == 0)
    {
      v10 = v10 * *(this + 21);
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v11 = vcvtmd_u64_f64(v10 + 0.0001);
  }

  if (result >= v8)
  {
    if (v11 < v6)
    {
      *a3 = v11;
    }
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void *Resampler2::PushConvert(Resampler2 *this, const float *a2, const float *a3, float *a4, float *a5, unsigned int *a6, unsigned int *a7, int a8, unsigned int a9, unsigned int a10)
{
  *(this + 16) = 1;
  v62 = *a6;
  v61 = *a7;
  Resampler2::PreFlight(this, &v62, &v61);
  v16 = v61;
  v50 = a6;
  v51 = a7;
  if (v61)
  {
    v17 = 0;
    v18 = 0;
    v19 = v62;
    v56 = a5;
    v20 = *(this + 16);
    v53 = a3;
    do
    {
      v21 = *(this + 17) - v20;
      if (v21 >= v19)
      {
        v21 = v19;
      }

      v59 = v16;
      v60 = v21;
      v55 = v16;
      Resampler2::PreFlight(this, &v60, &v59);
      v22 = v59;
      v23 = v60;
      v24 = (*(this + 9) + 4 * v20);
      v57 = v17;
      if (a8 == 1)
      {
        v52 = v60;
        v25 = 4 * v60;
        memcpy(v24, &a2[v17], v25);
        v20 = *(this + 16);
        if (a3)
        {
          memcpy((*(this + 10) + 4 * v20), &a3[v17], v25);
          v20 = *(this + 16);
        }

        v23 = v52;
      }

      else if (a3)
      {
        if (v60)
        {
          v26 = (*(this + 10) + 4 * v20);
          v27 = v17 * a8;
          v28 = v60;
          do
          {
            *v24++ = a2[v27];
            *v26++ = a3[v27];
            v27 += a8;
            --v28;
          }

          while (v28);
        }
      }

      else if (v60)
      {
        v29 = v17 * a8;
        v30 = v60;
        do
        {
          *v24++ = a2[v29];
          v29 += a8;
          --v30;
        }

        while (v30);
      }

      *(this + 192) = 0;
      *(this + 16) = v20 + v23;
      if (!v22)
      {
        break;
      }

      v31 = *this;
      v32 = *(this + 1);
      v33 = (this + (v32 >> 1));
      if (v32)
      {
        v31 = *(*v33 + v31);
      }

      v31(v33, a4, v56, v22, a9);
      v34 = &v56[v22 * a9];
      if (!v56)
      {
        v34 = 0;
      }

      v56 = v34;
      *(this + 33) = *(this + 33) + v22;
      v35 = *(this + 19);
      v36 = v35;
      v37 = 4 * (*(this + 16) - v35);
      memmove(*(this + 9), (*(this + 9) + 4 * v35), v37);
      if (a5)
      {
        memmove(*(this + 10), (*(this + 10) + 4 * v36), v37);
      }

      *(this + 19) = *(this + 19) - v36;
      v20 = *(this + 16) - v36;
      *(this + 16) = v20;
      *(this + 23) -= v36;
      *(this + 16) = *(this + 16) + v36;
      if (*(this + 125) == 1)
      {
        *(this + 24) -= *(*(this + 6) + 16) * v36;
      }

      v19 -= v23;
      a4 += v22 * a9;
      v17 = v23 + v57;
      v18 += v22;
      v16 = v55 - v22;
      a3 = v53;
    }

    while (v55 != v22);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v38 = v17;
  v39 = *v50;
  result = Resampler2::GetNumberOfSourceFrames(this, 1u, v18);
  v41 = v39 - v38;
  if (v39 != v38 && v41 <= result)
  {
    if (a8 == 1)
    {
      result = memcpy((*(this + 9) + 4 * *(this + 16)), &a2[v38], 4 * (v39 - v38));
      if (a3)
      {
        result = memcpy((*(this + 10) + 4 * *(this + 16)), &a3[v38], 4 * (v39 - v38));
      }
    }

    else
    {
      v43 = *(this + 16);
      v44 = (*(this + 9) + 4 * v43);
      if (a3)
      {
        v45 = (*(this + 10) + 4 * v43);
        v46 = v38 * a8;
        v47 = v39 - v38;
        do
        {
          *v44++ = a2[v46];
          *v45++ = a3[v46];
          v46 += a8;
          --v47;
        }

        while (v47);
      }

      else
      {
        v48 = v38 * a8;
        v49 = v39 - v38;
        do
        {
          *v44++ = a2[v48];
          v48 += a8;
          --v49;
        }

        while (v49);
      }
    }

    *(this + 16) += v41;
  }

  *v51 = v18;
  *(this + 16) = 0;
  return result;
}

const __CFString *CACFString::GetCString(const __CFString *theString, __CFString *a2, char *a3, unsigned int *a4)
{
  if (*a3)
  {
    v6 = theString;
    if (theString)
    {
      usedBufLen = 0;
      v10.length = CFStringGetLength(theString);
      v10.location = 0;
      theString = CFStringGetBytes(v6, v10, 0x8000100u, 0, 0, a2, (*a3 - 1), &usedBufLen);
      v7 = usedBufLen;
      *(&a2->isa + usedBufLen) = 0;
      v8 = v7 + 1;
    }

    else
    {
      LOBYTE(a2->isa) = 0;
      v8 = 1;
    }

    *a3 = v8;
  }

  return theString;
}

void AMCP::Graph::Manifest_Log::get_queue(AMCP::Graph::Manifest_Log *this)
{
  v1[42] = *MEMORY[0x1E69E9840];
  {
    {
      AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(v1, "Manifest Log Queue", 61);
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(AMCP::Graph::Manifest_Log::get_queue(void)::s_instance, v1);
      AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v1);
    }
  }
}

void AMCP::Graph::Manifest_Log::add_message(uint64_t a1, int a2, const char *a3, ...)
{
  va_start(va, a3);
  std::mutex::lock((a1 + 48));
  va_copy(v31, va);
  vsnprintf(AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::temp_buffer, 0x7D0uLL, a3, va);
  v6 = strlen(AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::temp_buffer);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v25) = v6;
  if (v6)
  {
    memcpy(&__dst, AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::temp_buffer, v6);
  }

  *(&__dst + v7) = 0;
  v8 = __dst;
  v9 = v24;
  v22[0] = v25;
  *(v22 + 3) = *(&v25 + 3);
  v10 = SHIBYTE(v25);
  std::mutex::unlock((a1 + 48));
  AMCP::Graph::Manifest_Log::get_queue(v11);
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v18, *a1, *(a1 + 8));
  v20 = a2;
  if (v10 < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v8, v9);
  }

  else
  {
    v21.__r_.__value_.__r.__words[0] = v8;
    v21.__r_.__value_.__l.__size_ = v9;
    LODWORD(v21.__r_.__value_.__r.__words[2]) = v22[0];
    *(&v21.__r_.__value_.__r.__words[2] + 3) = *(v22 + 3);
    *(&v21.__r_.__value_.__s + 23) = v10;
  }

  v12 = atomic_load(&unk_1ECDAB3F8);
  if (v12)
  {
    atomic_store(1u, byte_1ECDAB3F9);
  }

  if (byte_1ECDAB520 != 1)
  {
    operator new();
  }

  v13 = v18;
  v14 = v19;
  v31 = v18;
  v32 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v20;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    v13 = v31;
    v14 = v32;
  }

  else
  {
    v34 = v21;
  }

  v15 = qword_1ECDAB518;
  v16 = AMCP::Graph::Manifest_Log::get_queue(void)::s_instance[0];
  __dst = MEMORY[0x1E69E9820];
  v24 = 1174405120;
  v25 = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZNS_5Graph12Manifest_Log11add_messageENS3_21Manifest_Message_TypeEPKczE3__0EEvOT__block_invoke;
  v26 = &__block_descriptor_tmp_5570;
  v27 = v13;
  v28 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = v33;
  v17 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v34;
  }

  dispatch_group_async(v15, v16, &__dst);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v17 < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v10 < 0)
  {
    operator delete(v8);
  }
}

void sub_1DE41453C(void *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0,std::default_delete<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1032C4046F781F9);
  }

  return a1;
}

void sub_1DE414790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0,std::default_delete<AMCP::Graph::Manifest_Log::add_message(AMCP::Graph::Manifest_Message_Type,char const*,...)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__list_imp<std::pair<AMCP::Graph::Manifest_Message_Type,std::string>>::__delete_node[abi:ne200100](void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void __destroy_helper_block_e8_32c82_ZTSZN4AMCP5Graph12Manifest_Log11add_messageENS0_21Manifest_Message_TypeEPKczE3__0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void __copy_helper_block_e8_32c82_ZTSZN4AMCP5Graph12Manifest_Log11add_messageENS0_21Manifest_Message_TypeEPKczE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1DE41493C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10applesauce8dispatch2v19sync_implIRZN4AMCP5Graph12Manifest_Log4dumpEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(_BOOL8 a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = **(a1 + 32);
  v2 = v1 + 16;
  v3 = *(v1 + 24);
  if (v3 != v1 + 16)
  {
    do
    {
      v12 = 0;
      __p = 0uLL;
      v4 = *(v3 + 16);
      if (v4 > 3)
      {
        if (v4 <= 5)
        {
          if (v4 == 4)
          {
            HIBYTE(v12) = 6;
            qmemcpy(&__p, "Buffer", 6);
          }

          else
          {
            HIBYTE(v12) = 13;
            qmemcpy(&__p, "Swap Manifest", 13);
          }

          goto LABEL_20;
        }

        if (v4 == 6)
        {
          HIBYTE(v12) = 11;
          *(&__p + 7) = 1701669204;
          v5 = *"Anchor Time";
          goto LABEL_19;
        }

        if (v4 == 7)
        {
          HIBYTE(v12) = 11;
          *(&__p + 7) = 1702521171;
          v5 = *"Change Size";
LABEL_19:
          *&__p = v5;
        }
      }

      else
      {
        if (v4 <= 1)
        {
          if (v4)
          {
            if (v4 == 1)
            {
              HIBYTE(v12) = 4;
              LODWORD(__p) = 1886352467;
            }
          }

          else
          {
            HIBYTE(v12) = 5;
            qmemcpy(&__p, "Start", 5);
          }

          goto LABEL_20;
        }

        if (v4 == 2)
        {
          HIBYTE(v12) = 8;
          v5 = 0x64616F6C7265764FLL;
          goto LABEL_19;
        }

        HIBYTE(v12) = 7;
        qmemcpy(&__p, "Enqueue", 7);
      }

LABEL_20:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v9 = *v8;
      }

      a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v10 = v3 + 24;
        if (*(v3 + 47) < 0)
        {
          v10 = *(v3 + 24);
        }

        *buf = 136316162;
        v14 = "Manifest_Log.cpp";
        v15 = 1024;
        v16 = 93;
        v17 = 1040;
        v18 = 14;
        v19 = 2080;
        p_p = &__p;
        v21 = 2080;
        v22 = v10;
        _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d %14.14s: %s", buf, 0x2Cu);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

uint64_t AMCP::get_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_control_property_traits_list(void)::$_0 &&>>()
{
  v20[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  operator new();
}

void sub_1DE415294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1008;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_slider_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_slider_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_slider_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_slider_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_slider_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_slider_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_slider_control_property_traits_list(void)::$_0 &&>>()
{
  v22[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1935962742, 1, 0, 1, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, &AMCP::Property_Traits<1935962738u>::k_valid_scopes, 0, 1935962742, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v22, 1935962738, 1, 0, 0, &AMCP::Property_Traits<1935962738u>::k_valid_scopes, &AMCP::Property_Traits<1818456950u>::k_valid_scopes, 0, 1935962738, 13);
  operator new();
}

void sub_1DE4159AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1104;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_level_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_level_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_level_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_level_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_level_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_level_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_level_control_property_traits_list(void)::$_0 &&>>()
{
  v23[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1818456950, 1, 0, 1, &AMCP::Property_Traits<1818456950u>::k_valid_scopes, &AMCP::Property_Traits<1818453110u>::k_valid_scopes, 0, 1818456950, 10);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1818453110, 1, 0, 1, &AMCP::Property_Traits<1818453110u>::k_valid_scopes, &AMCP::Property_Traits<1818453106u>::k_valid_scopes, 0, 1818453110, 10);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v23, 1818453106, 1, 0, 0, &AMCP::Property_Traits<1818453106u>::k_valid_scopes, &AMCP::Property_Traits<1650685548u>::k_valid_scopes, 0, 1818453106, 26);
  operator new();
}

void sub_1DE4160EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1152;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_BOOLean_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_BOOLean_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_BOOLean_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_BOOLean_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_BOOLean_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_BOOLean_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_BOOLean_control_property_traits_list(void)::$_0 &&>>()
{
  v21[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v21, 1650685548, 1, 0, 1, &AMCP::Property_Traits<1650685548u>::k_valid_scopes, &AMCP::Property_Traits<1935893353u>::k_valid_scopes, 0, 1650685548, 2);
  operator new();
}

void sub_1DE4167D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1056;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_selector_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_selector_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_selector_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_selector_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_selector_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_selector_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_selector_control_property_traits_list(void)::$_0 &&>>()
{
  v23[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1935893353, 1, 0, 1, &AMCP::Property_Traits<1935893353u>::k_valid_scopes, &AMCP::Property_Traits<1935893357u>::k_valid_scopes, 0, 1935893353, 20);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1935893357, 1, 0, 0, &AMCP::Property_Traits<1935893357u>::k_valid_scopes, &AMCP::Property_Traits<1935892841u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v23, 1935892841, 1, 0, 0, &AMCP::Property_Traits<1935892841u>::k_valid_scopes, &AMCP::Property_Traits<1936745334u>::k_valid_scopes, 0, 0, 19);
  operator new();
}

void sub_1DE416F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1152;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_stereo_pan_control_property_traits_list(AMCP *this)
{
  {
    AMCP::get_stereo_pan_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_stereo_pan_control_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_stereo_pan_control_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_stereo_pan_control_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_stereo_pan_control_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_stereo_pan_control_property_traits_list(void)::$_0 &&>>()
{
  v22[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1668506480, 1, 0, 0, &AMCP::Property_Traits<1668506480u>::k_valid_scopes, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, 0, 1668506480, 18);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1667591277, 1, 0, 0, &AMCP::Property_Traits<1667591277u>::k_valid_scopes, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, 0, 1667591277, 9);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668441199, 1, 0, 0, &AMCP::Property_Traits<1668441199u>::k_valid_scopes, &AMCP::Property_Traits<1935962742u>::k_valid_scopes, 0, 0, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1936745334, 1, 0, 1, &AMCP::Property_Traits<1936745334u>::k_valid_scopes, &AMCP::Property_Traits<1936745315u>::k_valid_scopes, 0, 1936745334, 10);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v22, 1936745315, 1, 0, 0, &AMCP::Property_Traits<1936745315u>::k_valid_scopes, &AMCP::Property_Traits<1853188452u>::k_valid_scopes, 0, 1936745315, 21);
  operator new();
}

void sub_1DE41762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1104;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Utility::configure_thread_for_realtime(_opaque_pthread_t *this, _opaque_pthread_t *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2 <= 0x4B0)
  {
    v4 = 1200;
  }

  else
  {
    v4 = a2;
  }

  if (v4 >= 0x124F80)
  {
    v5 = 1200000;
  }

  else
  {
    v5 = v4;
  }

  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *policy_info = v6 | (v5 << 32);
  v25 = v4 | 0x100000000;
  v7 = pthread_mach_thread_np(this);
  result = thread_policy_set(v7, 2u, policy_info, 4u);
  if (result)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316930;
      v27 = "Thread_Utilities.cpp";
      v28 = 1024;
      v29 = 90;
      v30 = 2080;
      v31 = "not (kernel_error == 0)";
      v32 = 2048;
      *v33 = a2;
      *&v33[8] = 1024;
      *v34 = policy_info[0];
      *&v34[4] = 1024;
      *&v34[6] = policy_info[1];
      *&v34[10] = 1024;
      v35 = v25;
      v36 = 1024;
      v37 = HIDWORD(v25);
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s AMCP::Utility::Thread_Utilities::configure_thread_for_realtime - thread_policy_set failed. \tCycle Size: %llu \tThread Parameters: \t%u \t%u \t%u \t%d", buf, 0x3Eu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v15, "AMCP::Utility::Thread_Utilities::configure_thread_for_realtime - thread_policy_set failed. \tCycle Size: %llu \tThread Parameters: \t%u \t%u \t%u \t%d", v13, a2, policy_info[0], policy_info[1], v25, HIDWORD(v25));
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    *&v33[2] = "kern_return_t AMCP::Utility::configure_thread_for_realtime(pthread_t, uint64_t, BOOL)";
    *v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    *&v34[8] = 90;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  return result;
}

void sub_1DE417984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v32 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a30);
  MEMORY[0x1E12C0F00](&a28);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v30)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v32 - 145));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Utility::configure_thread_for_normal_priority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  policy_info = 1;
  v2 = pthread_mach_thread_np(this);
  result = thread_policy_set(v2, 1u, &policy_info, 1u);
  if (result)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Thread_Utilities.cpp";
      v22 = 1024;
      v23 = 103;
      v24 = 2080;
      v25 = "not (kernel_error == 0)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s AMCP::Utility::Thread_Utilities::configure_thread_for_normal_priority - thread_policy_set failed.", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "AMCP::Utility::Thread_Utilities::configure_thread_for_normal_priority - thread_policy_set failed.", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v26 = "kern_return_t AMCP::Utility::configure_thread_for_normal_priority(pthread_t)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    v28 = 103;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  return result;
}

void sub_1DE417CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 117));
  _Unwind_Resume(a1);
}

BOOL AMCP::Utility::is_thread_configured_for_realtime(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = pthread_self();
  if (v3 != this)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v31 = "Thread_Utilities.cpp";
      v32 = 1024;
      v33 = 112;
      v34 = 2080;
      v35 = "not (in_thread == pthread_self())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s is_thread_configured_for_realtime only works when in_thread == pthread_self()", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&get_default);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v22, "is_thread_configured_for_realtime only works when in_thread == pthread_self()", v15);
    std::logic_error::logic_error(&v23, &v22);
    v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v24, &v23);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v24.__vftable = &unk_1F5991430;
    v25 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v24);
    v36 = "BOOL AMCP::Utility::is_thread_configured_for_realtime(pthread_t)";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    v38 = 112;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  policy_infoCnt = 1;
  get_default = 0;
  v4 = pthread_mach_thread_np(this);
  v5 = thread_policy_get(v4, 1u, &policy_info, &policy_infoCnt, &get_default);
  if (v5)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v31 = "Thread_Utilities.cpp";
      v32 = 1024;
      v33 = 121;
      v34 = 2080;
      v35 = "not (the_error == 0)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v22, "", v16);
    std::logic_error::logic_error(&v23, &v22);
    v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v24, &v23);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v24.__vftable = &unk_1F5991430;
    v25 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&buf, &v24);
    v36 = "BOOL AMCP::Utility::is_thread_configured_for_realtime(pthread_t)";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Thread_Utilities.cpp";
    v38 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  return get_default != 0;
}

void sub_1DE41820C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, __int16 a12, char a13, char a14, int a15, int a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v35 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a34);
  MEMORY[0x1E12C0F00](&a32);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a11)
  {
    __cxa_free_exception(v34);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a14);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::Utility::configure_syscall_mask_for_realtime_priority(AMCP::Utility *this)
{
  v1 = debug_syscall_reject();
  if (!v1)
  {
    return v1;
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = *(v2 + 8);
    v6 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v6 + 16) = 0;
    *(v6 + 20) = 1;
    *(v6 + 24) = "Thread_Utilities.cpp";
    *(v6 + 32) = 156;
    *v6 = &unk_1F596D9D0;
    *(v6 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v5, v6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_realtime_priority(void)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d AMCP::Utility::Thread_Utilities::configure_syscall_mask_for_realtime_priority - syscall set mask for real time priority failed", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_realtime_priority(void)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *AMCP::Utility::configure_syscall_mask_for_normal_priority(AMCP::Utility *this)
{
  v1 = debug_syscall_reject();
  if (!v1)
  {
    return v1;
  }

  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = *(v2 + 8);
    v6 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v6 + 16) = 0;
    *(v6 + 20) = 1;
    *(v6 + 24) = "Thread_Utilities.cpp";
    *(v6 + 32) = 181;
    *v6 = &unk_1F596DA28;
    *(v6 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v5, v6);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_normal_priority(void)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d AMCP::Utility::Thread_Utilities::configure_syscall_mask_for_normal_priority - syscall set mask for normal priority failed", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Utility::configure_syscall_mask_for_normal_priority(void)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_AHPDevice::GetNearestStartTime(HALS_AHPDevice *this, AudioTimeStamp *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 160))(*(*(this + 182) + 32), *(this + 4), a2, a3);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 210;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::GetNearestStartTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  return result;
}

uint64_t HALS_AHPDevice::TranslateTime(HALS_AHPDevice *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 96))(*(*(this + 182) + 32), *(this + 4), a2, a3);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 204;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::TranslateTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  return result;
}

uint64_t HALS_AHPDevice::GetCurrentTime(HALS_AHPDevice *this, AudioTimeStamp *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 88))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v5[0] = BYTE3(result);
    v5[1] = BYTE2(result);
    v5[2] = BYTE1(result);
    v4 = result;
    v5[3] = result;
    v5[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v7 = "HALS_AHPPlugIn.cpp";
      v8 = 1024;
      v9 = 198;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceGetCurrentTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_StopIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 72))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v5[0] = BYTE3(result);
    v5[1] = BYTE2(result);
    v5[2] = BYTE1(result);
    v4 = result;
    v5[3] = result;
    v5[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v7 = "HALS_AHPPlugIn.cpp";
      v8 = 1024;
      v9 = 186;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::StopIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_StartIOProcIDAtTime(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 152))(*(*(this + 182) + 32), *(this + 4), a2, a3, a4);
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v6 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_AHPPlugIn.cpp";
      v10 = 1024;
      v11 = 180;
      v12 = 1024;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::StartIOProcAtTime: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_StartIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 64))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v5[0] = BYTE3(result);
    v5[1] = BYTE2(result);
    v5[2] = BYTE1(result);
    v4 = result;
    v5[3] = result;
    v5[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v7 = "HALS_AHPPlugIn.cpp";
      v8 = 1024;
      v9 = 174;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::StartIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_RemoveIOProc(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 56))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v5[0] = BYTE3(result);
    v5[1] = BYTE2(result);
    v5[2] = BYTE1(result);
    v4 = result;
    v5[3] = result;
    v5[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v7 = "HALS_AHPPlugIn.cpp";
      v8 = 1024;
      v9 = 168;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::RemoveIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_AddIOProc(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 48))(*(*(this + 182) + 32), *(this + 4), a2, a3);
  if (result)
  {
    v6[0] = BYTE3(result);
    v6[1] = BYTE2(result);
    v6[2] = BYTE1(result);
    v5 = result;
    v6[3] = result;
    v6[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v8 = "HALS_AHPPlugIn.cpp";
      v9 = 1024;
      v10 = 162;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::AddIOProc: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_DestroyIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(**(*(this + 182) + 32) + 232))(*(*(this + 182) + 32), *(this + 4), a2);
  if (result)
  {
    v5[0] = BYTE3(result);
    v5[1] = BYTE2(result);
    v5[2] = BYTE1(result);
    v4 = result;
    v5[3] = result;
    v5[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v7 = "HALS_AHPPlugIn.cpp";
      v8 = 1024;
      v9 = 156;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceCreateIOProcID: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

uint64_t HALS_AHPDevice::Server_Internal_CreateIOProcIDWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = (*(**(*(a1 + 1456) + 32) + 240))(*(*(a1 + 1456) + 32), &v7, *(a1 + 16), a2, a3);
  if (v3)
  {
    v8[0] = HIBYTE(v3);
    v8[1] = BYTE2(v3);
    v8[2] = BYTE1(v3);
    v6 = v3;
    v8[3] = v3;
    v8[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "HALS_AHPPlugIn.cpp";
      v11 = 1024;
      v12 = 138;
      v13 = 1024;
      v14 = v6;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceCreateIOProcIDWithBlock: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  return v7;
}

uint64_t HALS_AHPDevice::Server_Internal_CreateIOProcID(HALS_AHPDevice *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = (*(**(*(this + 182) + 32) + 224))(*(*(this + 182) + 32), *(this + 4), a2, a3, &v7);
  if (v3)
  {
    v8[0] = HIBYTE(v3);
    v8[1] = BYTE2(v3);
    v8[2] = BYTE1(v3);
    v6 = v3;
    v8[3] = v3;
    v8[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "HALS_AHPPlugIn.cpp";
      v11 = 1024;
      v12 = 132;
      v13 = 1024;
      v14 = v6;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::DeviceCreateIOProcID: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  return v7;
}

uint64_t HALS_AHPDevice::SetPropertyData(HALS_AHPDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HALS_AHPDevice.cpp";
      v20 = 1024;
      v21 = 231;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPDevice::SetPropertyData: the property is not settable", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v15 = *(*(this + 182) + 32);

  return HALS_AHPPlugIn::ObjectSetPropertyData(v15, a2, a3, a6, a7, a4, a5);
}

void HALS_AHPDevice::GetPropertyData(HALS_AHPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v18 = mSelector == 1650682995;
    v19 = 1668047219;
  }

  else
  {
    v18 = mSelector == 1869638759 || mSelector == 1937007734;
    v19 = 1870098020;
  }

  if (v18 || mSelector == v19)
  {

    HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *a5 = a4;
    v21 = *(*(this + 182) + 32);

    HALS_AHPPlugIn::ObjectGetPropertyData(v21, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPDevice::GetPropertyDataSize(HALS_Device ***this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  if ((((*this)[12])(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  else
  {
    v14 = mSelector == 1869638759 || mSelector == 1937007734;
    v15 = 1870098020;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Device::GetPropertyDataSize(this, v12, a3, a4, a5, a6);
  }

  else
  {
    v18 = this[182][4];

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPDevice::IsPropertySettable(HALS_AHPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  else
  {
    v10 = mSelector == 1869638759 || mSelector == 1937007734;
    v11 = 1870098020;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Device::IsPropertySettable(this, v8, a3, a4);
  }

  else
  {
    v14 = *(*(this + 182) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

uint64_t HALS_AHPDevice::HasProperty(HALS_AHPDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1869638758)
  {
    v6 = mSelector == 1650682995;
    v7 = 1668047219;
  }

  else
  {
    v6 = mSelector == 1869638759 || mSelector == 1937007734;
    v7 = 1870098020;
  }

  if (!v6 && mSelector != v7)
  {
    return (*(**(*(this + 182) + 32) + 184))(*(*(this + 182) + 32), a2) != 0;
  }

  return HALS_Device::HasProperty(this, a2, a3, a4);
}

void HALS_AHPDevice::~HALS_AHPDevice(HALS_AHPDevice *this)
{
  HALS_Device::~HALS_Device(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_AHPDevice::Activate(const __CFString **this)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = *" diubolg";
  v10 = 0;
  v2 = *(this + 4);
  *buf = 0;
  ((*this)[3].length)(this, v2, &v9, 8, &v10 + 4, buf, 0, 0, 0);
  v7 = *buf;
  v8 = 1;
  if (!*buf)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_AHPDevice.cpp";
      v12 = 1024;
      v13 = 44;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPDevice::Activate: no UID", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  CACFString::operator=((this + 13), &v7);
  v4 = this[13];
  if (v4)
  {
    v5 = CFStringGetLength(v4) + 1;
    v4 = this[13];
  }

  else
  {
    v5 = 1;
  }

  *buf = v5;
  CACFString::GetCString(v4, (this + 164), buf, v3);
  HALS_Device::Activate(this);
  CACFString::~CACFString(&v7);
}

uint64_t HALS_AHPStream::SetPropertyData(HALS_AHPStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v21 = mSelector == 1937007734;
    v22 = 1869638759;
  }

  else
  {
    v21 = mSelector == 1650682995;
    v22 = 1668047219;
  }

  if (v21 || mSelector == v22)
  {
    HALS_Object::SetPropertyData(this, a2, a3, v16, v17, v18, v19, a8);
  }

  v24 = *(*(this + 9) + 32);

  return HALS_AHPPlugIn::ObjectSetPropertyData(v24, a2, a3, a6, a7, a4, a5);
}

uint64_t HALS_AHPStream::GetPropertyData(HALS_AHPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(this, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPStream::GetPropertyDataSize(HALS_AHPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v11 = (*(*this + 96))(this, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPStream::IsPropertySettable(HALS_AHPStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v7 = (*(*this + 96))(this, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v10 = mSelector == 1937007734;
    v11 = 1869638759;
  }

  else
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Object::IsPropertySettable(v7, v8, a3);
  }

  else
  {
    v14 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

BOOL HALS_AHPStream::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(**(*(a1 + 72) + 32) + 184))(*(*(a1 + 72) + 32), a2) != 0;
  }

  return result;
}

void HALS_AHPStream::~HALS_AHPStream(HALS_AHPStream *this)
{
  HALS_Stream::~HALS_Stream(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_AHPStream::Activate(HALS_AHPStream *this)
{
  v5.mElement = 0;
  *&v5.mSelector = *"ridsbolg";
  v3 = 4;
  v4 = 0;
  HALS_AHPPlugIn::ObjectGetPropertyData(*(*(this + 9) + 32), *(this + 4), &v5, 0, 0, &v3, &v4);
  *(this + 52) = v4 != 0;
  HALS_Object::Activate(this, v2);
}

uint64_t HALS_AHPControl::SetPropertyData(HALS_AHPControl *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v15 = *(this + 5);
  if (v15 == 1986817381 || v15 == 1836414053)
  {
    operator new();
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector == 1937007734)
    {
      goto LABEL_15;
    }

    v18 = 1869638759;
  }

  else
  {
    if (mSelector == 1650682995)
    {
      goto LABEL_15;
    }

    v18 = 1668047219;
  }

  if (mSelector == v18)
  {
LABEL_15:
    kdebug_trace();
    HALS_Object::SetPropertyData(this, a2, a3, v20, v21, v22, v23, a8);
  }

  return HALS_AHPPlugIn::ObjectSetPropertyData(*(*(this + 9) + 32), a2, a3, a6, a7, a4, a5);
}

void sub_1DE41A87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t HALS_AHPControl::GetPropertyData(HALS_AHPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(this, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPControl::GetPropertyDataSize(HALS_AHPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v11 = (*(*this + 96))(this, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPControl::IsPropertySettable(HALS_AHPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v7 = (*(*this + 96))(this, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v10 = mSelector == 1937007734;
    v11 = 1869638759;
  }

  else
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Object::IsPropertySettable(v7, v8, a3);
  }

  else
  {
    v14 = *(*(this + 9) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

BOOL HALS_AHPControl::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(**(*(a1 + 72) + 32) + 184))(*(*(a1 + 72) + 32), a2) != 0;
  }

  return result;
}

void HALS_AHPControl::~HALS_AHPControl(HALS_AHPControl *this)
{
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_AHPControl::Activate(HALS_AHPControl *this)
{
  v6.mElement = 0;
  *&v6.mSelector = *"pcscbolg";
  v5 = 4;
  HALS_AHPPlugIn::ObjectGetPropertyData(*(*(this + 9) + 32), *(this + 4), &v6, 0, 0, &v5, this + 48);
  *&v4.mSelector = *"mlecbolg";
  v4.mElement = 0;
  v3 = 4;
  HALS_AHPPlugIn::ObjectGetPropertyData(*(*(this + 9) + 32), *(this + 4), &v4, 0, 0, &v3, this + 52);
  HALS_Object::Activate(this, v2);
}

void HALS_IOA2Device::PerformNonDriverConfigChange(HALS_IOA2Device *this, int a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    memset(v8, 0, sizeof(v8));
    HALS_IOA2Device::HandleConfigChange(this, v8, a3);
  }

  else
  {
    v5 = (*(*this + 72))(this);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN15HALS_IOA2Device28PerformNonDriverConfigChangeEbj_block_invoke;
    v6[3] = &__block_descriptor_tmp_118;
    v6[4] = this;
    v7 = v3;
    AMCP::Utility::Dispatch_Queue::async(v5, v6);
  }
}

void sub_1DE41AEE4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE41AED4);
}

void HALS_IOA2Device::HandleConfigChange(HALS_IODevice *a1, uint64_t a2, int a3)
{
  v72 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 4);
    *buf = 136315906;
    *&buf[4] = "HALS_IOA2Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1847;
    *&buf[18] = 2080;
    *&buf[20] = a1 + 164;
    *&buf[28] = 1024;
    *&buf[30] = v6;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::HandleConfigChange: %s|%d: begin --->", buf, 0x22u);
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 0x40000000;
  v56[2] = ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke;
  v56[3] = &unk_1E8674950;
  v56[4] = &v57;
  v56[5] = a1;
  v7 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v7, v56);
  v55[0] = 0;
  v55[1] = 0;
  HALS_System::GetInstance(buf, 0, v55);
  v8 = *buf;
  v9 = (*(*a1 + 208))(a1);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
    cf = v10;
    v11 = CFGetTypeID(v10);
    if (v11 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  HALS_System::GetRawDeviceListUsingClockDevice(v8, &v61, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v14 = v58[3];
  if (v14)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4802000000;
    *&buf[24] = __Block_byref_object_copy__110;
    *&buf[32] = __Block_byref_object_dispose__111;
    v70 = 0u;
    v71 = 0u;
    v48 = 0;
    v49 = &v48;
    v50 = 0x4002000000;
    v51 = __Block_byref_object_copy__112;
    v52 = __Block_byref_object_dispose__113;
    memset(v53, 0, sizeof(v53));
    v15 = *(a1 + 4);
    strcpy(v64, "bgfcbolg");
    v64[9] = 0;
    *&v64[10] = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v15, 0, 1, v64, v13);
    __p = 0;
    v46 = 0;
    v47 = 0;
    (*(*v14 + 224))(v14, &__p);
    v44[0] = 0;
    v44[1] = 0;
    HALS_System::GetInstance(v64, 0, v44);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*v64 + 1744), a1);
    if (*&v64[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v64[8]);
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 1174405120;
    v41[2] = ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke_114;
    v41[3] = &unk_1F596E4F0;
    v43 = a3;
    v41[6] = a1;
    v41[7] = a2;
    v41[4] = buf;
    v41[5] = &v48;
    v42 = v14;
    HALS_ObjectMap::RetainObject(v14, v16);
    v17 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v17, v41);
    v40[0] = 0;
    v40[1] = 0;
    HALS_System::GetInstance(v64, 0, v40);
    HALS_IOContext_Manager::rebuild_engine_for_device(*(*v64 + 1744), a1);
    if (*&v64[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v64[8]);
    }

    if ((*(*a1 + 448))(a1) && ((*(*a1 + 440))(a1) & 1) == 0)
    {
      *v64 = 0x676C6F6268647370;
      *&v64[4] = (*(*a1 + 456))(a1);
      *&v64[8] = 0;
      CAPropertyAddressList::AppendUniqueItem((*&buf[8] + 40), v64, v18);
    }

    kdebug_trace();
    (*(*v14 + 248))(v14, *&buf[8] + 40);
    v19 = *(*&buf[8] + 40);
    v20 = *(*&buf[8] + 48);
    if (v19 != v20)
    {
      HALS_Object::PropertiesChanged_Sync(a1, *(a1 + 4), 0, -1431655765 * ((v20 - v19) >> 2), v19);
      v21 = v61;
      v22 = v62;
      if (v61 != v62)
      {
        do
        {
          HALS_Object::PropertiesChanged_Sync(a1, *v21++, 0, -1431655765 * ((*(*&buf[8] + 48) - *(*&buf[8] + 40)) >> 2), *(*&buf[8] + 40));
        }

        while (v21 != v22);
      }
    }

    v23 = v49;
    v24 = v49[5];
    v25 = v49[6] - v24;
    if ((v25 & 0x1FFFFFFFE0) != 0)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (v27 >= v25 >> 5)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v28 = v24 + v26;
        if (*(v24 + v26) != *(v24 + v26 + 8))
        {
          v29 = *(v28 + 24);
          v31 = HALS_ObjectMap::CopyObjectByObjectID(v29);
          if (v31)
          {
            HALS_Object::PropertiesChanged_Sync(a1, v29, 0, -1431655765 * ((*(v28 + 8) - *v28) >> 2), *v28);
          }

          HALS_ObjectMap::ReleaseObject(v31, v30);
          v23 = v49;
        }

        ++v27;
        v24 = v23[5];
        v25 = v23[6] - v24;
        v26 += 32;
      }

      while (v27 < (v25 >> 5));
    }

    kdebug_trace();
    (*(*v14 + 240))(v14);
    (*(*v14 + 232))(v14, &__p);
    v39[0] = 0;
    v39[1] = 0;
    HALS_System::GetInstance(v64, 0, v39);
    v32 = *(*v64 + 1744);
    os_unfair_lock_lock(v32 + 4);
    os_unfair_lock_unlock(v32 + 4);
    if (*&v64[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v64[8]);
    }

    v38[0] = 0;
    v38[1] = 0;
    HALS_System::GetInstance(v64, 0, v38);
    HALS_IOContext_Manager::resume_contexts_for_device(*(*v64 + 1744), a1);
    if (*&v64[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v64[8]);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 4);
      *v64 = 136315906;
      *&v64[4] = "HALS_IOA2Device.cpp";
      *&v64[12] = 1024;
      *&v64[14] = 2155;
      v65 = 2080;
      v66 = (a1 + 164);
      v67 = 1024;
      v68 = v34;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::_HandleConfigChange: %s|%d:   end <---", v64, 0x22u);
    }

    HALS_ObjectMap::ReleaseObject(v42, v33);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v48, 8);
    *v64 = v53;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v64);
    _Block_object_dispose(buf, 8);
    if (v70)
    {
      *(&v70 + 1) = v70;
      operator delete(v70);
    }
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v37[2] = ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke_116;
    v37[3] = &__block_descriptor_tmp_117;
    v37[4] = a1;
    v37[5] = a2;
    v35 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v35, v37);
  }

  kdebug_trace();
  HALS_ObjectMap::ReleaseObject(v14, v36);
  _Block_object_dispose(&v57, 8);
  if (v61)
  {
    operator delete(v61);
  }
}

void sub_1DE41B7D4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, HALS_ObjectMap *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  HALS_ObjectMap::ReleaseObject(a30, a2);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a37, 8);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Block_object_dispose((v59 - 192), 8);
  v62 = *(v59 - 152);
  if (v62)
  {
    *(v59 - 144) = v62;
    operator delete(v62);
  }

  HALS_ObjectMap::ReleaseObject(v58, v61);
  _Block_object_dispose(&a54, 8);
  if (a58)
  {
    operator delete(a58);
  }

  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOA2Device28PerformNonDriverConfigChangeEbj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v2, 0, sizeof(v2));
  HALS_IOA2Device::HandleConfigChange(v1, v2, *(a1 + 40));
}

void sub_1DE41B994(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE41B988);
}

void ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke(uint64_t result, HALS_Object *a2)
{
  v2 = *(*(result + 40) + 1944);
  if (v2)
  {
    *(*(*(result + 32) + 8) + 24) = v2;
    HALS_ObjectMap::RetainObject(*(*(*(result + 32) + 8) + 24), a2);
  }
}

uint64_t *__Block_byref_object_copy__110(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>(a1 + 5, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  v3[3] = *(a2 + 64);
  return result;
}

void __Block_byref_object_dispose__111(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_copy__112(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v2 = a1 + 5;
  v2[2] = 0;
  std::vector<CAPropertyAddressList>::__init_with_size[abi:ne200100]<CAPropertyAddressList*,CAPropertyAddressList*>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 5);
}

void ___ZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2Notificationj_block_invoke_114(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&v7, 0, v5);
  v3 = HALS_System::CopyClientByObjectID(v7, *(a1 + 72));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALS_ObjectMap::RetainObject(v3, v2);
  HALS_ObjectMap::RetainObject(v3, v4);
  v6 = 0;
  operator new();
}

void sub_1DE41C050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE41C0B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  if (a2)
  {
    std::__function::__value_func<HALS_Client * ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](va);
    HALS_ObjectMap::ReleaseObject(0, v33);
    JUMPOUT(0x1DE41C150);
  }

  JUMPOUT(0x1DE41C0A0);
}

void sub_1DE41C0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41C0A0);
  }

  JUMPOUT(0x1DE41C150);
}

void sub_1DE41C0EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41C0A0);
  }

  JUMPOUT(0x1DE41C158);
}

void sub_1DE41C0F8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(v2 - 176);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1DE41C160);
  }

  JUMPOUT(0x1DE41C0A0);
}

void sub_1DE41C110(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41C0A0);
  }

  JUMPOUT(0x1DE41C160);
}

void sub_1DE41C128(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a2)
  {
    HALS_DeviceState::~HALS_DeviceState(va);
    HALS_DeviceState::~HALS_DeviceState((v23 - 184));
    HALS_ObjectMap::ReleaseObject(v22, v25);
    HALS_ObjectMap::ReleaseObject(v22, v26);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE41C014);
  }

  JUMPOUT(0x1DE41C0A0);
}

void sub_1DE41C140(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE41C148);
  }

  JUMPOUT(0x1DE41C0A0);
}

void __copy_helper_block_e8_64c39_ZTS13HALS_ReleaserI16HALS_IOA2Engine2E(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 8);
  *(a1 + 64) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

double HALS_IOA2Device::_UnmapDataExchangeBlocks(HALS_IOA2Device *this)
{
  v2 = *(this + 258);
  v3 = (this + 2072);
  if (v2 != (this + 2072))
  {
    do
    {
      if (v2[5])
      {
        v4 = *(this + 497) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        MEMORY[0x1E12C0830]();
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v4 = *v6 == v2;
          v2 = v6;
        }

        while (!v4);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 259));
  *(this + 258) = v3;
  result = 0.0;
  *v3 = 0u;
  return result;
}

void HALS_IOA2Device::_UnmapBlockControlBuffers(uint64_t this, uint64_t a2)
{
  if (this != a2)
  {
    v3 = this;
    v4 = MEMORY[0x1E69E9A60];
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 20);
      v7 = *(*v3 + 24);
      if (v6 == v7)
      {
        if (v6 != 1936028002 && v6 != 1651273579)
        {
          goto LABEL_45;
        }
      }

      else if (v6 != 1651273579 && v6 != 1936028002 && v7 != 1651273579 && v7 != 1936028002)
      {
        goto LABEL_45;
      }

      v12 = HALS_ObjectMap::CopyObjectByObjectID(*(v5 + 56));
      v14 = v12;
      v15 = *(v5 + 20);
      v16 = *(v5 + 24);
      if (v15 == v16)
      {
        if (v15 == 1936028002 || v15 == 1651273579)
        {
          goto LABEL_37;
        }
      }

      else if (v15 == 1651273579 || v15 == 1936028002 || v16 == 1651273579 || v16 == 1936028002)
      {
LABEL_37:
        if (*(v5 + 104))
        {
          v21 = v12 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = *(v12 + 1988);
          if (v22)
          {
            MEMORY[0x1E12C0830](v22, *(v5 + 72) & 0xFFFFFFF | 0x30000000u, *v4);
          }

          *(v5 + 104) = 0;
          *(v5 + 112) = 0;
        }
      }

      HALS_ObjectMap::ReleaseObject(v14, v13);
LABEL_45:
      v3 += 8;
    }

    while (v3 != a2);
  }
}

void HALS_IOA2Device::_ReleaseIOBuffers(uint64_t this, unsigned int a2)
{
  v2 = 0;
  v3 = this + 1456;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = (v3 + 24 * v2);
    v7 = *v6;
    if (v6[1] != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v10 + 48));
        v13 = v11;
        if (v11)
        {
          v14 = *(v11 + 1988);
          if (*(v10 + 136))
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            MEMORY[0x1E12C0830]();
          }
        }

        *(v10 + 136) = 0;
        *(v10 + 144) = 0;
        HALS_ObjectMap::ReleaseObject(v13, v12);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (v6[1] - *v6) >> 3);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
}

void HALS_IOA2Device::_UpdateStreams(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v48 = *MEMORY[0x1E69E9840];
  for (i = 1; ; i = 0)
  {
    v5 = i;
    *(a2 + v3) = 0;
    v7 = a1 + 1456 + 24 * v3;
    v6 = *v7;
    v8 = *(v7 + 8) - *v7;
    v9 = v8 >> 3;
    if ((v8 >> 3) >= 1)
    {
      v10 = (v8 >> 3) & 0x7FFFFFFF;
      do
      {
        if (!v9)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v11 = *v6++;
        v2 = v11;
        *(v11 + 13) = 0;
        --v9;
        --v10;
      }

      while (v10);
    }

    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v33 = v2;
      v12 = &v30;
      v13 = @"output streams";
      memset(v37, 0, sizeof(v37));
      v31 = 0u;
      v32 = 0u;
      v14 = 1;
      v30 = 0u;
      v28 = a1;
      while (1)
      {
        v15 = v14;
        theArray = 0;
        HALB_UCObject::CopyProperty_CFArray((a1 + 1976), v13, &theArray);
        *buf = theArray;
        LOWORD(v39) = 1;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            for (j = 0; j != Count; ++j)
            {
              theArray = 0;
              v36 = 1;
              CACFArray::GetCACFDictionary(buf, j, &theArray);
              if (theArray)
              {
                v34 = 0;
                if (CACFDictionary::GetUInt32(theArray, @"stream ID", &v34))
                {
                  v19 = *(v12 + 1);
                  v18 = *(v12 + 2);
                  if (v19 >= v18)
                  {
                    v21 = *v12;
                    v22 = v19 - *v12;
                    v23 = (v22 >> 2) + 1;
                    if (v23 >> 62)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    v24 = v18 - v21;
                    if (v24 >> 1 > v23)
                    {
                      v23 = v24 >> 1;
                    }

                    if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v25 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v25 = v23;
                    }

                    if (v25)
                    {
                      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v25);
                    }

                    v26 = (4 * (v22 >> 2));
                    *v26 = v34;
                    v20 = v26 + 1;
                    memcpy(0, v21, v22);
                    v27 = *v12;
                    *v12 = 0;
                    *(v12 + 1) = v20;
                    *(v12 + 2) = 0;
                    if (v27)
                    {
                      operator delete(v27);
                    }
                  }

                  else
                  {
                    *v19 = v34;
                    v20 = v19 + 1;
                  }

                  *(v12 + 1) = v20;
                }
              }

              CACFDictionary::~CACFDictionary(&theArray);
            }
          }
        }

        CACFArray::~CACFArray(buf);
        v14 = 0;
        v13 = @"input streams";
        v12 = &v31 + 8;
        a1 = v28;
        if ((v15 & 1) == 0)
        {
          HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(*(v28 + 448));
          *buf = 0;
          *&buf[4] = (*(&v30 + 1) - v30) >> 2;
          v39 = v30;
          v40 = v37;
          v41 = a2;
          v42 = 1;
          v43 = (v32 - *(&v31 + 1)) >> 2;
          v44 = *(&v31 + 1);
          v45 = 1;
          v46 = &v37[1] + 8;
          v47 = a2 + 1;
          operator new();
        }
      }
    }
  }
}

void sub_1DE41CD68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  operator delete(__p);
  v31 = 0;
  while (1)
  {
    v32 = *(&a24 + v31);
    if (v32)
    {
      *(&a25 + v31) = v32;
      operator delete(v32);
    }

    v31 -= 24;
    if (v31 == -48)
    {
      v33 = 0;
      while (1)
      {
        v34 = *(&a31 + v33 + 24);
        if (v34)
        {
          *(&a31 + v33 + 32) = v34;
          operator delete(v34);
        }

        v33 -= 24;
        if (v33 == -48)
        {
          JUMPOUT(0x1DE41CE18);
        }
      }
    }
  }
}

void HALS_IOA2Device::_UpdateControls(HALS_IOA2Device *this, BOOL *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v70 = 0;
  *a2 = 0;
  v4 = *(this + 188);
  v5 = *(this + 189) - v4;
  v6 = v5 >> 3;
  if ((v5 >> 3) >= 1)
  {
    v7 = (v5 >> 3) & 0x7FFFFFFF;
    do
    {
      if (!v6)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *v4;
      v9 = *(*v4 + 60);
      if (v9 <= 1)
      {
        *(v8 + 13) = v9;
      }

      v4 += 8;
      --v6;
      --v7;
    }

    while (v7);
    v70 = v8;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  *buf = 0;
  HALB_UCObject::CopyProperty_CFArray(this + 247, @"controls", buf);
  v65 = *buf;
  v66 = 1;
  if (*buf)
  {
    Count = CFArrayGetCount(*buf);
    if (Count >= 1)
    {
      v12 = 0;
      *&v11 = 136315394;
      v61 = v11;
      do
      {
        v63 = 0;
        v64 = 1;
        CACFArray::GetCACFDictionary(&v65, v12, &v63);
        if (v63)
        {
          v62 = 0;
          if (CACFDictionary::GetUInt32(v63, @"control ID", &v62))
          {
            v13 = 0;
            v14 = *(this + 188);
            do
            {
              if ((*(this + 189) - v14) >> 3 <= v13)
              {
                v73 = 0;
                v70 = 0;
                v71 = v63;
                v72 = 0;
                if (!v63 || CACFDictionary::GetUInt32(v63, @"class", &v73))
                {
                  CACFDictionary::~CACFDictionary(&v71);
                  v73 = 0;
                  v71 = v63;
                  v72 = 0;
                  if (!v63 || CACFDictionary::GetUInt32(v63, @"base class", &v73))
                  {
                    CACFDictionary::~CACFDictionary(&v71);
                    v73 = 0;
                    v71 = v63;
                    v72 = 0;
                    if (!v63 || CACFDictionary::GetUInt32(v63, @"scope", &v73))
                    {
                      CACFDictionary::~CACFDictionary(&v71);
                      v73 = 0;
                      v71 = v63;
                      v72 = 0;
                      if (!v63 || CACFDictionary::GetUInt32(v63, @"element", &v73))
                      {
                        CACFDictionary::~CACFDictionary(&v71);
                        operator new();
                      }

                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = v61;
                        *&buf[4] = "HALS_IOA2UCDevice.cpp";
                        LOWORD(v75[0]) = 1024;
                        *(v75 + 2) = 873;
                        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Element: there is no control scope", buf, 0x12u);
                      }

                      exception = __cxa_allocate_exception(0x10uLL);
                      *exception = off_1F5991DD8;
                      exception[2] = 1852797029;
                    }

                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = v61;
                      *&buf[4] = "HALS_IOA2UCDevice.cpp";
                      LOWORD(v75[0]) = 1024;
                      *(v75 + 2) = 861;
                      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Class: there is no control scope", buf, 0x12u);
                    }

                    v19 = __cxa_allocate_exception(0x10uLL);
                    *v19 = off_1F5991DD8;
                    v19[2] = 1852797029;
                  }

                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = v61;
                    *&buf[4] = "HALS_IOA2UCDevice.cpp";
                    LOWORD(v75[0]) = 1024;
                    *(v75 + 2) = 837;
                    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_BaseClass: there is no control base class", buf, 0x12u);
                  }

                  v18 = __cxa_allocate_exception(0x10uLL);
                  *v18 = off_1F5991DD8;
                  v18[2] = 1852797029;
                }

                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = v61;
                  *&buf[4] = "HALS_IOA2UCDevice.cpp";
                  LOWORD(v75[0]) = 1024;
                  *(v75 + 2) = 849;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Class: there is no control class", buf, 0x12u);
                }

                v17 = __cxa_allocate_exception(0x10uLL);
                *v17 = off_1F5991DD8;
                v17[2] = 1852797029;
              }

              v15 = *(v14 + 8 * v13++);
              if (v15)
              {
                v16 = *(v15 + 18) == v62;
              }

              else
              {
                v16 = 0;
              }
            }

            while (!v16);
            v70 = v15;
            *(v15 + 13) = 1;
          }
        }

        CACFDictionary::~CACFDictionary(&v63);
        ++v12;
      }

      while (v12 != Count);
    }
  }

  if ((*(this + 58) & 0x1FFFFFFFFLL) != 0x100000001 && *(this + 183) != *(this + 182))
  {
    *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    *&buf[8] = 257;
    operator new();
  }

  v21 = *(this + 189) - *(this + 188);
  if ((v21 >> 3) >= 1)
  {
    v22 = (v21 >> 3) & 0x7FFFFFFF;
    v23 = v22 + 1;
    v24 = 8 * v22 - 8;
    v25 = -8 * v22;
    do
    {
      v26 = *(this + 188);
      if (v23 - 2 >= (*(this + 189) - v26) >> 3)
      {
        goto LABEL_98;
      }

      v27 = *(v26 + v24);
      if (*(v27 + 13))
      {
        HALS_IOA2Control::SynchronizeWithRegistry(v27);
      }

      else
      {
        *a2 = 1;
        (*(*v27 + 8))(v27);
        HALS_ObjectMap::ObjectIsDead(v27, v28);
        v29 = *(this + 188);
        v30 = (v29 + v24);
        v31 = (v29 + v24 + 8);
        v32 = *(this + 189);
        v33 = &v32[-v29];
        v34 = &v33[v25];
        if (v31 != v32)
        {
          memmove(v30, v31, &v33[v25]);
        }

        *(this + 189) = &v34[v30];
      }

      --v23;
      v24 -= 8;
      v25 += 8;
    }

    while (v23 > 1);
    v70 = v27;
  }

  v35 = v67;
  v36 = v68 - v67;
  if (v68 != v67)
  {
    v37 = v36 >> 3;
    if ((v36 >> 3) >= 1)
    {
      v38 = (v36 >> 3);
      if (v38 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      while (1)
      {
        *a2 = 1;
        if (!v37)
        {
          break;
        }

        v70 = *v35;
        (**v70)(v70);
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](this + 1504, &v70);
        --v37;
        ++v35;
        if (!--v39)
        {
          goto LABEL_64;
        }
      }

LABEL_98:
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }
  }

LABEL_64:
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 192));
  *(this + 191) = this + 1536;
  *(this + 96) = 0u;
  v40 = (this + 1560);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 195));
  *(this + 194) = this + 1560;
  *(this + 1560) = 0u;
  v41 = *(this + 188);
  v42 = *(this + 189);
  if (v41 == v42)
  {
    goto LABEL_89;
  }

  v60 = *(this + 189);
  do
  {
    v43 = *(*v41 + 48);
    v44 = *(*v41 + 52);
    v45 = *(*v41 + 16);
    *buf = *(*v41 + 20);
    *&buf[4] = v43;
    *&buf[8] = v44;
    v75[0] = v45;
    v46 = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<unsigned int,unsigned int,unsigned int>,std::pair<std::tuple<unsigned int,unsigned int,unsigned int> const,unsigned int>>(this + 191, buf, buf);
    if (!*(*v41 + 168))
    {
      goto LABEL_87;
    }

    *&v61 = &v59;
    MEMORY[0x1EEE9AC00](v46);
    v49 = &v59 - ((v48 + 15) & 0x7FFFFFFF0);
    v50 = *(*v41 + 168);
    if (!v50)
    {
      goto LABEL_86;
    }

    if (v47 >= v50)
    {
      v51 = v50;
    }

    else
    {
      v51 = v47;
    }

    memcpy(v49, (*v41 + 172), 4 * v51);
    v52 = 0;
    do
    {
      v53 = *(*v41 + 16);
      *buf = *&v49[4 * v52];
      *&buf[4] = v43;
      *&buf[8] = v44;
      v75[0] = v53;
      if (!*v40)
      {
        goto LABEL_84;
      }

      v54 = *(this + 200);
      if (!v54)
      {
LABEL_97:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v55 = (this + 1560);
      v56 = *v40;
      while ((*(*v54 + 48))(v54, buf, v56 + 28))
      {
        v57 = *v56;
        v55 = v56;
        if (!*v56)
        {
          goto LABEL_84;
        }

LABEL_81:
        v54 = *(this + 200);
        v56 = v57;
        if (!v54)
        {
          goto LABEL_97;
        }
      }

      v58 = *(this + 200);
      if (!v58)
      {
        goto LABEL_97;
      }

      if ((*(*v58 + 48))(v58, v56 + 28, buf))
      {
        v55 = v56 + 1;
        v57 = v56[1];
        if (!v57)
        {
          goto LABEL_84;
        }

        goto LABEL_81;
      }

      if (!*v55)
      {
LABEL_84:
        operator new();
      }

      ++v52;
    }

    while (v52 != v51);
LABEL_86:
    v42 = v60;
LABEL_87:
    v41 += 8;
  }

  while (v41 != v42);
  v41 = *(this + 188);
  v42 = *(this + 189);
LABEL_89:
  if (v41 != v42)
  {
    while (*(*v41 + 20) != 1702259059)
    {
      v41 += 8;
      if (v41 == v42)
      {
        goto LABEL_94;
      }
    }

    *(this + 116) = *(*v41 + 60);
    *(this + 468) = 1;
  }

LABEL_94:
  CACFArray::~CACFArray(&v65);
  if (v67)
  {
    operator delete(v67);
  }
}

void sub_1DE41D940(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1730](v1, 0x10F1C404AE012DFLL);
  CACFDictionary::~CACFDictionary((v2 - 128));
  CACFArray::~CACFArray((v2 - 200));
  v4 = *(v2 - 184);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void HALS_IOA2Device::_MapIOBuffers(uint64_t this, unsigned int a2)
{
  v2 = 0;
  v23 = *MEMORY[0x1E69E9840];
  v3 = this + 1456;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = (v3 + 24 * v2);
    v7 = *v6;
    if (v6[1] != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v10 + 48));
        v13 = v11;
        if (v11)
        {
          v14 = *(v10 + 72);
          v15 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v11 + 1976), v14);
          v17 = v15;
          v18 = 1;
          if (!v15)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v20 = "HALS_IOA2UCDevice.cpp";
              v21 = 1024;
              v22 = 709;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapIOBufferForStream: no stream for the given ID", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 1852797029;
          }

          *buf = 1;
          CACFDictionary::GetUInt32(v15, @"buffer mapping options", buf);
          *(v10 + 136) = HALB_UCObject::MapMemory((v13 + 1976), v14 + 0x10000000, *buf, (v10 + 144));
          CACFDictionary::~CACFDictionary(&v17);
        }

        HALS_ObjectMap::ReleaseObject(v13, v12);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (v6[1] - *v6) >> 3);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
}

void sub_1DE41DBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFDictionary::~CACFDictionary(&a9);
  HALS_ObjectMap::ReleaseObject(v9, v11);
  _Unwind_Resume(a1);
}

void HALS_IOA2Device::_MapBlockControlBuffers(uint64_t this, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    for (i = this; i != a2; i += 8)
    {
      v4 = *i;
      v5 = *(*i + 20);
      v6 = *(*i + 24);
      if (v5 == v6)
      {
        if (v5 != 1936028002 && v5 != 1651273579)
        {
          continue;
        }
      }

      else if (v5 != 1651273579 && v5 != 1936028002 && v6 != 1651273579 && v6 != 1936028002)
      {
        continue;
      }

      v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v4 + 56));
      v13 = v11;
      v14 = *(v4 + 20);
      v15 = *(v4 + 24);
      if (v14 == v15)
      {
        if (v14 == 1936028002 || v14 == 1651273579)
        {
          goto LABEL_37;
        }
      }

      else if (v14 == 1651273579 || v14 == 1936028002 || v15 == 1651273579 || v15 == 1936028002)
      {
LABEL_37:
        if (*(v4 + 104))
        {
          v20 = 1;
        }

        else
        {
          v20 = v11 == 0;
        }

        if (!v20)
        {
          v21 = *(v4 + 80);
          v22 = *(v4 + 72);
          v24 = v21;
          v25 = 0;
          if (!v21)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v27 = "HALS_IOA2UCDevice.cpp";
              v28 = 1024;
              v29 = 1131;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapBlockControlBuffer: no control for the given ID", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 1852797029;
          }

          *buf = 1;
          CACFDictionary::GetUInt32(v21, @"mapping options", buf);
          *(v4 + 104) = HALB_UCObject::MapMemory((v13 + 1976), v22 & 0xFFFFFFF | 0x30000000u, *buf, (v4 + 112));
          CACFDictionary::~CACFDictionary(&v24);
        }
      }

      HALS_ObjectMap::ReleaseObject(v13, v12);
    }
  }
}

void sub_1DE41DE70(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41DE7CLL);
  }

  __clang_call_terminate(a1);
}

const __CFArray *HALS_IOA2Device::_MapDataExchangeBlocks(HALS_IOA2Device *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 260))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Device.cpp";
      v29 = 1024;
      v30 = 2441;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_MapDataExchangeBlocks: the size mDataExchangeBlockInfoMap is non-zero", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v2 = 0;
  v3 = (this + 2048);
  v4 = (this + 2072);
  while (1)
  {
    result = *v3;
    if (*v3)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      return result;
    }

    v22 = 0;
    if (CACFArray::GetDictionary(v3, v2, &v22))
    {
      v20 = v22;
      v21 = 0;
      v19 = 0;
      if (CACFDictionary::GetUInt32(v22, @"block ID", &v19))
      {
        v6 = v19;
        if (v19 >> 28)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            v29 = 1024;
            v30 = 2454;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_MapDataExchangeBlocks: driver returned data exchange block ID that is larger than can fit in the lower 28 bits of a 32 bit integer", buf, 0x12u);
          }

          v15 = __cxa_allocate_exception(0x10uLL);
          *v15 = off_1F5991DD8;
          v15[2] = 1852797029;
        }

        v18 = 0;
        theArray = 0;
        HALB_UCObject::CopyProperty_CFArray(this + 247, @"data exchange blocks", &theArray);
        *buf = theArray;
        *&buf[8] = 1;
        if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
        {
          for (i = 0; i < Count; ++i)
          {
            theArray = 0;
            v27 = 0;
            CACFArray::GetCACFDictionary(buf, i, &theArray);
            if (theArray && ((v25 = 0, UInt32 = CACFDictionary::GetUInt32(theArray, @"block ID", &v25), v25 == v6) ? (v10 = UInt32) : (v10 = 0), v10 == 1 && theArray))
            {
              CFRetain(theArray);
              v11 = theArray;
            }

            else
            {
              v11 = 0;
            }

            CACFDictionary::~CACFDictionary(&theArray);
            if (v11)
            {
              break;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        CACFArray::~CACFArray(buf);
        v23 = v11;
        v24 = 1;
        if (!v11)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2UCDevice.cpp";
            v29 = 1024;
            v30 = 1225;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapDataExchangeBlockBuffer: no data exchange block for the given ID", buf, 0x12u);
          }

          v16 = __cxa_allocate_exception(0x10uLL);
          *v16 = off_1F5991DD8;
          v16[2] = 1852797029;
        }

        *buf = 1;
        CACFDictionary::GetUInt32(v11, @"buffer mapping options", buf);
        HALB_UCObject::MapMemory((this + 1976), v6 | 0x20000000, *buf, &v18);
        CACFDictionary::~CACFDictionary(&v23);
        v12 = *v4;
        if (!*v4)
        {
LABEL_31:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v13 = v12;
            v14 = *(v12 + 32);
            if (v19 >= v14)
            {
              break;
            }

            v12 = *v13;
            if (!*v13)
            {
              goto LABEL_31;
            }
          }

          if (v14 >= v19)
          {
            break;
          }

          v12 = v13[1];
          if (!v12)
          {
            goto LABEL_31;
          }
        }
      }

      CACFDictionary::~CACFDictionary(&v20);
    }

    ++v2;
  }
}

void sub_1DE41E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  CACFArray::~CACFArray(va1);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t _ZNKSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEEclESD_(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1752122448 || *(a1 + 8) == 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE18destroy_deallocateEv(HALS_ObjectMap **a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(a1[1], a2);

  operator delete(a1);
}

void _ZNKSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F596E628;
  *(a2 + 1) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED0Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F596E628;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);

  JUMPOUT(0x1E12C1730);
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED1Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F596E628;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);
  return a1;
}

void std::vector<CAPropertyAddressList>::__init_with_size[abi:ne200100]<CAPropertyAddressList*,CAPropertyAddressList*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::allocator<CAPropertyAddressList>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void HALS_IOA2Device::GetDefaultChannelLayoutPropertyData(HALS_IOA2Device *this, uint64_t a2, const AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, unsigned int *a5, HALS_Device *a6, unsigned int a7, const void *a8, HALS_Client *a9, unsigned int a10, unsigned int *a11, unsigned int a12, BOOL a13)
{
  *a6 = 0;
  *(a6 + 2) = a12;
  if (a12)
  {
    v15 = (a6 + 16);
    v16 = a12;
    do
    {
      *(v15 - 1) = -1;
      *v15 = 0;
      v15[1] = 0;
      v15 = (v15 + 20);
      --v16;
    }

    while (v16);
  }

  *a5 = a10;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3802000000;
  v27 = __Block_byref_object_copy__129;
  v28 = __Block_byref_object_dispose__130;
  v29[0] = &unk_1F59910D0;
  v29[1] = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZNK15HALS_IOA2Device35GetDefaultChannelLayoutPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientjS3_jb_block_invoke;
  v22[3] = &unk_1E86749E0;
  v22[4] = &v24;
  v22[5] = this;
  v23 = a13;
  v17 = (*(*this + 64))(this, a2, a3);
  HALB_CommandGate::ExecuteCommand(v17, v22);
  v18 = v25[6];
  if (v18)
  {
    v19 = 0;
    v20 = (a6 + 12);
    while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v18) > v19 && v19 < *(a6 + 2))
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(v21, (v25 + 5), v19);
      *v20 = OS::CF::Number::GetValue<unsigned int>(v21[1], 0);
      v20 += 5;
      OS::CF::UntypedObject::~UntypedObject(v21);
      ++v19;
      v18 = v25[6];
    }
  }

  HALS_Device::ThrowIfInvalidACL(a6, a4, a12);
  _Block_object_dispose(&v24, 8);
  OS::CF::UntypedObject::~UntypedObject(v29);
}

void sub_1DE41E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  OS::CF::UntypedObject::~UntypedObject(v17);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F59910D0;
  return result;
}

uint64_t ___ZNK15HALS_IOA2Device35GetDefaultChannelLayoutPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientjS3_jb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v3 = @"input channel layout";
  }

  else
  {
    v3 = @"output channel layout";
  }

  v7 = 0;
  HALB_UCObject::CopyProperty_CFArray((v2 + 1976), v3, &v7);
  v4 = v7;
  v5 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v5, v4);
}

void sub_1DE41EAAC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOA2Device::_ClientDescriptionChanged(uint64_t a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  buf[0] = 0;
  HALB_UCObject::CopyProperty_BOOL((a1 + 1976), @"supports client description", buf);
  if (buf[0] != 1)
  {
    return;
  }

  v2 = (*(*a1 + 736))(a1);
  valuePtr = 0.0;
  v14 = 0;
  if (*(a1 + 552) != v2)
  {
    v3 = v2;
    CACFDictionary::GetUInt64(*(v2 + 8), @"kind", &v14);
    v4 = *(v3 + 8);
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"UsageCaseSampleRate");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v6, kCFNumberFloat64Type, &valuePtr);
        }
      }
    }

    if (v14 != 5)
    {
      if (v14 == 4)
      {
        v8 = 2;
        goto LABEL_14;
      }

      if (v14 != 2)
      {
        v8 = 1;
        goto LABEL_14;
      }
    }

    v8 = 3;
LABEL_14:
    v14 = v8;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:
  v9 = 1937010544;
  input[0] = v8;
  input[1] = vcvtd_n_u64_f64(valuePtr - floor(valuePtr), 0x20uLL) + (vcvtmd_u64_f64(valuePtr) << 32);
  v10 = *(a1 + 1988);
  if (!v10 || *(a1 + 2010) != 1 || (v9 = IOConnectCallMethod(v10, 0xCu, input, 2u, 0, 0, 0, 0, 0, 0)) != 0)
  {
    v11 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "HALS_IOA2UCDevice.cpp";
      v17 = 1024;
      v18 = 312;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::SetClientDescription: got an error when telling the hardware to change client description, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v11;
  }
}

uint64_t HALS_IOA2Device::_CopyControlByDescription(HALS_IOA2Device *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::find<std::tuple<unsigned int,unsigned int,unsigned int>>(this + 1528, v8);
  if ((this + 1536) == v5)
  {
    return 0;
  }

  v6 = v5[10];
  if (!v6)
  {
    return 0;
  }

  return HALS_ObjectMap::CopyObjectByObjectID(v6);
}

HALS_ObjectMap *HALS_IOA2Device::_CopyControlByIndex(HALS_IOA2Device *this, HALS_Object *a2)
{
  v2 = *(this + 188);
  if (a2 >= ((*(this + 189) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOA2Device::_CopyControls(HALS_IOA2Device *this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 188);
  for (i = *(this + 189); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_IOA2Device::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1464) - *(v4 + 1456)) >> 3);
  v6 = *(v4 + 1456);
  for (i = *(v4 + 1464); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

uint64_t HALS_IOA2Device::_GetTotalNumberChannels(HALS_IOA2Device *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 182);
  if (v3 == *(v2 + 183))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1456;
  do
  {
    v6 = *v3++;
    v7 = v6[4];
    v11 = 0x676C6F6270667420;
    v12 = 0;
    v13 = 0;
    (*(*v6 + 120))(v6, v7, &v11, 40, &v13, v9, 0, 0, 0);
    v4 = (v10 + v4);
  }

  while (v3 != *(v5 + 1));
  return v4;
}

uint64_t HALS_IOA2Device::_ReadHogModeOwnerStore(HALS_IOA2Device *this)
{
  *(this + 2008) = 1;
  cf = 0;
  if (!HALB_UCObject::CopyProperty_CFType(this + 247, @"exclusive access owner", &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = cf;
  v3 = CFGetTypeID(cf);
  if (v3 != CFNumberGetTypeID())
  {
    CFRelease(v2);
    return 0xFFFFFFFFLL;
  }

  v7 = v2;
  v8 = 0;
  valuePtr = 0;
  if (v2)
  {
    CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
    v4 = valuePtr;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v7);
  CFRelease(v2);
  if (v4 != -1)
  {
    v6 = CAProcess::sPID;
    if (CAProcess::sPID == -1)
    {
      v6 = getpid();
      CAProcess::sPID = v6;
    }

    if (v4 != v6 && (v4 < 1 || kill(v4, 0) && *__error() == 3))
    {
      v4 = 0xFFFFFFFFLL;
      HALB_UCObject::SetProperty_SInt32((this + 1976), 0xFFFFFFFFLL);
    }
  }

  return v4;
}

void HALS_IOA2Device::_HogModeOwnerChanged(HALS_IOA2Device *this, int a2)
{
  if ((*(this + 1968) & 1) == 0)
  {
    if (a2 == -1)
    {

      HALS_IOA2Device::_CloseConnection(this);
    }

    else if (getpid() == a2)
    {

      HALS_IOA2Device::_OpenConnection(this);
    }
  }
}

void HALS_IOA2Device::_CloseConnection(HALS_IOA2Device *this)
{
  v2 = *(this + 497);
  if (v2)
  {
    MEMORY[0x1E12C07F0](v2, 0, 0, 0);
  }

  HALS_IOA2Device::_UnmapDataExchangeBlocks(this);
  HALS_IOA2Device::_UnmapBlockControlBuffers(*(this + 188), *(this + 189));
  HALS_IOA2Device::_ReleaseIOBuffers(this, v3);
  v4 = *(this + 497);
  if (*(this + 253) && v4)
  {
    MEMORY[0x1E12C0830](v4, 0, *MEMORY[0x1E69E9A60]);
    LODWORD(v4) = *(this + 497);
  }

  *(this + 253) = 0;
  if (v4)
  {
    IOServiceClose(v4);
    *(this + 497) = 0;
  }

  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v7 + 1744), this);
  v5 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void HALS_IOA2Device::_OpenConnection(HALS_IOA2Device *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(this + 496);
  if (v2)
  {
    if (!*(this + 497))
    {
      v3 = IOServiceOpen(v2, *MEMORY[0x1E69E9A60], 0, this + 497);
      if (v3)
      {
        v23 = v3;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALB_UCObject.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 710;
          v27 = 1024;
          v28 = v23;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::OpenConnection: failed to open a connection, Error: 0x%X", buf, 0x18u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = v23;
      }
    }
  }

  HALS_IOA2UCDevice::MapEngineStatus((this + 1976), this + 253);
  v5 = *(this + 497);
  if (v5)
  {
    v6 = *(this + 504);
    v7 = MEMORY[0x1E12C07F0](v5, 0, v6, *(this + 4));
    if (v6)
    {
      if (v7)
      {
        v21 = v7;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALB_UCObject.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 730;
          v27 = 1024;
          v28 = v21;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::SetConnectionNotificationPort: Cannot set the connection's's notification port., Error: 0x%X", buf, 0x18u);
        }

        v22 = __cxa_allocate_exception(0x10uLL);
        *v22 = off_1F5991DD8;
        v22[2] = v21;
      }
    }
  }

  HALS_IOA2Device::_MapIOBuffers(this, v4);
  HALS_IOA2Device::_MapBlockControlBuffers(*(this + 188), *(this + 189));
  HALS_IOA2Device::_MapDataExchangeBlocks(this);
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = (this + 24 * v8 + 1456);
    v12 = *v11;
    if (v11[1] != *v11)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = *(v12 + 8 * v13);
        v16 = HALS_ObjectMap::CopyObjectByObjectID(*(v15 + 48));
        v18 = v16;
        if (v16 && !*(v15 + 56))
        {
          HALS_IOA2UCDevice::SetStreamActive((v16 + 1976), *(v15 + 72), *(v15 + 76));
        }

        HALS_ObjectMap::ReleaseObject(v18, v17);
        v13 = v14;
        v12 = *v11;
        ++v14;
      }

      while (v13 < (v11[1] - *v11) >> 3);
    }

    v9 = 0;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
  v19 = *(this + 243);
  if (v19)
  {
    (*(*v19 + 960))(v19);
  }

  v25[0] = 0;
  v25[1] = 0;
  HALS_System::GetInstance(buf, 0, v25);
  HALS_IOContext_Manager::rebuild_engine_for_device(*(*buf + 1744), this);
  v20 = *&buf[8];
  if (*&buf[8])
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

HALS_ObjectMap *HALS_IOA2Device::_CopyStreamByIndex(HALS_IOA2Device *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 183);
  v5 = *(v3 + 182);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

void HALS_IOA2Device::create_mcp_engine(NSObject **this)
{
  v11 = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  HALB_UCObject::CopyProperty_CFString(this + 247, @"device UID", cf);
  v9[3] = cf[0];
  if (!cf[0] || (v3 = CFGetTypeID(cf[0]), v3 == CFStringGetTypeID()))
  {
    HALS_IOA2UCDevice::GetNominalSampleRate(this + 247);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"clock domain", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"input safety offset", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"output safety offset", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"input latency", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"output latency", cf);
    LOBYTE(cf[0]) = 0;
    HALB_UCObject::CopyProperty_BOOL(this + 247, @"wants input trap", cf);
    LOBYTE(cf[0]) = 0;
    HALB_UCObject::CopyProperty_BOOL(this + 247, @"wants output trap", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"io buffer frame size", cf);
    make_stream_list(v9, this + 185);
    make_stream_list(&__p, this + 182);
    AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(cf, "IOAudio2::Engine Queue", 61);
    AMCP::Utility::Dispatch_Queue::operator=(this + 201, cf[0]);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(cf);
    v4 = IOConnectAddRef(*(this + 497));
    if (!v4)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v6 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v4, v6, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v7, "Could not construct");
  __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE41FC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, const void *a24, __int16 a25, char a26, char a27, int a28, int a29, io_connect_t connect)
{
  __cxa_free_exception(v30);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a24);
  _Unwind_Resume(a1);
}

void make_stream_list(void **a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(a1, a2[1] - *a2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0x492492492492492;
    v7 = 0x6DB6DB6DB6DB6DB7;
    do
    {
      v8 = (*(**v4 + 208))();
      v9 = *v4;
      v10 = *(*v4 + 72);
      v11 = *(*v4 + 16);
      v34 = 0x676C6F6270667420;
      v35 = 0;
      (*(*v9 + 120))(v9, v11, &v34, 40, &v35 + 4, &v31, 0, 0, 0);
      v12 = a1[1];
      v13 = a1[2];
      if (v12 >= v13)
      {
        v18 = v6;
        v19 = *a1;
        v20 = v12 - *a1;
        v21 = (v20 >> 3) * v7;
        v22 = v21 + 1;
        if (v21 + 1 > v18)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v23 = v7;
        v24 = ((v13 - v19) >> 3) * v7;
        if (2 * v24 > v22)
        {
          v22 = 2 * v24;
        }

        v25 = v18;
        if (v24 >= 0x249249249249249)
        {
          v26 = v18;
        }

        else
        {
          v26 = v22;
        }

        if (v26)
        {
          std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 56 * v21;
        v28 = v33;
        v29 = v32;
        v30 = v31;
        *v27 = v8;
        *(v27 + 4) = v10;
        *(v27 + 8) = 1;
        *(v27 + 16) = v30;
        *(v27 + 32) = v29;
        *(v27 + 48) = v28;
        v17 = (56 * v21 + 56);
        memcpy((56 * v21 - v20), v19, v20);
        *a1 = (56 * v21 - v20);
        a1[1] = v17;
        a1[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }

        v6 = v25;
        v7 = v23;
      }

      else
      {
        v14 = v33;
        v15 = v32;
        v16 = v31;
        *v12 = v8;
        *(v12 + 1) = v10;
        *(v12 + 2) = 1;
        *(v12 + 1) = v16;
        *(v12 + 2) = v15;
        *(v12 + 6) = v14;
        v17 = v12 + 56;
      }

      a1[1] = v17;
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1DE41FF58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOA2Device::HandleOwnedObjectPropertiesChanged(HALS_IOA2Device *this, const HALS_Object *a2, unsigned int a3, int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  memset(v27, 0, sizeof(v27));
  v12 = *(a2 + 5);
  IsSubClass = HALB_Info::IsSubClass(v12, 1633907820);
  v15 = *(a2 + 6);
  if (v12 == v15 || IsSubClass)
  {
    if (v12 != v15)
    {
      IsSubClass = 1;
    }

    if (!IsSubClass)
    {
      goto LABEL_48;
    }
  }

  else if (!HALB_Info::IsSubClass(v15, 1633907820))
  {
LABEL_48:
    v22 = 0;
    goto LABEL_49;
  }

  if (!*(a2 + 42) || !a4)
  {
    goto LABEL_48;
  }

  v25 = a3;
  v16 = a5;
  v17 = a4;
  do
  {
    v18 = *(a2 + 6);
    if (v18 <= 1936483441)
    {
      switch(v18)
      {
        case 1651273579:
          mSelector = v16->mSelector;
          if (v16->mSelector != 1651272546)
          {
            v20 = 1651272548;
            goto LABEL_33;
          }

          break;
        case 1818588780:
          mSelector = v16->mSelector;
          if (v16->mSelector <= 1818456931)
          {
            if (mSelector != 1818453106)
            {
              if (mSelector != 1818453107)
              {
                v20 = 1818453110;
                goto LABEL_33;
              }

              v21 = 188;
LABEL_43:
              v26.mSelector = *(a2 + v21);
              *&v26.mScope = *(a2 + 6);
              CAPropertyAddressList::AppendUniqueItem(v27, &v26, v13);
              goto LABEL_44;
            }

LABEL_37:
            v21 = 180;
            goto LABEL_43;
          }

          if (mSelector == 1818456932)
          {
LABEL_46:
            v21 = 184;
            goto LABEL_43;
          }

          if (mSelector != 1818456950)
          {
            if (mSelector != 1818457190)
            {
              goto LABEL_44;
            }

            v21 = 192;
            goto LABEL_43;
          }

          break;
        case 1936483188:
          mSelector = v16->mSelector;
          if (v16->mSelector <= 1935893352)
          {
            if (mSelector != 1668049771)
            {
              v20 = 1935892841;
LABEL_33:
              if (mSelector != v20)
              {
                goto LABEL_44;
              }

              v21 = 176;
              goto LABEL_43;
            }

            goto LABEL_46;
          }

          if (mSelector != 1935893353)
          {
            if (mSelector != 1935894894)
            {
              goto LABEL_44;
            }

            goto LABEL_37;
          }

          break;
        default:
          goto LABEL_44;
      }

LABEL_42:
      v21 = 172;
      goto LABEL_43;
    }

    if (v18 != 1953458028)
    {
      if (v18 == 1936744814)
      {
        mSelector = v16->mSelector;
        if (v16->mSelector != 1936745334)
        {
          v20 = 1936745315;
          goto LABEL_33;
        }
      }

      else
      {
        if (v18 != 1936483442)
        {
          goto LABEL_44;
        }

        mSelector = v16->mSelector;
        if (v16->mSelector != 1935962742)
        {
          v20 = 1935962738;
          goto LABEL_33;
        }
      }

      goto LABEL_42;
    }

    if (v16->mSelector == 1650685548)
    {
      goto LABEL_42;
    }

LABEL_44:
    ++v16;
    --v17;
  }

  while (v17);
  v22 = *&v27[0];
  a3 = v25;
  if (*&v27[0] != *(&v27[0] + 1))
  {
    v23 = *(this + 4);
    v24 = -1431655765 * ((*(&v27[0] + 1) - *&v27[0]) >> 2);
    if (a6)
    {
      HALS_Object::PropertiesChanged_Sync(this, v23, v25, v24, *&v27[0]);
    }

    else
    {
      HALS_Object::PropertiesChanged(this, v23, v25, v24, *&v27[0]);
    }
  }

LABEL_49:
  HALS_Device::HandleOwnedObjectPropertiesChanged(this, a2, a3, a4, a5, a6);
  if (v22)
  {
    *(&v27[0] + 1) = v22;

    operator delete(v22);
  }
}

void sub_1DE420314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOA2Device::SetPropertyData(HALS_IOA2Device *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, uint64_t a4, float *a5, uint64_t a6, int *a7, AudioObjectPropertyAddress *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v31 = 1852797029;
LABEL_27:
    exception[2] = v31;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v18 = atomic_load(this + 40);
    if (a8)
    {
      v19 = a8[20].mSelector;
    }

    else
    {
      v19 = getpid();
    }

    if (v18 != -1 && v18 != v19)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v31 = 560492391;
      goto LABEL_27;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector == 1667329635)
  {
    if (a6 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1694;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: bad qualifier data size for property 'canc'", buf, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = off_1F5991DD8;
      v33[2] = 561211770;
    }

    if (!a7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1695;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: inQualifierData was NULL for property 'canc'", buf, 0x12u);
      }

      v34 = __cxa_allocate_exception(0x10uLL);
      *v34 = off_1F5991DD8;
      v34[2] = 2003329396;
    }

    v24 = *a7;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v47) = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 0x40000000;
    v42[2] = ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_99;
    v42[3] = &unk_1E8674900;
    v43 = v24;
    v44 = a4;
    v42[5] = this;
    v42[6] = a5;
    v42[4] = buf;
    v25 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v25, v42);
    if (*(*&buf[8] + 24))
    {
      v35 = __cxa_allocate_exception(0x10uLL);
      v36 = *(*&buf[8] + 24);
      *v35 = off_1F5991DD8;
      v35[2] = v36;
    }

    goto LABEL_20;
  }

  if (mSelector == 1853059700)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1678;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = off_1F5991DD8;
      v32[2] = 561211770;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v47) = 0;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v45[2] = ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v45[3] = &unk_1E86748D8;
    v45[5] = this;
    v45[6] = a5;
    v45[4] = buf;
    v21 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v21, v45);
    if (*(*&buf[8] + 24))
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      v23 = *(*&buf[8] + 24);
      *v22 = off_1F5991DD8;
      v22[2] = v23;
    }

LABEL_20:
    v26 = buf;
    goto LABEL_25;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v47 = __Block_byref_object_copy__25;
  v48 = __Block_byref_object_dispose__26;
  v49 = 0;
  v50 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 0x40000000;
  v37[2] = ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_101;
  v37[3] = &unk_1E8674928;
  v37[6] = this;
  v37[7] = a3;
  v37[4] = &v38;
  v37[5] = buf;
  v27 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v27, v37);
  v28 = v39[3];
  if (v28)
  {
    (*(*v28 + 128))(v28, v28[4], *&buf[8] + 40, a4, a5, a6, a7, a8);
    HALS_ObjectMap::ReleaseObject(v39[3], v29);
  }

  else
  {
    HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_object_dispose(buf, 8);
  v26 = &v38;
LABEL_25:
  _Block_object_dispose(v26, 8);
}

uint64_t ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t result)
{
  v1 = result;
  v13 = *MEMORY[0x1E69E9840];
  LODWORD(result) = 1937010544;
  v2 = *(v1 + 40);
  inputStruct = vcvtd_n_s64_f64(**(v1 + 48) - floor(**(v1 + 48)), 0x20uLL) + (vcvtmd_s64_f64(**(v1 + 48)) << 32);
  v3 = *(v2 + 1988);
  if (!v3 || *(v2 + 2010) != 1 || (result = IOConnectCallMethod(v3, 4u, 0, 0, &inputStruct, 8uLL, 0, 0, 0, 0), result))
  {
    v4 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v8 = "HALS_IOA2UCDevice.cpp";
      v9 = 1024;
      v10 = 224;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::SetNominalSampleRate: got an error when telling the hardware to change a control value, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  return result;
}

uint64_t ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_99(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(result + 40);
  v2 = *(v1 + 2072);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 56);
    v5 = v1 + 2072;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != v1 + 2072 && v4 >= *(v5 + 32))
    {
      v9 = *(v5 + 40);
      if (v9)
      {
        v10 = *(v3 + 60);
        if (v10 <= *(v5 + 48))
        {
          if (*(v3 + 48))
          {
            memcpy(v9, *(v3 + 48), *(v3 + 60));
            v4 = *(v3 + 56);
            v10 = *(v3 + 60);
          }

          return HALS_IOA2UCDevice::MoveDataExchangeBlockData((v1 + 1976), v4, 1u, v10);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "HALS_IOA2Device.cpp";
          v15 = 1024;
          v16 = 1704;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: wrong data size for property 'canc'", &v13, 0x12u);
        }

        v11 = 561211770;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "HALS_IOA2Device.cpp";
          v15 = 1024;
          v16 = 1703;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: bad block ID for property 'canc'", &v13, 0x12u);
        }

        v11 = 2003329396;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v11;
    }
  }

  return result;
}

void sub_1DE420E88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 2003329396;
    }

    *(*(*(v2 + 32) + 8) + 24) = v5;
    __cxa_end_catch();
    JUMPOUT(0x1DE420D38);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

_DWORD *___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_101(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE420F28(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOA2Device::GetPropertyData(HALS_IOA2Device *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, char *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  v140 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v134 = 0;
  v15 = (*(*this + 704))(this, a9);
  mSelector = a3->mSelector;
  mScope = a3->mScope;
  if (a3->mSelector <= 1819173228)
  {
    if (mSelector > 1735354733)
    {
      if (mSelector > 1751737453)
      {
        if (mSelector > 1818455661)
        {
          if (mSelector == 1818455662)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1271;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyElementNumberName", buf, 0x12u);
              }

              v82 = __cxa_allocate_exception(0x10uLL);
              *v82 = off_1F5991DD8;
              v82[2] = 561211770;
            }

            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 0x40000000;
            v129[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_49;
            v129[3] = &__block_descriptor_tmp_50;
            v129[4] = this;
            v129[5] = a6;
            v129[6] = a3;
            v47 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v47, v129);
            goto LABEL_114;
          }

          if (mSelector == 1819107691)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1253;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
              }

              v76 = __cxa_allocate_exception(0x10uLL);
              *v76 = off_1F5991DD8;
              v76[2] = 561211770;
            }

            v131[0] = MEMORY[0x1E69E9820];
            v131[1] = 0x40000000;
            v131[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_45;
            v131[3] = &__block_descriptor_tmp_46;
            v131[4] = this;
            v131[5] = a6;
            v32 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v32, v131);
            goto LABEL_114;
          }

          goto LABEL_110;
        }

        if (mSelector != 1751737454)
        {
          if (mSelector == 1818452846)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1262;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyElementCategoryName", buf, 0x12u);
              }

              v68 = __cxa_allocate_exception(0x10uLL);
              *v68 = off_1F5991DD8;
              v68[2] = 561211770;
            }

            v130[0] = MEMORY[0x1E69E9820];
            v130[1] = 0x40000000;
            v130[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_47;
            v130[3] = &__block_descriptor_tmp_48;
            v130[4] = this;
            v130[5] = a6;
            v130[6] = a3;
            v24 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v24, v130);
            goto LABEL_114;
          }

LABEL_110:
          HALS_IOA2Device::GetCustomPropertyInfoByAddress(&__p, this, a3);
          if (theDict)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1636;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for a custom property", buf, 0x12u);
              }

              v90 = __cxa_allocate_exception(0x10uLL);
              *v90 = off_1F5991DD8;
              v90[2] = 561211770;
            }

            v95[0] = MEMORY[0x1E69E9820];
            v95[1] = 1174405120;
            v95[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_91;
            v95[3] = &__block_descriptor_tmp_95;
            v95[4] = this;
            OS::CF::UntypedObject::UntypedObject(v96, theDict);
            v96[0] = &unk_1F5991008;
            v96[2] = a6;
            v54 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v54, v95);
            *a5 = 8;
            OS::CF::UntypedObject::~UntypedObject(v96);
          }

          else
          {
            v104 = 0;
            v105 = &v104;
            v106 = 0x2000000000;
            v107 = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v136 = __Block_byref_object_copy__25;
            v137 = __Block_byref_object_dispose__26;
            v138 = 0;
            v139 = 0;
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 0x40000000;
            v94[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_96;
            v94[3] = &unk_1E86748B0;
            v94[6] = this;
            v94[7] = a3;
            v94[4] = &v104;
            v94[5] = buf;
            v56 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v56, v94);
            v57 = v105[3];
            if (v57)
            {
              (*(*v57 + 120))(v57, v57[4], *&buf[8] + 40, a4, a5, a6, a7, a8, a9);
              HALS_ObjectMap::ReleaseObject(v105[3], v58);
            }

            else
            {
              HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
            }

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v104, 8);
          }

          OS::CF::UntypedObject::~UntypedObject(&__p);
          return;
        }
      }

      else
      {
        if (mSelector <= 1751412336)
        {
          if (mSelector == 1735354734 || mSelector == 1735356005)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1330;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
              }

              v64 = __cxa_allocate_exception(0x10uLL);
              *v64 = off_1F5991DD8;
              v64[2] = 561211770;
            }

            *a6 = (*(**(this + 243) + 688))(*(this + 243));
            goto LABEL_107;
          }

          goto LABEL_110;
        }

        if (mSelector != 1751412337)
        {
          if (mSelector == 1751474532)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1593;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyHeadsetInfo", buf, 0x12u);
              }

              v74 = __cxa_allocate_exception(0x10uLL);
              *v74 = off_1F5991DD8;
              v74[2] = 561211770;
            }

            v99[0] = MEMORY[0x1E69E9820];
            v99[1] = 0x40000000;
            v99[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_85;
            v99[3] = &__block_descriptor_tmp_86;
            v99[4] = this;
            v99[5] = a6;
            v30 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v30, v99);
LABEL_114:
            v41 = 8;
            goto LABEL_115;
          }

          goto LABEL_110;
        }
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOA2Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1522;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
        }

        v63 = __cxa_allocate_exception(0x10uLL);
        *v63 = off_1F5991DD8;
        v63[2] = 561211770;
      }

      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 0x40000000;
      v109[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_75;
      v109[3] = &__block_descriptor_tmp_76;
      v109[4] = this;
      v109[5] = a6;
      v34 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v34, v109);
      goto LABEL_107;
    }

    if (mSelector > 1667330159)
    {
      if (mSelector > 1668641651)
      {
        if (mSelector == 1668641652)
        {
          Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(*(this + 245));
          if (Size >= a4 / 0xCuLL)
          {
            v38 = a4 / 0xCuLL;
          }

          else
          {
            v38 = Size;
          }

          if (v38)
          {
            v39 = 0;
            v40 = a6 + 4;
            do
            {
              OS::CF::ArrayBase<__CFArray const*>::operator[](v100, this + 1952, v39);
              OS::CF::UntypedObject::As<OS::CF::Dictionary>(&__p, v100);
              OS::CF::DictionaryBase<__CFDictionary const*>::operator[](&v104, theDict, @"property selector");
              OS::CF::UntypedObject::As<OS::CF::Number>(buf, &v104);
              *(v40 - 1) = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
              OS::CF::UntypedObject::~UntypedObject(buf);
              OS::CF::UntypedObject::~UntypedObject(&v104);
              OS::CF::UntypedObject::~UntypedObject(&__p);
              OS::CF::UntypedObject::~UntypedObject(v100);
              *v40 = 1886155636;
              v40 += 12;
              ++v39;
            }

            while (v38 != v39);
          }

          v41 = 12 * v38;
          goto LABEL_115;
        }

        if (mSelector == 1684434036)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1339;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
            }

            v72 = __cxa_allocate_exception(0x10uLL);
            *v72 = off_1F5991DD8;
            v72[2] = 561211770;
          }

          v124[0] = MEMORY[0x1E69E9820];
          v124[1] = 0x40000000;
          v124[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_62;
          v124[3] = &__block_descriptor_tmp_63;
          v124[4] = this;
          v124[5] = a6;
          v124[6] = a3;
          v124[7] = a9;
          v29 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v29, v124);
          goto LABEL_107;
        }
      }

      else
      {
        if (mSelector == 1667330160)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1280;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyConfigurationApplication", buf, 0x12u);
            }

            v78 = __cxa_allocate_exception(0x10uLL);
            *v78 = off_1F5991DD8;
            v78[2] = 561211770;
          }

          v128[0] = MEMORY[0x1E69E9820];
          v128[1] = 0x40000000;
          v128[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_51;
          v128[3] = &__block_descriptor_tmp_52;
          v128[4] = this;
          v128[5] = a6;
          v35 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v35, v128);
          if (!*a6)
          {
            *a6 = CFRetain(@"com.apple.audio.AudioMIDISetup");
          }

          goto LABEL_114;
        }

        if (mSelector == 1668049764)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1320;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
            }

            v66 = __cxa_allocate_exception(0x10uLL);
            *v66 = off_1F5991DD8;
            v66[2] = 561211770;
          }

          v125[0] = MEMORY[0x1E69E9820];
          v125[1] = 0x40000000;
          v125[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_60;
          v125[3] = &__block_descriptor_tmp_61_5874;
          v125[4] = this;
          v125[5] = a6;
          v22 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v22, v125);
          goto LABEL_107;
        }
      }

      goto LABEL_110;
    }

    if (mSelector != 1634429294)
    {
      if (mSelector == 1635087471)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v136) = 1;
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 0x40000000;
        v97[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_89;
        v97[3] = &unk_1E8674888;
        v97[4] = buf;
        v97[5] = this;
        v51 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v51, v97);
        *a6 = *(*&buf[8] + 24);
        *a5 = 4;
      }

      else
      {
        if (mSelector != 1667329635)
        {
          goto LABEL_110;
        }

        if (a7 != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1539;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyDataSize: bad qualifier data size for property 'canc'", buf, 0x12u);
          }

          v70 = __cxa_allocate_exception(0x10uLL);
          *v70 = off_1F5991DD8;
          v70[2] = 561211770;
        }

        if (!a8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1540;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyDataSize: inQualifierData was NULL for property 'canc'", buf, 0x12u);
          }

          v87 = __cxa_allocate_exception(0x10uLL);
          *v87 = off_1F5991DD8;
          v87[2] = 2003329396;
        }

        v26 = *a8;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v136 = __Block_byref_object_copy__33;
        v137 = __Block_byref_object_dispose__34;
        v138 = 0;
        v139 = 0;
        v104 = 0;
        v105 = &v104;
        v106 = 0x2000000000;
        LODWORD(v107) = 0;
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 0x40000000;
        v101[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_79;
        v101[3] = &unk_1E8674820;
        v102 = v26;
        v103 = a4;
        v101[6] = this;
        v101[7] = a5;
        v101[4] = buf;
        v101[5] = &v104;
        v101[8] = a6;
        v27 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v27, v101);
        if (*(v105 + 6))
        {
          v88 = __cxa_allocate_exception(0x10uLL);
          v89 = *(v105 + 6);
          *v88 = off_1F5991DD8;
          v88[2] = v89;
        }

        _Block_object_dispose(&v104, 8);
      }

      _Block_object_dispose(buf, 8);
      return;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1311;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyRelatedDevices", buf, 0x12u);
      }

      v85 = __cxa_allocate_exception(0x10uLL);
      *v85 = off_1F5991DD8;
      v85[2] = 561211770;
    }

    v21 = *(this + 4);
LABEL_106:
    *a6 = v21;
LABEL_107:
    v41 = 4;
LABEL_115:
    *a5 = v41;
    return;
  }

  v19 = *&v15;
  v20 = v16;
  if (mSelector <= 1919251298)
  {
    if (mSelector <= 1836411235)
    {
      switch(mSelector)
      {
        case 1819173229:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1226;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
            }

            v86 = __cxa_allocate_exception(0x10uLL);
            *v86 = off_1F5991DD8;
            v86[2] = 561211770;
          }

          v133[0] = MEMORY[0x1E69E9820];
          v133[1] = 0x40000000;
          v133[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
          v133[3] = &__block_descriptor_tmp_39;
          v133[4] = this;
          v133[5] = a6;
          v53 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v53, v133);
          goto LABEL_114;
        case 1819569763:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1357;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
            }

            v84 = __cxa_allocate_exception(0x10uLL);
            *v84 = off_1F5991DD8;
            v84[2] = 561211770;
          }

          v118[0] = MEMORY[0x1E69E9820];
          v118[1] = 0x40000000;
          v118[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_66;
          v118[3] = &__block_descriptor_tmp_67;
          v118[4] = this;
          v118[5] = a3;
          v122 = mScope == 1768845428;
          v118[6] = v15;
          v119 = v16;
          v120 = a9;
          v121 = a6;
          v52 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v52, v118);
          goto LABEL_107;
        case 1819634020:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1602;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyLegacyUIDList", buf, 0x12u);
            }

            v71 = __cxa_allocate_exception(0x10uLL);
            *v71 = off_1F5991DD8;
            v71[2] = 561211770;
          }

          v98[0] = MEMORY[0x1E69E9820];
          v98[1] = 0x40000000;
          v98[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_87;
          v98[3] = &__block_descriptor_tmp_88_5891;
          v98[4] = this;
          v98[5] = a6;
          v28 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v28, v98);
          goto LABEL_114;
      }

      goto LABEL_110;
    }

    if (mSelector <= 1853059618)
    {
      if (mSelector == 1836411236)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1293;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyModelUID", buf, 0x12u);
          }

          v79 = __cxa_allocate_exception(0x10uLL);
          *v79 = off_1F5991DD8;
          v79[2] = 561211770;
        }

        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 0x40000000;
        v127[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_56;
        v127[3] = &__block_descriptor_tmp_57;
        v127[4] = this;
        v127[5] = a6;
        v36 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v36, v127);
        goto LABEL_114;
      }

      if (mSelector == 1851878764)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1235;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA1Device::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
          }

          v67 = __cxa_allocate_exception(0x10uLL);
          *v67 = off_1F5991DD8;
          v67[2] = 561211770;
        }

        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 0x40000000;
        v132[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40;
        v132[3] = &__block_descriptor_tmp_44;
        v132[4] = this;
        v132[5] = a6;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, v132);
        goto LABEL_114;
      }

      goto LABEL_110;
    }

    if (mSelector != 1853059619)
    {
      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1434;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
          }

          v73 = __cxa_allocate_exception(0x10uLL);
          *v73 = off_1F5991DD8;
          v73[2] = 561211770;
        }

        if (v16)
        {
          *a6 = v15;
          return;
        }

        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 0x40000000;
        v113[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_72;
        v113[3] = &__block_descriptor_tmp_73;
        v113[4] = this;
        v113[5] = a6;
        v55 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v55, v113);
        goto LABEL_114;
      }

      goto LABEL_110;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3002000000;
    v136 = __Block_byref_object_copy__30;
    v137 = __Block_byref_object_dispose__31;
    v138 = 0;
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 0x40000000;
    v112[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
    v112[3] = &unk_1E86747B8;
    v112[5] = this;
    v112[4] = buf;
    v42 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v42, v112);
    v43 = *(*&buf[8] + 40);
    if (v43)
    {
      v44 = v43[4];
      v104 = 0x676C6F6270667461;
      LODWORD(v105) = 0;
      (*(*v43 + 112))(v43, v44, &v104, 0, 0, 0);
      operator new[]();
    }

    if (v20)
    {
      NominalSampleRate = v19;
    }

    else
    {
      NominalSampleRate = HALS_IOA2UCDevice::GetNominalSampleRate(this + 247);
    }

    if (a4 < 0x10)
    {
      v60 = 0;
    }

    else
    {
      *a6 = NominalSampleRate;
      *(a6 + 1) = NominalSampleRate;
      v60 = 16;
    }

    *a5 = v60;
    _Block_object_dispose(buf, 8);
    HALS_ObjectMap::ReleaseObject(v138, v61);
  }

  else
  {
    if (mSelector <= 1935763059)
    {
      if (mSelector > 1919512166)
      {
        if (mSelector == 1919512167)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1396;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
            }

            v81 = __cxa_allocate_exception(0x10uLL);
            *v81 = off_1F5991DD8;
            v81[2] = 561211770;
          }

          v117[0] = MEMORY[0x1E69E9820];
          v117[1] = 0x40000000;
          v117[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_68;
          v117[3] = &__block_descriptor_tmp_69;
          v117[4] = this;
          v117[5] = a6;
          v46 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v46, v117);
          goto LABEL_107;
        }

        if (mSelector == 1920168547)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1531;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyResourceBundle", buf, 0x12u);
            }

            v75 = __cxa_allocate_exception(0x10uLL);
            *v75 = off_1F5991DD8;
            v75[2] = 561211770;
          }

          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 0x40000000;
          v108[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_77;
          v108[3] = &__block_descriptor_tmp_78;
          v108[4] = this;
          v108[5] = a6;
          v31 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v31, v108);
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      if (mSelector != 1919251299 && mSelector != 1919251302)
      {
        goto LABEL_110;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOA2Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1622;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyWantsControlsRestored or kAudioDevicePropertyWantsStreamFormatsRestored", buf, 0x12u);
        }

        v65 = __cxa_allocate_exception(0x10uLL);
        *v65 = off_1F5991DD8;
        v65[2] = 561211770;
      }

      v21 = 1;
      goto LABEL_106;
    }

    if (mSelector <= 1936876643)
    {
      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1405;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v80 = __cxa_allocate_exception(0x10uLL);
          *v80 = off_1F5991DD8;
          v80[2] = 561211770;
        }

        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 0x40000000;
        v114[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_70;
        v114[3] = &__block_descriptor_tmp_71;
        v114[4] = this;
        v114[5] = a3;
        v114[6] = v15;
        v115 = v16;
        v116 = a6;
        v45 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v45, v114);
        goto LABEL_107;
      }

      if (mSelector == 1936092276)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1348;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
          }

          v69 = __cxa_allocate_exception(0x10uLL);
          *v69 = off_1F5991DD8;
          v69[2] = 561211770;
        }

        v123[0] = MEMORY[0x1E69E9820];
        v123[1] = 0x40000000;
        v123[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_64;
        v123[3] = &__block_descriptor_tmp_65;
        v123[4] = this;
        v123[5] = a6;
        v123[6] = a3;
        v123[7] = a9;
        v25 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v25, v123);
        goto LABEL_107;
      }

      goto LABEL_110;
    }

    if (mSelector != 1936876644)
    {
      if (mSelector == 1953653102)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1302;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyTransportType", buf, 0x12u);
          }

          v77 = __cxa_allocate_exception(0x10uLL);
          *v77 = off_1F5991DD8;
          v77[2] = 561211770;
        }

        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 0x40000000;
        v126[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58;
        v126[3] = &__block_descriptor_tmp_59;
        v126[4] = this;
        v126[5] = a6;
        v33 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v33, v126);
        goto LABEL_107;
      }

      goto LABEL_110;
    }

    TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
    v49 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
    v50 = caulk::numeric::exceptional_add<unsigned int>(v49);
    v134 = v50;
    if (v50 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1425;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", buf, 0x12u);
      }

      v83 = __cxa_allocate_exception(0x10uLL);
      *v83 = off_1F5991DD8;
      v83[2] = 561211770;
    }

    BYTE4(v91) = mScope == 1768845428;
    LODWORD(v91) = TotalNumberChannelsForClient;
    (*(*this + 936))(this, a2, a3, a4, a5, a6, a7, a8, a9, v50, &v134, v91);
  }
}

void sub_1DE423A50(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  HALS_ObjectMap::ReleaseObject(*(v1 - 136), v3);
  _Unwind_Resume(a1);
}

BOOL ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device name", &v4);
  **(a1 + 40) = v4;
  return result;
}

void sub_1DE423B94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  cf = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device name", &cf);
  v4 = cf;
  if ((*(v2 + 2032) & 1) == 0)
  {
    *(v2 + 2032) = 1;
    cf = 0;
    v7 = 1;
    CACFString::~CACFString(&cf);
  }

  v5 = *(v2 + 2040);
  if (!v5 || !*(v5 + 1))
  {
    if (!v4)
    {
      **(a1 + 40) = 0;
      return;
    }

    CFRetain(v4);
    **(a1 + 40) = v4;
LABEL_9:
    CFRelease(v4);
    return;
  }

  **(a1 + 40) = HALB_CFBundle::CopyLocalizedString(v5, v4, @"IOAudioEngineDescription", v4, v3);
  if (v4)
  {
    goto LABEL_9;
  }
}

void sub_1DE423C84(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_45(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device manufacturer", &v4);
  **(a1 + 40) = v4;
  return result;
}

void sub_1DE423CFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_56(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"model UID", &v4);
  **(a1 + 40) = v4;
  return result;
}

void sub_1DE423D94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"transport type", &v3);
  **(a1 + 40) = v3;
}

void sub_1DE423E08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"clock domain", &v3);
  **(a1 + 40) = v3;
}

void sub_1DE423E7C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_62(uint64_t a1)
{
  result = (*(**(a1 + 32) + 576))(*(a1 + 32), *(*(a1 + 48) + 4) == 1768845428, *(a1 + 56));
  **(a1 + 40) = result != 0;
  return result;
}

void sub_1DE423F18(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_64(uint64_t a1)
{
  result = (*(**(a1 + 32) + 576))(*(a1 + 32), *(*(a1 + 48) + 4) == 1768845428, *(a1 + 56));
  **(a1 + 40) = result != 0;
  return result;
}

void sub_1DE423FB0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_66(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 4);
  v9 = 0;
  if (v3 == 1768845428)
  {
    v4 = @"input latency";
  }

  else
  {
    v4 = @"output latency";
  }

  HALB_UCObject::CopyProperty_UInt32(v2 + 247, v4, &v9);
  v5 = v9;
  if ((*(*v2 + 56))(v2))
  {
    v5 += HALS_Device::GetStreamDSPLatency(v2, *(a1 + 80));
  }

  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 48);
    v5 = (v6 / (*(*v2 + 34))(v2) * v5);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    DSPLatencyForClient = HALS_Device::GetDSPLatencyForClient(v2, *(a1 + 80), v7);
    if ((DSPLatencyForClient & 0x100000000) != 0)
    {
      v5 += DSPLatencyForClient;
    }
  }

  **(a1 + 72) = v5;
}

void sub_1DE424100(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"io buffer frame size", &v3);
  **(a1 + 40) = v3;
}

void sub_1DE424180(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 4);
  v7 = 0;
  if (v3 == 1768845428)
  {
    v4 = @"input safety offset";
  }

  else
  {
    v4 = @"output safety offset";
  }

  HALB_UCObject::CopyProperty_UInt32(v2 + 247, v4, &v7);
  v5 = v7;
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 48);
    v5 = (v6 / (*(*v2 + 34))(v2) * v5);
  }

  **(a1 + 64) = v5;
}

void sub_1DE424270(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE4242D0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(uint64_t result, HALS_Object *a2)
{
  v3 = *(result + 40);
  v4 = v3[182];
  if (v3[183] != v4 || (v4 = v3[185], v3[186] != v4))
  {
    v5 = *v4;
    HALS_ObjectMap::RetainObject(*v4, a2);
    v7 = *(*(result + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    HALS_ObjectMap::ReleaseObject(v8, v6);
  }
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

void *___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_79(void *result)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = result[6];
  v2 = *(v1 + 2072);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 18);
    v5 = v1 + 2072;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != v1 + 2072 && v4 >= *(v5 + 32))
    {
      v9 = *(result[4] + 8);
      v10 = *(v5 + 40);
      *(v9 + 48) = *(v5 + 48);
      *(v9 + 40) = v10;
      v11 = *(result[4] + 8);
      v12 = *(v11 + 40);
      if (v12)
      {
        v13 = *(v11 + 48);
        if (*(result + 19) <= v13)
        {
          if (*result[7] > v13)
          {
            v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v14 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(result);
            }

            v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              v17 = *v16;
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            else
            {
              v17 = *v16;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v20 = 136315394;
              v21 = "HALS_IOA2Device.cpp";
              v22 = 1024;
              v23 = 1555;
              _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOA2Device::GetPropertyData: size specified for data exchange block is too large: this should have been caught in the _GetDevicePropertyDataSize check", &v20, 0x12u);
            }
          }

          *(*(v3[5] + 8) + 24) = HALS_IOA2UCDevice::MoveDataExchangeBlockData((v1 + 1976), *(v3 + 18), 0, *v3[7]);
          result = v3[8];
          if (result)
          {
            return memcpy(result, v12, *v3[7]);
          }

          return result;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = 136315394;
          v21 = "HALS_IOA2Device.cpp";
          v22 = 1024;
          v23 = 1551;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: wrong data size for property 'canc'", &v20, 0x12u);
        }

        v18 = 561211770;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = 136315394;
          v21 = "HALS_IOA2Device.cpp";
          v22 = 1024;
          v23 = 1550;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyDataSize: bad block ID for property 'canc'", &v20, 0x12u);
        }

        v18 = 2003329396;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v18;
    }
  }

  return result;
}

void sub_1DE4246B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 40) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 40) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE424514);
  }

  _Unwind_Resume(a1);
}

CFTypeID ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_85(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *cf = 0;
  if (HALB_UCObject::CopyProperty_CFType((v2 + 1976), @"headset info", cf))
  {
    v3 = *cf;
    v4 = CFGetTypeID(*cf);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v3);
    }
  }

  result = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v3 = result;
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "HALS_IOA2UCDevice.cpp";
      v8 = 1024;
      v9 = 286;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopyHeadsetInfo: could not allocate an empty dictionary", cf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003329396;
  }

LABEL_7:
  **(a1 + 40) = v3;
  return result;
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_87(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  if (!HALB_UCObject::CopyProperty_CFArray((v2 + 1976), @"legacy UID list", &v10))
  {
    value = 0;
    v9 = 1;
    cf = 0;
    if (HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"legacy UID list", &cf))
    {
      v3 = cf;
      CACFString::operator=(&value, cf);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    if (value)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
      cf = Mutable;
      v7 = 257;
      if (Mutable && (CFArrayAppendValue(Mutable, value), cf))
      {
        CFRetain(cf);
        v5 = cf;
      }

      else
      {
        v5 = 0;
      }

      v10 = v5;
      CACFArray::~CACFArray(&cf);
    }

    CACFString::~CACFString(&value);
  }

  **(a1 + 40) = v10;
}

void sub_1DE4249E8(void *a1)
{
  CACFString::~CACFString(&v2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_89(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 1;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"allows auto route", &v3);
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void sub_1DE424A90(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_91(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::operator[](v5, *(a1 + 48), @"registry key");
  TypeID = OS::CF::UntypedObject::GetTypeID(cf);
  if (TypeID == CFStringGetTypeID())
  {
    v4 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v8 = v4;
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  v7 = &unk_1F5991188;
  HALB_UCObject::CopyProperty_CFType((v2 + 1976), v4, &v9);
  OS::CF::UntypedObject::~UntypedObject(&v7);
  OS::CF::UntypedObject::~UntypedObject(v5);
  **(a1 + 56) = v9;
}

void sub_1DE424BA4(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  OS::CF::UntypedObject::~UntypedObject(va1);
  OS::CF::UntypedObject::~UntypedObject(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE424B8CLL);
}

_DWORD *___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_96(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE424C0C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

OS::CF::UntypedObject *__copy_helper_block_e8_40c24_ZTSN2OS2CF10DictionaryE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 40), *(a2 + 48));
  *(a1 + 40) = &unk_1F5991008;
  return result;
}

uint64_t HALS_IOA2Device::GetPropertyDataSize(HALS_IOA2Device *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, int *a5, AudioObjectPropertyAddress *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  PropertyDataSize = 4;
  if (a3->mSelector > 1751474531)
  {
    if (mSelector > 1919251298)
    {
      if (mSelector == 1919251299 || mSelector == 1919251302)
      {
        return PropertyDataSize;
      }

      if (mSelector != 1920168547)
      {
        goto LABEL_28;
      }

      return 8;
    }

    if (mSelector == 1751474532)
    {
      return 8;
    }

    if (mSelector == 1853059619)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3002000000;
      v38 = __Block_byref_object_copy__30;
      v39 = __Block_byref_object_dispose__31;
      v40 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
      v34[3] = &unk_1E8674560;
      v34[4] = buf;
      v34[5] = this;
      v15 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v15, v34);
      v16 = *(*&buf[8] + 40);
      if (v16)
      {
        v17 = v16[4];
        strcpy(v35, "atfpbolg");
        v35[9] = 0;
        *&v35[10] = 0;
        (*(*v16 + 112))(v16, v17, v35, 0, 0, 0);
        operator new[]();
      }

      PropertyDataSize = 16;
      _Block_object_dispose(buf, 8);
      HALS_ObjectMap::ReleaseObject(v40, v24);
      return PropertyDataSize;
    }

LABEL_28:
    HALS_IOA2Device::GetCustomPropertyInfoByAddress(__p, this, a3);
    if (__p[1])
    {
      PropertyDataSize = 8;
    }

    else
    {
      *v35 = 0;
      *&v35[8] = v35;
      *&v35[16] = 0x2000000000;
      v36 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v38 = __Block_byref_object_copy__25;
      v39 = __Block_byref_object_dispose__26;
      v40 = 0;
      v41 = 0;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_37;
      v30[3] = &unk_1E86745B0;
      v30[6] = this;
      v30[7] = a3;
      v30[4] = v35;
      v30[5] = buf;
      v20 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v20, v30);
      v22 = *(*&v35[8] + 24);
      if (v22)
      {
        PropertyDataSize = (*(*v22 + 112))(v22, v22[4], *&buf[8] + 40, a4, a5, a6);
        HALS_ObjectMap::ReleaseObject(*(*&v35[8] + 24), v23);
      }

      else
      {
        PropertyDataSize = HALS_Device::GetPropertyDataSize(this, v21, a3, a4, a5, a6);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v35, 8);
    }

    OS::CF::UntypedObject::~UntypedObject(__p);
    return PropertyDataSize;
  }

  if (mSelector <= 1667329634)
  {
    if (mSelector == 1634429294 || mSelector == 1635087471)
    {
      return PropertyDataSize;
    }

    goto LABEL_28;
  }

  if (mSelector != 1667329635)
  {
    if (mSelector == 1668641652)
    {
      return 12 * OS::CF::ArrayBase<__CFArray const*>::GetSize(*(this + 245));
    }

    goto LABEL_28;
  }

  if (a4 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1144;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_GetPropertyDataSize: bad qualifier data size for property 'canc'", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = off_1F5991DD8;
    v27[2] = 561211770;
  }

  if (!a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1145;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_GetPropertyDataSize: inQualifierData was NULL for property 'canc'", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = off_1F5991DD8;
    v28[2] = 2003329396;
  }

  v18 = *a5;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v38 = __Block_byref_object_copy__33;
  v39 = __Block_byref_object_dispose__34;
  v40 = 0;
  v41 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_35;
  v31[3] = &unk_1E8674588;
  v32 = v18;
  v31[4] = buf;
  v31[5] = this;
  v19 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v19, v31);
  if (!*(*&buf[8] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v35 = 136315394;
      *&v35[4] = "HALS_IOA2Device.cpp";
      *&v35[12] = 1024;
      *&v35[14] = 1157;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_GetPropertyDataSize: bad block ID for property 'canc'", v35, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = off_1F5991DD8;
    v29[2] = 2003329396;
  }

  PropertyDataSize = *(*&buf[8] + 48);
  _Block_object_dispose(buf, 8);
  return PropertyDataSize;
}

void sub_1DE425580(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  MEMORY[0x1E12C1700](v26, v27, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose((v28 - 144), 8);
  HALS_ObjectMap::ReleaseObject(*(v28 - 104), v30);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t result, HALS_Object *a2)
{
  v3 = *(result + 40);
  v4 = v3[182];
  if (v3[183] != v4 || (v4 = v3[185], v3[186] != v4))
  {
    v5 = *v4;
    HALS_ObjectMap::RetainObject(*v4, a2);
    v7 = *(*(result + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    HALS_ObjectMap::ReleaseObject(v8, v6);
  }
}

uint64_t ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_35(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 2072);
  if (v2)
  {
    v3 = v1 + 2072;
    v4 = *(result + 48);
    v5 = v1 + 2072;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != v3 && v4 >= *(v5 + 32))
    {
      v9 = *(*(result + 32) + 8);
      v10 = *(v5 + 40);
      *(v9 + 48) = *(v5 + 48);
      *(v9 + 40) = v10;
    }
  }

  return result;
}

_DWORD *___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_37(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425758(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOA2Device::IsPropertySettable(AudioObjectPropertyAddress *this, uint64_t a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  if (((*(*&this->mSelector + 96))(this, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1751474531)
  {
    if (mSelector != 1635087471)
    {
      if (mSelector == 1667329635)
      {
        return 1;
      }

      if (mSelector != 1668641652)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (mSelector == 1751474532)
  {
    return 0;
  }

  if (mSelector == 1919251299 || mSelector == 1919251302)
  {
    return 0;
  }

LABEL_15:
  HALS_IOA2Device::GetCustomPropertyInfoByAddress(v28, this, a3);
  if (v29)
  {
    IsPropertySettable = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3802000000;
    v20 = __Block_byref_object_copy__25;
    v21 = __Block_byref_object_dispose__26;
    v22 = 0;
    v23 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZNK15HALS_IOA2Device18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v16[3] = &unk_1E8674538;
    v16[6] = this;
    v16[7] = a3;
    v16[4] = &v24;
    v16[5] = &v17;
    v11 = (*(*&this->mSelector + 64))(this);
    HALB_CommandGate::ExecuteCommand(v11, v16);
    v13 = v25[3];
    if (v13)
    {
      IsPropertySettable = (*(*v13 + 104))(v13, v13[4], v18 + 5, a4);
      HALS_ObjectMap::ReleaseObject(v25[3], v14);
    }

    else
    {
      IsPropertySettable = HALS_Device::IsPropertySettable(this, v12, a3, a4);
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v24, 8);
  }

  OS::CF::UntypedObject::~UntypedObject(v28);
  return IsPropertySettable;
}

void sub_1DE425A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  OS::CF::UntypedObject::~UntypedObject((v17 - 48));
  _Unwind_Resume(a1);
}

_DWORD *___ZNK15HALS_IOA2Device18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425A94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__5915(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F5991188;
  return result;
}

uint64_t ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device manufacturer", &v6);
  v3 = v6;
  v4 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v4, v3);
}

void sub_1DE425B50(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"model UID", &v6);
  v3 = v6;
  v4 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v4, v3);
}

void sub_1DE425C00(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = CFStringCreateWithCString(0, "Codec", 0x600u);
  v5 = 1;
  if (CFStringCompare(*(v2 + 104), v4, 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 2080) != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  CACFString::~CACFString(&v4);
}

void sub_1DE425CC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFString::~CACFString(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE425CB0);
}

BOOL ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_8(uint64_t a1)
{
  result = HALB_UCObject::HasProperty((*(a1 + 40) + 1976), @"headset info");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425D24(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_9(uint64_t a1)
{
  result = HALB_UCObject::HasProperty((*(a1 + 40) + 1976), @"legacy UID list");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425D84(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_10(uint64_t a1)
{
  result = HALB_UCObject::HasProperty((*(a1 + 40) + 1976), @"allows auto route");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425DE4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

_DWORD *___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_27(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425E44(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOA2Device::CopyResourceBundle(HALS_IOA2Device *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK15HALS_IOA2Device18CopyResourceBundleEv_block_invoke;
  v4[3] = &unk_1E86749B8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE425F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_IOA2Device18CopyResourceBundleEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(v2 + 2032) & 1) == 0)
  {
    *(v2 + 2032) = 1;
    v5 = 0;
    v6 = 1;
    CACFString::~CACFString(&v5);
  }

  v3 = *(v2 + 2040);
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(v3 + 8);
    v4 = *(*(*(a1 + 32) + 8) + 24);

    CFRetain(v4);
  }
}

double HALS_IOA2Device::_Deactivate(HALS_IOA2Device *this)
{
  HALS_IOA2Device::_CloseConnection(this);
  HALS_IOA2Device::_TeardownStreams(this);
  v2.n128_f64[0] = HALS_IOA2Device::_TeardownControls(this);
  if (*(this + 2032) == 1)
  {
    v3 = *(this + 255);
    if (v3)
    {
      (*(*v3 + 8))(v3, v2.n128_f64[0]);
    }

    *(this + 2032) = 0;
    *(this + 255) = 0;
  }

  v4 = *(this + 504);
  *(this + 504) = 0;
  v5 = (*(*this + 72))(this, v2);
  AMCP::Utility::Dispatch_Queue::remove_mach_port_receiver(v5, v4);

  return HALS_Device::_Deactivate(this);
}

void HALS_IOA2Device::_TeardownStreams(uint64_t this)
{
  v1 = 0;
  v2 = this + 1456;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = (v2 + 24 * v1);
    v6 = *v5;
    if (v5[1] != *v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * v7);
        (*(*v9 + 8))(v9);
        HALS_ObjectMap::ObjectIsDead(v9, v10);
        v7 = v8;
        v6 = *v5;
        ++v8;
      }

      while (v7 < (v5[1] - *v5) >> 3);
    }

    v3 = 0;
    v5[1] = v6;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
}

double HALS_IOA2Device::_TeardownControls(HALS_IOA2Device *this)
{
  v2 = *(this + 188);
  if (*(this + 189) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(v2 + 8 * v3);
      (*(*v5 + 8))(v5);
      HALS_ObjectMap::ObjectIsDead(v5, v6);
      v3 = v4;
      v2 = *(this + 188);
      ++v4;
    }

    while (v3 < (*(this + 189) - v2) >> 3);
  }

  *(this + 189) = v2;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 192));
  *(this + 191) = this + 1536;
  *(this + 96) = 0u;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 195));
  *(this + 194) = this + 1560;
  result = 0.0;
  *(this + 1560) = 0u;
  return result;
}

void HALS_IOA2Device::~HALS_IOA2Device(HALS_IOA2Device *this)
{
  HALS_IOA2Device::~HALS_IOA2Device(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596E0C8;
  v2 = *(this + 243);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    HALS_ObjectMap::ObjectIsDead(*(this + 243), v3);
    *(this + 243) = 0;
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v11, 0, v10);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v11 + 1744), this);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 259));
  CACFArray::~CACFArray((this + 2048));
  HALB_MachPort::~HALB_MachPort((this + 2016), v4, v5, v6);
  HALB_UCObject::~HALB_UCObject((this + 1976));
  OS::CF::UntypedObject::~UntypedObject((this + 1952));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1608));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 195));
  std::__function::__value_func<BOOL ()(AudioObjectPropertyAddress const&,AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](this + 1576);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 192));
  v7 = *(this + 188);
  if (v7)
  {
    *(this + 189) = v7;
    operator delete(v7);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v9 = *(this + i + 1480);
    if (v9)
    {
      *(this + i + 1488) = v9;
      operator delete(v9);
    }
  }

  HALS_Device::~HALS_Device(this);
}

uint64_t std::__function::__value_func<BOOL ()(AudioObjectPropertyAddress const&,AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1DE4269FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  MEMORY[0x1E12C1730](v27, 0x10E3C405A900D00, a3, a4, a5, a6, a7, a8);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_1,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a26);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOA2Device8ActivateEv_block_invoke(uint64_t a1, unsigned int a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *buf = 136315906;
      *&buf[4] = "HALS_IOA2Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2272;
      *&buf[18] = 2080;
      *&buf[20] = v3 + 164;
      LOWORD(v69[0]) = 1024;
      *(v69 + 2) = v2;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: %s|%d +++++++++------>", buf, 0x22u);
    }

    v6 = *(v3 + 2016);
    if (v6)
    {
      memset(buf, 0, 24);
      v8 = mach_msg(buf, 2, 0, 0x448u, v6, 0, 0);
      if (!v8)
      {
        if (v69[0])
        {
          v9 = 0;
          v10.i32[1] = 0;
          while (1)
          {
            v11 = &v69[8 * v9 + 1];
            v12 = v11[1];
            if (v12 > 1735354733)
            {
              if (v12 == 1735354734 || v12 == 1751215220)
              {
                v10.i32[1] = 0;
                memset(v63, 0, 32);
                if (v12 == 1751215220 || v12 == 1735354734)
                {
                  *&v62.mSelector = 0x676C6F62676F6E65;
                  v62.mElement = 0;
                  CAPropertyAddressList::AppendUniqueItem(v63, &v62, v7);
                  v24 = *v63;
                  if (*v63 != *&v63[8])
                  {
                    HALS_Object::PropertiesChanged(v3, *(v3 + 16), 0, -1431655765 * ((*&v63[8] - *v63) >> 2), *v63);
                  }

                  if (v24)
                  {
                    operator delete(v24);
                  }
                }
              }

              else if (v12 == 1886547824)
              {
                *(v3 + 2008) = 1;
                v25 = *v11;
                v26 = (v3 + 16);
                if (*v11)
                {
                  v27 = 0;
                  v28 = *(v3 + 1504);
                  while ((*(v3 + 1512) - v28) >> 3 > v27)
                  {
                    v29 = *(v28 + 8 * v27++);
                    if (v29)
                    {
                      v30 = v29[18] == v25;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    if (v30)
                    {
                      goto LABEL_53;
                    }
                  }

                  v29 = 0;
LABEL_53:
                  v34 = 0;
                  v35 = 1;
                  do
                  {
                    v36 = v35;
                    v38 = (v3 + 1456 + 24 * v34);
                    v37 = *v38;
                    v39 = v38[1] - *v38;
                    if (v39)
                    {
                      v40 = 0;
                      v41 = v39 >> 3;
                      v42 = 1;
                      while (1)
                      {
                        v43 = *(v37 + 8 * v40);
                        if (v43[18] == v25 && !v43[14])
                        {
                          break;
                        }

                        v40 = v42;
                        if (v41 <= v42++)
                        {
                          goto LABEL_59;
                        }
                      }

                      v26 = v43 + 4;
                      goto LABEL_63;
                    }

LABEL_59:
                    v35 = 0;
                    v34 = 1;
                  }

                  while ((v36 & 1) != 0);
                  if (!v29)
                  {
                    goto LABEL_64;
                  }

                  HALS_IOA2Control::SynchronizeWithRegistry(v29);
                  v26 = v29 + 4;
                }

LABEL_63:
                v29 = *v26;
LABEL_64:
                v10.i32[0] = v11[2];
                v45 = vrev64_s16(*&vmovl_u8(v10));
                v46 = vuzp1_s8(v45, v45);
                v62.mSelector = v46.i32[0];
                LOBYTE(v62.mScope) = 0;
                v46.i32[0] = v11[3];
                v47 = vrev64_s16(*&vmovl_u8(v46));
                v57 = vuzp1_s8(v47, v47).u32[0];
                v58 = 0;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v49 = *(v11 + 2);
                  *v63 = 136316418;
                  *&v63[4] = "HALS_IOA2Device.cpp";
                  *&v63[12] = 1024;
                  *&v63[14] = 2333;
                  *&v63[18] = 1024;
                  *&v63[20] = v29;
                  *&v63[24] = 2080;
                  *&v63[26] = &v62;
                  v64 = 2080;
                  v65 = &v57;
                  v66 = 1024;
                  v67 = v49;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: property changed: ID: %d Address: '%s', '%s', %d", v63, 0x32u);
                }

                if (v29)
                {
                  v50 = *(v11 + 2);
                  *&v59.mSelector = *(v11 + 1);
                  v59.mElement = v50;
                  HALS_NotificationManager::PropertiesChanged(v29, 0, 1, &v59, v48);
                }
              }

              goto LABEL_68;
            }

            if (v12 != 1668247142)
            {
              break;
            }

            HALS_IOA2Device::HandleConfigChange(v3, &v69[8 * v9 + 1], 0);
LABEL_68:
            if (++v9 >= v69[0])
            {
              goto LABEL_69;
            }
          }

          if (v12 != 1668443751 && v12 != 1668702572)
          {
            goto LABEL_68;
          }

          v14 = *v11;
          *v63 = 0;
          *&v63[8] = v63;
          *&v63[16] = 0x2000000000uLL;
          *v70 = MEMORY[0x1E69E9820];
          *&v70[8] = 0x40000000;
          *&v70[16] = ___ZNK15HALS_IOA2Device17CopyControlByUCIDEj_block_invoke;
          *&v70[24] = &unk_1E8674358;
          *&v70[32] = v63;
          v71 = v3;
          v72 = v14;
          v15 = (*(*v3 + 64))(v3);
          HALB_CommandGate::ExecuteCommand(v15, v70);
          v16 = *(*&v63[8] + 24);
          _Block_object_dispose(v63, 8);
          if (!v16)
          {
LABEL_51:
            HALS_ObjectMap::ReleaseObject(v16, v17);
            goto LABEL_68;
          }

          memset(v70, 0, 32);
          v18 = v11[1];
          if (v18 == 1668443751)
          {
            *(v3 + 2008) = 1;
            HALS_IOA2Control::SynchronizeWithRegistry(v16);
            v21 = (*v16 + 216);
          }

          else
          {
            if (v18 != 1668702572)
            {
              v31 = 0;
              v32 = 0;
              goto LABEL_47;
            }

            v19 = v11[2];
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 0x40000000;
            v60[2] = ___ZN16HALS_IOA2Control12PushNewValueEi_block_invoke;
            v60[3] = &__block_descriptor_tmp_80_12605;
            v60[4] = v16;
            v61 = v19;
            v20 = (*(*v16 + 64))(v16);
            HALB_CommandGate::ExecuteCommand(v20, v60);
            v21 = (*v16 + 208);
          }

          (*v21)(v16, v70);
          v31 = *v70;
          v32 = *&v70[8];
LABEL_47:
          v33 = -1431655765 * ((v32 - v31) >> 2);
          if (v33)
          {
            HALS_Object::PropertiesChanged(v3, v16[4], 0, v33, v31);
            v31 = *v70;
          }

          if (v31)
          {
            *&v70[8] = v31;
            operator delete(v31);
          }

          goto LABEL_51;
        }

LABEL_69:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 136315906;
          *&v63[4] = "HALS_IOA2Device.cpp";
          *&v63[12] = 1024;
          *&v63[14] = 2349;
          *&v63[18] = 2080;
          *&v63[20] = v3 + 164;
          *&v63[28] = 1024;
          *&v63[30] = v2;
          v51 = MEMORY[0x1E69E9C10];
          v52 = "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: %s|%d <------+++++++++";
          v53 = v63;
          v54 = 34;
LABEL_73:
          _os_log_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_DEFAULT, v52, v53, v54);
          goto LABEL_74;
        }

        goto LABEL_74;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v55 = mach_error_string(v8);
        *v70 = 136315906;
        *&v70[4] = "HALB_MachPort.cpp";
        *&v70[12] = 1024;
        *&v70[14] = 240;
        *&v70[18] = 1024;
        *&v70[20] = v8;
        *&v70[24] = 2080;
        *&v70[26] = v55;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_MachPort::ReceiveMessage: mach_msg() returned error 0x%X: '%s'", v70, 0x22u);
      }
    }

    else
    {
      v8 = 268451842;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v70 = 136315650;
      *&v70[4] = "HALS_IOA2Device.cpp";
      *&v70[12] = 1024;
      *&v70[14] = 2282;
      *&v70[18] = 1024;
      *&v70[20] = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_IOAudio2DeviceNotificationPortMessageHandler: failed to receive the message, Error: 0x%X", v70, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v8;
  }

  if (v4)
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOA2Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2355;
    *&buf[18] = 1024;
    *&buf[20] = v2;
    v51 = MEMORY[0x1E69E9C10];
    v52 = "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: got a message for a non-existent device (%d)";
    v53 = buf;
    v54 = 24;
    goto LABEL_73;
  }

LABEL_74:
  HALS_ObjectMap::ReleaseObject(v3, v5);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_4,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    if (*(v2 + 1968) == 1)
    {
      HALS_IOA2Device::_CloseConnection(v2);
    }
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_3,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    v3 = v2[504];
    v2[504] = 0;
    v4 = (*(*v2 + 72))(v2);
    AMCP::Utility::Dispatch_Queue::remove_mach_port_receiver(v4, v3);
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_2,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    (*(**(v2 + 1944) + 8))(*(v2 + 1944));
    HALS_ObjectMap::ObjectIsDead(*(v2 + 1944), v3);
    *(v2 + 1944) = 0;
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_1,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_IOA2Device::_TeardownControls(*(a1 + 8));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_IOA2Device::_TeardownStreams(*(a1 + 8));
  }

  return a1;
}

void ___ZNK15HALS_IOA2Device17CopyControlByUCIDEj_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v2 = 0;
  v3 = *(a1 + 40);
  v4 = *(v3 + 1512);
  v5 = *(v3 + 1504);
  v6 = (v4 - v5) >> 3;
  while (v6 > v2)
  {
    v7 = *(v5 + 8 * v2++);
    if (v7)
    {
      v8 = *(v7 + 72) == *(a1 + 48);
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  *(*(*(a1 + 32) + 8) + 24) = v7;
  HALS_ObjectMap::RetainObject(*(*(*(a1 + 32) + 8) + 24), a2);
}

uint64_t std::__function::__value_func<BOOL ()(AudioObjectPropertyAddress const&,AudioObjectPropertyAddress const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t _ZNKSt3__110__function6__funcIZN17CAPropertyAddress8LessThanC1EvEUlRKT_RKT0_E_NS_9allocatorISA_EEFbRK26AudioObjectPropertyAddressSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN17CAPropertyAddress8LessThanC1EvEUlRKT_RKT0_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN17CAPropertyAddress8LessThanC1EvEUlRKT_RKT0_E_NS_9allocatorISA_EEFbRK26AudioObjectPropertyAddressSF_EEclESF_SF_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v5 = *a2 >= *a3;
    if (*a2 == *a3)
    {
      v5 = a2[2] >= a3[2];
    }
  }

  return !v5;
}

uint64_t std::unordered_set<unsigned int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, *(i + 4), i + 4);
  }

  return a1;
}

uint64_t std::function<void ()(HALS_Client *,BOOL)>::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

BOOL HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(std::__shared_mutex_base *this, int a2)
{
  std::__shared_mutex_base::lock_shared(this);
  v4 = *&this[1].__mut_.__m_.__opaque[8];
  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 4);
      v6 = v5 == a2;
      if (v5 == a2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = 0;
  }

  std::__shared_mutex_base::unlock_shared(this);
  return v6;
}

BOOL HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(std::__shared_mutex_base *this)
{
  std::__shared_mutex_base::lock_shared(this);
  v2 = *&this[1].__mut_.__m_.__opaque[16];
  sig = this[1].__gate1_.__cv_.__sig;
  std::__shared_mutex_base::unlock_shared(this);
  return (v2 | sig) != 0;
}

uint64_t AMCP::get_object_property_traits_list(AMCP *this)
{
  {
    AMCP::get_object_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_object_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_object_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_object_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_object_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_object_property_traits_list(void)::$_0 &&>>()
{
  v17[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  operator new();
}

void sub_1DE427F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 864;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_device_property_traits_list(AMCP *this)
{
  {
    AMCP::get_device_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_device_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_device_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_device_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_device_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_device_property_traits_list(void)::$_0 &&>>()
{
  v32[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1969841184, 1, 1, 0, &AMCP::Property_Traits<1969841184u>::k_valid_scopes, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, 0, 1668639076, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1953653102, 1, 0, 0, &AMCP::Property_Traits<1953653102u>::k_valid_scopes, &AMCP::Property_Traits<1651007861u>::k_valid_scopes, 0, 1953653102, 23);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668049764, 1, 0, 0, &AMCP::Property_Traits<1668049764u>::k_valid_scopes, AMCP::Property_Traits<1819569763u>::k_valid_scopes, 0, 1668049764, 7);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1819569763, 1, 0, 0, AMCP::Property_Traits<1819569763u>::k_valid_scopes, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, 0, 1819569763, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1853059700, 1, 0, 1, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, 0, 1853059700, 17);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1853059619, 1, 0, 0, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, AMCP::Property_Traits<1935763060u>::k_valid_scopes, 0, 1853059619, 25);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1836411236, 0, 0, 0, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, &AMCP::Property_Traits<1751737454u>::k_valid_scopes, 0, 1836411236, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v25, 1935763060, 1, 0, 0, AMCP::Property_Traits<1935763060u>::k_valid_scopes, AMCP::Property_Traits<1937009955u>::k_valid_scopes, 0, 1935763060, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v26, 1937009955, 1, 0, 0, AMCP::Property_Traits<1937009955u>::k_valid_scopes, &AMCP::Property_Traits<1685222501u>::k_valid_scopes, 0, 1937009955, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v27, 1685222501, 0, 0, 0, &AMCP::Property_Traits<1685222501u>::k_valid_scopes, AMCP::Property_Traits<1936879204u>::k_valid_scopes, 0, 1685222501, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v28, 1936879204, 0, 0, 0, AMCP::Property_Traits<1936879204u>::k_valid_scopes, &AMCP::Property_Traits<1684434036u>::k_valid_scopes, 0, 1936876644, 27);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v29, 1684434036, 1, 0, 0, &AMCP::Property_Traits<1684434036u>::k_valid_scopes, &AMCP::Property_Traits<1936092276u>::k_valid_scopes, 0, 1684434036, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v30, 1936092276, 1, 0, 0, &AMCP::Property_Traits<1936092276u>::k_valid_scopes, &AMCP::Property_Traits<1684301171u>::k_valid_scopes, 0, 1936092276, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v31, 1684301171, 0, 0, 0, &AMCP::Property_Traits<1684301171u>::k_valid_scopes, &AMCP::Property_Traits<1667523955u>::k_valid_scopes, 0, 1684301171, 3);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v32, 1667523955, 0, 0, 1, &AMCP::Property_Traits<1667523955u>::k_valid_scopes, &AMCP::Property_Traits<1935960434u>::k_valid_scopes, 0, 1667523955, 3);
  operator new();
}

void sub_1DE4288F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1584;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

void HALS_MultiChannelMixer::InitializeGainTables(HALS_MultiChannelMixer *this)
{
  *v54 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (*(this + 2) != v1)
  {
    for (i = 0; i < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v1) >> 4); ++i)
    {
      std::vector<std::vector<std::byte>>::clear[abi:ne200100]((v1 + 80 * i + 56));
      v4 = *(this + 1);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v4) >> 4) <= i)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      if ((*(this + 44) & 0x20) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = *(this + 15);
      }

      v6 = v4 + 80 * i;
      v7 = *(v6 + 36);
      LODWORD(v53) = 0;
      std::vector<float>::vector[abi:ne200100](&__p, v5, &v53);
      v8 = *(v6 + 64);
      v9 = *(v6 + 56);
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
      v11 = v7 - v10;
      if (v7 <= v10)
      {
        if (v7 >= v10)
        {
          goto LABEL_25;
        }

        v15 = (v9 + 24 * v7);
        if (v8 != v15)
        {
          v16 = *(v6 + 64);
          do
          {
            v18 = *(v16 - 3);
            v16 -= 3;
            v17 = v18;
            if (v18)
            {
              *(v8 - 2) = v17;
              operator delete(v17);
            }

            v8 = v16;
          }

          while (v16 != v15);
        }
      }

      else
      {
        v12 = *(v6 + 72);
        if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < v11)
        {
          v46 = v6 + 56;
          v13 = 0x5555555555555556 * ((v12 - v9) >> 3);
          if (v13 <= v7)
          {
            v13 = v7;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v12 - v9) >> 3) >= 0x555555555555555)
          {
            v14 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v13;
          }

          std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v14);
        }

        v15 = &v8[3 * v11];
        v19 = 24 * v7 - 8 * ((v8 - v9) >> 3);
        do
        {
          *v8 = 0;
          v8[1] = 0;
          v8[2] = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v8, __p.__begin_, __p.__end_, (__p.__end_ - __p.__begin_) >> 2);
          v8 += 3;
          v19 -= 24;
        }

        while (v19);
      }

      *(v6 + 64) = v15;
LABEL_25:
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      v20 = *(this + 1);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - v20) >> 4) <= i)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v21 = *(v6 + 36);
      v22 = *(v20 + 80 * i);
      v50 = 0x6F75747073726E64;
      v51 = 0;
      v49[0] = 0;
      v49[1] = 0;
      HALS_System::GetInstance(__x, 0, v49);
      v23 = HALS_System::sIsInitialized;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_69;
      }

      v48[0] = 0;
      v48[1] = 0;
      HALS_System::GetInstance(__x, 0, v48);
      v25 = HALS_System::CopyDeviceByObjectID(*__x, v22, 0);
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (!v25 || !(*(*v25 + 96))(v25, v22, &v50, 0))
      {
        v31 = 0;
        goto LABEL_60;
      }

      TotalNumberChannels = HALS_Device::GetTotalNumberChannels(v25, 0);
      __x[0] = 0;
      std::vector<char>::vector[abi:ne200100](&__p, 32, __x);
      begin = __p.__begin_;
      *__p.__begin_ = 0;
      *(begin + 2) = 0;
      if (TotalNumberChannels <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = TotalNumberChannels;
      }

      v29 = (20 * v28 + 12);
      __x[0] = 0;
      end = __p.__end_;
      if (v29 <= (__p.__end_ - begin))
      {
        if (v29 < (__p.__end_ - begin))
        {
          end = begin + v29;
          __p.__end_ = &v29[begin];
        }
      }

      else
      {
        std::vector<char>::__append(&__p, &v29[-(__p.__end_ - begin)], __x);
        begin = __p.__begin_;
        end = __p.__end_;
      }

      *(begin + 2) = TotalNumberChannels;
      v47 = 0;
      (*(*v25 + 120))(v25, v22, &v50, (end - begin), &v47, begin, 0, 0, 0);
      v32 = __p.__begin_;
      v33 = *__p.__begin_;
      if (*__p.__begin_ > 8519687)
      {
        if (v33 <= 12713991)
        {
          if (v33 != 8519688 && v33 != 12582924)
          {
            v34 = 12648464;
            goto LABEL_57;
          }

LABEL_58:
          v31 = 1;
LABEL_59:
          __p.__end_ = v32;
          operator delete(v32);
          goto LABEL_60;
        }

        if (v33 == 12713992 || v33 == 12779530)
        {
          goto LABEL_58;
        }

        v34 = 12845066;
LABEL_57:
        if (v33 == v34)
        {
          goto LABEL_58;
        }

        v31 = 0;
        goto LABEL_59;
      }

      if (v33 > 7929861)
      {
        if (v33 == 7929862 || v33 == 8257544)
        {
          goto LABEL_58;
        }

        v34 = 8388616;
        goto LABEL_57;
      }

      if (v33)
      {
        v34 = 7405571;
        goto LABEL_57;
      }

      v53 = xmmword_1DE7580B0;
      v44 = 0;
      *&v45 = 0;
      *__x = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__x, &v53, v54, 4uLL);
      v38 = (v44 - *__x) >> 2;
      if (v38 >= *(v32 + 2))
      {
        v38 = *(v32 + 2);
      }

      if (v38)
      {
        if (*(v32 + 3) == **__x)
        {
          v39 = 0;
          v40 = (v32 + 32);
          while (v38 - 1 != v39)
          {
            v41 = *v40;
            v40 += 5;
            v42 = *(*__x + 4 + 4 * v39++);
            if (v41 != v42)
            {
              v31 = v39 >= v38;
              goto LABEL_88;
            }
          }

          v31 = 1;
        }

        else
        {
          v31 = 0;
        }

LABEL_88:
        operator delete(*__x);
        goto LABEL_89;
      }

      v31 = 1;
      if (*__x)
      {
        goto LABEL_88;
      }

LABEL_89:
      v32 = __p.__begin_;
      if (__p.__begin_)
      {
        goto LABEL_59;
      }

LABEL_60:
      HALS_ObjectMap::ReleaseObject(v25, v24);
      if (v31)
      {
        v36 = v21 > 2 && *this == 1;
        HALS_MultiChannelMixer::GenerateDefaultGainTable(*(v6 + 56), *(v6 + 64));
        if (v36)
        {
          __p.__begin_ = 0x3F0000003F000000;
          v44 = 0;
          *&v45 = 0;
          *__x = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__x, &__p, &__p.__end_);
        }

        goto LABEL_70;
      }

LABEL_69:
      HALS_MultiChannelMixer::GenerateDefaultGainTable(*(v6 + 56), *(v6 + 64));
LABEL_70:
      v1 = *(this + 1);
      if (*this == 2 && *(v1 + 80 * i + 48) == 1)
      {
        v37 = *(this + 10) + 1;
        *(this + 9) = i;
        *(this + 10) = v37;
      }
    }
  }
}

void sub_1DE429098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HALS_MultiChannelMixer::StreamInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 80;
        v7 = (v4 - 24);
        std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *HALS_MultiChannelMixer::GenerateDefaultGainTable(void *result, void *a2)
{
  if (a2 == result)
  {
    goto LABEL_18;
  }

  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - result);
  v3 = result[1];
  v4 = (v3 - *result) >> 2;
  if (v2 > v4)
  {
    v5 = 0;
    v6 = v4 / v2;
    for (i = result + 1; ; i += 3)
    {
      v8 = *(i - 1);
      v9 = (*i - v8) >> 2;
      if (v9 <= v5)
      {
        break;
      }

      *(v8 + 4 * v5) = v6;
      if (v5 + 1 == v9)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }

      if (!--v2)
      {
        return result;
      }
    }

LABEL_17:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  if (v3 != *result)
  {
    v10 = 0;
    v11 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (v2 > v11)
    {
      v12 = result[3 * v11];
      if (v10 >= (result[3 * v11 + 1] - v12) >> 2)
      {
        goto LABEL_17;
      }

      *(v12 + 4 * v10) = 1065353216;
      v11 = (v11 + 1) % v2;
      if (v4 == ++v10)
      {
        return result;
      }
    }

LABEL_18:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  return result;
}

void sub_1DE429344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::insert(void *a1, void **a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v17 = *a1;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v18 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v19 = a2 - v17;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v17) >> 3);
    if (2 * v20 > v18)
    {
      v18 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v18;
    }

    v32 = a1;
    if (v21)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v21);
    }

    v22 = (8 * (v19 >> 3));
    v29 = 0;
    v30 = v22;
    v31 = v22;
    if (!(0xAAAAAAAAAAAAAAABLL * (v19 >> 3)))
    {
      if (v19 < 1)
      {
        if (v17 == a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v19 >> 3);
        }

        v33 = a1;
        std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v23);
      }

      v22 -= 3 * ((1 - 0x5555555555555555 * (v19 >> 3)) >> 1);
      v30 = v22;
      *&v31 = v22;
    }

    *v22 = 0;
    v22[1] = 0;
    v22[2] = 0;
    *v22 = *a3;
    v22[2] = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    memcpy((v31 + 24), a2, a1[1] - a2);
    v24 = *a1;
    *&v31 = v31 + 24 + a1[1] - a2;
    a1[1] = a2;
    v25 = (a2 - v24);
    v26 = v30 - (a2 - v24);
    memcpy(v26, v24, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    v29 = v27;
    v30 = v27;
    std::__split_buffer<std::vector<float>>::~__split_buffer(&v29);
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = *a3;
    *(v7 + 16) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    a1[1] = v7 + 24;
  }

  else
  {
    v8 = (v7 - 24);
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = *v8;
      *(v7 + 16) = *(v7 - 8);
      *v8 = 0;
      *(v7 - 16) = 0;
      *(v7 - 8) = 0;
      v9 = v7 + 24;
    }

    a1[1] = v9;
    if (v7 != a2 + 3)
    {
      v10 = 0;
      v11 = a2 - v7 + 24;
      do
      {
        v12 = &v10[v7];
        v14 = &v10[v7 - 24];
        v13 = *v14;
        if (*v14)
        {
          *(v12 - 2) = v13;
          operator delete(v13);
          *v14 = 0;
          *&v10[v7 - 16] = 0;
          *&v10[v7 - 8] = 0;
        }

        v15 = v12 - 48;
        *v14 = *(v12 - 3);
        *(v12 - 1) = *(v12 - 4);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v10 -= 24;
      }

      while (v11 != v10);
    }

    v16 = *a2;
    if (*a2)
    {
      a2[1] = v16;
      operator delete(v16);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    *a2 = *a3;
    a2[2] = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

caulk::rt_safe_memory_resource *std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if ((*(result + 2) - v1) >= 0 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(result, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void ***std::vector<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v3 = (v3 - 24);
        result = std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](v3);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    if (0xAAAAAAAAAAAAAAABLL * ((v5[2] - v4) >> 3) < 0xAAAAAAAAAAAAAABLL && (result = *MEMORY[0x1E69E3C08]) != 0)
    {

      return caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}