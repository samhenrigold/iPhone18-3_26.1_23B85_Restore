uint64_t CALegacyLog::RegisterScope(CALegacyLog *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v6 = this;
  v11 = *MEMORY[0x277D85DE8];
  pthread_rwlock_rdlock(&sLock);
  if (!gScopes || (v7 = *gScopes, v8 = *(gScopes + 8), *gScopes == v8))
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    while (*v7 != v6)
    {
      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    v9 = v7[1];
  }

  pthread_rwlock_unlock(&sLock);
  if (!v9)
  {
    operator new();
  }

  return v9;
}

void sub_2725B7338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL CALegacyLog::LogEnabled(int a1, uint64_t a2, unint64_t a3)
{
  if (a1 > 5)
  {
    goto LABEL_13;
  }

  if (a2)
  {
    if (!*a2)
    {
LABEL_14:
      if (!HIDWORD(a3))
      {
        return *(a2 + 8) >= a1;
      }

      if ((*(a2 + 8 * (a1 - 1) + 72) & HIDWORD(a3)) == 0)
      {
        if ((~*(a2 + 16) & HIDWORD(a3)) == 0)
        {
          return 0;
        }

        return *(a2 + 8) >= a1;
      }

      return 1;
    }

    if ((a1 - 1) < 3)
    {
      return 1;
    }

    v6 = *a2;
  }

  else
  {
    if (gUseOSLogInDefaultScope != 1)
    {
      return a1 < 4;
    }

    if ((a1 - 1) < 3)
    {
      return 1;
    }

    v6 = MEMORY[0x277D86220];
  }

  v7 = 1;
  v8 = a1 == 4 ? OS_LOG_TYPE_INFO : OS_LOG_TYPE_DEBUG;
  if (!os_log_type_enabled(v6, v8))
  {
LABEL_13:
    if (a2)
    {
      goto LABEL_14;
    }

    return a1 < 4;
  }

  return v7;
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = v8;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2881B25F8;
      exception[2] = v6;
    }

    atomic_store(v2, this + 2);
  }

  return v3 == 0;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B2570;
  pthread_mutex_destroy((this + 24));
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B2570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_2881B25F8;
    exception[2] = v5;
  }

  return this;
}

BOOL CAStreamBasicDescription::IsEqual(CAStreamBasicDescription *this, const AudioStreamBasicDescription *a2)
{
  return *this == a2->mSampleRate && *(this + 2) == a2->mFormatID && *(this + 3) == a2->mFormatFlags && *(this + 4) == a2->mBytesPerPacket && *(this + 5) == a2->mFramesPerPacket && *(this + 6) == a2->mBytesPerFrame && *(this + 7) == a2->mChannelsPerFrame && *(this + 8) == a2->mBitsPerChannel;
}

{
  if (*this != 0.0 && a2->mSampleRate != 0.0 && *this != a2->mSampleRate)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    mFormatID = a2->mFormatID;
    if (mFormatID && v3 != mFormatID)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    mBytesPerPacket = a2->mBytesPerPacket;
    if (mBytesPerPacket)
    {
      if (v6 != mBytesPerPacket)
      {
        return 0;
      }
    }
  }

  v8 = *(this + 5);
  if (v8)
  {
    mFramesPerPacket = a2->mFramesPerPacket;
    if (mFramesPerPacket)
    {
      if (v8 != mFramesPerPacket)
      {
        return 0;
      }
    }
  }

  v10 = *(this + 6);
  if (v10)
  {
    mBytesPerFrame = a2->mBytesPerFrame;
    if (mBytesPerFrame)
    {
      if (v10 != mBytesPerFrame)
      {
        return 0;
      }
    }
  }

  v12 = *(this + 7);
  if (v12)
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
    if (mChannelsPerFrame)
    {
      if (v12 != mChannelsPerFrame)
      {
        return 0;
      }
    }
  }

  v14 = *(this + 8);
  v15 = v14 == 0;
  if (v14)
  {
    mBitsPerChannel = a2->mBitsPerChannel;
    if (mBitsPerChannel)
    {
      if (v14 != mBitsPerChannel)
      {
        return 0;
      }
    }
  }

  v17 = 1;
  if (v3)
  {
    v19 = a2->mFormatID;
    if (v19)
    {
      v20 = *(this + 3);
      if (v20)
      {
        mFormatFlags = a2->mFormatFlags;
        if (mFormatFlags)
        {
          if (v3 != 1819304813)
          {
            return v20 == mFormatFlags;
          }

          v22 = v20 & 0x7FFFFFFF;
          if ((v20 & 0x7FFFFFFF) == 0)
          {
            v22 = *(this + 3);
          }

          if (v10)
          {
            if ((v20 & 0x20) != 0)
            {
              v23 = 1;
            }

            else
            {
              v23 = *(this + 7);
            }

            if (v23)
            {
              v23 = 8 * (v10 / v23);
              v15 = v23 == v14;
            }
          }

          else
          {
            v23 = 0;
          }

          if (v15)
          {
            v22 |= 8u;
          }

          if ((v14 & 7) == 0 && v23 == v14)
          {
            v22 &= ~0x10u;
          }

          if (v22)
          {
            v22 &= ~4u;
          }

          if ((v22 & 8) != 0 && v14 <= 8)
          {
            v22 &= 2u;
          }

          if (v12 == 1)
          {
            v22 &= ~0x20u;
          }

          if (!v22)
          {
            v22 = 0x80000000;
          }

          if (v19 != 1819304813)
          {
            return v22 == mFormatFlags;
          }

          if ((mFormatFlags & 0x7FFFFFFF) != 0)
          {
            v27 = mFormatFlags & 0x7FFFFFFF;
          }

          else
          {
            v27 = a2->mFormatFlags;
          }

          v28 = a2->mBytesPerFrame;
          if (v28)
          {
            v29 = a2->mChannelsPerFrame;
            if ((mFormatFlags & 0x20) != 0)
            {
              v30 = 1;
            }

            else
            {
              v30 = a2->mChannelsPerFrame;
            }

            if (v30)
            {
              v30 = 8 * (v28 / v30);
              v31 = a2->mBitsPerChannel;
              v32 = v27 | 8;
              v33 = v30 == v31;
LABEL_77:
              if (v33)
              {
                v27 = v32;
              }

              v34 = (v31 & 7) == 0 && v30 == v31;
              v35 = v27 & 0xFFFFFFEF;
              if (!v34)
              {
                v35 = v27;
              }

              if (v35)
              {
                v35 &= ~4u;
              }

              v36 = (v35 & 8) == 0 || v31 > 8;
              v37 = v35 & 2;
              if (v36)
              {
                v37 = v35;
              }

              if (v29 == 1)
              {
                v38 = v37 & 0xFFFFFFDF;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                mFormatFlags = v38;
              }

              else
              {
                mFormatFlags = 0x80000000;
              }

              return v22 == mFormatFlags;
            }

            v31 = a2->mBitsPerChannel;
            v32 = v27 | 8;
          }

          else
          {
            v30 = 0;
            v32 = v27 | 8;
            v29 = a2->mChannelsPerFrame;
            v31 = a2->mBitsPerChannel;
          }

          v33 = v31 == 0;
          goto LABEL_77;
        }
      }
    }
  }

  return v17;
}

uint64_t CATimeUtilities::GetCurrentGregorianDate(CATimeUtilities *this)
{
  Current = CFAbsoluteTimeGetCurrent();
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v2 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(Current, v2);
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t *std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      vDSP_DFT_DestroySetup(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      vDSP_DFT_DestroySetup(v4);
    }

    MEMORY[0x2743CBFA0](v2, 0x1060C40CA828048);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(*(v2 + 8), *(v2 + 16));
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase((v2 + 8), v3, *(v2 + 16));
    os_unfair_lock_unlock(v2);
  }

  std::unique_ptr<DFTSetups>::~unique_ptr[abi:ne200100](a1 + 5);
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t *std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *>,caulk::shared_instance_manager<DFTSetups>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>> *> const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>>::erase(void *a1, uint64_t a2, uint64_t a3)
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
          std::__shared_weak_count::__release_weak(v11);
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
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<DFTSetups>,caulk::shared_instance_manager<DFTSetups>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B2620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void MultiRadixRealFFT::RealOutOfPlaceInverseTransform(MultiRadixRealFFT *this, const DSPSplitComplex *a2, DSPComplex *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*this)
  {
    abort();
  }

  MEMORY[0x28223BE20](this);
  v6 = (&v11 - ((v5 + 15) & 0x7FFFFFFF0));
  __Z.realp = v6;
  __Z.imagp = (v6 + ((2 * v7) & 0x1FFFFFFFCLL));
  vDSP_DFT_Execute(*(v8 + 16), *v9, v9[1], v6, __Z.imagp);
  if (*this)
  {
    v10 = **this >> 1;
  }

  else
  {
    v10 = 0;
  }

  vDSP_ztoc(&__Z, 1, a3, 2, v10);
}

CFIndex PlatformUtilities_iOS::IsTelephonyCaptureAllowed(PlatformUtilities_iOS *this)
{
  result = CFPreferencesGetAppIntegerValue(@"EnableTelephonyMonitor", @"com.apple.coreaudio", 0);
  if (result)
  {
    return CFPreferencesGetAppIntegerValue(@"EnableVPTelephonyMonitor", @"com.apple.coreaudio", 0) != 0;
  }

  return result;
}

CFStringRef PlatformUtilities_iOS::CopyProductTypeFilePrefix(int a1)
{
  v19 = *MEMORY[0x277D85DE8];
  __str[0] = 0;
  switch(a1)
  {
    case 1:
      v17 = 0;
      goto LABEL_39;
    case 2:
      v17 = 97;
LABEL_39:
      v3 = 238;
      goto LABEL_40;
    case 3:
      v17 = 0;
      v3 = 520;
      goto LABEL_40;
    case 4:
      v17 = 0;
      v3 = 620;
LABEL_40:
      v12 = 98;
      goto LABEL_89;
    case 5:
      v17 = 0;
      v3 = 16;
      goto LABEL_58;
    case 6:
      v17 = 0;
      v3 = 17;
      goto LABEL_58;
    case 7:
      v17 = 0;
      v3 = 79;
      goto LABEL_58;
    case 8:
      v17 = 0;
      v3 = 42;
      goto LABEL_58;
    case 9:
      v17 = 0;
      v3 = 43;
      goto LABEL_58;
    case 10:
      v17 = 0;
      v3 = 49;
      goto LABEL_58;
    case 11:
      v17 = 103;
      v3 = 52;
      goto LABEL_58;
    case 12:
      v9 = 103;
      goto LABEL_29;
    case 13:
      v9 = 112;
LABEL_29:
      v17 = v9;
      v3 = 53;
      goto LABEL_58;
    case 14:
      v17 = 112;
      v3 = 54;
      goto LABEL_58;
    case 15:
      v17 = 0;
      v3 = 63;
      goto LABEL_58;
    case 16:
      v17 = 0;
      v3 = 64;
LABEL_58:
      v12 = 100;
      goto LABEL_89;
    case 17:
      v17 = 0;
      v3 = 104;
      goto LABEL_88;
    case 18:
      v17 = 97;
      v3 = 171;
      goto LABEL_78;
    case 19:
      v17 = 0;
      v3 = 181;
      goto LABEL_78;
    case 20:
      v17 = 0;
      v3 = 182;
      goto LABEL_78;
    case 21:
      v17 = 0;
      v3 = 210;
      goto LABEL_78;
    case 22:
      v17 = 0;
      v3 = 217;
      goto LABEL_78;
    case 23:
      v17 = 0;
      v3 = 271;
      goto LABEL_78;
    case 24:
      v17 = 0;
      v3 = 272;
      goto LABEL_78;
    case 25:
      v17 = 0;
      v3 = 307;
      goto LABEL_78;
    case 26:
      v17 = 0;
      v3 = 308;
      goto LABEL_78;
    case 27:
      v17 = 0;
      v3 = 310;
      goto LABEL_78;
    case 28:
      v17 = 0;
      v3 = 311;
      goto LABEL_78;
    case 29:
      v17 = 0;
      v3 = 317;
      goto LABEL_78;
    case 30:
      v17 = 0;
      v3 = 320;
      goto LABEL_78;
    case 31:
      v17 = 0;
      v3 = 407;
      goto LABEL_78;
    case 32:
      v17 = 0;
      v3 = 408;
      goto LABEL_78;
    case 33:
      v17 = 0;
      v3 = 417;
      goto LABEL_78;
    case 34:
      v17 = 0;
      v3 = 420;
      goto LABEL_78;
    case 35:
      v17 = 0;
      v3 = 517;
      goto LABEL_78;
    case 36:
      v17 = 0;
      v3 = 522;
      goto LABEL_78;
    case 37:
      v17 = 0;
      v3 = 617;
      goto LABEL_78;
    case 38:
      v17 = 0;
      v3 = 620;
LABEL_78:
      v12 = 106;
      goto LABEL_89;
    case 39:
      v14 = 115;
      goto LABEL_76;
    case 40:
      v14 = 98;
LABEL_76:
      v17 = v14;
      v3 = 140;
      goto LABEL_88;
    case 41:
      v10 = 115;
      goto LABEL_44;
    case 42:
      v10 = 98;
LABEL_44:
      v17 = v10;
      v3 = 142;
      goto LABEL_88;
    case 43:
      v2 = 98;
      goto LABEL_69;
    case 44:
      v2 = 115;
LABEL_69:
      v17 = v2;
      v3 = 143;
      goto LABEL_88;
    case 45:
      v7 = 98;
      goto LABEL_62;
    case 46:
      v7 = 115;
LABEL_62:
      v17 = v7;
      v3 = 149;
      goto LABEL_88;
    case 47:
      v5 = 115;
      goto LABEL_85;
    case 48:
      v5 = 98;
LABEL_85:
      v17 = v5;
      v3 = 157;
      goto LABEL_88;
    case 49:
      v8 = 115;
      goto LABEL_23;
    case 50:
      v8 = 98;
LABEL_23:
      v17 = v8;
      v3 = 158;
      goto LABEL_88;
    case 51:
      v1 = 115;
      goto LABEL_87;
    case 52:
      v1 = 98;
LABEL_87:
      v17 = v1;
      v3 = 187;
      goto LABEL_88;
    case 53:
      v4 = 115;
      goto LABEL_83;
    case 54:
      v4 = 98;
LABEL_83:
      v17 = v4;
      v3 = 188;
      goto LABEL_88;
    case 55:
      v15 = 115;
      goto LABEL_81;
    case 56:
      v15 = 98;
LABEL_81:
      v17 = v15;
      v3 = 197;
      goto LABEL_88;
    case 57:
      v6 = 115;
      goto LABEL_67;
    case 58:
      v6 = 98;
LABEL_67:
      v17 = v6;
      v3 = 198;
      goto LABEL_88;
    case 59:
      v17 = 0;
      v3 = 199;
      goto LABEL_88;
    case 60:
      v11 = 115;
      goto LABEL_71;
    case 61:
      v11 = 98;
LABEL_71:
      v17 = v11;
      v3 = 207;
      goto LABEL_88;
    case 62:
      v13 = 115;
      goto LABEL_51;
    case 63:
      v13 = 98;
LABEL_51:
      v17 = v13;
      v3 = 208;
      goto LABEL_88;
    case 64:
      v17 = 0;
      v3 = 210;
LABEL_88:
      v12 = 110;
      goto LABEL_89;
    case 65:
      v17 = 0;
      v3 = 720;
      goto LABEL_49;
    case 66:
      v17 = 0;
      v3 = 742;
      goto LABEL_49;
    case 67:
      v17 = 0;
      v3 = 1125;
      goto LABEL_49;
    case 68:
      v17 = 0;
      v3 = 1251;
LABEL_49:
      v12 = 116;
LABEL_89:
      snprintf(__str, 0x18uLL, "%c%d%c", v12, v3, v17);
      if (!__str[0])
      {
        goto LABEL_91;
      }

      result = CFStringCreateWithCString(0, __str, 0x600u);
      break;
    default:
LABEL_91:
      result = 0;
      break;
  }

  return result;
}

uint64_t logSubsystem(void)
{
  if (atomic_load_explicit(&logSubsystem(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&logSubsystem(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<logSubsystem(void)::$_0 &&>>);
  }

  return logSubsystem(void)::scope;
}

uint64_t TuningPListMgr::loadTuningInSubdirs_(const __CFString **a1, const __CFString ***a2, int a3, unsigned int a4)
{
  v8 = **a2;
  if (v8 && CFStringHasPrefix(v8, @"/"))
  {
    v9 = &stru_2881C8580;
  }

  else
  {
    v9 = *a1;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v9);
  theString = MutableCopy;
  v37 = 1;
  v11 = a3 - 1;
  v12 = a2;
  if (!MutableCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  CFStringAppend(MutableCopy, @"/");
  if (theString)
  {
    CFStringAppend(theString, **v12);
  }

LABEL_8:
  while (v11)
  {
    MutableCopy = theString;
    --v11;
    ++v12;
    if (theString)
    {
      goto LABEL_6;
    }
  }

  v35 = a1;
  v13 = *MEMORY[0x277CBECE8];
  v14 = strlen(TuningPListMgr::kTuningFileTypeSuffixMap[a4]);
  v15 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], TuningPListMgr::kTuningFileTypeSuffixMap[a4], v14, 0x600u, 0, *MEMORY[0x277CBED00]);
  if (theString)
  {
    v16 = theString;
    if (!CFStringHasSuffix(theString, v15))
    {
      CFStringAppend(theString, v15);
      v16 = theString;
    }
  }

  else
  {
    v16 = 0;
  }

  Mutable = CFStringCreateMutable(v13, 512);
  v18 = CFURLCreateWithFileSystemPath(v13, v16, kCFURLPOSIXPathStyle, 0);
  if (v18 && (v19 = CFReadStreamCreateWithFile(v13, v18), CFRelease(v18), v19) && (CFReadStreamOpen(v19), v20 = CFPropertyListCreateWithStream(v13, v19, 0, 0, 0, 0), CFReadStreamClose(v19), CFRelease(v19), v20))
  {
    CFRelease(Mutable);
    v21 = a2[a3 - 1];
    v22 = *v21;
    if (a4)
    {
      v34 = *v21;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v34 = theString;
      v38 = 0;
      do
      {
        v27 = *(&kLegacyStripNameKeys + v26);
        if (!CFDictionaryContainsKey(v20, v27))
        {
          if (!v25)
          {
            Count = CFDictionaryGetCount(v20);
            v24 = CFDictionaryCreateMutableCopy(v13, Count + 2, v20);
            v38 = v24;
          }

          CFDictionaryAddValue(v24, v27, v22);
          v25 = v24;
        }

        v26 += 8;
      }

      while (v26 != 16);
      if (v24)
      {
        CFRelease(v20);
      }

      else
      {
        v24 = v20;
      }

      v20 = v24;
    }

    Value = CFDictionaryGetValue(v20, @"name");
    if (Value)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(Value) && CFDictionaryGetCount(v35[a4 + 2]) >= 1)
      {
        operator new[]();
      }
    }

    CFDictionarySetValue(v35[a4 + 2], v34, v20);
    v32 = v35[6];
    if (v32)
    {
      PListLogger::logItemEntry(v35[a4 + 2], "@@ Strips Oct 11 2025 00:40:29", v32, v31);
    }

    v23 = 0;
    if (v15)
    {
LABEL_41:
      CFRelease(v15);
    }
  }

  else
  {
    if (Mutable)
    {
      CFStringAppend(Mutable, @"Error loading plist file ");
      CFStringAppend(Mutable, v16);
      CFStringAppend(Mutable, @"\n");
    }

    CFRelease(Mutable);
    v20 = 0;
    v23 = 0xFFFFFFFFLL;
    if (v15)
    {
      goto LABEL_41;
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  CACFMutableString::~CACFMutableString(&theString);
  return v23;
}

void sub_2725B8C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(va1);
  CACFMutableString::~CACFMutableString(va);
  _Unwind_Resume(a1);
}

void CACFMutableString::~CACFMutableString(CACFMutableString *this)
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

void PListLogger::logItemEntry(const __CFString *this, const char *a2, char *a3, void *a4)
{
  valuePtr[16] = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(this);
  if (CFStringGetTypeID() == v7)
  {
    v8 = *(a3 + 1);
    if (v8 >= 127)
    {
      v9 = 127;
    }

    else
    {
      v9 = v8;
    }

    *(valuePtr + v9) = 0;
    if (v8)
    {
      memset(valuePtr + v9 - (v9 - 1) - 1, 32, v9);
    }

    PListLogger::log(a3, "%s", valuePtr);
    CFGetRetainCount(this);
    CFStringGetCStringPtr(this, 0);
    PListLogger::log(a3, "'%s' | String{%d} | %s\n");
  }

  else if (CFNumberGetTypeID() == v7)
  {
    Type = CFNumberGetType(this);
    v11 = *(a3 + 1);
    if (v11 >= 127)
    {
      v12 = 127;
    }

    else
    {
      v12 = v11;
    }

    *(valuePtr + v12) = 0;
    if (v11)
    {
      memset(valuePtr + v12 - (v12 - 1) - 1, 32, v12);
    }

    PListLogger::log(a3, "%s", valuePtr);
    if (Type <= kCFNumberDoubleType)
    {
      if (((1 << Type) & 0x3060) != 0)
      {
        valuePtr[0] = 0;
        CFNumberGetValue(this, Type, valuePtr);
        CFGetRetainCount(this);
        PListLogger::log(a3, "'%s' | Number(float){%d} | %f\n");
        return;
      }

      if (((1 << Type) & 0x82) != 0)
      {
        LOBYTE(valuePtr[0]) = 0;
        CFNumberGetValue(this, Type, valuePtr);
        CFGetRetainCount(this);
        PListLogger::log(a3, "'%s' | Number(SInt8){%d} | 0x%02x\n");
        return;
      }

      if (((1 << Type) & 0x104) != 0)
      {
        LOWORD(valuePtr[0]) = 0;
        CFNumberGetValue(this, Type, valuePtr);
        CFGetRetainCount(this);
        PListLogger::log(a3, "'%s' | Number(SInt16){%d} | 0x%04x\n");
        return;
      }
    }

    LODWORD(valuePtr[0]) = 0;
    CFNumberGetValue(this, Type, valuePtr);
    v29 = CFGetRetainCount(this);
    PListLogger::log(a3, "'%s' | Number(SInt32){%d} | %-6d 0x%08x %c%c%c%c\n", a2, v29);
  }

  else if (CFDictionaryGetTypeID() == v7)
  {
    v13 = *(a3 + 1);
    if (v13 >= 127)
    {
      v14 = 127;
    }

    else
    {
      v14 = v13;
    }

    *(valuePtr + v14) = 0;
    if (v13)
    {
      memset(valuePtr + v14 - (v14 - 1) - 1, 32, v14);
    }

    PListLogger::log(a3, "%s", valuePtr);
    v15 = CFGetRetainCount(this);
    Count = CFDictionaryGetCount(this);
    PListLogger::log(a3, "'%s' | Dictionary{%d} | %d key/value pairs\n", a2, v15, Count);
    if (!strcmp("aupreset", a2))
    {
      a3[8] = 1;
    }

    *(a3 + 1) += 4;
    CFDictionaryApplyFunction(this, PListLogger::logDictEntry, a3);
    *(a3 + 1) -= 4;
    a3[8] = 0;
  }

  else if (CFArrayGetTypeID() == v7)
  {
    v17 = CFArrayGetCount(this);
    v18 = *(a3 + 1);
    if (v18 >= 127)
    {
      v19 = 127;
    }

    else
    {
      v19 = v18;
    }

    *(valuePtr + v19) = 0;
    if (v18)
    {
      memset(valuePtr + v19 - (v19 - 1) - 1, 32, v19);
    }

    PListLogger::log(a3, "%s", valuePtr);
    v20 = CFGetRetainCount(this);
    PListLogger::log(a3, "'%s' | Array{%d} | %d ordered objects\n", a2, v20, v17);
    v21 = *(a3 + 1);
    *(a3 + 1) = v21 + 4;
    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(this, i);
        snprintf(valuePtr, 0x10uLL, "[%u]", i);
        PListLogger::logItemEntry(ValueAtIndex, valuePtr, a3, v24);
      }

      v21 = *(a3 + 1) - 4;
    }

    *(a3 + 1) = v21;
  }

  else if (CFDataGetTypeID() == v7)
  {
    v25 = *(a3 + 1);
    if (v25 >= 127)
    {
      v26 = 127;
    }

    else
    {
      v26 = v25;
    }

    *(valuePtr + v26) = 0;
    if (v25)
    {
      memset(valuePtr + v26 - (v26 - 1) - 1, 32, v26);
    }

    PListLogger::log(a3, "%s", valuePtr);
    CFGetRetainCount(this);
    CFDataGetLength(this);
    PListLogger::log(a3, "'%s' | %sData{%d} | %d bytes\n");
  }

  else
  {
    v27 = *(a3 + 1);
    if (v27 >= 127)
    {
      v28 = 127;
    }

    else
    {
      v28 = v27;
    }

    *(valuePtr + v28) = 0;
    if (v27)
    {
      memset(valuePtr + v28 - (v28 - 1) - 1, 32, v28);
    }

    PListLogger::log(a3, "%s", valuePtr);
    PListLogger::log(a3, "'%s' | <unknown type id: %d)>\n");
  }
}

void PListLogger::logDictEntry(const __CFString *this, const __CFString *a2, char *a3, void *a4)
{
  CStringPtr = CFStringGetCStringPtr(this, 0);

  PListLogger::logItemEntry(a2, CStringPtr, a3, v7);
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void *TuningPListMgr::getAUPresetFromUnit(TuningPListMgr *this, const __CFDictionary *a2)
{
  result = CFDictionaryGetValue(this, @"aupreset");
  if (result)
  {
    v3 = result;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *TuningPListMgr::lookupPlist_(uint64_t a1, const char *a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1 + 16;
  if (!*(a1 + 16 + 8 * a3))
  {
    return 0;
  }

  v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0, *MEMORY[0x277CBED00]);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v3 + 8 * a3);
  if (a3 - 1 > 2)
  {
    if (CFDictionaryGetCount(v7) > 0)
    {
      operator new[]();
    }

    CFRelease(v6);
    return 0;
  }

  Value = CFDictionaryGetValue(v7, v6);
  if (!Value || (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v9)))
  {
    CFRelease(v6);
    v11 = logSubsystem();
    if (v11)
    {
      v12 = *v11;
      if (!*v11)
      {
        return 0;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "TuningPListMgr.cpp";
      v16 = 1024;
      v17 = 435;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d return dictionary is null", &v14, 0x12u);
    }

    return 0;
  }

  CFRelease(v6);
  return v9;
}

const void *TuningPListMgr::getEffect(TuningPListMgr *this, const __CFDictionary *a2)
{
  result = CFDictionaryGetValue(this, @"strips");
  if (result)
  {
    v3 = result;
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(v3) || CFArrayGetCount(v3) < 1)
    {
      return 0;
    }

    result = CFArrayGetValueAtIndex(v3, 0);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = CFDictionaryGetTypeID();
    if (v6 == CFGetTypeID(v5))
    {
      result = CFDictionaryGetValue(v5, @"effects");
      if (result)
      {
        v7 = result;
        v8 = CFArrayGetTypeID();
        if (v8 == CFGetTypeID(v7))
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *TuningPListMgr::getUnitByName(TuningPListMgr *this, const __CFArray *a2, const char *a3)
{
  Count = CFArrayGetCount(this);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], a2, 0, *MEMORY[0x277CBED00]);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this, v9);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        Value = CFDictionaryGetValue(v11, @"displayname");
        if (Value)
        {
          v14 = Value;
          v15 = CFStringGetTypeID();
          if (v15 == CFGetTypeID(v14) && CFStringCompare(v8, v14, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    if (v6 == ++v9)
    {
      v11 = 0;
      break;
    }
  }

  CFRelease(v8);
  return v11;
}

uint64x2_t CreateMagicalWindow(uint64_t a1, unsigned int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v44 = vdupq_lane_s32(*result.i8, 0);
    v45 = vdupq_n_s64(a2 - 1);
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = xmmword_2727564D0;
    result = xmmword_2727564E0;
    v5 = xmmword_272756540;
    v6 = (a1 + 8);
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
      v50 = v4;
      v14 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v45, result), vcgeq_u64(v45, v4)));
      v48 = v5;
      v15 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v43), v44);
      v16 = vmovn_s32(vcgtq_f32(v51, v15));
      v17 = vbic_s8(v14, v16);
      v18.i64[0] = 0x4000000040000000;
      v18.i64[1] = 0x4000000040000000;
      v19 = vmovn_s32(vcgtq_f32(v18, v15));
      v20 = vbic_s8(v17, v19);
      v21 = vmovn_s32(vcgtq_f32(v42, v15));
      v22 = vbic_s8(v20, v21);
      v23 = vsubq_f32(v18, v15);
      v24 = vand_s8(v20, v21);
      v25.i64[0] = 0xC0000000C0000000;
      v25.i64[1] = 0xC0000000C0000000;
      v26 = vand_s8(v17, v19);
      v47 = vorr_s8(vorr_s8(v22, vorr_s8(vand_s8(v14, v16), v26)), v24);
      v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v22), 0x1FuLL)), vaddq_f32(v23, v18), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v15, v25), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), v23, v15)));
      v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v22, vorr_s8(v24, v26))), 0x1FuLL));
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
        *(v6 - 2) = v37.i32[0];
      }

      if (v47.i8[2])
      {
        *(v6 - 1) = v37.i32[1];
      }

      if (v47.i8[4])
      {
        *v6 = v37.i32[2];
      }

      if (v47.i8[6])
      {
        v6[1] = v37.i32[3];
      }

      v4 = vaddq_s64(v50, v39);
      result = vaddq_s64(v49, v39);
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v5 = vaddq_s32(v48, v38);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void std::vector<float>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<float>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

void VPTimeFreqConverter::VPTimeFreqConverter(VPTimeFreqConverter *this, int a2, int a3)
{
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  *(this + 169) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v3 = 2 * a3;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  if (2 * a3)
  {
    *this = 0;
    *(this + 1) = a2;
    *(this + 2) = a3;
    *(this + 3) = a3;
    *(this + 4) = v3;
    *(this + 5) = v3;
    *(this + 6) = 1.0 / v3;
    *(this + 7) = a3 & 0x7FFFFFFF;
    operator new[]();
  }
}

void sub_2725B9FC0(_Unwind_Exception *a1)
{
  v5 = v1[20];
  if (v5)
  {
    v1[21] = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    v1[18] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    v1[12] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  v10 = v1[5];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void VPTimeFreqConverter::~VPTimeFreqConverter(VPTimeFreqConverter *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x2743CBF70](v2, 0x1000C8052888210);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x2743CBF70](v3, 0x1000C8052888210);
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
    *(this + 12) = v7;
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
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t VPTimeFreqConverter::Synthesize(VPTimeFreqConverter *this, const DSPSplitComplex *a2, float *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(this + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "vpTimeFreqConverter.cpp";
      v10 = 1024;
      v11 = 117;
      v5 = MEMORY[0x277D86220];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for conversion";
LABEL_9:
      _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0x12u);
    }

    return 4294956433;
  }

  if ((*(this + 1) - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "vpTimeFreqConverter.cpp";
      v10 = 1024;
      v11 = 124;
      v5 = MEMORY[0x277D86220];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for synthesis";
      goto LABEL_9;
    }

    return 4294956433;
  }

  if (*this)
  {
    return 4294967292;
  }

  MultiRadixRealFFT::RealOutOfPlaceInverseTransform((this + 32), a2, *(this + 11));
  MEMORY[0x2743CCDD0](*(this + 11), 1, *(this + 20), 1, *(this + 11), 1, *(this + 4));
  MEMORY[0x2743CCD80](*(this + 11), 1, *(this + 14), 1, *(this + 14), 1, *(this + 4));
  memcpy(a3, *(this + 14), 4 * *(this + 3));
  memmove(*(this + 14), (*(this + 14) + 4 * *(this + 3)), 4 * (*(this + 4) - *(this + 3)));
  bzero((*(this + 14) + 4 * (*(this + 4) - *(this + 3))), 4 * *(this + 3));
  return 0;
}

void VPTimeFreqConverter_Analyze(uint64_t a1, const void *a2, const DSPSplitComplex *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = 136315394;
    v10 = "vpTimeFreqConverter.cpp";
    v11 = 1024;
    v12 = 69;
    v7 = MEMORY[0x277D86220];
    v8 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for conversion";
LABEL_11:
    _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, v8, &v9, 0x12u);
    return;
  }

  if ((*(a1 + 4) | 2) != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = 136315394;
    v10 = "vpTimeFreqConverter.cpp";
    v11 = 1024;
    v12 = 76;
    v7 = MEMORY[0x277D86220];
    v8 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for analysis";
    goto LABEL_11;
  }

  if (!*a1)
  {
    memcpy(*(a1 + 64), (*(a1 + 64) + 4 * *(a1 + 12)), 4 * (*(a1 + 16) - *(a1 + 12)));
    memcpy((*(a1 + 64) + 4 * (*(a1 + 16) - *(a1 + 12))), a2, 4 * *(a1 + 12));
    MEMORY[0x2743CCDD0](*(a1 + 136), 1, *(a1 + 64), 1, *(a1 + 88), 1, *(a1 + 16));
    MEMORY[0x2743CCE20](*(a1 + 88), 1, a1 + 24, *(a1 + 88), 1, *(a1 + 16));
    vDSP_ctoz(*(a1 + 88), 2, a3, 1, **(a1 + 32) >> 1);
    v6 = *(a1 + 32);
    if (!v6)
    {
      abort();
    }

    vDSP_DFT_Execute(*(v6 + 8), a3->realp, a3->imagp, a3->realp, a3->imagp);
    v9 = 1056964608;
    MEMORY[0x2743CCE20](a3->realp, 1, &v9, a3->realp, 1, **(a1 + 32) >> 1);
    MEMORY[0x2743CCE20](a3->imagp, 1, &v9, a3->imagp, 1, **(a1 + 32) >> 1);
  }
}

void **std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](void **result, void *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return (*(**v3 + 24))(*v3, v3, v3[1], v3[2]);
  }

  return result;
}

void **vp::Audio_Buffer::create(void **a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = 0;
  v7 = *(a2 + 28);
  v8 = *(a2 + 24) * a3;
  v9 = *(a2 + 12);
  if (((*(a2 + 24) * a3) & 0x3F) != 0)
  {
    v10 = (*(a2 + 24) * a3) - ((*(a2 + 24) * a3) & 0x3F) + 64;
  }

  else
  {
    v10 = (*(a2 + 24) * a3);
  }

  if ((v9 & 0x20) != 0)
  {
    v11 = (16 * v7) | 8;
  }

  else
  {
    v11 = 24;
  }

  if ((v9 & 0x20) != 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = 1;
  }

  if ((*(a2 + 12) & 0x20) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a2 + 28);
  }

  v14 = 8 * v12;
  v30 = v14 + 88;
  v15 = v14 + 88 + v11;
  if ((v15 & 0x38) != 0)
  {
    v15 = (v15 + 64) & 0x3FFFFFFFC0;
  }

  v28 = v15;
  v29 = v12;
  v16 = v15 + v10 * v12;
  v17 = (*(*a4 + 16))(a4, (v16 + 7) & 0xFFFFFFFFFFFFFFF8, 64);
  bzero(v17, v16);
  *v17 = a4;
  v17[1] = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17[2] = 64;
  *(v17 + 6) = a3;
  v18 = *(a2 + 16);
  v19 = *(a2 + 32);
  *(v17 + 2) = *a2;
  *(v17 + 3) = v18;
  v17[8] = v19;
  v17[9] = v17 + 11;
  if (v29)
  {
    v20 = 0;
    v21 = v17 + v28;
    do
    {
      if (a3)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      *(v17[9] + v20) = v22;
      v20 += 8;
      v21 += v10;
    }

    while (v14 != v20);
    v23 = 0;
    v24 = 0;
    v17[10] = v17 + v30;
    *(v17 + v30) = v29;
    do
    {
      v25 = *(v17[9] + v24);
      v26 = v17[10] + v23;
      *(v26 + 8) = v13;
      *(v26 + 12) = v8;
      *(v26 + 16) = v25;
      v24 += 8;
      v23 += 16;
    }

    while (8 * v29 != v24);
  }

  else
  {
    v17[10] = v17 + v30;
    *(v17 + v30) = 0;
  }

  v34 = 0;
  v35 = 0;
  v36 = 1;
  v33 = 1;
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v35, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v34, 0);
  v32 = 0;
  v35 = 0;
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](a1, v17);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v35, 0);
  return std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v32, 0);
}

void sub_2725BA810(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725BA7DCLL);
}

uint64_t *vp::Audio_Buffer::prepare(uint64_t *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (!*this)
  {
    _os_crash();
    __break(1u);
LABEL_11:
    v16 = 0;
    memset(v20, 0, sizeof(v20));
    v14 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v17[0] = 67109376;
    v17[1] = v3;
    v18 = 1024;
    v19 = v2;
    _os_log_send_and_compose_impl(v15, &v16, v20, 80, &dword_2724B4000, v14, 16, "assertion failure: audio buffer storage size %u is less than requested frame count %u", v17, 14);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2;
  v3 = *(v4 + 24);
  if (v3 < a2)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 56);
  v6 = *(v4 + 60);
  v7 = *(v4 + 80);
  if ((*(v4 + 44) & 0x20) != 0)
  {
    *v7 = v6;
    if (!v6)
    {
      return this;
    }

    v8 = 1;
  }

  else
  {
    *v7 = 1;
    v8 = v6;
    v6 = 1;
  }

  v9 = 0;
  v10 = 0;
  v11 = v5 * a2;
  do
  {
    v12 = *(*(*this + 72) + 8 * v10);
    v13 = *(*this + 80) + v9;
    *(v13 + 8) = v8;
    *(v13 + 12) = v11;
    *(v13 + 16) = v12;
    ++v10;
    v9 += 16;
  }

  while (v6 != v10);
  return this;
}

void sub_2725BA9B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

vp::utility::Audio_Buffer_Fader *vp::utility::Audio_Buffer_Fader::Audio_Buffer_Fader(vp::utility::Audio_Buffer_Fader *this, uint64_t a2, const CA::StreamDescription *a3)
{
  *this = 0xC00000000;
  *(this + 2) = 0;
  *(this + 12) = 1;
  *(this + 2) = 0;
  v5 = (this + 16);
  default_resource = std::pmr::get_default_resource(this);
  vp::Audio_Buffer::create(&v9, a2, 4096, default_resource);
  v7 = v9;
  v9 = 0;
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v5, v7);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v9, 0);
  return this;
}

void *vp::utility::Audio_Buffer_Fader::cache_audio_buffers(void *this, const AudioBufferList *a2)
{
  if (this)
  {
    v2 = this[10];
    if (v2)
    {
      v3 = a2->mNumberBuffers >= *v2 ? *v2 : a2->mNumberBuffers;
      if (v3)
      {
        p_mData = &a2->mBuffers[0].mData;
        v5 = (v2 + 4);
        do
        {
          v6 = *(p_mData - 1);
          v7 = *(v5 - 1);
          if (v6 >= v7)
          {
            v8 = v7;
          }

          else
          {
            v8 = v6;
          }

          this = memcpy(*v5, *p_mData, v8);
          p_mData += 2;
          v5 += 2;
          --v3;
        }

        while (v3);
      }
    }
  }

  return this;
}

void *vp::utility::Audio_Buffer_Fader::fade_out_over_one_frame(void *this, AudioBufferList *a2)
{
  v2 = this[2];
  if (v2 && *(v2 + 80))
  {
    v4 = this;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v26, a2);
    v5 = (v26 + 2);
    v6 = 16 * *v26;
    for (i = v26 + 2; v6; v6 -= 16)
    {
      v9 = *i;
      v8 = i[1];
      i += 4;
      vp::fill(v5, (v8 >> 2) / v9, 0.0);
      v5 += 2;
    }

    v10 = v4[2];
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v26, v11);
    v12 = v26 + 2;
    for (j = 16 * *v26; j; j -= 16)
    {
      v14 = (v12[1] >> 2) / *v12;
      v15 = *(v4 + 2);
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      vDSP_vrvrs(*(v12 + 1), 1, v16);
      v12 += 4;
    }

    v17 = v4[2];
    if (v17)
    {
      v18 = *(v17 + 80);
    }

    else
    {
      v18 = 0;
    }

    FadeSrcAToSrcB(v18, a2, a2, 0, 1);
    v19 = v4[2];
    if (v19)
    {
      v20 = *(v19 + 80);
    }

    else
    {
      v20 = 0;
    }

    this = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v26, v20);
    v21 = (v26 + 2);
    v22 = 16 * *v26;
    for (k = v26 + 2; v22; v22 -= 16)
    {
      v25 = *k;
      v24 = k[1];
      k += 4;
      this = vp::fill(v21, (v24 >> 2) / v25, 0.0);
      v21 += 2;
    }
  }

  return this;
}

void vp::utility::Audio_Buffer_Fader::fade_in_over_few_frames(vp::utility::Audio_Buffer_Fader *this, AudioBufferList *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      if (a2->mNumberBuffers)
      {
        v6 = 0;
        v7 = a2->mBuffers[0].mDataByteSize >> 2;
        v8 = 0.0;
        v9 = 16;
        do
        {
          __C = 0.0;
          vDSP_svemg(*(&a2->mNumberBuffers + v9), 1, &__C, v7);
          v8 = v8 + __C;
          if (__C != 0.0)
          {
            break;
          }

          ++v6;
          v9 += 16;
        }

        while (v6 < a2->mNumberBuffers);
        if (v8 != 0.0)
        {
          if (*this)
          {
            FadeSrcAToSrcB(v3, a2, a2, *this - 1, *(this + 1));
            v10 = *this;
            v11 = *(this + 1);
            ++*this;
            if (v10 == v11)
            {
              *this = 0;
              *(this + 12) = 1;
            }
          }

          else
          {
            if (a2->mNumberBuffers)
            {
              v12 = 0;
              v13 = 16;
              do
              {
                vDSP_vclr(*(&a2->mNumberBuffers + v13), 1, v7);
                ++v12;
                v13 += 16;
              }

              while (v12 < a2->mNumberBuffers);
              v14 = *this + 1;
            }

            else
            {
              v14 = 1;
            }

            *this = v14;
          }
        }
      }
    }
  }
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

void sub_2725BAE6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725BAFD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

vp::utility::Audio_Buffer_Mixer *vp::utility::Audio_Buffer_Mixer::Audio_Buffer_Mixer(vp::utility::Audio_Buffer_Mixer *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v8 = 0;
  std::vector<float>::vector[abi:ne200100](&__p, a4, &v8);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 2, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  v8 = 0;
  std::vector<float>::vector[abi:ne200100](&__p, a2, &v8);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 5, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (!*this)
  {
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (!*(this + 1))
  {
LABEL_10:
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (*(this + 2))
  {
    return this;
  }

LABEL_11:
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t vp::utility::Audio_Buffer_Mixer::set_gain(uint64_t this, uint64_t a2, unsigned int a3, float a4, unsigned int a5)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2 - this) >> 3) <= a5)
  {
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(this + 24 * a5);
  if (a3 >= ((*(this + 24 * a5 + 8) - v5) >> 2))
  {
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v5 + 4 * a3) = a4;
  return this;
}

void virtual thunk tovp::vx::io::ports::Audio_Buffer_Input_Port::~Audio_Buffer_Input_Port(vp::vx::io::ports::Audio_Buffer_Input_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 12) = &unk_2881C6630;
  v2 = *(v1 + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 12) = &unk_2881C6630;
  v2 = *(v1 + 14);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::Object::~Object(vp::vx::io::Object *this)
{
  *this = &unk_2881C6630;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881C6630;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::do_process_input_data(AudioBufferList *a1@<X2>, uint64_t result@<X0>, int a3@<W1>, __int128 *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  if (a3)
  {
    *a4 = *a4 + a5;
LABEL_18:
    *a6 = 0;
    a6[48] = 1;
    return;
  }

  v9 = *(result + 72);
  if ((v9 & 1) == 0)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v62, a1);
    if (vp::for_each_buffer(v62, vp::fill, a5))
    {
      v40 = *(result + 16);
      v41 = *(result + 32);
      v42 = *(result + 64);
      a4[2] = *(result + 48);
      a4[3] = v42;
      *a4 = v40;
      a4[1] = v41;
      goto LABEL_18;
    }

    v62 = 0x17009000000000;
    v63 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v66 = 0;
    v64 = 0;
    v65 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v67);
    vp::vx::io::operator<<<char const(&)[37]>(v68, &v62, "failed to zero-out audio buffer list");
    v32 = v68;
LABEL_21:
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v32);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v62);
    if (SHIBYTE(v66) < 0)
    {
      v33 = v64;
      v34 = v66;
      v35 = v67[0];
LABEL_23:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v35, v33, v34 & 0x7FFFFFFFFFFFFFFFLL);
      return;
    }

    return;
  }

  if (*(result + 92) >= a5)
  {
    v10 = *a4;
    v11 = *(a4 + 24);
    v58 = *(a4 + 8);
    v59 = v11;
    v60 = *(a4 + 40);
    v12 = *(a4 + 6);
    v61 = *(a4 + 7);
    v13 = a4[1];
    v54 = *a4;
    v55 = v13;
    v56 = a4[2];
    v57 = v12;
    v15 = *(a4 + 14);
    v14 = *(a4 + 15);
    if ((v15 & 1) == 0 || *(result + 88) == 1)
    {
      v10 = *(result + 16);
      v13 = *(result + 40);
      v58 = *(result + 24);
      v36 = v58;
      v59 = v13;
      v60 = *(result + 56);
      v37 = v60;
      v61 = *(result + 72);
      v38 = v61;
      *a4 = v10;
      *(a4 + 8) = v36;
      *(a4 + 24) = v13;
      *(a4 + 40) = v37;
      *(a4 + 7) = v38;
      *(result + 88) = 0;
      if ((*(result + 72) & 2) == 0)
      {
LABEL_9:
        v16 = v10 + a5;
        v17 = *(result + 16);
        LODWORD(v13) = *(result + 92);
        if (v16 > v17 + v13)
        {
          v48 = 0x1300B900000002;
          v49 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
          v52 = 0;
          v50 = 0;
          v51 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v53);
          vp::vx::io::operator<<<char const(&)[28]>(&v62, &v48);
          MEMORY[0x2743CBB10](&v65, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          MEMORY[0x2743CBB10](&v65, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " is ahead of available time range [", 35);
          MEMORY[0x2743CBB10](&v65, *(result + 16));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          LODWORD(v43) = *(result + 92);
          MEMORY[0x2743CBB10](&v65, *(result + 16) + v43);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
        }

        else
        {
          if (v10 >= v17)
          {
            v18 = *(result + 8);
            v19 = **(v18 + 80);
            if (v19 == a1->mNumberBuffers)
            {
              if (v19)
              {
                mBuffers = a1->mBuffers;
                v21 = (*(v18 + 80) + 8);
                v22 = **(v18 + 80);
                do
                {
                  v24 = *v21;
                  v21 += 4;
                  v23 = v24;
                  mNumberChannels = mBuffers->mNumberChannels;
                  ++mBuffers;
                  if (v23 != mNumberChannels)
                  {
                    v31 = v55;
                    *a4 = v54;
                    a4[1] = v31;
                    a4[2] = v56;
                    *(a4 + 6) = v57;
                    *(a4 + 14) = v15;
                    *(a4 + 15) = v14;
                    v62 = 0x1700E900000000;
                    v63 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
                    v66 = 0;
                    v64 = 0;
                    v65 = 0;
                    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v67);
                    vp::vx::io::operator<<<char const(&)[45]>(v46, &v62, "audio buffer list channel counts don't match");
                    v32 = v46;
                    goto LABEL_21;
                  }

                  --v22;
                }

                while (v22);
                v26 = vabdd_f64(v10, v17);
                p_mData = &a1->mBuffers[0].mData;
                v28 = (*(v18 + 80) + 16);
                do
                {
                  v29 = *(v28 - 2);
                  v30 = *v28;
                  v28 += 2;
                  *p_mData = (v30 + 4 * (v26 * v29));
                  *(p_mData - 1) = 4 * a5 * v29;
                  p_mData += 2;
                  --v19;
                }

                while (v19);
              }

              goto LABEL_18;
            }

            v45 = v55;
            *a4 = v54;
            a4[1] = v45;
            a4[2] = v56;
            *(a4 + 6) = v57;
            *(a4 + 14) = v15;
            *(a4 + 15) = v14;
            v62 = 0x1300D600000000;
            v63 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
            v66 = 0;
            v64 = 0;
            v65 = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v67);
            vp::vx::io::operator<<<char const(&)[45]>(v47, &v62, "audio buffer lists buffer counts don't match");
            v32 = v47;
            goto LABEL_21;
          }

          v48 = 0x1300C300000002;
          v49 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
          v52 = 0;
          v50 = 0;
          v51 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v53);
          vp::vx::io::operator<<<char const(&)[28]>(&v62, &v48);
          MEMORY[0x2743CBB10](&v65, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          MEMORY[0x2743CBB10](&v65, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " is behind of available time range [", 36);
          MEMORY[0x2743CBB10](&v65, *(result + 16));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ", ", 2);
          LODWORD(v44) = *(result + 92);
          MEMORY[0x2743CBB10](&v65, *(result + 16) + v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, ")", 1);
        }

        vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v62);
        _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v48);
        if (SHIBYTE(v52) < 0)
        {
          v33 = v50;
          v34 = v52;
          v35 = v53;
          goto LABEL_23;
        }

        return;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a4 + 14) |= 2u;
    *(a4 + 1) = *(result + 24);
    goto LABEL_9;
  }

  *&v58 = 0x13009E00000002;
  *(&v58 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
  *&v60 = 0;
  v59 = 0uLL;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v60 + 1);
  vp::vx::io::operator<<<char const(&)[21]>(&v62, &v58);
  MEMORY[0x2743CBB40](&v65, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " is larger than input port's audio buffer capacity ", 51);
  MEMORY[0x2743CBB40](&v65, *(result + 92));
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v62);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v58);
  if (SBYTE7(v60) < 0)
  {
    v33 = v59;
    v35 = *(&v60 + 1);
    v34 = v60;
    goto LABEL_23;
  }
}

void vp::vx::io::operator<<<char const(&)[37]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BB994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[21]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "process frame count ", 20);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BBA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[28]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "requested read time range [", 27);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BBAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[45]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BBB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  *(a1 + 184) = 0;
  *a1 = &unk_2881BF1B0;
  *(a1 + 136) = &unk_2881BF1D8;
  v4 = *a2;
  *(a1 + 8) = a2[1];
  a2[1] = 0;
  v5 = (a2 + *(v4 - 24));
  std::ios_base::move((a1 + 136), v5);
  *(a1 + 272) = v5[1].__vftable;
  v5[1].__vftable = 0;
  *(a1 + 280) = v5[1].__fmtflags_;
  *a1 = &unk_2881BF070;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x2743CBDC0](a1 + 32);
  *(a1 + 88) = 0;
  v6 = (a1 + 88);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = &unk_2881BF248;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator((a1 + 112));
  *(a1 + 128) = *(a2 + 32);
  v7 = a2[11];
  if (*(a2 + 111) >= 0)
  {
    v7 = a2 + 11;
  }

  v8 = a2[5];
  if (v8)
  {
    v9 = v8 - v7;
    v22 = a2[6] - v7;
    v23 = a2[7] - v7;
  }

  else
  {
    v22 = -1;
    v23 = -1;
    v9 = -1;
  }

  v10 = a2[8];
  if (v10)
  {
    v11 = v10 - v7;
    v12 = a2[9] - v7;
    v13 = a2[10] - v7;
  }

  else
  {
    v11 = -1;
    v12 = -1;
    v13 = -1;
  }

  v14 = a2[15];
  v15 = v14 - v7;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(a1 + 112);
  if (v17 == a2[14] || ((*(*v17 + 32))(v17) & 1) != 0)
  {
    if (*(a1 + 111) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 112), *(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v18 = *(a2 + 11);
    *(a1 + 104) = a2[13];
    *v6 = v18;
    *(a2 + 111) = 0;
    *(a2 + 88) = 0;
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::operator=((a1 + 88), a2 + 11);
  }

  if (*(a1 + 111) < 0)
  {
    v6 = *v6;
  }

  if (v9 != -1)
  {
    *(a1 + 40) = v6 + v9;
    *(a1 + 48) = v6 + v22;
    *(a1 + 56) = v6 + v23;
  }

  if (v11 != -1)
  {
    *(a1 + 80) = v6 + v13;
    *(a1 + 64) = v6 + v11;
    *(a1 + 72) = v6 + v11 + v12;
  }

  v19 = v6 + v16;
  if (v16 == -1)
  {
    v19 = 0;
  }

  *(a1 + 120) = v19;
  if (*(a2 + 111) >= 0)
  {
    v20 = a2 + 11;
  }

  else
  {
    v20 = a2[11];
  }

  a2[5] = v20;
  a2[6] = v20;
  a2[7] = v20;
  a2[8] = v20;
  a2[9] = v20;
  a2[10] = v20;
  a2[15] = v20;
  std::locale::locale(&v24, a2 + 4);
  (*(*(a1 + 24) + 16))(a1 + 24, &v24);
  std::locale::locale(&v25, (a1 + 32));
  std::locale::operator=((a1 + 32), &v24);
  std::locale::~locale(&v25);
  std::locale::~locale(&v24);
  *(a1 + *(*a1 - 24) + 40) = a1 + 24;
  return a1;
}

void sub_2725BBEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13)
{
  if (*(v13 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v13 + 112), *(v13 + 88), *(v13 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v13 + 24) = a9;
  std::locale::~locale((v13 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](a10);
  _Unwind_Resume(a1);
}

void *vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(void *a1)
{
  result = MEMORY[0x2743CB700]();
  if (*MEMORY[0x277D7F098])
  {
    *a1 = *MEMORY[0x277D7F098];
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void **std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<false>(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

_BYTE *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<true>(_BYTE *__dst, void *__src, size_t __len)
{
  v5 = __len > 0x16;
  v6 = __len - 22;
  if (v5)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by_and_replace(__dst, 0x16uLL, v6, __dst[23] & 0x7F, __dst[23] & 0x7F, __len, __src);
  }

  else
  {
    __dst[23] = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    __dst[__len] = 0;
  }

  return __dst;
}

void **std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__assign_no_alias<false>(void **a1, void *__src, size_t __len)
{
  v5 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by_and_replace(a1, v5 - 1, __len - v5 + 1, a1[1], a1[1], __len, __src);
  }

  else
  {
    v6 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v6, __src, __len);
    }

    *(v6 + __len) = 0;
  }

  return a1;
}

_BYTE *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by_and_replace(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, size_t a6, const void *a7)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 < a3)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = a1;
  if (*(a1 + 23) < 0)
  {
    v13 = *a1;
  }

  v14 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v14 = 2 * a2;
  }

  if ((v14 | 7) == 0x17)
  {
    v15 = 25;
  }

  else
  {
    v15 = (v14 | 7) + 1;
  }

  v16 = v14 >= 0x17;
  v17 = 23;
  if (v16)
  {
    v17 = v15;
  }

  if (a2 > 0x3FFFFFFFFFFFFFF2)
  {
    v18 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v18 = v17;
  }

  result = (*(**(a1 + 24) + 16))(*(a1 + 24), v18, 1);
  v20 = result;
  if (a6)
  {
    result = memmove(result, a7, a6);
  }

  v21 = a4 - a5;
  if (v21)
  {
    result = memmove(&v20[a6], (v13 + a5), v21);
  }

  if (a2 != 22)
  {
    result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 24), v13, a2 + 1);
  }

  *a1 = v20;
  *(a1 + 8) = v21 + a6;
  *(a1 + 16) = v18 | 0x8000000000000000;
  v20[v21 + a6] = 0;
  return result;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::overflow(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 == v6)
  {
    if ((*(a1 + 104) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 96);
    v12 = a1 + 64;
    if (*(a1 + 87) < 0)
    {
      v14 = *(a1 + 72);
      v13 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 != v13)
      {
LABEL_12:
        v15 = *(a1 + 64);
        *(a1 + 72) = v14 + 1;
LABEL_14:
        *(v15 + v14) = 0;
        if (*(a1 + 87) < 0)
        {
          v16 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        else
        {
          v16 = 22;
        }

        std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::resize((a1 + 64), v16);
        v17 = &v7[-v10];
        v18 = *(a1 + 87);
        if (v18 < 0)
        {
          v12 = *(a1 + 64);
          v18 = *(a1 + 72);
        }

        v6 = (v12 + v18);
        v7 = &v17[v12];
        *(a1 + 40) = v12;
        *(a1 + 48) = &v17[v12];
        *(a1 + 56) = v6;
        v8 = v12 + v11 - v10;
        goto LABEL_20;
      }
    }

    else
    {
      if (*(a1 + 87) != 22)
      {
        v14 = *(a1 + 87);
        *(a1 + 87) = (*(a1 + 87) + 1) & 0x7F;
        v15 = a1 + 64;
        goto LABEL_14;
      }

      v13 = 22;
    }

    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by((a1 + 64), v13, 1uLL, v13, v13);
    v14 = v13;
    goto LABEL_12;
  }

  v8 = *(a1 + 96);
LABEL_20:
  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 96) = v8;
  if ((*(a1 + 104) & 8) != 0)
  {
    v19 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v19 = *v19;
    }

    *(a1 + 16) = v19;
    *(a1 + 24) = v19 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 == v6)
  {
    v20 = *(*a1 + 104);

    return v20(a1, v2);
  }

  else
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }
}

void sub_2725BC438(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725BC2A8);
}

void std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::resize(uint64_t **a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v7 = a1[1];
    v4 = a2 - v7;
    if (a2 > v7)
    {
      v3 = a1[1];
      v8 = a1[2];
      v5 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v8);
      goto LABEL_6;
    }

    a1[1] = a2;
    v2 = *a1;
LABEL_14:
    v11 = a2 + v2;
    goto LABEL_17;
  }

  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 23) = a2;
    goto LABEL_14;
  }

  v5 = 22;
  LOBYTE(v6) = *(a1 + 23);
LABEL_6:
  if (v5 - v3 < v4)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by(a1, v5, v4 - v5 + v3, v3, v3);
    v2[1] = v3;
    LOBYTE(v6) = *(v2 + 23);
  }

  v9 = v2;
  if ((v6 & 0x80) != 0)
  {
    v9 = *v2;
  }

  bzero(&v9[v3], v4);
  v10 = v3 + v4;
  if (*(v2 + 23) < 0)
  {
    v2[1] = v10;
  }

  else
  {
    *(v2 + 23) = v10 & 0x7F;
  }

  v11 = &v9[v10];
LABEL_17:
  *v11 = 0;
}

char *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__grow_by(char ***a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5)
{
  if (0x7FFFFFFFFFFFFFF7 - a2 < a3)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = a1;
  if (*(a1 + 23) < 0)
  {
    v9 = *a1;
  }

  v10 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v10 = 2 * a2;
  }

  if ((v10 | 7) == 0x17)
  {
    v11 = 25;
  }

  else
  {
    v11 = (v10 | 7) + 1;
  }

  v12 = v10 >= 0x17;
  v13 = 23;
  if (v12)
  {
    v13 = v11;
  }

  if (a2 <= 0x3FFFFFFFFFFFFFF2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFF7;
  }

  result = (*(*a1[3] + 2))(a1[3], v14, 1);
  v16 = result;
  if (a5)
  {
    result = memmove(result, v9, a5);
  }

  if (a4 != a5)
  {
    result = memmove(&v16[a5], v9 + a5, a4 - a5);
  }

  if (a2 != 22)
  {
    result = std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a1[3], v9, a2 + 1);
  }

  *a1 = v16;
  a1[2] = (v14 | 0x8000000000000000);
  return result;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 96) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 24) = v4 - 1;
    *(a1 + 32) = v2;
    return a2;
  }

  if ((*(a1 + 104) & 0x10) == 0 && *(v4 - 1) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v4 - 1;
  *(a1 + 32) = v2;
  *(v4 - 1) = a2;
  return a2;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 96) = v2;
    v1 = v2;
  }

  if ((*(a1 + 104) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 96) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = a3;
    goto LABEL_20;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = v5 - v9;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }
  }

LABEL_20:
  v7 = -1;
  v12 = v11 + a2;
  if (v12 >= 0 && v10 >= v12 && (!v12 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + v12;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + v12;
    }

    v7 = v12;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

void std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_2881BF248;
  if (*(a1 + 87) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 88), *(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_2881BF248;
  if (*(a1 + 87) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 88), *(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = &unk_2881BF070;
  *(v1 + 17) = &unk_2881BF0C0;
  *(v1 + 2) = &unk_2881BF098;
  *(v1 + 3) = &unk_2881BF248;
  if (v1[111] < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v1 + 14), *(v1 + 11), *(v1 + 13) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v1 + 3) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v1 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v1 + 136);

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = a1 + *(*a1 - 24);
  *v1 = &unk_2881BF070;
  *(v1 + 17) = &unk_2881BF0C0;
  *(v1 + 2) = &unk_2881BF098;
  *(v1 + 3) = &unk_2881BF248;
  if (v1[111] < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(v1 + 14), *(v1 + 11), *(v1 + 13) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(v1 + 3) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v1 + 4);
  std::iostream::~basic_iostream();

  JUMPOUT(0x2743CBE30);
}

void non-virtual thunk tostd::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *(a1 - 16) = &unk_2881BF070;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_2881BF0C0;
  *a1 = &unk_2881BF098;
  *(a1 + 8) = &unk_2881BF248;
  if (*(a1 + 95) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 96), *(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v2);

  JUMPOUT(0x2743CBFA0);
}

{
  *(a1 - 16) = &unk_2881BF070;
  *(a1 + 120) = &unk_2881BF0C0;
  *a1 = &unk_2881BF098;
  *(a1 + 8) = &unk_2881BF248;
  if (*(a1 + 95) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 96), *(a1 + 72), *(a1 + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::iostream::~basic_iostream();

  JUMPOUT(0x2743CBE30);
}

void std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *a1 = &unk_2881BF070;
  v2 = a1 + 136;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = &unk_2881BF248;
  if (*(a1 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 112), *(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v2);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *a1 = &unk_2881BF070;
  v2 = a1 + 136;
  *(a1 + 136) = &unk_2881BF0C0;
  *(a1 + 16) = &unk_2881BF098;
  *(a1 + 24) = &unk_2881BF248;
  if (*(a1 + 111) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 112), *(a1 + 88), *(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743CBE30](v2);
  return a1;
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::do_set_input_data(uint64_t a1@<X8>)
{
  v3[0] = 0x1000740000000DLL;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
  v5 = 0;
  v6 = 0;
  v4 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v7);
  v2 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v3);
  if (SHIBYTE(v6) < 0)
  {
    (*(*v7 + 24))(v7, v4, v6 & 0x7FFFFFFFFFFFFFFFLL, 1, v2);
  }
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::do_copy_input_data(vp::vx::io::ports::Audio_Buffer_Input_Port *this@<X0>, const AudioBufferList *a2@<X1>, const AudioTimeStamp *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = (this + 8);
  v10 = *(this + 1);
  if (v10)
  {
    v10 = *(v10 + 24) | 0x100000000;
  }

  if (v10 <= 0x100000000)
  {
    LODWORD(v10) = 0;
  }

  if (v10 < a4)
  {
    v33[0] = 0x13003400000002;
    v33[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v35 = 0;
    v36 = 0;
    v34 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v37);
    vp::vx::io::operator<<<char const(&)[24]>(&v27, v33);
    MEMORY[0x2743CBB40](&v30, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " is larger than input port's audio buffer capacity ", 51);
    v19 = *v11;
    if (*v11)
    {
      v19 = *(v19 + 24) | 0x100000000;
    }

    if (v19 <= 0x100000000)
    {
      v20 = 0x100000000;
    }

    else
    {
      v20 = v19;
    }

    MEMORY[0x2743CBB40](&v30, v20);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v27);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v33);
    if (SHIBYTE(v36) < 0)
    {
      v21 = v34;
      v23 = v36;
      v22 = v37;
LABEL_27:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v22, v21, v23 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    vp::Audio_Buffer::prepare(this + 1, a4);
    if (a3->mFlags)
    {
      mSampleTime = a3->mSampleTime;
      if (*(this + 10) == a3->mSampleTime)
      {
        mSampleTime = *(this + 10);
      }

      else
      {
        *(this + 88) = 1;
      }

      *(this + 10) = mSampleTime + a4;
      v13 = *(this + 1);
      if (v13)
      {
        v14 = *(v13 + 80);
      }

      else
      {
        v14 = 0;
      }

      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v27, v14);
      v15 = v27;
      vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v27, a2);
      if (vp::for_each_buffer_pair(v15, v27, vp::copy, a4))
      {
        v16 = *&a3->mSampleTime;
        v17 = *&a3->mRateScalar;
        v18 = *&a3->mSMPTETime.mHours;
        *(this + 3) = *&a3->mSMPTETime.mSubframes;
        *(this + 4) = v18;
        *(this + 1) = v16;
        *(this + 2) = v17;
        *(this + 23) = a4;
        *(a5 + 48) = 0;
        *a5 = 0u;
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 48) = 1;
        return;
      }

      vp::Audio_Buffer::prepare(v11, *(this + 23));
      v27 = 0x13006700000000;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      v31 = 0;
      v29 = 0;
      v30 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v32);
      vp::vx::io::operator<<<char const(&)[26]>(v25, &v27, "failed to copy input data");
      v24 = v25;
    }

    else
    {
      v27 = 0x13004300000005;
      v28 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      v31 = 0;
      v29 = 0;
      v30 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v32);
      vp::vx::io::operator<<<char const(&)[49]>(v26, &v27, "audio time stamp does not have valid sample time");
      v24 = v26;
    }

    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v24);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v27);
    if (SHIBYTE(v31) < 0)
    {
      v21 = v29;
      v23 = v31;
      v22 = v32[0];
      goto LABEL_27;
    }
  }
}

void vp::vx::io::operator<<<char const(&)[24]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "input data frame count ", 23);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BD3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

__n128 _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 5);
  result = *(a2 + 6);
  v6 = *(a2 + 2);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 2) = 0;
  *a1 = v2;
  *(a1 + 4) = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = result;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  return result;
}

void vp::vx::io::operator<<<char const(&)[49]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BD474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[26]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725BD510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::ports::Audio_Buffer_Input_Port::reset@<D0>(vp::vx::io::ports::Audio_Buffer_Input_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 1);
  v4 = (this + 8);
  v5 = v6;
  if (v6)
  {
    v5 = *(v5 + 24) | 0x100000000;
  }

  if ((v5 & 0x100000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  vp::Audio_Buffer::prepare(v4, v7);
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 10) = 0x7FF8000000000000;
  *(this + 88) = 0;
  *(this + 23) = 0;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Buffer_Input_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, unint64_t a4@<D2>)
{
  if (a2 == 1)
  {
    v6 = *(result + 16);
    v7 = *(result + 72);
    if (v7)
    {
      LODWORD(a4) = *(result + 92);
      v6 = v6 + a4;
    }

    *a3 = v6;
    *(a3 + 8) = *(result + 24);
    *(a3 + 24) = *(result + 40);
    *(a3 + 40) = *(result + 56);
    *(a3 + 56) = v7;
  }

  else if (!a2)
  {
    v4 = *(result + 32);
    *a3 = *(result + 16);
    *(a3 + 16) = v4;
    v5 = *(result + 64);
    *(a3 + 32) = *(result + 48);
    *(a3 + 48) = v5;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Buffer_Input_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Buffer_Input_Port *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v5 = *(v2 + 33);
    *v6 = *(v2 + 49);
    *&v6[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v5;
  *(a2 + 1) = v5;
  *(a2 + 17) = *v6;
  *(a2 + 32) = *&v6[15];
  return result;
}

void vp::vx::io::ports::Audio_Buffer_Input_Port::~Audio_Buffer_Input_Port(vp::vx::io::ports::Audio_Buffer_Input_Port *this)
{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 12) = &unk_2881C6630;
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 12) = &unk_2881C6630;
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void virtual thunk tovp::vx::io::ports::Audio_Buffer_Output_Port::~Audio_Buffer_Output_Port(vp::vx::io::ports::Audio_Buffer_Output_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::do_process_output_data(vp::Audio_Buffer *this@<X0>, int a2@<W1>, _DWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v44[35] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = (this + 8);
    v12 = *(this + 1);
    if (v12)
    {
      v12 = *(v12 + 24) | 0x100000000;
    }

    if (v12 <= 0x100000000)
    {
      LODWORD(v12) = 0;
    }

    if (v12 < a5)
    {
      v33[0] = 0x13016700000002;
      v33[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      v35 = 0;
      v36 = 0;
      v34 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v37);
      vp::vx::io::operator<<<char const(&)[21]>(&v43, v33);
      MEMORY[0x2743CBB40](&v44[1], a5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44[1], " is larger than output port's audio buffer capacity ", 52);
      v28 = *v13;
      if (*v13)
      {
        v28 = *(v28 + 24) | 0x100000000;
      }

      if (v28 <= 0x100000000)
      {
        v29 = 0x100000000;
      }

      else
      {
        v29 = v28;
      }

      MEMORY[0x2743CBB40](&v44[1], v29);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v43);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, v33);
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        return;
      }

      v23 = v34;
      v25 = v36;
      v24 = v37;
    }

    else
    {
      vp::Audio_Buffer::prepare(v13, a5);
      v14 = **(*v13 + 80);
      if (v14 == *a3)
      {
        if (v14)
        {
          v15 = a3 + 2;
          v16 = (*(*v13 + 80) + 8);
          v17 = **(*v13 + 80);
          do
          {
            v19 = *v16;
            v16 += 4;
            v18 = v19;
            v20 = *v15;
            v15 += 4;
            if (v18 != v20)
            {
              *&v43 = 0x17018400000000;
              *(&v43 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
              memset(v44, 0, 24);
              vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v44[3]);
              vp::vx::io::operator<<<char const(&)[45]>(v32, &v43, "audio buffer list channel counts don't match");
              v22 = v32;
              goto LABEL_19;
            }

            --v17;
          }

          while (v17);
          v21 = 2;
          do
          {
            *&a3[v21] = *(*(*v13 + 80) + v21 * 4);
            v21 += 4;
            --v14;
          }

          while (v14);
        }

        goto LABEL_16;
      }

      *&v43 = 0x13017500000000;
      *(&v43 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
      memset(v44, 0, 24);
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v44[3]);
      vp::vx::io::operator<<<char const(&)[45]>(&v38, &v43, "audio buffer lists buffer counts don't match");
      v22 = &v38;
LABEL_19:
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v22);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v43);
      if ((SHIBYTE(v44[2]) & 0x80000000) == 0)
      {
        return;
      }

      v23 = v44[0];
      v24 = v44[3];
      v25 = v44[2];
    }

LABEL_21:
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v24, v23, v25 & 0x7FFFFFFFFFFFFFFFLL);
    return;
  }

  if (*(a4 + 56))
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    *(this + 72) = a4[3];
    *(this + 56) = v10;
    *(this + 40) = v9;
    *(this + 24) = v8;
    *(this + 4) = a5;
LABEL_16:
    *a6 = 0;
    a6[48] = 1;
    return;
  }

  v26 = *(this + 1);
  if (v26)
  {
    v27 = *(v26 + 80);
  }

  else
  {
    v27 = 0;
  }

  vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v43, v27);
  if (vp::for_each_buffer(v43, vp::fill, a5))
  {
    *&v38 = 0x13019F00000005;
    *(&v38 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v40 = 0;
    v41 = 0;
    v39 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v42);
    vp::vx::io::operator<<<char const(&)[49]>(&v43, &v38, "audio time stamp does not have valid sample time");
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v43);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v38);
    if (SHIBYTE(v41) < 0)
    {
      v23 = v39;
      v25 = v41;
      v24 = v42[0];
      goto LABEL_21;
    }
  }

  else
  {
    v32[0] = 0;
    memset(v44, 0, 64);
    v43 = 0u;
    v30 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    LODWORD(v38) = 134217984;
    *(&v38 + 4) = 0;
    _os_log_send_and_compose_impl(v31, v32, &v43, 80, &dword_2724B4000, v30, 16, "assertion failure: for_each_buffer(make_ref(m_audio_buffer), fill, 0.0f, frame_count) -> %llu", &v38);
    _os_crash_msg();
    __break(1u);
  }
}

void sub_2725BDC3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::do_set_output_data(uint64_t a1@<X8>)
{
  v3[0] = 0x1001510000000CLL;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
  v5 = 0;
  v6 = 0;
  v4 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v7);
  v2 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v3);
  if (SHIBYTE(v6) < 0)
  {
    (*(*v7 + 24))(v7, v4, v6 & 0x7FFFFFFFFFFFFFFFLL, 1, v2);
  }
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::do_copy_output_data(vp::vx::io::ports::Audio_Buffer_Output_Port *this@<X0>, AudioBufferList *a2@<X1>, AudioTimeStamp *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(this + 4) < a4)
  {
    v24[0] = 0x13013600000002;
    v24[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v26 = 0;
    v27 = 0;
    v25 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v28);
    vp::vx::io::operator<<<char const(&)[25]>(v19, v24);
    MEMORY[0x2743CBB40](&v21, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " is larger than output port's audio buffer capacity ", 52);
    MEMORY[0x2743CBB40](&v21, *(this + 4));
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v19);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v24);
    if (SHIBYTE(v27) < 0)
    {
      v15 = v25;
      v17 = v27;
      v16 = v28;
LABEL_12:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v16, v15, v17 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a2);
    v9 = v19[0];
    v10 = *(this + 1);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, v11);
    if (vp::for_each_buffer_pair(v9, v19[0], vp::copy, a4))
    {
      v12 = *(this + 24);
      v13 = *(this + 40);
      v14 = *(this + 72);
      *&a3->mSMPTETime.mSubframes = *(this + 56);
      *&a3->mSMPTETime.mHours = v14;
      *&a3->mSampleTime = v12;
      *&a3->mRateScalar = v13;
      *a5 = a4;
      *(a5 + 48) = 1;
      return;
    }

    v19[0] = 0x13014400000000;
    v19[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Buffer_Port.cpp";
    v21 = 0;
    v22 = 0;
    v20 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v23);
    vp::vx::io::operator<<<char const(&)[27]>(v18, v19);
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v18);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v19);
    if (SHIBYTE(v22) < 0)
    {
      v15 = v20;
      v17 = v22;
      v16 = v23[0];
      goto LABEL_12;
    }
  }
}

void vp::vx::io::operator<<<char const(&)[25]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "output data frame count ", 24);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BDF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[27]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "failed to copy output data", 26);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725BDFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::ports::Audio_Buffer_Output_Port::reset@<D0>(vp::vx::io::ports::Audio_Buffer_Output_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(this + 1);
  v4 = (this + 8);
  v5 = v6;
  if (v6)
  {
    v5 = *(v5 + 24) | 0x100000000;
  }

  if ((v5 & 0x100000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  vp::Audio_Buffer::prepare(v4, v7);
  *(this + 4) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Buffer_Output_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, unint64_t a4@<D2>)
{
  if (a2 == 1)
  {
    v6 = *(result + 24);
    v7 = *(result + 80);
    if (v7)
    {
      LODWORD(a4) = *(result + 16);
      v6 = v6 + a4;
    }

    *a3 = v6;
    v8 = *(result + 48);
    *(a3 + 8) = *(result + 32);
    *(a3 + 24) = v8;
    *(a3 + 40) = *(result + 64);
    *(a3 + 56) = v7;
  }

  else if (!a2)
  {
    v4 = *(result + 40);
    *a3 = *(result + 24);
    *(a3 + 16) = v4;
    v5 = *(result + 72);
    *(a3 + 32) = *(result + 56);
    *(a3 + 48) = v5;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Buffer_Output_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Buffer_Output_Port *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v5 = *(v2 + 33);
    *v6 = *(v2 + 49);
    *&v6[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v5;
  *(a2 + 1) = v5;
  *(a2 + 17) = *v6;
  *(a2 + 32) = *&v6[15];
  return result;
}

void vp::vx::io::ports::Audio_Buffer_Output_Port::~Audio_Buffer_Output_Port(vp::vx::io::ports::Audio_Buffer_Output_Port *this)
{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<vp::vx::io::Object::Log_Context>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<vp::vx::io::Object::Log_Context>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881C62D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Buffer_Input_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Buffer_Input_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 96) = &unk_2881C6630;
    v4 = *(v2 + 112);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Buffer_Output_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Buffer_Output_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 88) = &unk_2881C6630;
    v4 = *(v2 + 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Buffer_Output_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Buffer_Output_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Buffer_Output_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 112, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Buffer_Input_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Buffer_Input_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Buffer_Input_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 120, 8);
  }

  return a1;
}

uint64_t vp::copy(void **a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (v3 != *a2 || (*(a1 + 1) >> 2) / v3 < a3 || (*(a2 + 4) >> 2) / v3 < a3)
  {
    return 0;
  }

  memcpy(a1[1], *(a2 + 8), 4 * a3 * v3);
  return 1;
}

uint64_t vp::copy(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a1;
  if (v5 != *a3 || ((a1[1] >> 2) / v5) - a2 < a5 || ((*(a3 + 4) >> 2) / v5) - a4 < a5)
  {
    return 0;
  }

  memcpy((*(a1 + 1) + 4 * v5 * a2), (*(a3 + 8) + 4 * v5 * a4), 4 * a5 * v5);
  return 1;
}

BOOL vp::fill(float **a1, unint64_t a2, float a3)
{
  __A = a3;
  v4 = *a1;
  v5 = (*(a1 + 1) >> 2) / v4;
  if (v5 >= a2)
  {
    vDSP_vfill(&__A, a1[1], 1, v4 * a2);
  }

  return v5 >= a2;
}

BOOL vp::fill(unsigned int *a1, uint64_t a2, unint64_t a3, float a4)
{
  __A = a4;
  v5 = *a1;
  v6 = (a1[1] >> 2) / v5 - a2;
  if (v6 >= a3)
  {
    vDSP_vfill(&__A, (*(a1 + 1) + 4 * v5 * a2), 1, v5 * a3);
  }

  return v6 >= a3;
}

uint64_t vp::for_each_buffer(unsigned int *a1, unsigned int (*a2)(unsigned int *, uint64_t, double), uint64_t a3)
{
  v3 = *a1;
  if (!v3)
  {
    return 1;
  }

  v6 = a1 + 2;
  LODWORD(v7) = 1;
  do
  {
    v7 = v7 & a2(v6, a3, 0.0);
    v6 += 4;
    --v3;
  }

  while (v3);
  return v7;
}

uint64_t vp::for_each_buffer(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (!v3)
  {
    return 1;
  }

  v6 = a1 + 2;
  LODWORD(v7) = 1;
  do
  {
    v7 = v7 & vp::fill(v6, a2, a3, 0.0);
    v6 += 4;
    --v3;
  }

  while (v3);
  return v7;
}

uint64_t vp::for_each_buffer_pair(unsigned int *a1, _DWORD *a2, unsigned int (*a3)(unsigned int *, _DWORD *, uint64_t), uint64_t a4)
{
  v4 = *a1;
  if (v4 != *a2)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v7 = a2 + 2;
  v8 = a1 + 2;
  LODWORD(v9) = 1;
  do
  {
    v9 = v9 & a3(v8, v7, a4);
    v7 += 4;
    v8 += 4;
    --v4;
  }

  while (v4);
  return v9;
}

uint64_t vp::for_each_buffer_pair(unsigned int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned int (*a5)(unsigned int *, uint64_t, _DWORD *, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *a1;
  if (v6 != *a3)
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v11 = a3 + 2;
  v12 = a1 + 2;
  LODWORD(v13) = 1;
  do
  {
    v13 = v13 & a5(v12, a2, v11, a4, a6);
    v11 += 4;
    v12 += 4;
    --v6;
  }

  while (v6);
  return v13;
}

void vp::Audio_Capture::create(uint64_t *a1, std::__fs::filesystem::path *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v8 = v18;
  std::__fs::filesystem::path::extension[abi:ne200100](v18, a2);
  v9 = v19;
  v10 = v18[0];
  if (v19 < 0)
  {
    v8 = v18[0];
  }

  v11 = strlen(v8);
  v12 = 0;
  v13 = 1;
  while (1)
  {
    v14 = v13;
    if (v11 == 4 && *(&vp::Audio_Capture::create(std::__fs::filesystem::path const&,CA::StreamDescription const&,vp::Audio_Capture::RingBufferMode)::s_file_type_id_lut)[2 * v12] == *v8)
    {
      break;
    }

    v13 = 0;
    v12 = 1;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }
  }

  v15 = *(&vp::Audio_Capture::create(std::__fs::filesystem::path const&,CA::StreamDescription const&,vp::Audio_Capture::RingBufferMode)::s_file_type_id_lut + v12 + 8);
LABEL_9:
  if ((a4 - 1) >= 3)
  {
    v16 = 4096;
  }

  else
  {
    v16 = qword_27275A678[a4 - 1];
  }

  if ((v6->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v6->__pn_.__r_.__value_.__r.__words[0];
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
  {
    dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_5198);
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
  {
    v17 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v16, 0, v6, v15, 0, a3);
    if (v9 < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = 0;
    if (v9 < 0)
    {
LABEL_20:
      operator delete(v10);
    }
  }

  *a1 = v17;
}

void sub_2725BE9FC(void *a1)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725BE9C4);
}

double std::__fs::filesystem::path::extension[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

uint64_t vp::Audio_Capture::write_async(vp::Audio_Capture *this, const AudioBufferList *a2, uint64_t a3, const AudioTimeStamp *a4, double *a5)
{
  if (!a5)
  {
    result = (*(*&a2->mNumberBuffers + 96))(a2, a4, a3, 0, -1);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_5:
    *this = 0;
    v7 = 1;
    goto LABEL_6;
  }

  result = (*(*&a2->mNumberBuffers + 96))(a2, a4, a3, 0, *a5);
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
  *this = result;
LABEL_6:
  *(this + 4) = v7;
  return result;
}

uint64_t vp::vx::components::Audio_Capturer::begin_write_data(uint64_t result, int a2)
{
  if (a2 == 3)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

{
  if (a2 == 1)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

uint64_t vp::vx::components::Audio_Capturer::begin_process(uint64_t result, int a2)
{
  if (!a2)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

{
  if (!a2)
  {
    atomic_fetch_add((result + 368), 1u);
  }

  return result;
}

void vp::vx::Component::get_dsp_property_override(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
}

{
  *(a1 + 24) = 0;
}

void vp::vx::Component::get_dsp_parameter_override(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
}

{
  *(a1 + 24) = 0;
}

void vp::vx::components::Audio_Capturer::end_configuration_changes(vp::vx::components::Audio_Capturer *this)
{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v3)
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Capturer]", 34);
    v5 = HIBYTE(v16);
    v6 = SHIBYTE(v16);
    v7 = v15;
    v8 = vp::get_log(log_context_info);
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_p = __p;
      if (v6 >= 0)
      {
        p_p = &__p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v18 = p_p;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%send configuration changes", buf, 0x16u);
      LOBYTE(v6) = HIBYTE(v16);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v3);
  v15 = 0;
  v16 = 0;
  __p = default_resource;
  vp::vx::data_flow::State<void>::get_value(this + 54, &__p);
  v13 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  *(this + 240) = v13 & 1;
}

void sub_2725BEE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2725BEDD0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<BOOL>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void vp::vx::components::Audio_Capturer::begin_configuration_changes(vp::vx::components::Audio_Capturer *this)
{
  v25 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  v3 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v3)
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Capturer]", 34);
    v5 = HIBYTE(v20);
    v6 = SHIBYTE(v20);
    v7 = v19;
    v8 = vp::get_log(log_context_info);
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_p = __p;
      if (v6 >= 0)
      {
        p_p = &__p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v22 = p_p;
      v23 = 2080;
      v24 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%sbegin configuration changes", buf, 0x16u);
      LOBYTE(v6) = HIBYTE(v20);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  default_resource = std::pmr::get_default_resource(v3);
  v19 = 0;
  v20 = 0;
  __p = default_resource;
  vp::vx::data_flow::State<void>::get_value(this + 54, &__p);
  v13 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  if (v13 == 1)
  {
    if (*(this + 240))
    {
      v14 = atomic_load(this + 92);
      if (v14 > *(this + 93))
      {
        v15 = *(this + 94) + 1;
        *(this + 94) = v15;
        *(*(this + 38) + 112) = v15;
        *(*(this + 42) + 112) = v15;
        v16 = atomic_load(this + 92);
        *(this + 93) = v16;
      }
    }

    else
    {
      v17 = *(this + 37);
      *(*(this + 38) + 56) = v17;
      *(*(this + 42) + 56) = v17;
      *(this + 94) = 0;
      atomic_store(0, this + 92);
      *(this + 93) = 0;
    }
  }
}

void sub_2725BF06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a2)
  {
    vp::vx::data_flow::Value::~Value(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2725BF038);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::Audio_Capturer::configure(vp::vx::components::Audio_Capturer *this)
{
  v47 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__t, this, "vp::vx::components::Audio_Capturer]", 34);
    v4 = HIBYTE(v45);
    v5 = SHIBYTE(v45);
    v6 = v45;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      rep = __t.__d_.__rep_;
      if (v5 >= 0)
      {
        rep = &__t;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *v43 = rep;
      *&v43[8] = 2080;
      *&v43[10] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v45);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__t.__d_.__rep_);
    }
  }

  v11 = *(this + 32);
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = *(this + 31);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v28 = v13;
  if (!v13)
  {
    goto LABEL_28;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v14 = *(this + 34);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = std::__shared_weak_count::lock(v14);
  v30 = v15;
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = *(this + 33);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v16)
  {
    goto LABEL_26;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  v17 = *(this + 36);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(this + 35);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        v20 = *(this + 52) | (*(this + 112) << 32);
        (*(*v19 + 24))(&__t, v19, 3);
        LODWORD(v32) = __t.__d_.__rep_;
        *v33 = v45;
        v45 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&__t);
        (*(*v19 + 24))(&__t, v19, 4);
        v34 = __t.__d_.__rep_;
        v35 = v45;
        v45 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&__t);
        __t.__d_.__rep_ = &unk_2881B2938;
        *&v45 = v20;
        p_t = &__t;
        v36 = v32;
        v37 = v34;
        vp::vx::data_flow::State_Manager::create_state(buf, (v28 + 48), &__t);
        LODWORD(v39) = *buf;
        v40 = *&v43[4];
        *&v43[4] = 0;
        *&v43[12] = 0;
        vp::vx::data_flow::State<void>::~State(buf);
        std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&__t);
        LODWORD(__t.__d_.__rep_) = v39;
        v45 = v40;
        v40 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&v39);
        vp::vx::data_flow::State<void>::~State(this + 54);
        *(this + 54) = __t.__d_.__rep_;
        *(this + 14) = v45;
        v45 = 0uLL;
        vp::vx::data_flow::State<void>::~State(&__t);
        vp::vx::data_flow::State<void>::~State(&v34);
        vp::vx::data_flow::State<void>::~State(&v32);
        v38 = 0x100000000;
        *&v21 = v16;
        *(&v21 + 1) = v30;
        v29 = v21;
        v22 = *(this + 1);
        v32 = 0;
        *v33 = v22;
        *&v33[8] = xmmword_272756550;
        v23 = (*(*v22 + 16))(v22, 184, 8);
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v24 = *(this + 1);
        *v23 = &unk_2881B8328;
        *(v23 + 8) = v29;
        *(v23 + 24) = 0u;
        *(v23 + 40) = 0u;
        __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        *(v23 + 56) = std::chrono::system_clock::to_time_t(&__t);
        *(v23 + 64) = 0;
        *(v23 + 72) = 0;
        *(v23 + 80) = 0;
        *(v23 + 88) = 0;
        *(v23 + 96) = 0;
        *(v23 + 104) = 0;
        *(v23 + 112) = 0;
        *(v23 + 120) = v24;
        *(v23 + 128) = 0;
        *(v23 + 136) = 0;
        *(v23 + 144) = 0;
        *(v23 + 152) = v24;
        *(v23 + 160) = 0;
        *(v23 + 168) = 0;
        *(v23 + 176) = 0;
        std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](&v32, v23);
        v25 = v32;
        vp::vx::data_flow::State<void>::State(&v31, this + 54);
        v27 = v25[1];
        v26 = v25[2];
        if (v26)
        {
          atomic_fetch_add_explicit(v26 + 2, 1uLL, memory_order_relaxed);
        }

        v39 = &unk_2881B84D0;
        *&v40 = v27;
        *(&v40 + 1) = v26;
        v41 = &v39;
        std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](buf, &v39);
        p_t = 0;
        operator new();
      }
    }
  }

  while (1)
  {
    _os_crash();
    __break(1u);
LABEL_28:
    _os_crash();
    __break(1u);
LABEL_26:
    _os_crash();
    __break(1u);
  }
}

void sub_2725BFC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void (****std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__2JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5.i32[0] = bswap32(vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(*v4));
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v10 = vuzp1_s8(v9, v9).u32[0];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v11);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v10;
  *(result + 23) = 4;
  return result;
}

void sub_2725BFFDC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void vp::utility::exception_match<std::bad_cast>()
{
  std::current_exception();
  v0.__ptr_ = &v1;
  std::rethrow_exception(v0);
  __break(1u);
}

BOOL sub_2725C0050(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::exception_ptr::~exception_ptr(&v17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return a2 == 2;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::compare_value(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *a3;
  v4 = *(*a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = v3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = **a2;
  }

  if (v7 >= 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *v3;
  }

  return memcmp(v8, v9, v5) == 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::destroy_value(uint64_t a1, void ***a2)
{
  if (*(*a2 + 23) < 0)
  {
    operator delete(**a2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = **a3;
  v3[1].n128_u64[0] = (*a3)[1].n128_u64[0];
  *v3 = result;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  v4->n128_u64[0] = 0;
  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::copy_value(uint64_t a1, std::string **a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v3->__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&v3->__r_.__value_.__l.__data_ = v5;
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::string>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Output_Port_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__2JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B29C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__1JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5.i32[0] = bswap32(vp::vx::Legacy<vp::vx::Input_Port_Type>::cast(*v4));
  v6 = vzip1_s8(v5, v5);
  v7.i64[0] = 0x1F0000001FLL;
  v7.i64[1] = 0x1F0000001FLL;
  v8.i64[0] = 0x5F0000005FLL;
  v8.i64[1] = 0x5F0000005FLL;
  v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
  v10 = vuzp1_s8(v9, v9).u32[0];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v11);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v10;
  *(result + 23) = 4;
  return result;
}

void sub_2725C03D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Input_Port_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__1JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS9_IS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B2980;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__0JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EEclEOSW_OSX_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 12))
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(a1 + 8) != 0) | *v7 & *v9;
  }

  v11 = v10 & 1;
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Capturer9configureEvE3__0JbbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbbEEERNS4_13State_ManagerESE_SL_EUlPPKNS4_5ValueEPST_E_NS_9allocatorISY_EEFvSW_SX_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t result, void *a2)
{
  *a2 = &unk_2881B2938;
  a2[1] = *(result + 8);
  return result;
}

void vp::vx::components::Audio_Capturer::set_state_owner(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 280);
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 288);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Capturer::set_state_observer(uint64_t a1, __int128 *a2)
{
  v2 = (a1 + 264);
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 272);
  *v2 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Capturer::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 256);
  *(a1 + 248) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Capturer::~Audio_Capturer(std::__shared_weak_count **this)
{
  vp::vx::components::Audio_Capturer::~Audio_Capturer(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Capturer]", 34);
    v4 = v15;
    v5 = v15;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v15;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](this + 42, 0);
  std::unique_ptr<vp::vx::IO_Node_Audio_Capturer_Factory,vp::Allocator_Delete<vp::vx::IO_Node_Audio_Capturer_Factory>>::reset[abi:ne200100](this + 38, 0);
  v11 = this[36];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[34];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[32];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  vp::vx::data_flow::State<void>::~State(this + 54);
  vp::Context::~Context((this + 2));
}

void vp::Audio_Converter::~Audio_Converter(OpaqueAudioConverter **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (v2)
  {
    if (AudioConverterDispose(v2))
    {
      v5 = 0;
      memset(v8, 0, sizeof(v8));
      v3 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      v6 = 134217984;
      v7 = 0;
      _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_2724B4000, v3, 16, "assertion failure: AudioConverterDispose(m_ref) == noErr -> %llu", &v6);
      _os_crash_msg();
      __break(1u);
    }

    *this = 0;
  }
}

void sub_2725C09AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::Audio_Converter::get_property(vp::Audio_Converter *this, AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, unsigned int *a4, UInt32 *a5)
{
  v8 = *a5;
  v9 = a5;
  result = AudioConverterGetProperty(inAudioConverter, inPropertyID, &v8, a4);
  if (result)
  {
    v7 = 0;
    *this = result;
  }

  else
  {
    *this = 0;
    v7 = 1;
  }

  *(this + 4) = v7;
  *v9 = v8;
  return result;
}

uint64_t vp::Audio_Converter::set_property(vp::Audio_Converter *this, AudioConverterRef inAudioConverter, AudioConverterPropertyID inPropertyID, const void *a4)
{
  result = AudioConverterSetProperty(inAudioConverter, inPropertyID, 4u, a4);
  if (result)
  {
    v6 = 0;
    *this = result;
  }

  else
  {
    *this = 0;
    v6 = 1;
  }

  *(this + 4) = v6;
  return result;
}

uint64_t caulk::expected<unsigned int,int>::value(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2881C1110;
    exception[2] = v3;
  }

  return result;
}

uint64_t vp::Audio_Converter::get_expected_output_frame_count(vp::Audio_Converter *this, int a2)
{
  v3 = *(this + 8) * a2;
  v9 = 4;
  v10 = v3;
  vp::Audio_Converter::get_property(&v7, *this, 0x636F6273u, &v10, &v9);
  if (v8)
  {
    v4 = &v10;
  }

  else
  {
    v4 = &v7;
  }

  v5 = *v4;
  v7 = *v4;
  if (v8)
  {
    caulk::expected<unsigned int,int>::value(&v7);
    return (v5 / *(this + 18)) | 0x100000000;
  }

  return v5;
}

uint64_t vp::$_4::__invoke<OpaqueAudioConverter *,unsigned int,AudioBufferList,AudioStreamPacketDescription **>(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  result = (**a5)(*a5 + 8, a3, &v9, a4);
  v8 = v9;
  *(a5 + 8) += v9;
  *a2 = v8;
  return result;
}

void caulk::function_ref<int ()(AudioBufferList &,unsigned int &)>::empty_invoker()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void virtual thunk tovp::vx::io::wires::Audio_Converter_Wire::~Audio_Converter_Wire(vp::vx::io::wires::Audio_Converter_Wire *this)
{
  vp::vx::io::wires::Audio_Converter_Wire::~Audio_Converter_Wire((this + *(*this - 24)));
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2881B2A18;
  *(v1 + 55) = &unk_2881B2A70;
  *(v1 + 52) = &unk_2881C6630;
  v2 = *(v1 + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 33, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 25, 0);
  *(v1 + 14) = &unk_2881C6630;
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  vp::Audio_Converter::~Audio_Converter(v1 + 1);
  *(v1 + 55) = &unk_2881C6630;
  v4 = *(v1 + 57);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::~Audio_Converter_Wire(vp::vx::io::wires::Audio_Converter_Wire *this)
{
  *this = &unk_2881B2A18;
  *(this + 55) = &unk_2881B2A70;
  *(this + 52) = &unk_2881C6630;
  v2 = *(this + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 33, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 25, 0);
  *(this + 14) = &unk_2881C6630;
  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  vp::Audio_Converter::~Audio_Converter(this + 1);
  *(this + 55) = &unk_2881C6630;
  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B2A18;
  *(this + 55) = &unk_2881B2A70;
  *(this + 52) = &unk_2881C6630;
  v2 = *(this + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 33, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 25, 0);
  *(this + 14) = &unk_2881C6630;
  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  vp::Audio_Converter::~Audio_Converter(this + 1);
  *(this + 55) = &unk_2881C6630;
  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::io::wires::Audio_Converter_Wire::get_expected_output_frame_count(vp::vx::io::wires::Audio_Converter_Wire *this, int a2)
{
  result = vp::Audio_Converter::get_expected_output_frame_count((this + 8), a2);
  if ((result & 0x100000000) == 0)
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t vp::vx::io::wires::Audio_Converter_Wire::get_required_input_frame_count(vp::vx::io::wires::Audio_Converter_Wire *this, int a2)
{
  v3 = *(this + 20) * a2;
  v9 = 4;
  v10 = v3;
  vp::Audio_Converter::get_property(&v7, *(this + 1), 0x63696273u, &v10, &v9);
  if (v8)
  {
    v4 = &v10;
  }

  else
  {
    v4 = &v7;
  }

  v5 = *v4;
  v7 = *v4;
  if (v8)
  {
    caulk::expected<unsigned int,int>::value(&v7);
    v5 = (v5 / *(this + 10)) | 0x100000000;
  }

  if ((v5 & 0x100000000) != 0)
  {
    return v5;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void virtual thunk tovp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::~Source_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::~Source_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal *this)
{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::process(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v79[0]) = 0;
    LOBYTE(v84) = 1;
  }

  else
  {
    v61 = 0x18001700000004;
    v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
    v64 = 0;
    v65 = 0;
    v63 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v79, &v61);
    if (SHIBYTE(v65) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v66[0], v63, v65 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((v84 & 1) == 0)
    {
      v55 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v79);
      if ((v84 & 1) == 0 && SHIBYTE(v82) < 0)
      {
        (*(*v83 + 24))(v83, v80, v82 & 0x7FFFFFFFFFFFFFFFLL, 1, v55);
      }

      return;
    }
  }

  if (!a3)
  {
LABEL_115:
    *a5 = 0;
    a5[48] = 1;
    return;
  }

  if (*(*(a4 + 8) + 56))
  {
    v9 = *(a1 + 8);
    v78 = 0;
    v77 = 0;
    v76 = *a4;
    v75 = *(a4 + 16);
    v74 = 0;
    expected_output_frame_count = vp::Audio_Converter::get_expected_output_frame_count((v9 + 8), *(v9 + 208) + v75);
    LODWORD(v67) = expected_output_frame_count;
    BYTE4(v67) = BYTE4(expected_output_frame_count);
    if ((expected_output_frame_count & 0x100000000) == 0)
    {
      v61 = 0x17007F00000000;
      v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
      v64 = 0;
      v65 = 0;
      v63 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
      vp::vx::io::operator<<<char const(&)[57]>(v79, &v61);
      MEMORY[0x2743CBB30](&v81, expected_output_frame_count);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
      v56 = v63;
      v57 = v64;
      v58 = v65;
      v59 = v66[0];
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v72[0] = v61;
      v72[1] = v62;
      v72[2] = v56;
      v72[3] = v57;
      v72[4] = v58;
      v72[5] = v66[0];
      v73 = 0;
      v60 = _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(a5, v72);
      if (v58 < 0)
      {
        (*(*v59 + 24))(v59, v56, v58 & 0x7FFFFFFFFFFFFFFFLL, 1, v60);
      }

      return;
    }

    caulk::expected<unsigned int,int>::value(&v67);
    LODWORD(v72[0]) = v67;
    v73 = 1;
    v11 = *(v9 + 272);
    v79[0] = v9;
    v79[1] = &v75;
    v80 = &v76;
    v81 = &v74;
    v82 = &v78;
    v83 = &v77;
    v84 = &v78 + 4;
    v61 = caulk::function_ref<BOOL ()(AudioBufferList *,unsigned int)>::functor_invoker<vp::vx::io::wires::Audio_Converter_Wire::source_process(vp::vx::io::Node_Process_Data const&)::$_1>;
    v62 = v79;
    v12 = *(v9 + 264);
    if (v12)
    {
      v13 = v11;
      v14 = (v11 + v67);
      v67 = *(v12 + 72);
      v15 = *(v12 + 88);
      v16 = *(v12 + 24);
      v17 = v14 - v11 == v16;
      if (v14 - v11 >= v16)
      {
LABEL_41:
        if (!v17)
        {
          goto LABEL_97;
        }

        *(v12 + 72) = v13;
        *(v12 + 80) = v14;
        *(v12 + 88) = 0;
        {
          goto LABEL_97;
        }

LABEL_94:
        if (v75)
        {
          v43 = *(v9 + 200);
          if (v43)
          {
            v44 = *(v43 + 80);
          }

          else
          {
            v44 = 0;
          }

          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v79, v44);
          v48 = v79[0];
          v49 = *(v9 + 208);
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v79, v76);
          if ((vp::for_each_buffer_pair(v48, v49, v79[0], v74, vp::copy, v75) & 1) == 0)
          {
            v61 = 0x1700DF00000000;
            v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
            v64 = 0;
            v65 = 0;
            v63 = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
            vp::vx::io::operator<<<char const(&)[41]>(v79, &v61, "failed to write into source audio buffer");
            vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
            v54 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v61);
            if (SHIBYTE(v65) < 0)
            {
              (*(*v66[0] + 24))(v66[0], v63, v65 & 0x7FFFFFFFFFFFFFFFLL, 1, v54);
            }

            return;
          }

          *(v9 + 208) += v75;
        }

        v50 = *(a4 + 8);
        if (*(v9 + 240) & 1) == 0 && (*(v50 + 56))
        {
          *(v9 + 232) = *v50;
          *(v9 + 240) = 1;
          v50 = *(a4 + 8);
        }

        if (*(v9 + 256) & 1) == 0 && (*(v50 + 56))
        {
          *(v9 + 248) = *v50;
          *(v9 + 256) = 1;
          v50 = *(a4 + 8);
        }

        if ((*(v9 + 224) & 1) == 0 && (*(v50 + 56) & 2) != 0)
        {
          *(v9 + 216) = *(v50 + 1);
          *(v9 + 224) = 1;
          v50 = *(a4 + 8);
        }

        v51 = *v50;
        v52 = v50[1];
        v53 = v50[2];
        *(v9 + 184) = v50[3];
        *(v9 + 168) = v53;
        *(v9 + 152) = v52;
        *(v9 + 136) = v51;
        LODWORD(v51) = v78;
        *(v9 + 272) = *(v9 + 272) + v51;
        goto LABEL_115;
      }

      v18 = *(v12 + 72);
      v19 = *(v12 + 80);
      if (v18 >= v13)
      {
        if (v19 <= v18)
        {
          v29 = 0;
          v30 = 0;
          if (v14 >= v13 + v16)
          {
            v21 = v13 + v16;
          }

          else
          {
            v21 = v14;
          }

          v34 = v15 - v18 + v13;
          v23 = v11;
        }

        else
        {
          if (v14 <= v13)
          {
            v31 = v11;
          }

          else
          {
            v31 = *(v12 + 72);
          }

          if (v19 <= v14)
          {
            v32 = v14;
          }

          else
          {
            v32 = *(v12 + 80);
          }

          if (v19 >= v14)
          {
            v33 = v14;
          }

          else
          {
            v33 = *(v12 + 80);
          }

          if (v14 > v13)
          {
            v23 = v11;
          }

          else
          {
            v32 = *(v12 + 80);
            v23 = *(v12 + 72);
          }

          if (v14 <= v13)
          {
            v33 = v14;
          }

          if (v32 >= v23 + v16)
          {
            v21 = v23 + v16;
          }

          else
          {
            v21 = v32;
          }

          v34 = v15 - v18 + v23;
          if (v33 <= v31)
          {
            v29 = *(v12 + 72);
          }

          else
          {
            v29 = 0;
          }

          if (v33 <= v31)
          {
            v30 = v14;
          }

          else
          {
            v30 = 0;
          }
        }

        v35 = v34 % v16;
        *(v12 + 72) = v23;
        *(v12 + 80) = v21;
        if (v34 % v16 >= 0)
        {
          v36 = v34 % v16;
        }

        else
        {
          v36 = -v35;
        }

        if (v36 < v16)
        {
          LODWORD(v24) = ((v35 >> 63) & v16) + v35;
          goto LABEL_78;
        }

LABEL_131:
        _os_crash();
        __break(1u);
        return;
      }

      if (v19 <= v14)
      {
        v20 = v14;
      }

      else
      {
        v20 = *(v12 + 80);
      }

      if (v14 <= v13)
      {
        v20 = *(v12 + 80);
      }

      if (v19 <= v18)
      {
        v21 = v14;
      }

      else
      {
        v21 = v20;
      }

      if (v19 <= v18)
      {
        v22 = v11;
      }

      else
      {
        v22 = *(v12 + 72);
      }

      if (v22 <= v21 - v16)
      {
        v23 = v21 - v16;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v15 - v18 + v23) % v16;
      if (v19 >= v14)
      {
        v25 = v14;
      }

      else
      {
        v25 = *(v12 + 80);
      }

      v26 = v25 <= v13;
      if (v25 <= v13)
      {
        v27 = v11;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = *(v12 + 80);
      }

      else
      {
        v28 = 0;
      }

      if (v19 > v18)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      if (v19 > v18)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      *(v12 + 72) = v23;
      *(v12 + 80) = v21;
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 >= v16)
        {
          _os_crash();
          __break(1u);
          goto LABEL_41;
        }

LABEL_78:
        *(v12 + 88) = v24;
        {
          goto LABEL_97;
        }

        v37 = *(v12 + 72);
        v38 = *(v12 + 80);
        if (v37 <= v30)
        {
          v39 = v30;
        }

        else
        {
          v39 = *(v12 + 72);
        }

        if (v29 >= v38)
        {
          v40 = *(v12 + 80);
        }

        else
        {
          v40 = v29;
        }

        if (v29 <= v30)
        {
          v40 = v29;
          v39 = v30;
        }

        v41 = v38 > v37 ? v40 : *(v12 + 80);
        v42 = v38 > v37 ? v39 : *(v12 + 72);
        {
LABEL_97:
          *(v12 + 72) = v67;
          *(v12 + 88) = v15;
          *&v67 = 0x1300CD00000000;
          *(&v67 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
          v69 = 0;
          v70 = 0;
          v68 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v71);
          vp::vx::io::operator<<<char const(&)[51]>(v79, &v67, "failed to write into destination audio ring buffer");
          vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
          if (HIDWORD(v78))
          {
            vp::vx::io::operator<<<char const(&)[55]>(&v61, &v67, " because audio converter failed to render with status ");
            MEMORY[0x2743CBB30](&v64, HIDWORD(v78));
            vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v61);
          }

          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v67);
          if (SHIBYTE(v70) < 0)
          {
            v45 = v68;
            v47 = v70;
            v46 = v71;
LABEL_101:
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v46, v45, v47 & 0x7FFFFFFFFFFFFFFFLL);
            return;
          }

          return;
        }

        goto LABEL_94;
      }
    }

    else
    {
      _os_crash();
      __break(1u);
    }

    _os_crash();
    __break(1u);
    goto LABEL_131;
  }

  v61 = 0x13006E00000000;
  v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
  v64 = 0;
  v65 = 0;
  v63 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
  vp::vx::io::operator<<<char const(&)[49]>(v79, &v61, "audio time stamp does not have valid sample time");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v61);
  if (SHIBYTE(v65) < 0)
  {
    v45 = v63;
    v47 = v65;
    v46 = v66[0];
    goto LABEL_101;
  }
}

void sub_2725C1988(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  if (SHIBYTE(a14) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a15, a12, a14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  __clang_call_terminate(a1);
}

void vp::vx::io::operator<<<char const(&)[57]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "audio converter failed pre-flight operation with status ", 56);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725C1A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(uint64_t a1, int *a2)
{
  v3 = *a2;
  v9 = *a2;
  v4 = *(a2 + 2);
  v10 = v4;
  v5 = *(a2 + 3);
  v11 = v5;
  v6 = *(a2 + 1);
  v7 = *(a2 + 5);
  v12 = v6;
  v15 = v7;
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(&v13, *(a2 + 2), *(a2 + 3));
    v3 = v9;
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v15;
  }

  else
  {
    v13 = *(a2 + 1);
    v14 = *(a2 + 4);
  }

  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 6) = v5;
  *(a1 + 8) = v6;
  result = *&v13;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  return result;
}

void vp::vx::io::operator<<<char const(&)[51]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C1BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[55]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C1C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[41]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C1CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

BOOL caulk::function_ref<BOOL ()(AudioBufferList *,unsigned int)>::functor_invoker<vp::vx::io::wires::Audio_Converter_Wire::source_process(vp::vx::io::Node_Process_Data const&)::$_1>(uint64_t **a1, AudioBufferList *outOutputData, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  v12 = v4;
  v13 = *(v3 + 1);
  v14 = v3[3];
  v15[0] = _ZN5caulk12function_refIFiR15AudioBufferListRjEE15functor_invokerIZZN2vp2vx2io5wires20Audio_Converter_Wire14source_processERKNS9_17Node_Process_DataEENK3__1clIS1_jEEDaPT_T0_EUlRSI_RSK_E_EEiRKNS_7details15erased_callableIS4_EES2_S3_;
  v15[1] = &v12;
  if (_ZN5caulk12function_refIFiR15AudioBufferListRjEE15functor_invokerIZZN2vp2vx2io5wires20Audio_Converter_Wire14source_processERKNS9_17Node_Process_DataEENK3__1clIS1_jEEDaPT_T0_EUlRSI_RSK_E_EEiRKNS_7details15erased_callableIS4_EES2_S3_ == caulk::function_ref<int ()(AudioBufferList &,unsigned int &)>::empty_invoker)
  {
    v16 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    inInputDataProcUserData = 0u;
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v17 = 134217984;
    v18 = 0;
    _os_log_send_and_compose_impl(v9, &v16, &inInputDataProcUserData, 80, &dword_2724B4000, v8, 16, "assertion failure: callback != nullptr -> %llu", &v17);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v16 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    inInputDataProcUserData = 0u;
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 134217984;
    v18 = 0;
    _os_log_send_and_compose_impl(v11, &v16, &inInputDataProcUserData, 80, &dword_2724B4000, v10, 16, "assertion failure: output_audio_buffer_list != nullptr -> %llu", &v17);
    _os_crash_msg();
    __break(1u);
  }

  if (!outOutputData)
  {
    goto LABEL_11;
  }

  *&inInputDataProcUserData = v15;
  DWORD2(inInputDataProcUserData) = 0;
  HIDWORD(inInputDataProcUserData) = a3;
  v5 = AudioConverterFillComplexBuffer(*(v4 + 8), vp::$_4::__invoke<OpaqueAudioConverter *,unsigned int,AudioBufferList,AudioStreamPacketDescription **>, &inInputDataProcUserData, &inInputDataProcUserData + 3, outOutputData, 0);
  if (v5)
  {
    *v3[6] = v5;
  }

  else
  {
    v6 = DWORD2(inInputDataProcUserData);
    *v3[4] += HIDWORD(inInputDataProcUserData);
    *v3[5] += v6;
  }

  return v5 == 0;
}

void sub_2725C1F30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZN5caulk12function_refIFiR15AudioBufferListRjEE15functor_invokerIZZN2vp2vx2io5wires20Audio_Converter_Wire14source_processERKNS9_17Node_Process_DataEENK3__1clIS1_jEEDaPT_T0_EUlRSI_RSK_E_EEiRKNS_7details15erased_callableIS4_EES2_S3_(uint64_t **a1, unsigned int *a2, unsigned int *a3)
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(v6 + 208);
  v8 = *a3;
  if (v7)
  {
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = *(v6 + 200);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v17, v11);
    v12 = vp::for_each_buffer_pair(a2, 0, v17, 0, vp::copy, v9);
    *(v6 + 208) -= v9;
    v8 = *a3 - v9;
    *a3 = v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v12 = 1;
  }

  v13 = *v5[1];
  if (v13 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v17, *v5[2]);
  v15 = vp::for_each_buffer_pair(a2, v9, v17, *v5[3], vp::copy, v14);
  *v5[3] += v14;
  *v5[1] -= v14;
  *a3 = v14 + v9;
  if ((v15 & v12) != 0)
  {
    return 0;
  }

  else
  {
    return 2003329396;
  }
}

void *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(void **__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = (*(*__dst[3] + 16))(__dst[3], v6, 1);
    v5[1] = a3;
    v5[2] = (v6 | 0x8000000000000000);
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    *(__dst + 23) = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::get_time@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 152);
  *a2 = *(v2 + 136);
  *(a2 + 16) = v3;
  result = *(v2 + 168);
  v5 = *(v2 + 184);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  *(a2 + 64) = 1;
  return result;
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::get_format@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  result = *(v2 + 16);
  v4 = *(v2 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 48);
  *(a2 + 48) = 1;
  return result;
}

void virtual thunk tovp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::~Destination_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::~Destination_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal *this)
{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::process(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, AudioBufferList **a4@<X3>, _BYTE *a5@<X8>, unint64_t a6@<D1>)
{
  if (a2)
  {
    v25 = 0x18001700000004;
    v26 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
    v28 = 0;
    v29 = 0;
    v27 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v30);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v20, &v25);
    if (SHIBYTE(v29) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((v24 & 1) == 0)
    {
      v19 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v20);
      if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
      {
        (*(*v23 + 24))(v23, v21, v22 & 0x7FFFFFFFFFFFFFFFLL, 1, v19);
      }

      return;
    }
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v24 = 1;
  }

  if (a3)
  {
LABEL_11:
    *a5 = 0;
    a5[48] = 1;
    return;
  }

  v10 = *(a1 + 8);
  v11 = *a4;
  v12 = a4[1];
  v13 = *(v10 + 336);
  LODWORD(a6) = *(a4 + 4);
  v14 = a6;
  if (*(v10 + 224) == 1)
  {
    v15 = *(v10 + 192);
    if (v15 & 2) != 0 && (v15 & 1) != 0 && (*(v10 + 240))
    {
      *(v10 + 344) = (*(v10 + 144) + llround((v13 / *(v10 + 56) - (*(v10 + 136) / *(v10 + 16) - *(v10 + 232) / *(v10 + 16))) * 24000000.0));
      *(v10 + 392) |= 2u;
    }
  }

  if (vp::Audio_Ring_Buffer::read(*(v10 + 264), v11, v13, (v13 + a6)))
  {
    v16 = *(v10 + 336);
    v17 = *(v10 + 352);
    v18 = *(v10 + 384);
    v12[1].mBuffers[0] = *(v10 + 368);
    *&v12[2].mNumberBuffers = v18;
    *&v12->mNumberBuffers = v16;
    *&v12->mBuffers[0].mData = v17;
    *(v10 + 336) = *(v10 + 336) + v14;
    goto LABEL_11;
  }

  v25 = 0x13014500000000;
  v26 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
  v28 = 0;
  v29 = 0;
  v27 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v30);
  vp::vx::io::operator<<<char const(&)[50]>(v20, &v25, "failed to read from destination audio ring buffer");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v20);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v25);
  if (SHIBYTE(v29) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[50]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::get_time@<Q0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = 272;
  if (!a2)
  {
    v3 = 336;
  }

  v4 = *(a1 + 8) + v3;
  v5 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  *(a3 + 64) = 1;
  return result;
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::get_format@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  result = *(v2 + 56);
  v4 = *(v2 + 72);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 88);
  *(a2 + 48) = 1;
  return result;
}

void vp::vx::components::Audio_Data_Analysis::get_dsp_property_override(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 1 && a3 == 1633968493)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = 561211748;
    }

    v11 = 6;
    strcpy(bytes, "UInt64");
    v12 = CFStringCreateWithBytes(0, bytes, 6, 0x8000100u, 0);
    if (!v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (v11 < 0)
    {
      operator delete(*bytes);
    }

    *bytes = v6;
    cf = CFNumberCreate(0, kCFNumberLongLongType, bytes);
    if (!cf)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }

    v9[0] = &v12;
    v9[1] = 1;
    *a4 = applesauce::CF::details::make_CFDictionaryRef(v9);
    *(a4 + 24) = 1;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    *(a4 + 24) = 0;
  }
}

void sub_2725C2848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a18);
  applesauce::CF::TypeRef::~TypeRef(&a17);
  _Unwind_Resume(a1);
}

void vp::vx::components::Audio_Data_Analysis::end_configuration_change(vp *result, int a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    log = vp::get_log(result);
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      log_context_info = vp::get_log_context_info(__p, result, "vp::vx::components::Audio_Data_Analysis]", 39);
      v7 = v15;
      v8 = v15;
      v9 = __p[1];
      v10 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (v8 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = __p[0];
        if (v8 >= 0)
        {
          v12 = __p;
        }

        *buf = 136315906;
        v17 = v12;
        if (v11)
        {
          v13 = " ";
        }

        else
        {
          v13 = "";
        }

        v18 = 2080;
        v19 = v13;
        v20 = 2080;
        v21 = "uplink";
        v22 = 1024;
        v23 = a3;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%send %s configuration changes with error %u", buf, 0x26u);
        LOBYTE(v8) = v15;
      }

      if ((v8 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    vp::vx::components::Audio_Data_Analysis::unregister_listeners(result);
    vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(result);
  }
}

void vp::vx::components::Audio_Data_Analysis::unregister_listeners(int *this)
{
  v1 = this[18];
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 12, v1);
    this[18] = 0;
    vp::vx::data_flow::State<void>::unregister_listener(this + 20, this[26]);
    this[26] = 0;
  }
}

void vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(vp::vx::components::Audio_Data_Analysis *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
    v4 = *(this + 17);
    *(this + 16) = 0;
    *(this + 17) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    log = vp::get_log(v4);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Data_Analysis]", 39);
      v7 = v15;
      v8 = v15;
      v9 = __p[1];
      v10 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = __p[0];
        if (v8 >= 0)
        {
          v12 = __p;
        }

        *buf = 136315650;
        v17 = v12;
        if (v11)
        {
          v13 = " ";
        }

        else
        {
          v13 = "";
        }

        v18 = 2080;
        v19 = v13;
        v20 = 2048;
        v21 = v3;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed audio data analysis client with session ID %llu", buf, 0x20u);
        LOBYTE(v8) = v15;
      }

      if ((v8 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void vp::vx::components::Audio_Data_Analysis::end_configuration_change(vp *a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    log = vp::get_log(a1);
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v5 = v27;
      v6 = v27;
      v7 = *&__p[8];
      v8 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (v6 >= 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = v7;
        }

        v10 = *__p;
        if (v6 >= 0)
        {
          v10 = __p;
        }

        if (v9)
        {
          v11 = " ";
        }

        else
        {
          v11 = "";
        }

        *v23 = 136315650;
        *&v23[4] = v10;
        *&v23[12] = 2080;
        *&v23[14] = v11;
        v24 = 2080;
        v25 = "uplink";
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%send %s configuration changes", v23, 0x20u);
        LOBYTE(v6) = v27;
      }

      if ((v6 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = (*(*v12 + 56))(v12);
      if ((v13 & 1) == 0)
      {
        v14 = vp::get_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = vp::get_log_context_info(v23, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
          v16 = HIBYTE(v24);
          v17 = SHIBYTE(v24);
          v18 = *&v23[8];
          v19 = vp::get_log(v15);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if (v17 >= 0)
            {
              v20 = v16;
            }

            else
            {
              v20 = v18;
            }

            v21 = *v23;
            if (v17 >= 0)
            {
              v21 = v23;
            }

            if (v20)
            {
              v22 = " ";
            }

            else
            {
              v22 = "";
            }

            *__p = 136315394;
            *&__p[4] = v21;
            *&__p[12] = 2080;
            *&__p[14] = v22;
            _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize audio data analysis client", __p, 0x16u);
            LOBYTE(v17) = HIBYTE(v24);
          }

          if ((v17 & 0x80) != 0)
          {
            operator delete(*v23);
          }
        }
      }
    }
  }
}

void vp::vx::components::Audio_Data_Analysis::begin_configuration_change(uint64_t a1, int a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    return;
  }

  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
    v5 = __p[23];
    v6 = __p[23];
    v7 = *&__p[8];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      v10 = *__p;
      if (v6 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315650;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      *&buf[22] = 2080;
      v48 = "uplink";
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_INFO, "%s%sbegin %s configuration changes", buf, 0x20u);
      LOBYTE(v6) = __p[23];
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  vp::vx::components::Audio_Data_Analysis::unregister_listeners(a1);
  vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(a1);
  v12 = *(a1 + 112);
  default_resource = std::pmr::get_default_resource(v13);
  *&buf[8] = 0uLL;
  *buf = default_resource;
  vp::vx::data_flow::State<void>::get_value((a1 + 48), buf);
  v15 = vp::vx::data_flow::Value::view_storage(buf);
  *__p = *v15;
  *&__p[16] = *(v15 + 16);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  vp::vx::data_flow::Value::~Value(buf);
  (*(*v12 + 16))(v45, v12, __p);
  if (v45[0])
  {
    operator new();
  }

  v45[0] = 0;
  v16 = *(a1 + 136);
  *(a1 + 128) = 0u;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    v17 = v45[0];
    v18 = *(a1 + 128) == 0;
    v45[0] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  else
  {
    v18 = 1;
    v45[0] = 0;
  }

  v19 = *__p;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if (v18)
  {
    v20 = vp::get_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = vp::get_log_context_info(buf, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v22 = buf[23];
      v23 = buf[23];
      v24 = *&buf[8];
      v25 = vp::get_log(v21);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (v23 >= 0)
        {
          v26 = v22;
        }

        else
        {
          v26 = v24;
        }

        v27 = *buf;
        if (v23 >= 0)
        {
          v27 = buf;
        }

        if (v26)
        {
          v28 = " ";
        }

        else
        {
          v28 = "";
        }

        *__p = 136315394;
        *&__p[4] = v27;
        *&__p[12] = 2080;
        *&__p[14] = v28;
        _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_ERROR, "%s%sfailed to create audio data analysis client", __p, 0x16u);
        LOBYTE(v23) = buf[23];
      }

      if ((v23 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    v29 = *(a1 + 144);
    v30 = *(v29 + 16);
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    if (!v30)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v31 = (*(**(a1 + 128) + 16))(*(a1 + 128));
    v32 = vp::get_log(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v34 = __p[23];
      v35 = __p[23];
      v36 = *&__p[8];
      v37 = vp::get_log(v33);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        if (v35 >= 0)
        {
          v38 = v34;
        }

        else
        {
          v38 = v36;
        }

        v39 = *__p;
        if (v35 >= 0)
        {
          v39 = __p;
        }

        *buf = 136315650;
        *&buf[4] = v39;
        if (v38)
        {
          v40 = " ";
        }

        else
        {
          v40 = "";
        }

        *&buf[12] = 2080;
        *&buf[14] = v40;
        *&buf[22] = 2048;
        v48 = v31;
        _os_log_impl(&dword_2724B4000, v37, OS_LOG_TYPE_DEFAULT, "%s%screated audio data analysis client with session ID %llu", buf, 0x20u);
        LOBYTE(v35) = __p[23];
      }

      if ((v35 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v42 = *(a1 + 136);
    v41 = *(a1 + 144);
    v43 = *(a1 + 128);
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = *(v41 + 16);
    *(v41 + 8) = v43;
    *(v41 + 16) = v42;
    if (!v30)
    {
      goto LABEL_57;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
LABEL_57:
  if (*(a1 + 128))
  {
    v44 = *(a1 + 136);
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v44 + 16), 1uLL, memory_order_relaxed);
    }

    v45[3] = 0;
    operator new();
  }
}

void sub_2725C34BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::vector<long long> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::StringRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::StringRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5A90;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5A90;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::operator()(void *a1, const void **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        v9 = *a2;
        if (v9)
        {
          CFRetain(v9);
        }

        cf = v9;
        v10 = (*(*v8 + 32))(v8, &cf);
        v11 = cf;
        if (cf)
        {
          CFRelease(cf);
        }

        if ((v10 & 1) == 0)
        {
          log = vp::get_log(v11);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            log_context_info = vp::get_log_context_info(__p, v5, "vp::vx::components::Audio_Data_Analysis]", 39);
            v14 = v22;
            v15 = v22;
            v16 = __p[1];
            v17 = vp::get_log(log_context_info);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              if (v15 >= 0)
              {
                v18 = v14;
              }

              else
              {
                v18 = v16;
              }

              v19 = __p[0];
              if (v15 >= 0)
              {
                v19 = __p;
              }

              if (v18)
              {
                v20 = " ";
              }

              else
              {
                v20 = "";
              }

              *buf = 136315394;
              v25 = v19;
              v26 = 2080;
              v27 = v20;
              _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%s%sfailed to set audio application bundle ID", buf, 0x16u);
              LOBYTE(v15) = v22;
            }

            if ((v15 & 0x80) != 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_2725C3CDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B2DC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2DC0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2DC0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::compare_value(uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = ((*a2)[1] - v4);
  return v5 == (*(v3 + 8) - *v3) && memcmp(v4, *v3, v5) == 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::destroy_value(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    (*a2)[1] = v2;
    operator delete(v2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v3->n128_u64[0] = 0;
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  result = *v4;
  *v3 = *v4;
  v3[1].n128_u64[0] = v4[1].n128_u64[0];
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

uint64_t *vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::copy_value(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v3, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 3);
}

uint64_t *std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725C404C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D30;
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D30;
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::operator()(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        v9 = (*(*v8 + 24))(v8, a2);
        if ((v9 & 1) == 0)
        {
          log = vp::get_log(v9);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            log_context_info = vp::get_log_context_info(__p, v5, "vp::vx::components::Audio_Data_Analysis]", 39);
            v12 = v20;
            v13 = v20;
            v14 = __p[1];
            v15 = vp::get_log(log_context_info);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              if (v13 >= 0)
              {
                v16 = v12;
              }

              else
              {
                v16 = v14;
              }

              v17 = __p[0];
              if (v13 >= 0)
              {
                v17 = __p;
              }

              if (v16)
              {
                v18 = " ";
              }

              else
              {
                v18 = "";
              }

              *buf = 136315394;
              v22 = v17;
              v23 = 2080;
              v24 = v18;
              _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%s%sfailed to update audio data analysis client reporter IDs", buf, 0x16u);
              LOBYTE(v13) = v20;
            }

            if ((v13 & 0x80) != 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B2D78;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D78;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D78;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::services::Audio_Data_Analysis::Client  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::services::Audio_Data_Analysis::Client  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Audio_Data_Analysis::configure(vp::vx::components::Audio_Data_Analysis *this)
{
  v70 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Data_Analysis]", 39);
    v4 = v68[15];
    v5 = v68[15];
    v6 = *v68;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      p_p = __p;
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v68[15];
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *(this + 14);
  v11 = *(this + 15);
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_107:
    _os_crash();
    __break(1u);
    goto LABEL_108;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v12)
  {
    goto LABEL_107;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_18:
  v13 = *(this + 3);
  if (!v13 || (v14 = std::__shared_weak_count::lock(v13)) == 0 || (v15 = v14, v16 = *(this + 2), atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), !v16))
  {
    _os_crash();
    __break(1u);
    goto LABEL_119;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  v17 = *(this + 5);
  if (!v17 || (v18 = std::__shared_weak_count::lock(v17), (v19 = v18) == 0) || (v20 = *(this + 4), atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed), !v20))
  {
LABEL_119:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  (*(*v20 + 16))(&__p, v20, 72);
  *buf = __p;
  *&buf[8] = *v68;
  *v68 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  vp::vx::data_flow::State<void>::~State(this + 12);
  *(this + 12) = *buf;
  *(this + 56) = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v20 + 16))(&__p, v20, 58);
  LODWORD(v57) = __p;
  v58 = *v68;
  *v68 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  __p = &unk_2881B2CB0;
  *v68 = v12;
  *&v68[8] = v11;
  *&v68[16] = &__p;
  v21 = *(this + 12);
  v64 = v57;
  v65 = v21;
  vp::vx::data_flow::State_Manager::create_state(buf, (v16 + 48), &__p);
  LODWORD(v60) = *buf;
  *cf = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&__p);
  LODWORD(__p) = v60;
  *v68 = *cf;
  cf[0] = 0;
  cf[1] = 0;
  vp::vx::data_flow::State<void>::~State(&v60);
  vp::vx::data_flow::State<void>::~State(this + 20);
  *(this + 20) = __p;
  *(this + 88) = *v68;
  *v68 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  vp::vx::data_flow::State<void>::~State(&v57);
  v22 = *(this + 1);
  __p = 0;
  *v68 = v22;
  *&v68[8] = xmmword_272756560;
  v23 = (*(*v22 + 16))(v22, 88, 8);
  *(v23 + 72) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = &unk_2881B30B0;
  default_resource = std::pmr::get_default_resource(v23);
  *(v23 + 24) = default_resource;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 56) = std::pmr::get_default_resource(default_resource);
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::reset[abi:ne200100](&__p, v23);
  v64 = 42;
  applesauce::CF::StringRef::from_get(&v66, @"epout");
  v25 = __p;
  v26 = *(__p + 8);
  v27 = *(__p + 9);
  if (!v26 && v27)
  {
LABEL_108:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v28 = *(__p + 8);
  if (v27)
  {
    v28 = *(__p + 8);
    v29 = *(__p + 9);
    do
    {
      if (v29 != 1 && !v28)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v28)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v30 = v29 >> 1;
      v31 = &v28[24 * (v29 >> 1)];
      if (*v31 >= 2u)
      {
        v32 = 1;
      }

      else
      {
        v32 = 255;
      }

      if (*v31 == 2)
      {
        v32 = *(v31 + 1) != 0;
      }

      v33 = v31 + 24;
      v29 += ~v30;
      if (v32 < 0x80)
      {
        v29 = v30;
      }

      else
      {
        v28 = v33;
      }
    }

    while (v29);
  }

  v34 = &v26[24 * v27];
  if (v28 != v34)
  {
    if (!v28)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v28 <= 2u)
    {
      v35 = 1;
    }

    else
    {
      v35 = 255;
    }

    if (*v28 == 2)
    {
      if (!*(v28 + 1))
      {
        goto LABEL_91;
      }
    }

    else if (v35 < 0x80)
    {
      goto LABEL_91;
    }
  }

  v57 = 0;
  *&v58 = 0;
  v60 = 2;
  LODWORD(cf[0]) = 0;
  *buf = 2;
  *&buf[8] = 0;
  *&buf[16] = 0;
  v36 = v26 > v28 || v28 > v34;
  cf[1] = 0;
  if (v36)
  {
    v53 = "this->priv_in_range_or_end(hint)";
    v54 = 879;
    v55 = "flat_tree.hpp";
    v56 = "insert_unique";
    goto LABEL_114;
  }

  v62 = 0;
  if (v28 == v34)
  {
    v38 = v34;
  }

  else
  {
    if (!v28)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v37 = 255;
    if (*v28 <= 2u)
    {
      v37 = 1;
    }

    if (*v28 == 2)
    {
      v38 = v28;
      if (!*(v28 + 1))
      {
LABEL_64:
        v63 = v34;
        if ((boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::priv_insert_unique_prepare(v28, &v63, 2u, 0, &v62) & 1) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v38 = v28;
      if (v37 < 0x80)
      {
        goto LABEL_64;
      }
    }
  }

  v62 = v28;
  if (v38 == v26)
  {
    goto LABEL_73;
  }

  if (!v38)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v39 = *(v38 - 6);
  if (v39 != 2)
  {
    if (v39 < 2)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (*(v38 - 5))
  {
LABEL_72:
    v63 = v38 - 24;
    if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::priv_insert_unique_prepare(v26, &v63, 2u, 0, &v62))
    {
      goto LABEL_84;
    }

LABEL_73:
    v28 = v62;
    v40 = *(v25 + 8);
    if (v40 > v62)
    {
      goto LABEL_111;
    }

    v41 = *(v25 + 9);
    if (!v40 && v41)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v42 = v40 + 24 * v41;
    if (v62 > v42)
    {
LABEL_111:
      v53 = "this->priv_in_range_or_end(position)";
      v54 = 1862;
      v55 = "vector.hpp";
      v56 = "emplace";
    }

    else
    {
      v43 = *(v25 + 10);
      if (v43 >= v41)
      {
        if (v43 == v41)
        {
          boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>(&v59, v25 + 56, v62, buf);
          v28 = v59;
        }

        else if (v42 == v62)
        {
          *v42 = *buf;
          *(v42 + 8) = *&buf[8];
          *(v42 + 16) = *&buf[16];
          *&buf[16] = 0;
          ++*(v25 + 9);
        }

        else
        {
          v44 = v42 - 24;
          v45 = *(v42 - 24);
          *(v42 + 8) = *(v42 - 16);
          *(v42 + 16) = *(v42 - 8);
          *(v42 - 8) = 0;
          *v42 = v45;
          ++*(v25 + 9);
          if ((v42 - 24) != v28)
          {
            v46 = (v42 - 24);
            do
            {
              v47 = *(v46 - 3);
              v46 -= 24;
              *(v44 + 8) = *(v44 - 16);
              v48 = *(v44 + 16);
              *(v44 + 16) = *(v44 - 8);
              *(v44 - 8) = v48;
              *v44 = v47;
              v44 = v46;
            }

            while (v46 != v28);
          }

          *v28 = *buf;
          *(v28 + 1) = *&buf[4];
          *(v28 + 2) = *&buf[8];
          v49 = *(v28 + 2);
          *(v28 + 2) = *&buf[16];
          *&buf[16] = v49;
        }

        goto LABEL_88;
      }

      v53 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v54 = 2821;
      v55 = "vector.hpp";
      v56 = "priv_insert_forward_range";
    }

LABEL_114:
    __assert_rtn(v56, v55, v54, v53);
  }

  v62 = v38 - 24;
LABEL_84:
  v28 = v62;
  if (!*(v25 + 8) && v62)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_88:
  std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(*&buf[16]);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (!v28)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

LABEL_91:
  *(v28 + 2) = v64;
  v50 = *(v28 + 2);
  v51 = v66;
  *(v28 + 2) = v66;
  if (v51)
  {
    CFRetain(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (__p)
  {
    operator new();
  }

  __p = 0;
  v52 = *(this + 19);
  *(this + 9) = 0u;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::reset[abi:ne200100](&__p, 0);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_2725C508C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>::operator()((result + 1), v3);
  }

  return result;
}

void vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point::~Tap_Point(vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>::operator()(uint64_t a1, void *a2)
{
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(a2 + 7);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(a2 + 3);
  v4 = a2[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(**a1 + 24);

  return v5();
}

void *boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 16);
    do
    {
      --v2;
      v4 = *v3;
      v3 += 3;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(v4);
    }

    while (v2);
  }

  v5 = a1[3];
  if (v5)
  {
    (*(**a1 + 24))(*a1, a1[1], 24 * v5, 8);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__shared_ptr_pointer<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory *,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>,std::allocator<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *v7;
  if (*v7 > 6)
  {
    goto LABEL_34;
  }

  if (((1 << v10) & 0x62) != 0)
  {
    v11 = @"com.apple.mobilephone";
    goto LABEL_12;
  }

  if (((1 << v10) & 0x14) != 0)
  {
    v11 = @"com.apple.facetime";
LABEL_12:
    applesauce::CF::StringRef::from_get(&v22, v11);
    goto LABEL_13;
  }

  if (v10)
  {
LABEL_34:
    v22 = 0;
    goto LABEL_13;
  }

  v14 = *(*(a1 + 8) + 8);
  vp::Service::get_service_provider(v14);
  vp::Service_Provider::get<vp::services::Audio_Statistics,(decltype(nullptr))0>(&v26, v14);
  if (v26)
  {
    v15 = *v9;
    v16 = v9[1];
    if (*v9 != v16)
    {
      v17 = 0;
      while (1)
      {
        v18 = *v15;
        v19 = v26;
        if (((*(*v26 + 32))(v26, *v15) & 0xFFFFFFFD) != 0)
        {
          v20 = v17;
          goto LABEL_32;
        }

        (*(*v19 + 40))(&v25, v19, v18);
        if (v25)
        {
          cf = 0;
          applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[25]>(&v24, v25, "HostApplicationDisplayID", &cf);
          v20 = v24;
          v24 = v17;
          if (v17)
          {
            CFRelease(v17);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v20)
          {
            v21 = 0;
            goto LABEL_29;
          }

          v17 = 0;
        }

        v21 = 1;
        v20 = v17;
LABEL_29:
        if (v25)
        {
          CFRelease(v25);
        }

        if (!v21)
        {
          goto LABEL_36;
        }

LABEL_32:
        ++v15;
        v17 = v20;
        if (v15 == v16)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v20 = 0;
LABEL_36:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v22 = v20;
LABEL_13:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v22;
  return result;
}

uint64_t vp::Service::get_service_provider(uint64_t this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v3 = 0;
    memset(v6, 0, sizeof(v6));
    v1 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    v4 = 134217984;
    v5 = 0;
    _os_log_send_and_compose_impl(v2, &v3, v6, 80, &dword_2724B4000, v1, 16, "assertion failure: m_service_provider != nullptr -> %llu", &v4);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

void sub_2725C56BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *vp::Service_Provider::get<vp::services::Audio_Statistics,(decltype(nullptr))0>(void *a1, uint64_t a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v11, a2 + 16, &vp::Service_Interface<1634956403u>::k_service_type_id);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v11;
  if (v11 == (v5 + 16 * v6))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(v10, *a2, *(a2 + 8));
    v9 = v10[1];
    *a1 = *(v8 + 1);
    a1[1] = v9;
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[25]>(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v8 = strlen(__s);
  v9 = CFStringCreateWithBytes(0, __s, v8, 0x8000100u, 0);
  cf = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a2, v9);
  CFRelease(cf);
  if (Value)
  {
    CFRetain(Value);
    v11 = CFGetTypeID(Value);
    if (v11 == CFStringGetTypeID())
    {
      CFRetain(Value);
      *a1 = Value;
      CFRelease(Value);
      return;
    }

    CFRelease(Value);
  }

  *a1 = *a4;
  *a4 = 0;
}

void sub_2725C5898(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725C5830);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(unsigned int **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15 = v3;
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

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>*,true>,unsigned int>(a1, &v15, v3 + 16 * v4, *a3);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
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

  v13 = (v10 + 16 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v14)
    {
      *a1 = v13;
    }
  }

  return result;
}

void *std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Operation_Mode>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B2CB0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EED0Ev(void *a1)
{
  *a1 = &unk_2881B2CB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EED1Ev(void *a1)
{
  *a1 = &unk_2881B2CB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Audio_Data_Analysis::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 40);
  *(a1 + 32) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Data_Analysis::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Data_Analysis::~Audio_Data_Analysis(std::__shared_weak_count **this)
{
  vp::vx::components::Audio_Data_Analysis::~Audio_Data_Analysis(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  vp::vx::components::Audio_Data_Analysis::unregister_listeners(this);
  vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(this);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Data_Analysis]", 39);
    v5 = v19;
    v6 = v19;
    v7 = __p[1];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      v10 = __p[0];
      if (v6 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v21 = v10;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v6) = v19;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = this[21];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[19];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = this[17];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = this[15];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  vp::vx::data_flow::State<void>::~State(this + 20);
  vp::vx::data_flow::State<void>::~State(this + 12);
  v16 = this[5];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = this[3];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void virtual thunk tovp::vx::components::Audio_Data_Analysis::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Data_Analysis::Node_Decorator *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 7);
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *v1 = off_2881B2F38;
  v1[17] = off_2881B2FD0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[17] = &unk_2881C6630;
  v4 = v1[19];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 7);
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *v1 = off_2881B2F38;
  v1[17] = off_2881B2FD0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[17] = &unk_2881C6630;
  v4 = v1[19];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}