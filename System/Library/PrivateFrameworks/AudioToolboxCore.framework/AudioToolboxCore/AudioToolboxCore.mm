const __CFNumber *___ZN14IPCAURegistrar43ApplicationStateChangedNotificationCallbackEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *v6 = 0;
  result = GetNumber(v2, *MEMORY[0x1E69D4330], &v6[1]);
  if (v6[1] == 8)
  {
    result = GetNumber(v2, *MEMORY[0x1E69D4348], v6);
    if (v6[0])
    {
      for (i = *(v1 + 232); i != *(v1 + 240); i += 8)
      {
        if (*(*i + 12) == v6[0])
        {
          v5 = 0;
          result = GetString(v2, *MEMORY[0x1E69D4340], &v5);
          if (v5)
          {
            return IPCAURegistrar::RecordApplicationActiveTime(v1, v5);
          }

          return result;
        }
      }
    }
  }

  return result;
}

void IPCAURegistrar::ApplicationStateChangedNotificationCallback(IPCAURegistrar *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = *(a2 + 28);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14IPCAURegistrar43ApplicationStateChangedNotificationCallbackEP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a2;
  v7[5] = a5;
  dispatch_sync(v6, v7);
}

const __CFNumber *GetNumber(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      return (CFNumberGetValue(v5, kCFNumberSInt32Type, a3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSStatus AudioUnitSetProperty(AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitScope inScope, AudioUnitElement inElement, const void *inData, UInt32 inDataSize)
{
  if (!inUnit)
  {
    return -50;
  }

  v6 = *&inDataSize;
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

  if (!*(*((**v12)(v12) + 112) + 32))
  {
    return -4;
  }

  if (!v12[3])
  {
    return -66740;
  }

  v13 = *((**v12)(v12) + 112);
  if (*(v12 + 88) == 1 && (v10 - 48) <= 0x11 && ((0x28001u >> (v10 - 48)) & 1) != 0)
  {
    v14 = v12[3];
    if (v10 == 48)
    {
      if (inData)
      {
        *(v12 + 15) = *inData;
      }

      else
      {
        v12[15] = 0;
        v12[16] = 0;
      }
    }

    else
    {
      if (v10 != 63)
      {
        if (v10 == 65)
        {
          if (v6 != 4)
          {
            return -10851;
          }

          *(v12 + 26) = *inData;
          (*(v13 + 32))(v14, 65, v9, v8, inData, 4);
        }

        return 0;
      }

      if (inData)
      {
        v18 = _Block_copy(*inData);
        v19 = v12[17];
        v12[17] = v18;
      }

      else
      {
        v19 = v12[17];
        v12[17] = 0;
      }
    }

    if (v12[17])
    {
      if (*(v12 + 26))
      {
        operator new();
      }

      v20 = v12[15];
      v21 = 1;
    }

    else
    {
      v20 = v12[15];
      v21 = v20 != 0;
      if (*(v12 + 26))
      {
        goto LABEL_37;
      }
    }

    if (!v20)
    {
      return -4;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvj_block_invoke;
    aBlock[3] = &__block_descriptor_40_e61_i28__0q8C16r__MIDIEventList_iI_1_MIDIEventPacket_QI_64I____20l;
    aBlock[4] = v12 + 11;
    v22 = _Block_copy(aBlock);
    v23 = v12[20];
    v12[20] = v22;

LABEL_37:
    (*(v13 + 32))(v14, 63, 0, v8, v12 + 20, 8);
    v24 = *(v12 + 26);
    switch(v24)
    {
      case 2:
        if (v12[17])
        {
          operator new();
        }

        return -4;
      case 1:
        if (v12[17])
        {
          operator new();
        }

        return -4;
      case 0:
        if (!v12[15])
        {
          return -4;
        }

        v12[18] = APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::__invoke;
        v12[19] = (v12 + 11);
        break;
    }

    if (v21)
    {
      (*(v13 + 32))(v14, 48, v9, v8, v12 + 18, 16);
    }

    return 0;
  }

  v16 = *(v13 + 32);
  v17 = v12[3];

  return v16(v17, v10, v9, v8, inData, v6);
}

void AddACQEventWithIDImpl(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (!a3 || !a4 || !a5)
  {
    return;
  }

  v28 = 0;
  pthread_threadid_np(0, &v28);
  if (a2 == 2)
  {
    kdebug_trace();
    if (!atomic_load(&gACQThreadID))
    {
      __assert_rtn("AddACQEventWithIDImpl", "ACQEventUtil.cpp", 171, "gACQThreadID.load() != 0");
    }

    v17 = 0;
    goto LABEL_12;
  }

  if (a2 == 1)
  {
    kdebug_trace();
    if (atomic_load(&gACQThreadID))
    {
      __assert_rtn("AddACQEventWithIDImpl", "ACQEventUtil.cpp", 165, "gACQThreadID.load() == 0");
    }

    v17 = v28;
LABEL_12:
    atomic_store(v17, &gACQThreadID);
  }

  clock_gettime(_CLOCK_REALTIME, &__tp);
  GetACQEventManager();
  if (byte_1EAD2D588 == 1)
  {
    v19 = &GetACQEventManager(void)::sACQEventManager[120 * (atomic_fetch_add(qword_1EAD0F570, 1uLL) & 0x3FF)];
    os_unfair_lock_lock(v19 + 1000);
    *(v19 + 3944) = __tp;
    *(v19 + 972) = a2;
    *(v19 + 487) = a3;
    *(v19 + 488) = a4;
    *(v19 + 489) = a5;
    *(v19 + 980) = a6;
    *(v19 + 491) = a7;
    *(v19 + 492) = a8;
    *(v19 + 495) = v28;
    if (v19[3992])
    {
      v19[3992] = 0;
    }

    if (a1)
    {
      v20 = *a1;
      *(v19 + 498) = *(a1 + 2);
      *(v19 + 248) = v20;
      v19[3992] = 1;
    }

    os_unfair_lock_unlock(v19 + 1000);
    caulk::semaphore::signal(&byte_1EAD0F560);
  }

  v21 = atomic_load(GetACQEventManager(void)::sACQEventManager);
  if ((v21 & 1) == 0)
  {
    v22 = 1936;
    if (!a2)
    {
      v22 = 8;
    }

    v23 = atomic_fetch_add(&GetACQEventManager(void)::sACQEventManager[v22], 1uLL) & 0xF;
    v24 = &unk_1EAD0EDE0;
    if (!a2)
    {
      v24 = &unk_1EAD0E658;
    }

    v25 = &v24[120 * v23];
    os_unfair_lock_lock(v25 + 28);
    *(v25 + 56) = __tp;
    *v25 = a2;
    *(v25 + 1) = a3;
    *(v25 + 2) = a4;
    *(v25 + 3) = a5;
    *(v25 + 8) = a6;
    *(v25 + 5) = a7;
    *(v25 + 6) = a8;
    *(v25 + 9) = v28;
    if (v25[104])
    {
      v25[104] = 0;
    }

    if (a1)
    {
      v26 = *a1;
      *(v25 + 12) = *(a1 + 2);
      *(v25 + 5) = v26;
      v25[104] = 1;
    }

    os_unfair_lock_unlock(v25 + 28);
  }
}

void GetACQEventManager(void)
{
  {
    if (v0)
    {
      ACQEventManager::ACQEventManager(v0);
    }
  }
}

AudioComponent AudioComponentFindNext(AudioComponent inComponent, const AudioComponentDescription *inDesc)
{
  if (!inDesc)
  {
    return 0;
  }

  v7 = *inDesc;
  if (inComponent)
  {
    if (!(**inComponent)(inComponent))
    {
      return 0;
    }
  }

  GlobalComponentPluginMgr(&v5);
  v3 = (*(*v6 + 40))(v6, inComponent, &v7);
  if (v5)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

void sub_18F5E1368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void GlobalComponentPluginMgr(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  {
    operator new();
  }

  v3 = GlobalComponentPluginMgr(void)::sImpl;
  v4 = GlobalComponentPluginMgr(void)::sImpl + 64;
  std::recursive_mutex::lock(GlobalComponentPluginMgr(void)::sImpl);
  *a1 = v3;
  a1[1] = v4;
  if ((GlobalComponentPluginMgr(void)::initialized & 1) == 0)
  {
    GlobalComponentPluginMgr(void)::initialized = 1;
    (*(*v4 + 16))(v3 + 64);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_18F5E146C(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v1, 0x10A0C40F084F79CLL);
  _Unwind_Resume(a1);
}

uint64_t AudioComponentMgr_Base::findNext(AudioComponentMgr_Base *this, OpaqueAudioComponent *a2, const AudioClassDescription *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = (**a2)(a2);
  }

  else
  {
    v5 = 0;
  }

  if (a3->mType)
  {
    v6 = a3->mSubType == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    v7 = *(v5 + 24);
    goto LABEL_33;
  }

  v8 = a3->mManufacturer == 0;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_12:
  v7 = *(this + 1);
  (*(*this + 32))(this, a3);
  if (!v8)
  {
    v19 = *&a3->mType;
    mSubType = a3[1].mSubType;
    v21 = 0x64FFFFFFFFLL;
    SortedPosition = AudioComponentVector::findSortedPosition(*(this + 2), *(this + 3), &v19);
    v10 = SortedPosition;
    if (*(this + 3) == SortedPosition)
    {
      v11 = 0;
    }

    else
    {
      v11 = *SortedPosition;
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v12 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = &v18;
      to_string(&v18, a3);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v18.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        to_string(&__p, v11 + 3);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136316162;
        v23 = "AudioComponentPluginMgr.mm";
        v24 = 1024;
        v25 = 1213;
        v26 = 2080;
        v27 = v14;
        v28 = 2048;
        v29 = v11;
        v30 = 2080;
        v31 = p_p;
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d findNext %s -> %p %s", buf, 0x30u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *buf = 136316162;
        v23 = "AudioComponentPluginMgr.mm";
        v24 = 1024;
        v25 = 1213;
        v26 = 2080;
        v27 = v14;
        v28 = 2048;
        v29 = 0;
        v30 = 2080;
        v31 = "";
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d findNext %s -> %p %s", buf, 0x30u);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    if (*(this + 3) == v10)
    {
      return 0;
    }

    v7 = *v10;
  }

LABEL_33:
  while (v7)
  {
    if (!v8 || (*(v7 + 48) & 1) == 0) && (AudioComponentMgr_Base::match(v7, a3, a3))
    {
      break;
    }

    v7 = *(v7 + 24);
  }

  return v7;
}

void sub_18F5E17FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *AudioComponentVector::findSortedPosition(char *a1, char *a2, __int128 *a3)
{
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = 100;
  if (a2 != a1)
  {
    v3 = a1;
    v4 = (a2 - a1) >> 4;
    do
    {
      v5 = &v3[16 * (v4 >> 1)];
      v7 = *v5;
      v6 = v5 + 16;
      v8 = APComponent::Key::sortCompare((v7 + 36), &v10, 0);
      if (v8 >= 0)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v8 < 0)
      {
        v3 = v6;
      }
    }

    while (v4);
    return v3;
  }

  return a2;
}

uint64_t APComponent::Key::sortCompare(_DWORD *a1, _DWORD *a2, char a3)
{
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *a1 > *a2;
  }

  if (!result)
  {
    v6 = a1[1];
    v7 = a2[1];
    v20 = v6 >= v7;
    v8 = v6 > v7;
    result = v20 ? v8 : 0xFFFFFFFFLL;
    if (!result)
    {
      v10 = a1[2];
      v11 = a2[2];
      v20 = v10 >= v11;
      v12 = v10 > v11;
      if (v20)
      {
        v13 = v12;
      }

      else
      {
        v13 = -1;
      }

      AppBooleanValue = reverseManufacturerSort(void)::gHWCodecsFirst;
      if (reverseManufacturerSort(void)::gHWCodecsFirst < 0)
      {
        AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"hw_codecs_first", @"com.apple.coreaudio", 0);
        reverseManufacturerSort(void)::gHWCodecsFirst = AppBooleanValue;
      }

      if (AppBooleanValue)
      {
        result = -v13;
      }

      else
      {
        result = v13;
      }

      if (!result)
      {
        if (a3)
        {
          goto LABEL_23;
        }

        v15 = a1[5];
        v16 = a2[5];
        v20 = v15 >= v16;
        v17 = v15 > v16;
        if (!v20)
        {
          v17 = -1;
        }

        if (!v17)
        {
LABEL_23:
          v18 = a1[6];
          v19 = a2[6];
          v20 = v18 >= v19;
          if (v18 <= v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = -1;
          }

          if (v20)
          {
            return v21;
          }

          else
          {
            return 1;
          }
        }

        else
        {
          return -v17;
        }
      }
    }
  }

  return result;
}

BOOL EmbeddedComponentManager::isComponentDescriptionVisible(EmbeddedComponentManager *this, const AudioComponentDescription *a2)
{
  if ((this & ~tkqMjk4y) == 0)
  {
    return 1;
  }

  AppBooleanValue = gAllCodecsOK;
  if (gAllCodecsOK < 0)
  {
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"AllCodecsOK", @"com.apple.coreaudio", 0);
    gAllCodecsOK = AppBooleanValue;
  }

  return AppBooleanValue != 0;
}

uint64_t GetString(const __CFDictionary *a1, const __CFString *a2, const __CFString **a3)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      *a3 = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::vector<IPCAUClient::RemoteAUServer *>::emplace_back<IPCAUClient::RemoteAUServer * const&>(uint64_t a1, uint64_t *a2)
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
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
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

uint64_t acv2::ConverterRegistry::FindFactoryByFormatIDs(acv2::ConverterRegistry *this, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  do
  {
    v12 = *(this + 1);
    v11 = *(this + 2);
    v13 = v9;
    if (v12 != v11)
    {
      do
      {
        if (*(*v12 + 8) == a2 && *(*v12 + 12) == a3)
        {
          std::vector<IPCAUClient::RemoteAUServer *>::emplace_back<IPCAUClient::RemoteAUServer * const&>(&v29, v12);
        }

        ++v12;
      }

      while (v12 != v11);
      v9 = v29;
      v8 = v30;
      v13 = v30;
    }

    if (v10 & 1 | (v9 != v13))
    {
      break;
    }

    if (a3 == 1885564203 || a3 == 1819304813)
    {
      DecoderFactories = acv2::ConverterRegistry::MakeDecoderFactories(this, a2, a3);
    }

    else
    {
      if (a2 != 1819304813)
      {
        v13 = v8;
        break;
      }

      DecoderFactories = acv2::ConverterRegistry::MakeEncoderFactories(this, a3);
    }

    v10 = 1;
    v13 = v8;
  }

  while ((DecoderFactories & 1) != 0);
  if (v9 == v13)
  {
    v25 = 0;
    result = 0;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v15 = v13 - v9;
    v16 = v9;
    if (v15 != 8)
    {
      v16 = v9;
      if (a5)
      {
        v16 = v9;
        if ((v15 & 0x7FFFFFFF8) != 0)
        {
          v17 = 0;
          v18 = (v15 >> 3);
          v19 = -1;
          v20 = -1;
          do
          {
            v21 = 0;
            v22 = v9[v17];
            v23 = 12 * a5;
            v24 = (a4 + 8);
            while (*(v24 - 2) != v22[4] || *(v24 - 1) != v22[5] || *v24 != v22[6])
            {
              ++v21;
              v24 += 3;
              v23 -= 12;
              if (!v23)
              {
                v21 = -1;
                break;
              }
            }

            if (v21 < v19)
            {
              v20 = v17;
              v19 = v21;
            }

            ++v17;
          }

          while (v17 != v18);
          v16 = &v9[v20];
          if (v20 == -1)
          {
            v16 = v9;
          }
        }
      }
    }

    v25 = *v16;
  }

  operator delete(v9);
  return v25;
}

void sub_18F5E1D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t AudioComponentMgr_NSExtension::findNext(AudioComponentMgr_NSExtension *this, OpaqueAudioComponent *a2, const AudioClassDescription *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  mType = a3->mType;
  if (a3->mType)
  {
    v7 = a3->mSubType == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 || a3->mManufacturer == 0;
  if ((*(this + 96) & 1) == 0)
  {
    v9 = 0;
    while (dword_18F902B38[v9] != mType)
    {
      if (++v9 == 8)
      {
        if (v8)
        {
          (*(*this + 120))(this, 1, mType == 1635087216);
          Next = AudioComponentMgr_Base::findNext(this, a2, a3);
          goto LABEL_16;
        }

        Next = AudioComponentMgr_Base::findNext(this, a2, a3);
        if (!Next)
        {
          (*(*this + 120))(this, 1, mType == 1635087216);

          return AudioComponentMgr_Base::findNext(this, a2, a3);
        }

        return Next;
      }
    }
  }

  Next = AudioComponentMgr_Base::findNext(this, a2, a3);
  if (v8)
  {
LABEL_16:
    if ((*(this + 144) & 1) == 0 && a3->mType != 1633969507 && a3->mType != 1634037347)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v12 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        to_string(&__p, a3);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v17 = "AudioComponentPluginMgr.mm";
        v18 = 1024;
        v19 = 906;
        v20 = 2080;
        v21 = p_p;
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d First wildcard component search: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *(this + 144) = 1;
    }
  }

  return Next;
}

uint64_t AudioComponentMgr_iOS::checkDeferredInitialization(uint64_t this, const AudioComponentDescription *a2)
{
  if ((a2->componentType - 1635086951 <= 0x11 && ((1 << (a2->componentType - 103)) & 0x20045) != 0 || a2->componentType == 0) && !CADeprecated::TSingleton<IPCAUClient>::sInstance)
  {
    return CADeprecated::TSingleton<IPCAUClient>::instance();
  }

  return result;
}

void sub_18F5E2190(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

OSStatus AudioComponentInstanceNew(AudioComponent inComponent, AudioComponentInstance *outInstance)
{
  v22 = *MEMORY[0x1E69E9840];
  if (outInstance)
  {
    v3 = inComponent;
    *outInstance = 0;
    memset(&v17, 0, sizeof(v17));
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    Impl_AudioGetComponentInfo(inComponent, &v17, 0);
    if ((v17.componentFlags & 8) != 0)
    {
      if (v3 && (v6 = (**v3)(v3)) != 0 && (v7 = (*(*v6 + 64))(v6)) != 0 && *(v7 + 200))
      {
        v4 = 0;
        v3 = *(v7 + 200);
      }

      else
      {
        if (!AllowUnsafeMainThreadServicing("AudioComponentInstanceNew"))
        {
          v5 = -10863;
LABEL_23:
          _Block_object_dispose(&v13, 8);
          return v5;
        }

        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __AudioComponentInstanceNew_block_invoke;
    v12[3] = &unk_1E72C1CB8;
    v12[5] = v3;
    v12[6] = outInstance;
    v12[4] = &v13;
    if (v4)
    {
      v8 = Synchronously_ServicingMainRunLoop(v12);
    }

    else
    {
      v8 = Synchronously(v12);
    }

    if (!v8)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v9 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "AudioComponentAPI.cpp";
        v20 = 1024;
        v21 = 418;
        _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Timeout running task synchronously", buf, 0x12u);
      }
    }

    v5 = *(v14 + 6);
    goto LABEL_23;
  }

  return -50;
}

void sub_18F5E2414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AudioComponentMgr_Base::match(AudioComponentMgr_Base *this, const AudioComponentDescription *a2, const AudioComponentDescription *a3)
{
  if (a2->componentType)
  {
    v3 = a2->componentType == *(this + 9);
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    componentSubType = a2->componentSubType;
    if (componentSubType)
    {
      v6 = componentSubType == *(this + 10);
    }

    else
    {
      v6 = 1;
    }

    if (v6 && ((componentManufacturer = a2->componentManufacturer) != 0 ? (v8 = componentManufacturer == *(this + 11)) : (v8 = 1), v8 && EmbeddedComponentManager::isComponentDescriptionVisible(*(this + 12), a2)))
    {
      v9 = *(this + 72) ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t Impl_AudioGetComponentInfo(OpaqueAudioComponent *a1, AudioComponentDescription *a2, const __CFString **a3)
{
  if (!a1)
  {
    return 4294964296;
  }

  v5 = (**a1)(a1);
  if (!v5)
  {
    return 4294964296;
  }

  v6 = (**v5)(v5);
  if (a2)
  {
    v7 = *(v6 + 36);
    a2->componentFlagsMask = *(v6 + 52);
    *&a2->componentType = v7;
  }

  if (!a3)
  {
    return 0;
  }

  result = *(v6 + 64);
  if (result)
  {
    *a3 = result;
    CFRetain(result);
    return 0;
  }

  *a3 = 0;
  return result;
}

BOOL Synchronously(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  dispatch_retain(v2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __Synchronously_block_invoke;
  v5[3] = &__block_descriptor_tmp_1107;
  v5[4] = v2;
  (*(a1 + 16))(a1, v5);
  v3 = dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL) == 0;
  dispatch_release(v2);
  return v3;
}

void __AudioComponentInstanceNew_block_invoke(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __AudioComponentInstanceNew_block_invoke_2;
  v4[3] = &unk_1E72C1C90;
  v2 = a1[5];
  v3 = a1[6];
  v4[5] = a1[4];
  v4[6] = v3;
  v4[4] = a2;
  instantiate(v2, 0, 0, v4);
}

uint64_t shouldLoadV2OutOfProcess(const AudioComponentDescription *a1, char a2, id *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((a2 & 2) != 0)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  v15 = SecTaskCreateFromSelf(0);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = SecTaskCopyValueForEntitlement(v15, @"com.apple.coreaudio.allow-oop-v2-au", 0);
  if (!v17)
  {
LABEL_42:
    CFRelease(v16);
    return 0;
  }

  v18 = v17;
  v19 = CFGetTypeID(v17);
  if (v19 != CFBooleanGetTypeID())
  {
    CFRelease(v18);
    goto LABEL_42;
  }

  Value = CFBooleanGetValue(v18);
  CFRelease(v18);
  CFRelease(v16);
  if (!Value)
  {
    return 0;
  }

LABEL_3:
  v6 = getenv("CoreAudio_AUHostingService_mismatchMode");
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = *a3;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v8)
  {
    v41 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        if ([v13 intValue] == 16777228)
        {
          v10 = 1;
        }

        else
        {
          v9 |= [v13 intValue] == 16777223;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v8);

    v6 = v41;
    if (!(v10 & 1 | ((v9 & 1) == 0)))
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v14 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "APComponent.mm";
        *&buf[12] = 1024;
        *&buf[14] = 284;
        _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Requested AU does not contain native architecture and translation is not available!", buf, 0x12u);
      }

      return 0;
    }
  }

  else
  {

    v10 = 0;
    v9 = 0;
  }

  if ((a1->componentFlags & 4) != 0)
  {
    return 0;
  }

  v21 = "lppa";
  v22 = 140;
  do
  {
    v23 = *(v21 - 2);
    if (v23)
    {
      v24 = v23 == a1->componentType;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = *(v21 - 1);
      if ((!v25 || v25 == a1->componentSubType) && (!*v21 || *v21 == a1->componentManufacturer))
      {
        return 0;
      }
    }

    v21 += 20;
    v22 -= 20;
  }

  while (v22);
  if (((v6 != 0) & (v10 & v9)) != 0)
  {
    return 1;
  }

  v29 = getenv("CoreAudio_loadV2AudioUnitsOutOfProcess");
  if (!v29)
  {
    goto LABEL_87;
  }

  v30 = v29;
  v31 = strlen(v29);
  if (v31 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    operator new();
  }

  v48 = v31;
  if (v31)
  {
    memmove(buf, v30, v31);
  }

  buf[v32] = 0;
  v35 = v48;
  if (v48 < 0)
  {
    if (*&buf[8] == 1)
    {
      v40 = *buf;
      if (**buf == 49)
      {
        AppBooleanValue = 1;
        goto LABEL_93;
      }

      goto LABEL_72;
    }

    if (*&buf[8] != 3)
    {
      goto LABEL_72;
    }

    v36 = *buf;
  }

  else
  {
    if (v48 == 1)
    {
      if (buf[0] == 49)
      {
        return 1;
      }

      goto LABEL_72;
    }

    if (v48 != 3)
    {
      goto LABEL_72;
    }

    v36 = buf;
  }

  v37 = *v36;
  v38 = *(v36 + 2);
  if (v37 == 17753 && v38 == 83)
  {
    AppBooleanValue = 1;
LABEL_91:
    if ((v35 & 0x80) == 0)
    {
      return AppBooleanValue;
    }

    v40 = *buf;
LABEL_93:
    operator delete(v40);
    return AppBooleanValue;
  }

LABEL_72:
  if (!isInternalBuild())
  {
    goto LABEL_84;
  }

  if ((v35 & 0x80) != 0)
  {
    if (*&buf[8] == 1)
    {
      v40 = *buf;
      if (**buf == 48)
      {
        AppBooleanValue = 0;
        goto LABEL_93;
      }
    }

    else
    {
      v40 = *buf;
      if (*&buf[8] == 2)
      {
        goto LABEL_83;
      }
    }

LABEL_86:
    operator delete(v40);
    goto LABEL_87;
  }

  if (v35 == 1)
  {
    if (buf[0] != 48)
    {
      goto LABEL_87;
    }

    return 0;
  }

  if (v35 != 2)
  {
    goto LABEL_87;
  }

  v40 = buf;
LABEL_83:
  if (*v40 == 20302)
  {
    AppBooleanValue = 0;
    goto LABEL_91;
  }

LABEL_84:
  if ((v35 & 0x80) != 0)
  {
    v40 = *buf;
    goto LABEL_86;
  }

LABEL_87:
  if (!isInternalBuild())
  {
    return a2 & 1;
  }

  buf[0] = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"loadV2AudioUnitsOutOfProcess", @"com.apple.coreaudio", buf);
  if ((buf[0] & 1) == 0)
  {
    return a2 & 1;
  }

  return AppBooleanValue;
}

void sub_18F5E2BBC(_Unwind_Exception *exception_object)
{
  if (v1 < 0)
  {
    operator delete(*(v2 - 128));
  }

  _Unwind_Resume(exception_object);
}

void APComponent::newInstance(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 72) == 1)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v7 = *gAudioComponentLogCategory;
    if (!os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    *&buf[4] = "APComponent.mm";
    v20 = 1024;
    v21 = 321;
    v10 = "%25s:%-5d component is a zombie and cannot be instantiated";
LABEL_9:
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
LABEL_10:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  GlobalComponentPluginMgr(buf);
  if (*(a1 + 104))
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(*a1 + 96))(a1);
  }

  if (*buf)
  {
    std::recursive_mutex::unlock(*buf);
  }

  if (!v8)
  {
    *buf = a1 + 36;
    v11 = *(a1 + 104);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v12 = (*(*v11 + 48))(v11, buf);
    if (!v12)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v7 = *gAudioComponentLogCategory;
      if (!os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      *&buf[4] = "APComponent.mm";
      v20 = 1024;
      v21 = 333;
      v10 = "%25s:%-5d null from factory proc";
      goto LABEL_9;
    }

    GlobalComponentPluginMgr(buf);
    if (*(a1 + 112))
    {
      v8 = 0;
    }

    else
    {
      v13 = *(a1 + 36);
      if (HIWORD(v13) == 24949)
      {
        v14 = malloc_type_malloc(0xC8uLL, 0x8004055C35419uLL);
        *v14 = (*(v12 + 16))(1);
        v14[1] = (*(v12 + 16))(2);
        v14[2] = (*(v12 + 16))(3);
        v14[3] = (*(v12 + 16))(4);
        v14[4] = (*(v12 + 16))(5);
        v14[5] = (*(v12 + 16))(10);
        v14[6] = (*(v12 + 16))(11);
        v14[7] = (*(v12 + 16))(18);
        v14[8] = (*(v12 + 16))(15);
        v14[9] = (*(v12 + 16))(16);
        v14[10] = (*(v12 + 16))(6);
        v14[11] = (*(v12 + 16))(7);
        v14[12] = (*(v12 + 16))(17);
        v14[14] = (*(v12 + 16))(14);
        v14[13] = (*(v12 + 16))(9);
        v14[15] = (*(v12 + 16))(19);
        v14[16] = (*(v12 + 16))(20);
        v14[17] = (*(v12 + 16))(21);
        v14[18] = (*(v12 + 16))(513);
        v14[19] = (*(v12 + 16))(514);
        v14[20] = (*(v12 + 16))(257);
        v14[21] = (*(v12 + 16))(258);
        v14[22] = (*(v12 + 16))(261);
        v14[23] = (*(v12 + 16))(262);
        v14[24] = (*(v12 + 16))(263);
      }

      else
      {
        if (v13 != 1633903715 && v13 != 1634037347 && v13 != 1633969507)
        {
          v16 = 0;
          v8 = 4294967292;
          goto LABEL_33;
        }

        v14 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
        *v14 = (*(v12 + 16))(1);
        v14[1] = (*(v12 + 16))(2);
        v14[2] = (*(v12 + 16))(3);
        v14[3] = (*(v12 + 16))(4);
        v14[4] = (*(v12 + 16))(5);
        v14[5] = (*(v12 + 16))(6);
        v14[6] = (*(v12 + 16))(7);
        v14[7] = (*(v12 + 16))(8);
        v14[8] = (*(v12 + 16))(9);
        v14[9] = (*(v12 + 16))(10);
        v14[10] = (*(v12 + 16))(11);
        v14[11] = (*(v12 + 16))(12);
      }

      v8 = 0;
      *(a1 + 112) = v14;
    }

    v16 = 1;
LABEL_33:
    if (*buf)
    {
      std::recursive_mutex::unlock(*buf);
    }

    if (v16)
    {
      operator new();
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v17 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "APComponent.mm";
      v20 = 1024;
      v21 = 340;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d error %d returned from createDispatchTable", buf, 0x18u);
    }
  }

LABEL_15:
  v5[2](v5, 0, v8);
  objc_autoreleasePoolPop(v6);
}

void *std::shared_ptr<APComponent>::shared_ptr[abi:ne200100]<APComponent,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
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

AudioComponent AudioComponentInstanceGetComponent(AudioComponentInstance inInstance)
{
  if (!inInstance)
  {
    return 0;
  }

  v1 = (*(*inInstance + 8))(inInstance);
  if (!v1)
  {
    return 0;
  }

  v2 = **v1;

  return v2();
}

uint64_t AudioConverterNewWithOptions(AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, int a3, void *a4)
{
  mFormatID = a1->mFormatID;
  v10 = mFormatID == 1634754915 || mFormatID == 1902211171 || mFormatID == 1885433955;
  if (v10 && ((v11 = a2->mFormatID, v11 != 1718382635) ? (v12 = v11 == 1885564203) : (v12 = 1), !v12 ? (v13 = v11 == 1819304813) : (v13 = 1), v13))
  {
    if (_os_feature_enabled_impl())
    {
      v14 = checkForDecoderExemption(a1->mFormatID) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  ForcedInstantiationMode = getForcedInstantiationMode(a1);
  if ((ForcedInstantiationMode & 0x100000000) != 0)
  {
    if (ForcedInstantiationMode != 1)
    {
LABEL_28:
      v18 = 0;
      v17 = 2742;
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v15)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v18 = 0;
  v27 = a1->mFormatID;
  v17 = 2742;
  if (v27 != 1819304813 && v27 != 1885564203)
  {
    if (!_os_feature_enabled_impl() || (checkForDecoderExemption(a1->mFormatID) & 1) != 0)
    {
      v18 = 0;
      goto LABEL_29;
    }

LABEL_27:
    v17 = 2758;
    v18 = 1;
  }

LABEL_29:
  v28[0] = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"converterkTracesPermitted", @"com.apple.coreaudio", v28);
  v20 = 0;
  if (v28[0] && AppBooleanValue)
  {
    kdebug_trace();
    v20 = v17 | 0x100000000;
  }

  v21 = a1->mFormatID;
  v22 = a2->mFormatID;
  if (v18)
  {
    v23 = 2752;
  }

  else
  {
    v23 = 2736;
  }

  v36 = v23;
  v37 = v21;
  v38 = v22;
  v39 = 0;
  v40 = 0;
  if (v18)
  {
    v24 = newAudioConverterOOP;
  }

  else
  {
    v24 = newAudioConverter;
  }

  kdebug_trace();
  v28[0] = 1;
  v29 = v23;
  v30 = v21;
  v31 = v22;
  v32 = 0;
  v33 = 0;
  v35[0] = 0;
  v34 = 1;
  AT::ScopedTrace::~ScopedTrace(v35);
  v25 = AudioConverterNewInternal(a1, a2, 0, 0, a4, v24, a3 & 0xFFFFFFF9, v20);
  AT::ScopedTrace::~ScopedTrace(v28);
  return v25;
}

void sub_18F5E3904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AT::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

uint64_t getForcedInstantiationMode(AudioStreamBasicDescription *a1)
{
  v1 = a1;
  {
    if (a1)
    {
      getAuditToken(&__p);
      getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker = 0;
      CachingEntitlementChecker::CachingEntitlementChecker(&__p, v16);
    }
  }

  if (PlatformUtilities::IsInternalBuild(a1))
  {
    v2 = getenv("CoreAudio_loadAudioConverterOutOfProcess");
    if (v2)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, v2);
      if (v19 < 0)
      {
        if (v18 == 1)
        {
          v14 = __p;
          if (*__p == 48)
          {
            v10 = 0;
LABEL_32:
            operator delete(v14);
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        if (v18 != 2)
        {
          goto LABEL_30;
        }

        p_p = __p;
LABEL_23:
        if (*p_p == 20302)
        {
          v10 = 0;
          if (v19 < 0)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }

LABEL_30:
        v10 = 1;
        if (v19 < 0)
        {
LABEL_31:
          v14 = __p;
          goto LABEL_32;
        }

LABEL_33:
        v13 = 0x100000000;
        return v10 | v13;
      }

      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_30;
        }

        p_p = &__p;
        goto LABEL_23;
      }

      if (__p != 48)
      {
        goto LABEL_30;
      }

LABEL_27:
      v10 = 0;
      goto LABEL_33;
    }
  }

  mFormatID = v1->mFormatID;
  if (mFormatID != 1819304813 && mFormatID != 1885564203)
  {
    os_unfair_lock_lock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
    hasEntitlement = CachingEntitlementChecker::hasEntitlement(@"com.apple.coreaudio.LoadDecodersInProcess", v11);
    os_unfair_lock_unlock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
    if (hasEntitlement)
    {
      goto LABEL_27;
    }
  }

  os_unfair_lock_lock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
  v7 = CachingEntitlementChecker::hasEntitlement(@"com.apple.coreaudio.LoadConvertersInProcess", v6);
  os_unfair_lock_unlock(&getForcedInstantiationMode(AudioStreamBasicDescription const*)::entitlementChecker);
  if (v7)
  {
    goto LABEL_27;
  }

  if (PlatformUtilities::IsInternalBuild(v8))
  {
    LOBYTE(__p) = 0;
    AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"loadAudioConverterOutOfProcess", @"com.apple.coreaudio", &__p);
    if (__p)
    {
      v10 = AppBooleanValue;
      goto LABEL_33;
    }
  }

  v13 = 0;
  v10 = 0;
  return v10 | v13;
}

BOOL CachingEntitlementChecker::hasEntitlement(__CFString *this, const __CFString *a2)
{
  if (*qword_1ED7462A8)
  {
    v9 = 0;
    if ((CACFDictionary::GetBool((qword_1ED7462A8 + 8), this, &v9) & 1) == 0)
    {
      v3 = SecTaskCopyValueForEntitlement(*qword_1ED7462A8, this, 0);
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
        v9 = v6;
        CFRelease(v4);
      }

      CACFDictionary::AddBool((qword_1ED7462A8 + 8), this);
    }

    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_18F5E44BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  MEMORY[0x193ADF220](a10, 0x1080C4066A550C5, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<acv2::AudioConverterChain>::reset[abi:ne200100](v44, 0);
  AudioConverterAPI::~AudioConverterAPI(v42);
  MEMORY[0x193ADF220](v42, v43);
  _Unwind_Resume(a1);
}

uint64_t AudioConverterNewInternal(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, uint64_t a3, const AudioClassDescription *a4, void *a5, uint64_t (*a6)(const AudioStreamBasicDescription *a1, const AudioStreamBasicDescription *a2, unsigned int a3, const AudioClassDescription *a4, int a5), uint64_t a7, uint64_t a8)
{
  v75[19] = *MEMORY[0x1E69E9840];
  if (gWorkgroundInitOnce[0] != -1)
  {
    dispatch_once(gWorkgroundInitOnce, &__block_literal_global_34);
  }

  v16 = a6(a1, a2, a3, a4, a7);
  LOBYTE(v52[0]) = 0;
  AppBooleanValue = CACFPreferencesGetAppBooleanValue(@"converterkTracesPermitted", @"com.apple.coreaudio", v52);
  if (v52[0] & AppBooleanValue)
  {
    *(v16 + 13) = 1;
    *(v16 + 24) = a8;
    *(v16 + 28) = BYTE4(a8);
  }

  *a5 = *(v16 + 8);
  memset(v60, 0, 40);
  memset(v59, 0, 40);
  v58 = 40;
  v18 = (*(*v16 + 48))(v16, 1633904996, &v58, v60);
  if (v18)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v19 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioConverter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1015;
      v62 = 1024;
      LODWORD(v63) = v18;
      _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to determine actual converter source format (err:%d)", buf, 0x18u);
    }

    v20 = *&a1->mBytesPerPacket;
    v60[0] = *&a1->mSampleRate;
    v60[1] = v20;
    *&v60[2] = *&a1->mBitsPerChannel;
  }

  v58 = 40;
  v21 = (*(*v16 + 48))(v16, 1633906532, &v58, v59);
  if (v21)
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v22 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioConverter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1024;
      v62 = 1024;
      LODWORD(v63) = v21;
      _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to determine actual converter destination format (err:%d)", buf, 0x18u);
    }

    v23 = *&a2->mBytesPerPacket;
    v59[0] = *&a2->mSampleRate;
    v59[1] = v23;
    *&v59[2] = *&a2->mBitsPerChannel;
  }

  v24 = *&a1->mBytesPerPacket;
  v56 = *&a1->mSampleRate;
  *v57 = v24;
  *&v57[16] = *&a1->mBitsPerChannel;
  v25 = *&a2->mBytesPerPacket;
  v54 = *&a2->mSampleRate;
  *v55 = v25;
  *&v55[16] = *&a2->mBitsPerChannel;
  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v26 = MEMORY[0x1E69E54E8];
  if (*v60 != *&v56 || *(&v60[0] + 1) != *(&v56 + 1) || LODWORD(v60[1]) != *v57 || *(&v60[1] + 4) != *&v57[4])
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " (actually: ", 12);
    v27 = __p;
    CA::StreamDescription::AsString(__p, v60, v28, v29);
    if (v49 < 0)
    {
      v27 = __p[0];
    }

    v30 = strlen(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v27, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, ")", 1);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    std::ostringstream::str[abi:ne200100](__p, buf);
    *v52 = *__p;
    v53 = v49;
    *buf = *v26;
    *&buf[*(*buf - 24)] = v26[3];
    *&buf[8] = MEMORY[0x1E69E5548] + 16;
    if (v74 < 0)
    {
      operator delete(*&v73[2]);
    }

    *&buf[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&buf[16]);
    std::ostream::~ostream();
    MEMORY[0x193ADF120](v75);
  }

  if (*v59 != *&v54 || *(&v59[0] + 1) != *(&v54 + 1) || LODWORD(v59[1]) != *v55 || *(&v59[1] + 4) != *&v55[4])
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " (actually: ", 12);
    v31 = __p;
    CA::StreamDescription::AsString(__p, v59, v32, v33);
    if (v49 < 0)
    {
      v31 = __p[0];
    }

    v34 = strlen(v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v31, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, ")", 1);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    std::ostringstream::str[abi:ne200100](__p, buf);
    *v50 = *__p;
    v51 = v49;
    *buf = *v26;
    *&buf[*(*buf - 24)] = v26[3];
    *&buf[8] = MEMORY[0x1E69E5548] + 16;
    if (v74 < 0)
    {
      operator delete(*&v73[2]);
    }

    *&buf[8] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&buf[16]);
    std::ostream::~ostream();
    MEMORY[0x193ADF120](v75);
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v35 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    if (a6 == newAudioConverter)
    {
      v38 = "in process";
    }

    else
    {
      v38 = "out of process";
    }

    v39 = __p;
    CA::StreamDescription::AsString(__p, &v56, v36, v37);
    if (v49 < 0)
    {
      v39 = __p[0];
    }

    if (v53 >= 0)
    {
      v42 = v52;
    }

    else
    {
      v42 = v52[0];
    }

    CA::StreamDescription::AsString(v46, &v54, v40, v41);
    if (v47 >= 0)
    {
      v43 = v46;
    }

    else
    {
      v43 = v46[0];
    }

    v44 = v50;
    if (v51 < 0)
    {
      v44 = v50[0];
    }

    *buf = 136316930;
    *&buf[4] = "AudioConverter.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1044;
    v62 = 2080;
    v63 = v38;
    v64 = 2048;
    v65 = v16;
    v66 = 2080;
    v67 = v39;
    v68 = 2080;
    v69 = v42;
    v70 = 2080;
    v71 = v43;
    v72 = 2080;
    *v73 = v44;
    _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created a new %s converter -> %p, from %s%s to %s%s", buf, 0x4Eu);
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  return 0;
}

void sub_18F5E4F4C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void **a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 a44, __int128 a45, uint64_t a46, uint64_t a47, __int128 a48, __int128 a49, uint64_t a50, uint64_t a51, int buf, int a53, int a54, __int16 a55, __int16 a56, __int16 a57, __int16 a58, int a59, int a60, __int16 a61, int a62, __int16 a63)
{
  if (a2)
  {
    std::ostringstream::~ostringstream(&buf);
    if (a24 < 0)
    {
      operator delete(__p);
    }

    v74 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v75 = *v74;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v76 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        if (v70 == newAudioConverter)
        {
          v77 = "in process";
        }

        else
        {
          v77 = "out of process";
        }

        v78 = *(v69 + 16);
        a48 = *v69;
        a49 = v78;
        a50 = *(v69 + 32);
        v79 = &a35;
        CA::StreamDescription::AsString(&a35, &a48, *&a48, *&v78);
        if (a40 < 0)
        {
          v79 = a35;
        }

        v80 = *(v68 + 16);
        a44 = *v68;
        a45 = v80;
        a46 = *(v68 + 32);
        CA::StreamDescription::AsString(&a26, &a44, *&a44, *&v80);
        if (a31 >= 0)
        {
          v81 = &a26;
        }

        else
        {
          v81 = a26;
        }

        buf = 136316418;
        *(v71 + 4) = "AudioConverter.cpp";
        a55 = 1024;
        *(v71 + 14) = 1054;
        a58 = 2080;
        *(v71 + 20) = v77;
        a61 = 2080;
        *(v71 + 30) = v79;
        a64 = 2080;
        a65 = v81;
        a66 = 1024;
        *(v71 + 50) = v75;
        _os_log_impl(&dword_18F5DF000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a new %s converter -> from %s to %s, with status %i", &buf, 0x36u);
        if (a31 < 0)
        {
          operator delete(a26);
        }

        if (a40 < 0)
        {
          operator delete(a35);
        }
      }
    }

    else
    {
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v82 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
      {
        if (v70 == newAudioConverter)
        {
          v83 = "in process";
        }

        else
        {
          v83 = "out of process";
        }

        v84 = *(v69 + 16);
        a48 = *v69;
        a49 = v84;
        a50 = *(v69 + 32);
        v85 = &a35;
        CA::StreamDescription::AsString(&a35, &a48, *&a48, *&v84);
        if (a40 < 0)
        {
          v85 = a35;
        }

        v86 = *(v68 + 16);
        a44 = *v68;
        a45 = v86;
        a46 = *(v68 + 32);
        CA::StreamDescription::AsString(&a26, &a44, *&a44, *&v86);
        if (a31 >= 0)
        {
          v87 = &a26;
        }

        else
        {
          v87 = a26;
        }

        buf = 136316162;
        *(v71 + 4) = "AudioConverter.cpp";
        a55 = 1024;
        *(v71 + 14) = 1060;
        a58 = 2080;
        *(v71 + 20) = v83;
        a61 = 2080;
        *(v71 + 30) = v85;
        a64 = 2080;
        a65 = v87;
        _os_log_impl(&dword_18F5DF000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown exception when creating new %s converter -> from %s to %s", &buf, 0x30u);
        if (a31 < 0)
        {
          operator delete(a26);
        }

        if (a40 < 0)
        {
          operator delete(a35);
        }
      }
    }

    __cxa_end_catch();
    if ((v67 & 0x100000000) != 0)
    {
      kdebug_trace();
    }

    *v66 = 0;
    JUMPOUT(0x18F5E4EACLL);
  }

  _Unwind_Resume(a1);
}

void sub_18F5E52FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F5E52F4);
  }

  JUMPOUT(0x18F5E4FF4);
}

void sub_18F5E5308(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F5E52F4);
  }

  JUMPOUT(0x18F5E4FF8);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
}

void sub_18F5E53C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F5E60DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  MEMORY[0x193ADF220](v38, 0x10B3C404482F264, a3, a4, a5, a6, a7, a8);
  HOA::RotationMatrix::~RotationMatrix(&__p);
  a30 = &a10;
  std::vector<std::unique_ptr<acv2::AudioConverterBase>>::__destroy_vector::operator()[abi:ne200100](&a30);
  HOA::RotationMatrix::~RotationMatrix(&a24);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
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

uint64_t *std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F5E6398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *acv2::PCMConverterFactory::AddDownReinterleaver(_DWORD *result, __int32 **a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = result[17];
  v6 = result[7];
  if (v5 < v6)
  {
    v7 = result;
    acv2::MixableFormatPair(result[7], v5, *a2, a2[3]);
    v8 = v7[13] & 0x20;
    v9 = v7[3];
    if ((v9 & 0x20) != 0)
    {
      v6 = 1;
    }

    else if (!v6)
    {
      v10 = (v7[8] + 7) >> 3;
      goto LABEL_7;
    }

    v10 = v7[6] / v6;
LABEL_7:
    v11 = v9 & 0xFFFFFFDF;
    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = v5;
    }

    v13 = v10 * v12;
    v7[4] = v13;
    v7[5] = 1;
    v7[6] = v13;
    v7[7] = v5;
    v7[3] = v11 | v8;
    operator new();
  }

  return result;
}

uint64_t acv2::PCMConverterFactory::AddPCMToGoal(_DWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v7 = a2[1];
  v70 = *a2;
  v71 = v7;
  v72 = *(a2 + 4);
  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[8];
  v10 = a1[9];
  v12 = HIDWORD(v7);
  v13 = BYTE12(v70) & 0x20;
  if ((v8 & 0x20) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = a1[7];
    if (!v14)
    {
      v15 = (v11 + 7) >> 3;
      goto LABEL_6;
    }
  }

  v15 = a1[6] / v14;
LABEL_6:
  v16 = v8 & 0xFFFFFFDF;
  if ((BYTE12(v70) & 0x20) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = HIDWORD(v7);
  }

  v18 = v70;
  *&v73 = v70;
  v19 = v15 * v17;
  v20 = v13 | v16;
  DWORD2(v73) = v9;
  HIDWORD(v73) = v13 | v16;
  LODWORD(v74) = v15 * v17;
  DWORD1(v74) = 1;
  DWORD2(v74) = v15 * v17;
  HIDWORD(v74) = HIDWORD(v7);
  v75 = __PAIR64__(v10, v11);
  v21 = HIDWORD(v7);
  if (!a5 || (v22 = *(a3 + 56), v21 = HIDWORD(v7), !v22))
  {
    if (v21 != 2 || HIDWORD(v7) != 2 || *(a3 + 56))
    {
      goto LABEL_141;
    }

    *&v73 = v70;
    DWORD2(v73) = v9;
    HIDWORD(v73) = v13 | v16;
    *&v74 = v19 | 0x100000000;
    *(&v74 + 1) = v19 | 0x200000000;
    v75 = __PAIR64__(v10, v11);
    if (a5)
    {
      v53 = *(a2 + 13) & 0x20;
      if ((v13 == 0) != (v53 == 0))
      {
        DWORD2(v74) = v19 >> (((BYTE12(v70) & 0x20) >> 5) ^ 1) << (((*(a2 + 13) & 0x20u) >> 5) ^ 1);
        HIDWORD(v73) = v53 | v16;
        LODWORD(v74) = v19 >> (((BYTE12(v70) & 0x20) >> 5) ^ 1) << ((v53 >> 5) ^ 1);
        v13 = v53;
      }
    }

    if (((BYTE12(v70) & 0x20) == 0) == (v13 == 0))
    {
      goto LABEL_141;
    }

    v76[0] = v70;
    v76[1] = v71;
    v77 = v72;
    v67 = v73;
    v68 = v74;
    v69 = v75;
    if (HIDWORD(v71) != 2 || HIDWORD(v68) != 2 || (v54 = HIDWORD(v76[0]), v55 = HIDWORD(v67), ((HIDWORD(v76[0]) | HIDWORD(v67)) & 2) != 0))
    {
LABEL_140:
      v5 = a4;
LABEL_141:
      *&v73 = v18;
      *(&v73 + 1) = __PAIR64__(v20, v9);
      *&v74 = v19 | 0x100000000;
      *(&v74 + 1) = __PAIR64__(v12, v19);
      v75 = __PAIR64__(v10, v11);
      return acv2::PCMConverterFactory::BuildSampleFormatConverterChain(&v70, a2, v5);
    }

    v66 = ((BYTE12(v67) & 0x20) == 0) & (HIDWORD(v76[0]) >> 5);
    v56 = IntSampleSize(v76);
    v57 = IntSampleSize(&v67);
    v58 = (v54 >> 7) & 0x3F;
    v59 = (v55 >> 7) & 0x3F;
    if (v56 && v57)
    {
      if (v66)
      {
        if (v58 != 24 || v56 != 4 || v57 != 2)
        {
          goto LABEL_140;
        }

LABEL_129:
        operator new();
      }

      if (v59 != 24 || v56 != 2 || v57 != 4)
      {
        goto LABEL_140;
      }
    }

    else
    {
      if (v66)
      {
        v60 = v57;
        if (FloatSampleSize(v76) != 4 || (v59 != 24 || v60 != 4) && (v59 || v60 != 2))
        {
          goto LABEL_140;
        }

        goto LABEL_129;
      }

      v61 = v58;
      if (FloatSampleSize(&v67) != 4 || (v61 != 24 || v56 != 4) && (v59 || v56 != 2))
      {
        goto LABEL_140;
      }
    }

    operator new();
  }

  v67 = 0uLL;
  *&v68 = 0;
  LODWORD(v76[0]) = 1;
  std::vector<CA::CommonPCMFormat>::push_back[abi:ne200100](&v67, v76);
  if (v22 == 3)
  {
    LODWORD(v76[0]) = 3;
    std::vector<CA::CommonPCMFormat>::push_back[abi:ne200100](&v67, v76);
  }

  v23 = v67;
  __p = v67;
  if (v67 == *(&v67 + 1))
  {
    LOBYTE(v25) = 0;
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v27 = *v23++;
      v26 = v27;
      if (v27 == 3)
      {
        v28 = 1;
      }

      else
      {
        v28 = v25;
      }

      if (v26 == 1)
      {
        v24 = 1;
      }

      else
      {
        v25 = v28;
      }
    }

    while (v23 != *(&v67 + 1));
  }

  v29 = DWORD2(v70) == 1819304813 && DWORD1(v71) == 1;
  if (v29)
  {
    v30 = DWORD2(v71);
    if (DWORD2(v71) == v71 && DWORD2(v71) >= v72 >> 3)
    {
      if (HIDWORD(v71))
      {
        if ((BYTE12(v70) & 0x20) != 0 || (v30 = DWORD2(v71) / HIDWORD(v71), DWORD2(v71) == DWORD2(v71) / HIDWORD(v71) * HIDWORD(v71)))
        {
          v31 = 0;
          if ((BYTE12(v70) & 2) == 0 && 8 * v30 == v72)
          {
            if (BYTE12(v70))
            {
              if ((WORD6(v70) & 0x1F84) != 0)
              {
                goto LABEL_56;
              }

              v31 = 4 * (v30 == 8);
              if (v30 == 4)
              {
                v31 = 1;
              }
            }

            else if ((BYTE12(v70) & 4) != 0)
            {
              v32 = (HIDWORD(v70) >> 7) & 0x3F;
              if (v32 == 24 && v30 == 4)
              {
                v31 = 3;
              }

              else if (v32 || v30 != 4)
              {
                if (v30 == 2 && v32 == 0)
                {
                  v31 = 2;
                }

                else
                {
                  v31 = 0;
                }
              }

              else
              {
                v31 = 5;
              }
            }

            else
            {
              v31 = 0;
            }
          }

          if (((v31 == 3) & v25) != 0 || ((v31 == 1) & v24) != 0)
          {
            goto LABEL_70;
          }
        }
      }
    }
  }

LABEL_56:
  if (v25)
  {
    v34 = 2;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34 & 0xFFFFFFFE | v24 & 1;
  if (v35 <= 1)
  {
    if (!v35)
    {
      goto LABEL_70;
    }

    v36 = 9;
    v37 = BYTE12(v70);
    goto LABEL_67;
  }

  if (v35 == 2)
  {
    v37 = BYTE12(v70);
LABEL_65:
    v36 = 3084;
    goto LABEL_67;
  }

  v37 = BYTE12(v70);
  if ((BYTE12(v70) & 1) == 0)
  {
    goto LABEL_65;
  }

  v36 = 9;
LABEL_67:
  v38 = v37 & 0x20;
  v29 = v38 == 0;
  v39 = v38 | v36;
  v40 = 4 * HIDWORD(v71);
  if (!v29)
  {
    v40 = 4;
  }

  *&v73 = v70;
  DWORD2(v73) = 1819304813;
  HIDWORD(v73) = v39;
  *&v74 = v40 | 0x100000000;
  *(&v74 + 1) = __PAIR64__(HIDWORD(v71), v40);
  v75 = 32;
  v41 = acv2::PCMConverterFactory::BuildSampleFormatConverterChain(&v70, &v70, v5);
  if (v41)
  {
    goto LABEL_99;
  }

LABEL_70:
  v42 = *(a3 + 56);
  v43 = 0;
  if ((v42 - 1) > 2)
  {
    v44 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    goto LABEL_95;
  }

  v44 = 0;
  v45 = dword_18F921080[v42 - 1];
  v46 = BYTE12(v70) & 0x20;
  if (v45 > 2)
  {
    if (v45 != 3)
    {
      if (v45 == 4)
      {
        v47 = v46 | 9;
        if ((BYTE12(v70) & 0x20) != 0)
        {
          v48 = 8;
        }

        else
        {
          v48 = 8 * HIDWORD(v71);
        }

        v51 = 64;
        goto LABEL_94;
      }

      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      if (v45 != 5)
      {
        goto LABEL_95;
      }

      v47 = v46 | 0xC;
      goto LABEL_90;
    }

    v52 = 3084;
LABEL_89:
    v47 = v46 | v52;
LABEL_90:
    if ((BYTE12(v70) & 0x20) != 0)
    {
      v48 = 4;
    }

    else
    {
      v48 = 4 * HIDWORD(v71);
    }

    v51 = 32;
    goto LABEL_94;
  }

  if (v45 == 1)
  {
    v52 = 9;
    goto LABEL_89;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (v45 != 2)
  {
    goto LABEL_95;
  }

  v47 = v46 | 0xC;
  if ((BYTE12(v70) & 0x20) != 0)
  {
    v48 = 2;
  }

  else
  {
    v48 = 2 * HIDWORD(v71);
  }

  v51 = 16;
LABEL_94:
  v49 = 1;
  v43 = v70;
  v44 = 1819304813;
  v50 = HIDWORD(v71);
LABEL_95:
  v41 = 1869627199;
  *&v73 = v43;
  *(&v73 + 1) = __PAIR64__(v47, v44);
  *&v74 = __PAIR64__(v49, v48);
  *(&v74 + 1) = __PAIR64__(v50, v48);
  v75 = v51;
  if ((v11 < 0x19 || (v47 & 1) == 0) && ((v47 & 5) != 4 || v51 <= v11))
  {
    switch(v42)
    {
      case 3:
        operator new();
      case 2:
        operator new();
      case 1:
        operator new();
    }
  }

LABEL_99:
  if (__p)
  {
    operator delete(__p);
  }

  return v41;
}

void sub_18F5E73D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  _ZNSt3__18valarrayIDv8_fED2Ev(a10);
  std::valarray<float>::~valarray(a9);
  acv2::AudioConverterBase::~AudioConverterBase(v17);
  MEMORY[0x193ADF220]();
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AT::ScopedTrace::~ScopedTrace(AT::ScopedTrace *this)
{
  if (*this == 1)
  {
    kdebug_trace();
  }
}

uint64_t acv2::PCMConverterFactory::BuildSampleFormatConverterChain(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a1 != 0.0 && ((v4 = *(a1 + 5), v4 != 0.0) ? (v5 = *a1 == v4) : (v5 = 1), !v5) || *(a1 + 17) != *(a1 + 7) || ((*(a1 + 12) & 0x20) == 0) != ((*(a1 + 52) & 0x20) == 0))
  {
    std::terminate();
  }

  v6 = a1[1];
  v19 = *a1;
  v20 = v6;
  v21 = *(a1 + 4);
  v7 = 3;
  while (1)
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    v24 = *(a1 + 9);
    if ((BYTE12(v22) & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = HIDWORD(v23);
      if (!HIDWORD(v23))
      {
        v9 = (v24 + 7) >> 3;
        goto LABEL_15;
      }
    }

    v9 = DWORD2(v23) / v8;
LABEL_15:
    v10 = HIDWORD(v20);
    HIDWORD(v23) = HIDWORD(v20);
    if ((BYTE12(v19) & 0x20) != 0)
    {
      v10 = 1;
    }

    DWORD1(v23) = 1;
    DWORD2(v23) = v9 * v10;
    HIDWORD(v22) = HIDWORD(v22) & 0xFFFFFFDF | BYTE12(v19) & 0x20;
    LODWORD(v23) = v9 * v10;
    PCMBlitter_CreateBlitter(&v17, &v19, &v22);
    v11 = v17;
    if (v17)
    {
      if (v17 == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    v12 = 4 * HIDWORD(v20);
    if ((BYTE12(v19) & 0x20) != 0)
    {
      v12 = 4;
    }

    *&v22 = v19;
    DWORD2(v22) = 1819304813;
    HIDWORD(v22) = BYTE12(v19) & 0x20 | 9;
    *&v23 = v12 | 0x100000000;
    *(&v23 + 1) = __PAIR64__(HIDWORD(v20), v12);
    v24 = 32;
    PCMBlitter_CreateBlitter(buf, &v19, &v22);
    v17 = *buf;
    v18 = *&buf[16];
    v11 = *buf;
    if (*buf <= 1u)
    {
      break;
    }

LABEL_23:
    switch(v11)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
    }

    v19 = v22;
    v20 = v23;
    v21 = v24;
    if (!--v7)
    {
LABEL_30:
      result = 0;
      v14 = v20;
      *a2 = v19;
      *(a2 + 16) = v14;
      *(a2 + 32) = v21;
      return result;
    }
  }

  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v15 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "PCMConverter.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 738;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to determine suitable PCM converter", buf, 0x12u);
  }

  return 1718449215;
}

uint64_t PCMBlitter_CreateBlitter(const CAStreamBasicDescription *a1, CAStreamBasicDescription *a2, const CAStreamBasicDescription *a3)
{
  while (1)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      result = FloatSampleSize(a2);
      if (!result)
      {
        goto LABEL_194;
      }

      v13 = result;
      v14 = *(a3 + 3);
      if (v14)
      {
        result = FloatSampleSize(a3);
        if (v13 == result)
        {
LABEL_80:
          v35 = a1;
          *a1 = 1;
          goto LABEL_195;
        }

        if (v13 == 4)
        {
          if (result == 8)
          {
            v41 = a1;
            *a1 = 2;
            v42 = Float32ToNativeFloat64;
            goto LABEL_207;
          }

          if (result != -4)
          {
            if (result == -8)
            {
              v41 = a1;
              *a1 = 2;
              v42 = Float32ToSwapFloat64;
              goto LABEL_207;
            }

            goto LABEL_194;
          }
        }

        else
        {
          if (result != 4)
          {
            if ((v13 == 8 || v13 == -8) && !(result + v13))
            {
              v41 = a1;
              *a1 = 2;
              v42 = SwapPCM64_Portable;
              goto LABEL_207;
            }

            goto LABEL_194;
          }

          if (v13 == 8)
          {
            v41 = a1;
            *a1 = 2;
            v42 = NativeFloat64ToFloat32;
LABEL_207:
            *(v41 + 1) = v42;
            *(v41 + 2) = 1065353216;
            return result;
          }

          if (v13 != -4)
          {
            if (v13 == -8)
            {
              v41 = a1;
              *a1 = 2;
              v42 = SwapFloat64ToFloat32;
              goto LABEL_207;
            }

            goto LABEL_194;
          }
        }

LABEL_157:
        v41 = a1;
        *a1 = 2;
        v42 = SwapPCM32_Portable;
        goto LABEL_207;
      }

      if (result != 4)
      {
        goto LABEL_194;
      }

      v10 = IntSampleSize(a3);
      result = CAStreamBasicDescription::PackednessIsSignificant(a3);
      if (result)
      {
        v12 = *(a3 + 3);
        if ((v12 & 0x10) != 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v12 = *(a3 + 3);
        if ((*(a3 + 8) & 7) == 0 || (v12 & 0x10) != 0)
        {
LABEL_81:
          v36 = (v14 >> 7) & 0x3F;
          if (v10 > 2)
          {
            if (v10 == 3)
            {
              if (v36)
              {
                goto LABEL_194;
              }

              v43 = a1;
              *a1 = 2;
              *(a1 + 2) = 1065353216;
              if ((v12 & 2) != 0)
              {
                v44 = Float32ToSwapInt24_Portable;
              }

              else
              {
                v44 = Float32ToNativeInt24_Portable;
              }
            }

            else
            {
              if (v10 != 4)
              {
                goto LABEL_194;
              }

              if (v36)
              {
                v43 = a1;
                *a1 = 3;
                *(a1 + 4) = (1 << v36);
                *(a1 + 5) = 0;
                if ((v12 & 2) != 0)
                {
                  v44 = Float32ToSwapInt32Scaled_Portable;
                }

                else
                {
                  v44 = Float32ToNativeInt32Scaled_ARM;
                }
              }

              else
              {
                v43 = a1;
                *a1 = 2;
                *(a1 + 2) = 1065353216;
                if ((v12 & 2) != 0)
                {
                  v44 = Float32ToSwapInt32_Portable;
                }

                else
                {
                  v44 = Float32ToNativeInt32_ARM;
                }
              }
            }
          }

          else if (v10 == 1)
          {
            if (v36)
            {
              goto LABEL_194;
            }

            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v12 & 4) != 0)
            {
              v44 = Float32ToSInt8;
            }

            else
            {
              v44 = Float32ToUInt8;
            }
          }

          else
          {
            if (v10 != 2 || v36)
            {
              goto LABEL_194;
            }

            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v12 & 2) != 0)
            {
              v44 = Float32ToSwapInt16_Portable;
            }

            else
            {
              v44 = Float32ToNativeInt16_ARM;
            }
          }

          goto LABEL_229;
        }
      }

      LODWORD(v8) = 0;
      v7 = 4;
      goto LABEL_22;
    }

    result = IntSampleSize(a2);
    if (!result)
    {
      goto LABEL_194;
    }

    v7 = result;
    v8 = (v5 >> 7) & 0x3F;
    v9 = *(a3 + 3);
    if (v9)
    {
      break;
    }

    result = IntSampleSize(a3);
    if (!result)
    {
      goto LABEL_194;
    }

    v10 = result;
    if ((CAStreamBasicDescription::PackednessIsSignificant(a2) & 1) != 0 || (*(a2 + 8) & 7) != 0)
    {
      v11 = (*(a2 + 12) >> 4) & 1;
    }

    else
    {
      v11 = 1;
    }

    result = CAStreamBasicDescription::PackednessIsSignificant(a3);
    if (result)
    {
      v12 = *(a3 + 3);
LABEL_47:
      v29 = (v12 >> 4) & 1;
      goto LABEL_48;
    }

    v12 = *(a3 + 3);
    if ((*(a3 + 8) & 7) != 0)
    {
      goto LABEL_47;
    }

    v29 = 1;
LABEL_48:
    v30 = (v9 >> 7) & 0x3F;
    if (v7 == v10 && ((v11 ^ v29) & 1) == 0)
    {
      if (v11)
      {
        if (v8 != v30)
        {
          v10 = v7;
          if (v29)
          {
            goto LABEL_111;
          }

          v10 = v7;
          goto LABEL_22;
        }
      }

      else if (v8 != v30 || *(a2 + 8) != *(a3 + 8))
      {
        goto LABEL_75;
      }

      if (v7 == 1)
      {
        v31 = 4;
      }

      else
      {
        v31 = 6;
      }

      v32 = *(a2 + 3) ^ v12;
      if ((v32 & v31) == 0)
      {
        goto LABEL_80;
      }

      if (v7 != 1 && (v32 & 2) != 0)
      {
        switch(v7)
        {
          case 4:
            goto LABEL_157;
          case 3:
            v41 = a1;
            *a1 = 2;
            v42 = SwapPCM24_Portable;
            goto LABEL_207;
          case 2:
            v41 = a1;
            *a1 = 2;
            v42 = SwapPCM16_ARM;
            goto LABEL_207;
        }
      }
    }

    if (v11 & v29)
    {
LABEL_111:
      if ((((v9 >> 7) | (v5 >> 7)) & 0x3F) == 0)
      {
        if (v10 != 2 || (v12 & 2) != 0)
        {
          if (v7 == 2 && (*(a2 + 12) & 2) == 0)
          {
            if (v10 == 3)
            {
              v43 = a1;
              *a1 = 2;
              *(a1 + 2) = 1065353216;
              if ((v12 & 2) != 0)
              {
                v44 = NativeInt16ToSwapInt24_Portable;
              }

              else
              {
                v44 = NativeInt16ToNativeInt24_Portable;
              }

              goto LABEL_229;
            }

            if (v10 == 1)
            {
              v43 = a1;
              *a1 = 2;
              *(a1 + 2) = 1065353216;
              if ((v12 & 4) != 0)
              {
                v44 = NativeInt16ToSInt8_Portable;
              }

              else
              {
                v44 = NativeInt16ToUInt8_Portable;
              }

              goto LABEL_229;
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            v67 = *(a2 + 3);
            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v67 & 2) != 0)
            {
              v44 = SwapInt24ToNativeInt16_Portable;
            }

            else
            {
              v44 = NativeInt24ToNativeInt16_Portable;
            }

            goto LABEL_229;
          }

          if (v7 == 1)
          {
            v57 = *(a2 + 3);
            v43 = a1;
            *a1 = 2;
            *(a1 + 2) = 1065353216;
            if ((v57 & 4) != 0)
            {
              v44 = SInt8ToNativeInt16_Portable;
            }

            else
            {
              v44 = UInt8ToNativeInt16_Portable;
            }

            goto LABEL_229;
          }
        }
      }

      v45 = *(a2 + 3);
      v46 = 8 * v7 - 1;
      if (((v45 >> 7) & 0x3F) != 0)
      {
        v46 = (v45 >> 7) & 0x3F;
      }

      v47 = (v12 >> 7) & 0x3F;
      if (!v47)
      {
        v47 = 8 * v10 - 1;
      }

      if (v7 == 4 && v10 == 4)
      {
        v48 = v47 - v46;
        if (v47 == v46)
        {
          goto LABEL_194;
        }

        v49 = a1;
        *a1 = 4;
        *(a1 + 4) = 1065353216;
        *(a1 + 5) = v48;
        if ((v45 & 2) != 0)
        {
          if ((v12 & 2) != 0)
          {
            v50 = SwapInt32ToSwapInt32_Portable;
          }

          else
          {
            v50 = SwapInt32ToNativeInt32_Portable;
          }
        }

        else if ((v12 & 2) != 0)
        {
          v50 = NativeInt32ToSwapInt32_Portable;
        }

        else
        {
          v50 = NativeInt32ToNativeInt32_ARM;
        }
      }

      else if (v8 || v10 != 4)
      {
        if (v7 != 4 || v30)
        {
          goto LABEL_194;
        }

        v62 = v46 - v47;
        if (v10 == 3)
        {
          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v62;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt32ToSwapInt24;
            }

            else
            {
              v50 = SwapInt32ToNativeInt24_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt32ToSwapInt24_Portable;
          }

          else
          {
            v50 = NativeInt32ToNativeInt24_ARM;
          }
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_194;
          }

          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v62;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt32ToSwapInt16;
            }

            else
            {
              v50 = SwapInt32ToNativeInt16_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt32ToSwapInt16_Portable;
          }

          else
          {
            v50 = NativeInt32ToNativeInt16_ARM;
          }
        }
      }

      else
      {
        v56 = v47 - v46;
        if (v7 == 3)
        {
          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v56;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt24ToSwapInt32;
            }

            else
            {
              v50 = SwapInt24ToNativeInt32_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt24ToSwapInt32;
          }

          else
          {
            v50 = NativeInt24ToNativeInt32_ARM;
          }
        }

        else
        {
          if (v7 != 2)
          {
            goto LABEL_194;
          }

          v49 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v56;
          if ((v45 & 2) != 0)
          {
            if ((v12 & 2) != 0)
            {
              v50 = SwapInt16ToSwapInt32;
            }

            else
            {
              v50 = SwapInt16ToNativeInt32_Portable;
            }
          }

          else if ((v12 & 2) != 0)
          {
            v50 = NativeInt16ToSwapInt32;
          }

          else
          {
            v50 = NativeInt16ToNativeInt32_ARM;
          }
        }
      }

      *(v49 + 1) = v50;
      return result;
    }

    if (v11)
    {
LABEL_22:
      if ((v12 & 2) != 0)
      {
        *(a3 + 3) = v12 & 0xFFFFFFFD;
      }

      if (v10 == 8)
      {
        v16 = *(a2 + 3);
        if ((v16 & 1) == 0)
        {
          goto LABEL_194;
        }

        v21 = *(a3 + 8);
        if (v21 > 0x20)
        {
          goto LABEL_194;
        }

        if (v7 == 4 && (v16 & 2) == 0)
        {
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v21;
          v44 = Float32ToNativeLowAlignedInt64_ARM;
          goto LABEL_229;
        }

LABEL_42:
        v22 = *a2;
        v23 = *(a2 + 7);
        v25 = v16 & 0x20;
        v24 = v25 == 0;
        v26 = 9;
        goto LABEL_43;
      }

      if (v10 != 4)
      {
        goto LABEL_194;
      }

      v16 = *(a2 + 3);
      if (v16)
      {
        if (v7 == 4 && (v16 & 2) == 0)
        {
          v51 = *(a3 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v51;
          v44 = Float32ToNativeLowAlignedInt32_ARM;
          goto LABEL_229;
        }

        goto LABEL_42;
      }

      v17 = *(a3 + 8);
      if (*(a2 + 8) <= 0x10u && v17 == 16)
      {
        if ((v16 & 2) == 0 && !v8 && v7 == 2)
        {
          v41 = a1;
          *a1 = 2;
          v42 = NativeInt16ToLowAlignedInt32_ARM;
          goto LABEL_207;
        }

        v18 = *(a2 + 7);
        v19 = *(a2 + 3) & 0x20 | 0xC;
        v20 = 2 * v18;
        if ((*(a2 + 3) & 0x20) != 0)
        {
          v20 = 2;
        }

        *a3 = *a2;
        *(a3 + 2) = 1819304813;
        *(a3 + 3) = v19;
        *(a3 + 4) = v20;
        *(a3 + 5) = 1;
        *(a3 + 6) = v20;
        *(a3 + 7) = v18;
        *(a3 + 4) = 16;
      }

      else
      {
        if (v17 > 0x18)
        {
          goto LABEL_194;
        }

        if ((v16 & 2) == 0 && v8 == 24 && v7 == 4)
        {
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v17;
          v44 = Native824FixedToLowAlignedInt32_ARM;
          goto LABEL_229;
        }

        v22 = *a2;
        v23 = *(a2 + 7);
        v25 = *(a2 + 3) & 0x20;
        v24 = v25 == 0;
        v26 = 3084;
LABEL_43:
        v27 = v25 | v26;
        v28 = 4 * v23;
        if (!v24)
        {
          v28 = 4;
        }

        *a3 = v22;
        *(a3 + 2) = 1819304813;
        *(a3 + 3) = v27;
        *(a3 + 4) = v28;
        *(a3 + 5) = 1;
        *(a3 + 6) = v28;
        *(a3 + 7) = v23;
        *(a3 + 4) = 32;
      }
    }

    else
    {
LABEL_75:
      if ((*(a2 + 3) & 2) == 0)
      {
        if (v7 == 8)
        {
          if ((*(a3 + 12) & 1) == 0 || *(a2 + 8) > 0x20u)
          {
            goto LABEL_194;
          }

          v52 = *(a2 + 7);
          v53 = *(a2 + 3) & 0x20 | 9;
          v54 = 4 * v52;
          if ((*(a2 + 3) & 0x20) != 0)
          {
            v54 = 4;
          }

          *a3 = *a2;
          *(a3 + 2) = 1819304813;
          *(a3 + 3) = v53;
          *(a3 + 4) = v54;
          *(a3 + 5) = 1;
          *(a3 + 6) = v54;
          *(a3 + 7) = v52;
          *(a3 + 4) = 32;
          v55 = *(a2 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v55;
          v44 = NativeLowAlignedInt64ToFloat32_ARM;
          goto LABEL_229;
        }

        if (v7 != 4)
        {
          goto LABEL_194;
        }

        if (*(a3 + 12))
        {
          v58 = *(a2 + 7);
          v59 = *(a2 + 3) & 0x20 | 9;
          v60 = 4 * v58;
          if ((*(a2 + 3) & 0x20) != 0)
          {
            v60 = 4;
          }

          *a3 = *a2;
          *(a3 + 2) = 1819304813;
          *(a3 + 3) = v59;
          *(a3 + 4) = v60;
          *(a3 + 5) = 1;
          *(a3 + 6) = v60;
          *(a3 + 7) = v58;
          *(a3 + 4) = 32;
          v61 = *(a2 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v61;
          v44 = NativeLowAlignedInt32ToFloat32_ARM;
          goto LABEL_229;
        }

        v37 = *(a2 + 8);
        if (v37 != 16 || *(a3 + 8) > 0x10u)
        {
          if (v37 > 0x18)
          {
            goto LABEL_194;
          }

          v63 = *(a2 + 7);
          v64 = *(a2 + 3) & 0x20 | 0xC0C;
          v65 = 4 * v63;
          if ((*(a2 + 3) & 0x20) != 0)
          {
            v65 = 4;
          }

          *a3 = *a2;
          *(a3 + 2) = 1819304813;
          *(a3 + 3) = v64;
          *(a3 + 4) = v65;
          *(a3 + 5) = 1;
          *(a3 + 6) = v65;
          *(a3 + 7) = v63;
          *(a3 + 4) = 32;
          v66 = *(a2 + 8);
          v43 = a1;
          *a1 = 4;
          *(a1 + 4) = 1065353216;
          *(a1 + 5) = v66;
          v44 = NativeLowAlignedInt32To824Fixed_ARM;
          goto LABEL_229;
        }

        v38 = *(a2 + 7);
        v39 = *(a2 + 3) & 0x20 | 0xC;
        v40 = 2 * v38;
        if ((*(a2 + 3) & 0x20) != 0)
        {
          v40 = 2;
        }

        *a3 = *a2;
        *(a3 + 2) = 1819304813;
        *(a3 + 3) = v39;
        *(a3 + 4) = v40;
        *(a3 + 5) = 1;
        *(a3 + 6) = v40;
        *(a3 + 7) = v38;
        *(a3 + 4) = 16;
        v41 = a1;
        *a1 = 2;
        v42 = NativeLowAlignedInt32ToInt16_ARM;
        goto LABEL_207;
      }

      v34 = *a2;
      v33 = *(a2 + 1);
      *(a3 + 4) = *(a2 + 4);
      *a3 = v34;
      *(a3 + 1) = v33;
      *(a3 + 3) ^= 2u;
    }
  }

  result = FloatSampleSize(a3);
  if (result != 4)
  {
    goto LABEL_194;
  }

  result = CAStreamBasicDescription::PackednessIsSignificant(a2);
  if (result)
  {
    v15 = *(a2 + 3);
  }

  else
  {
    v15 = *(a2 + 3);
    if ((*(a2 + 8) & 7) == 0)
    {
      goto LABEL_100;
    }
  }

  if ((v15 & 0x10) == 0)
  {
    goto LABEL_75;
  }

LABEL_100:
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v8)
      {
        goto LABEL_194;
      }

      v43 = a1;
      *a1 = 2;
      *(a1 + 2) = 1065353216;
      if ((v15 & 2) != 0)
      {
        v44 = SwapInt24ToFloat32_Portable;
      }

      else
      {
        v44 = NativeInt24ToFloat32_Portable;
      }
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_194;
      }

      if (v8)
      {
        v43 = a1;
        *a1 = 3;
        *(a1 + 4) = 1.0 / (1 << v8);
        *(a1 + 5) = 0;
        if ((v15 & 2) != 0)
        {
          v44 = SwapInt32ToFloat32Scaled_Portable;
        }

        else
        {
          v44 = NativeInt32ToFloat32Scaled_ARM;
        }
      }

      else
      {
        v43 = a1;
        *a1 = 2;
        *(a1 + 2) = 1065353216;
        if ((v15 & 2) != 0)
        {
          v44 = SwapInt32ToFloat32_Portable;
        }

        else
        {
          v44 = NativeInt32ToFloat32_Portable;
        }
      }
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2 && !v8)
      {
        v43 = a1;
        *a1 = 2;
        *(a1 + 2) = 1065353216;
        if ((v15 & 2) != 0)
        {
          v44 = SwapInt16ToFloat32_Portable;
        }

        else
        {
          v44 = NativeInt16ToFloat32_ARM;
        }

        goto LABEL_229;
      }

LABEL_194:
      v35 = a1;
      *a1 = 0;
LABEL_195:
      *(v35 + 1) = 0;
      *(v35 + 2) = 1065353216;
      return result;
    }

    if (v8)
    {
      goto LABEL_194;
    }

    v43 = a1;
    *a1 = 2;
    *(a1 + 2) = 1065353216;
    if ((v15 & 4) != 0)
    {
      v44 = SInt8ToFloat32;
    }

    else
    {
      v44 = UInt8ToFloat32;
    }
  }

LABEL_229:
  *(v43 + 1) = v44;
  return result;
}

uint64_t FloatSampleSize(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 != 1885564203 && v1 != 1819304813 || a1[5] != 1)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[7];
  if (v4 != a1[6] || v5 == 0)
  {
    return 0;
  }

  v7 = a1[3];
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  if (v8 != 64 && v8 != 32)
  {
    return 0;
  }

  v9 = v8 >> 3;
  if (v4)
  {
    if ((v7 & 0x20) != 0)
    {
      v5 = 1;
    }

    v4 /= v5;
  }

  if ((v7 & 2) != 0)
  {
    v10 = -v9;
  }

  else
  {
    v10 = v9;
  }

  if (v4 == v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t IntSampleSize(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 != 1885564203 && v1 != 1819304813 || a1[5] != 1)
  {
    return 0;
  }

  v4 = a1[4];
  if (v4 != a1[6] || a1[7] == 0)
  {
    return 0;
  }

  v6 = 0;
  v8 = a1[3];
  if ((v8 & 1) != 0 || !v4)
  {
    return v6;
  }

  v9 = (v8 & 0x20) != 0 ? 1 : a1[7];
  LODWORD(v6) = v4 / v9;
  if ((v6 - 9) < 0xFFFFFFF8)
  {
    return 0;
  }

  v10 = a1[8];
  if (!v10 || v10 > 8 * v6 || (v8 & 8) != 0 && v10 != 8 * v6)
  {
    return 0;
  }

  if (v6 != 1 && (a1[3] & 4) == 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL acv2::PCMConverterFactory::AddUpReinterleaver(__int128 *a1, __int32 **a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *(a1 + 17);
  v9 = *(a1 + 7);
  result = acv2::MixableFormatPair(v9, v8, *a2, a2[3]);
  v11 = (a5 & 1) == 0 && *(a3 + 120) == 1 && v8 == (*(a3 + 104) - *(a3 + 96)) >> 2;
  if (v8 > v9 || v11 || result)
  {
    v12 = *(a1 + 3);
    v13 = *(a1 + 13) & 0x20;
    goto LABEL_8;
  }

  v12 = *(a1 + 3);
  v13 = *(a1 + 13) & 0x20;
  if (((v12 & 0x20) == 0) != (v13 == 0))
  {
LABEL_8:
    v14 = a1[1];
    v20 = *a1;
    v21 = v14;
    v22 = *(a1 + 4);
    if ((v12 & 0x20) != 0)
    {
      v9 = 1;
    }

    else if (!v9)
    {
      v15 = (*(a1 + 8) + 7) >> 3;
      goto LABEL_13;
    }

    v15 = *(a1 + 6) / v9;
LABEL_13:
    v16 = v12 & 0xFFFFFFDF;
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = v8;
    }

    v18 = v15 * v17;
    *(a1 + 4) = v18;
    *(a1 + 5) = 1;
    *(a1 + 6) = v18;
    *(a1 + 7) = v8;
    *(a1 + 3) = v16 | v13;
    v19 = a1[1];
    v23 = *a1;
    v25 = *(a1 + 4);
    v24 = v19;
    operator new();
  }

  return result;
}

BOOL acv2::MixableFormatPair(unsigned int a1, unsigned int a2, __int32 *a3, __int32 *a4)
{
  if (a1 <= 2)
  {
    if (a2 <= 2)
    {
      v4 = a1 == a2;
      return !v4;
    }

    v5 = *a4;
    if (*a4 != 0x10000)
    {
      if (!v5)
      {
        v5 = a4[2];
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v6 = a4[1];
    goto LABEL_18;
  }

  v5 = *a3;
  if (a2 <= 2)
  {
    if (v5 != 0x10000)
    {
      if (!v5)
      {
        v5 = a3[2];
LABEL_19:
        v4 = v5 == 0;
        return !v4;
      }

LABEL_15:
      v5 = v5;
      goto LABEL_19;
    }

    v6 = a3[1];
LABEL_18:
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v5 = v7.i32[0];
    goto LABEL_19;
  }

  if (v5 == 0x10000)
  {
    v9 = vcnt_s8(a3[1]);
    v9.i16[0] = vaddlv_u8(v9);
    if (!v9.i32[0])
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (!*a3)
    {
      return 0;
    }
  }

  else if (!a3[2])
  {
    return 0;
  }

  v10 = *a4;
  if (*a4 == 0x10000)
  {
    v11 = vcnt_s8(a4[1]);
    v11.i16[0] = vaddlv_u8(v11);
    if (!v11.i32[0])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v10)
  {
    if (*a4)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!a4[2])
  {
    return 0;
  }

LABEL_33:
  if (v5 != v10)
  {
    return 1;
  }

  if (!v5)
  {
    v12 = a3[2];
    if (v12 == a4[2])
    {
      if (!v12)
      {
        return 0;
      }

      v13 = a3 + 3;
      for (i = a4 + 3; *v13 == *i; i += 5)
      {
        if (*v13 == 100)
        {
          v15 = *v13 == *i && *(v13 + 1) == *(i + 1);
          if (!v15 || v13[4] != i[4])
          {
            break;
          }
        }

        result = 0;
        v13 += 5;
        if (!--v12)
        {
          return result;
        }
      }
    }

    return 1;
  }

  if (v5 != 0x10000)
  {
    return 0;
  }

  v4 = a3[1] == a4[1];
  return !v4;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
}

OSStatus AudioUnitGetProperty(AudioUnit inUnit, AudioUnitPropertyID inID, AudioUnitScope inScope, AudioUnitElement inElement, void *outData, UInt32 *ioDataSize)
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

  if (!*(*((**v12)(v12) + 112) + 24))
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
    v17 = *(v12 + 80);
    goto LABEL_18;
  }

  if (v10 == 65 && (v12[11] & 1) != 0)
  {
    if (*ioDataSize != 4)
    {
      return -10851;
    }

    result = 0;
    v17 = *(v12 + 26);
LABEL_18:
    *outData = v17;
    return result;
  }

  v14 = *(*(v13 + 112) + 24);
  v15 = v12[3];

  return v14(v15, v10, v9, v8, outData, ioDataSize);
}

void APComponentInstance::postOpen(RenderContextChangeGenerator *this)
{
  if (*(this->mObserver + 19) == 24949)
  {
    outData = 0;
    ioDataSize = 8;
    Property = AudioUnitGetProperty(this, 0x3Cu, 0, 0, &outData, &ioDataSize);
    v3 = outData;
    if (!Property)
    {
      if (outData)
      {
        std::optional<RenderContextChangeGenerator>::emplace[abi:ne200100]<void({block_pointer} {__strong}&)(AudioUnitRenderContext const*),void>(this + 2, &outData);
        v3 = outData;
      }
    }
  }
}

void __Synchronously_block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

uint64_t __AudioComponentInstanceNew_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  **(a1 + 48) = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
  return (*(*(a1 + 32) + 16))();
}

OSStatus AudioFormatGetProperty(AudioFormatPropertyID inPropertyID, UInt32 inSpecifierSize, const void *inSpecifier, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v8 = inSpecifier;
  v9 = *&inSpecifierSize;
  v138 = *MEMORY[0x1E69E9840];
  if ((!ioPropertyDataSize || !outPropertyData) && inPropertyID != 1752589411 && inPropertyID != 1986093932 && inPropertyID != 1752589667)
  {
    return -50;
  }

  DecoderSpecificBitStreamFromESDS = 1886547824;
  if (inPropertyID <= 1702060907)
  {
    if (inPropertyID > 1668047725)
    {
      if (inPropertyID <= 1668509292)
      {
        if (inPropertyID > 1668116595)
        {
          if (inPropertyID > 1668180323)
          {
            if (inPropertyID == 1668180324)
            {
              if (!inSpecifier)
              {
                return -50;
              }

              v12 = 561213539;
              if (inSpecifierSize < 0xC)
              {
                return v12;
              }

              if (*ioPropertyDataSize >= 8)
              {
                return AudioFormatProperty_CodingNameForDecodeFormatID(inSpecifier, ioPropertyDataSize, outPropertyData);
              }

              return 561211770;
            }

            if (inPropertyID == 1668309350)
            {
              if (!inSpecifier)
              {
                return -50;
              }

              if (inSpecifierSize >= 0x40)
              {
                return AudioFormatProperty_CodecsParameterValueFromAudioFormat(inSpecifier, outPropertyData);
              }

              return 561213539;
            }

            if (inPropertyID != 1668446576)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            if (inSpecifier)
            {
              v12 = 561213539;
              if (inSpecifierSize != 4)
              {
                return v12;
              }

              if (*ioPropertyDataSize == 4)
              {
                AudioFormatProperty_FormatIsEncrypted(*inSpecifier, outPropertyData);
                return 0;
              }

              return 561211770;
            }

            return 2003329396;
          }

          if (inPropertyID != 1668116596)
          {
            if (inPropertyID == 1668178285)
            {
              v12 = 561213539;
              if (*ioPropertyDataSize == 8)
              {
                if (!inSpecifier)
                {
                  return -50;
                }

                if (inSpecifierSize == 20)
                {
                  return AudioFormatProperty_ChannelName(inSpecifier, outPropertyData, inSpecifier, ioPropertyDataSize);
                }

                if (inSpecifierSize != 4)
                {
                  return v12;
                }

                v64 = *inSpecifier;
                *&theDict.mFormatFlags = 0;
                *(&theDict.mSampleRate + 4) = 0.0;
                LODWORD(theDict.mSampleRate) = v64;
                return AudioFormatProperty_ChannelName(&theDict, outPropertyData, inSpecifier, ioPropertyDataSize);
              }

              return 561211770;
            }

            if (inPropertyID == 1668178796)
            {
              if (!inSpecifier)
              {
                return -50;
              }

              return AudioFormatProperty_ChannelLayoutForISOChannelLayout(inSpecifierSize, inSpecifier, 0, ioPropertyDataSize, outPropertyData);
            }

            return DecoderSpecificBitStreamFromESDS;
          }

          v12 = 561213539;
          if (*ioPropertyDataSize != 4)
          {
            return 561211770;
          }

          if (inSpecifierSize < 0xC)
          {
            return v12;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          if (caulk::numeric::exceptional_cast<unsigned int,unsigned long>(20 * *(inSpecifier + 2) + 12) <= inSpecifierSize)
          {
            LODWORD(__p[0].mSampleRate) = 0;
            SanitizeClientAudioChannelLayout(&theDict, v8, v9);
          }

          return v12;
        }

        if (inPropertyID > 1668113259)
        {
          switch(inPropertyID)
          {
            case 0x636D636Cu:
              if (!inSpecifier)
              {
                return -50;
              }

              if (*ioPropertyDataSize < 4)
              {
                return 561211770;
              }

              if (*ioPropertyDataSize != 4)
              {
                *ioPropertyDataSize = 4;
              }

              return AudioFormatProperty_WAVEChannelMaskForChannelLayout(inSpecifier, outPropertyData);
            case 0x636D7062u:
              v12 = 561213539;
              if (inSpecifierSize != 4)
              {
                return v12;
              }

              if (!inSpecifier)
              {
                return -50;
              }

              v65 = (*inSpecifier >> 11) & 0x800 | *inSpecifier & 0xFFA3FFFF | (*inSpecifier >> 6) & 0x7000;
              LODWORD(theDict.mSampleRate) = 0x10000;
              HIDWORD(theDict.mSampleRate) = v65;
              theDict.mFormatID = 0;
              LODWORD(__p[0].mSampleRate) = 0;
              AudioFormatProperty_NumberOfChannelsForLayout(&theDict, __p);
              if (20 * LODWORD(__p[0].mSampleRate) + 12 <= *ioPropertyDataSize)
              {
                AudioFormatProperty_ChannelLayoutForBitmap(v65, outPropertyData, v66);
                return 0;
              }

              return 561211770;
            case 0x636D706Cu:
              v12 = 561213539;
              if (inSpecifierSize != 4)
              {
                return v12;
              }

              if (!inSpecifier)
              {
                return -50;
              }

              v30 = *inSpecifier;
              theDict.mFormatID = 0;
              *&theDict.mSampleRate = v30;
              LODWORD(__p[0].mSampleRate) = 0;
              AudioFormatProperty_NumberOfChannelsForLayout(&theDict, __p);
              if (20 * LODWORD(__p[0].mSampleRate) + 12 <= *ioPropertyDataSize)
              {
                return AudioFormatProperty_ChannelLayoutForTag(v30, outPropertyData);
              }

              return 561211770;
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        if (inPropertyID == 1668047726)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          return AudioFormatProperty_ISOChannelLayoutForChannelLayout(inSpecifier, inSpecifierSize, ioPropertyDataSize, outPropertyData);
        }

        if (inPropertyID != 1668048489)
        {
          if (inPropertyID == 1668051811)
          {
            v12 = 561213539;
            if (inSpecifierSize != 8)
            {
              return v12;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            if (*ioPropertyDataSize == 4)
            {
              return AudioFormat_ComputeLoudnessScalar(*inSpecifier, 1, 0, outPropertyData);
            }

            return 561211770;
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize < 0x38)
        {
          return 561213539;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v20 = 1868786720;
        return GetCodecPropertyFromFormatInfo(inSpecifier, ioPropertyDataSize, outPropertyData, v20);
      }

      if (inPropertyID <= 1701014882)
      {
        if (inPropertyID <= 1685218163)
        {
          if (inPropertyID == 1668509293)
          {
            v12 = 561213539;
            if (*ioPropertyDataSize != 8)
            {
              return 561211770;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            if (inSpecifierSize == 20 || inSpecifierSize == 4)
            {
              return AudioFormatProperty_ChannelShortName(*inSpecifier, outPropertyData, inSpecifier, ioPropertyDataSize);
            }

            return v12;
          }

          if (inPropertyID == 1684235116)
          {
            if (!inSpecifier)
            {
              return -50;
            }

            if (inSpecifierSize == 56)
            {
              return AudioFormatProperty_ChannelLayoutForISOChannelLayout(*(inSpecifier + 12), *(inSpecifier + 5), inSpecifier, ioPropertyDataSize, outPropertyData);
            }

            return 561213539;
          }

          if (inPropertyID != 1684369510)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          if (inSpecifierSize < 0x38)
          {
            return 561213539;
          }

          v20 = 1684369510;
          return GetCodecPropertyFromFormatInfo(inSpecifier, ioPropertyDataSize, outPropertyData, v20);
        }

        if (inPropertyID == 1685218164)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          v12 = 561213539;
          if (inSpecifierSize < 0x48)
          {
            return v12;
          }

          if (*ioPropertyDataSize >= 4)
          {
            return AudioFormat_GetDRCTypeFromPacket(inSpecifier, outPropertyData);
          }

          return 561211770;
        }

        if (inPropertyID != 1685220460)
        {
          if (inPropertyID == 1685283692)
          {
            if (!inSpecifier)
            {
              return -50;
            }

            v12 = 561213539;
            if (inSpecifierSize < 4)
            {
              return v12;
            }

            if (*ioPropertyDataSize >= 0x14)
            {
              *outPropertyData = *inSpecifier;
              SetDefaultChannelPosition(outPropertyData);
              return 0;
            }

            return 561211770;
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        v12 = 561213539;
        if (inSpecifierSize < 4)
        {
          return v12;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        if (*ioPropertyDataSize < 4)
        {
          return 561211770;
        }

        v67 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(*(inSpecifier + 2 * (inSpecifierSize > 0x27)), &theDict);
        v68 = 1;
        if (v67 <= 1633772388)
        {
          if ((v67 - 778924081) < 2)
          {
            goto LABEL_507;
          }

          if (v67 == 778924083)
          {
            if (v9 < 0x28)
            {
              v68 = 18;
            }

            else
            {
              v68 = MPEGAudioMaximumNumberOfDependentPackets(v8, 0);
            }

            goto LABEL_507;
          }

          v85 = 1633772320;
        }

        else
        {
          if (v67 <= 1633889586)
          {
            v69 = v67 - 1633772389;
            if (v69 <= 0xE && ((1 << v69) & 0x488F) != 0)
            {
              goto LABEL_507;
            }

            goto LABEL_658;
          }

          if (v67 == 1633889587 || v67 == 1700997939)
          {
            goto LABEL_507;
          }

          v85 = 1700998451;
        }

        if (v67 != v85)
        {
LABEL_658:
          v68 = 0;
        }

LABEL_507:
        DecoderSpecificBitStreamFromESDS = 0;
        *outPropertyData = v68;
        goto LABEL_508;
      }

      if (inPropertyID > 1701147491)
      {
        if (inPropertyID == 1701147492)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          v32 = AudioFormatProperty_ESDFromESDS(inSpecifier, inSpecifierSize, outPropertyData, ioPropertyDataSize);
          goto LABEL_387;
        }

        if (inPropertyID != 1701406313)
        {
          if (inPropertyID != 1701733230)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v12 = 561213539;
          if (inSpecifierSize >= 8 && *(inSpecifier + 1) + 8 <= inSpecifierSize)
          {
            return AudioFormatProperty_EncapsulatedMagicCookieNameForCodingName(inSpecifier, ioPropertyDataSize, outPropertyData);
          }

          return v12;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v12 = 561213539;
        if (inSpecifierSize < 8)
        {
          return v12;
        }

        if (*ioPropertyDataSize < 4)
        {
          return 561211770;
        }

        v68 = AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(*inSpecifier, *(inSpecifier + 1));
        if (!v68)
        {
          return 560360820;
        }

        goto LABEL_507;
      }

      if (inPropertyID == 1701014883)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        if (inSpecifierSize >= 0x18)
        {
          return AudioFormatProperty_EncapsulatedMagicCookieFromCanonicalMagicCookie(inSpecifier, ioPropertyDataSize, outPropertyData);
        }

        return 561213539;
      }

      if (inPropertyID == 1701077868)
      {
        if (*ioPropertyDataSize != 32)
        {
          return 561211770;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        *outPropertyData = 0u;
        *(outPropertyData + 1) = 0u;
        v36 = AudioFormatProperty_ChannelLayoutFromESD(inSpecifier, inSpecifierSize, outPropertyData);
LABEL_484:
        v12 = v36;
        if (v36)
        {
          return v12;
        }

        DecoderSpecificBitStreamFromESDS = 0;
        goto LABEL_486;
      }

      if (inPropertyID != 1701081956)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      if (*ioPropertyDataSize != 40)
      {
        return 561211770;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      v25 = AudioFormatProperty_ASBDFromESD(inSpecifier, inSpecifierSize, outPropertyData);
LABEL_136:
      v12 = v25;
      if (v25)
      {
        return v12;
      }

      DecoderSpecificBitStreamFromESDS = 0;
      goto LABEL_138;
    }

    if (inPropertyID <= 1634496372)
    {
      if (inPropertyID <= 1633971810)
      {
        if (inPropertyID <= 1633906533)
        {
          if (inPropertyID != 1633776744)
          {
            if (inPropertyID != 1633904998)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            RegistryAccess::instance(*&inPropertyID);
            v31 = qword_1ED746318;
            os_unfair_recursive_lock_lock_with_options();
            v16 = (*(*v31 + 112))(v31, ioPropertyDataSize, outPropertyData);
            goto LABEL_456;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v12 = 561213539;
          if (inSpecifierSize < 0x38)
          {
            return v12;
          }

          if (*ioPropertyDataSize < 4)
          {
            return 561211770;
          }

          CanBeAuthorized = AudioFormatProperty_AudibleProtectedContentCanBeAuthorized(inSpecifier, outPropertyData);
          goto LABEL_94;
        }

        if (inPropertyID == 1633906534)
        {
          RegistryAccess::instance(*&inPropertyID);
          v35 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v16 = (*(*v35 + 120))(v35, ioPropertyDataSize, outPropertyData);
          goto LABEL_456;
        }

        if (inPropertyID != 1633969004)
        {
          if (inPropertyID != 1633971568)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          if (*ioPropertyDataSize != 40)
          {
            return 561211770;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v25 = MPEGPacketParser_ASBDFromMPEGPacket(inSpecifier, inSpecifierSize, outPropertyData);
          goto LABEL_136;
        }
      }

      else
      {
        if (inPropertyID > 1634038641)
        {
          if (inPropertyID != 1634038642)
          {
            if (inPropertyID == 1634100078)
            {
              v12 = 561213539;
              if (inSpecifierSize != 40)
              {
                return v12;
              }

              if (!inSpecifier)
              {
                return -50;
              }

              if (*ioPropertyDataSize == 8)
              {
                AudioFormatProperty_FormatCategoryName(inSpecifier, outPropertyData, inSpecifier, ioPropertyDataSize);
                return 0;
              }

              return 561211770;
            }

            if (inPropertyID != 1634100080)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            if (inSpecifierSize >= 0x10)
            {
              return AudioFormatProperty_AudioFormatFromCodecsParameterValue(inSpecifier, outPropertyData);
            }

            return 561213539;
          }

          RegistryAccess::instance(*&inPropertyID);
          v45 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v16 = (*(*v45 + 136))(v45, v9, v8, ioPropertyDataSize, outPropertyData);
          goto LABEL_456;
        }

        if (inPropertyID == 1633971811)
        {
LABEL_259:
          if (inSpecifierSize != 40)
          {
            return 561213539;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          RegistryAccess::instance(*&inPropertyID);
          v34 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v16 = (*(*v34 + 152))(v34, v8, ioPropertyDataSize, outPropertyData, inPropertyID == 1635151459);
          goto LABEL_456;
        }

        if (inPropertyID == 1634034290)
        {
          RegistryAccess::instance(*&inPropertyID);
          v61 = qword_1ED746318;
          os_unfair_recursive_lock_lock_with_options();
          v16 = (*(*v61 + 128))(v61, v9, v8, ioPropertyDataSize, outPropertyData);
          goto LABEL_456;
        }

        if (inPropertyID != 1634034540)
        {
          return DecoderSpecificBitStreamFromESDS;
        }
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
      v33 = qword_1ED746318;
      os_unfair_recursive_lock_lock_with_options();
      v16 = (*(*v33 + 144))(v33, v8, ioPropertyDataSize, outPropertyData, inPropertyID == 1634034540);
      goto LABEL_456;
    }

    if (inPropertyID <= 1667523439)
    {
      if (inPropertyID <= 1635151458)
      {
        switch(inPropertyID)
        {
          case 0x616C6F75u:
            v12 = 561213539;
            if (inSpecifierSize != 8)
            {
              return v12;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            if (*ioPropertyDataSize != 8)
            {
              return 561211770;
            }

            theDict.mSampleRate = 0.0;
            DecoderSpecificBitStreamFromESDS = AudioFormatProperty_AlbumLoudness(inSpecifier, &theDict);
            goto LABEL_336;
          case 0x61766465u:
            if (inSpecifierSize != 4)
            {
              return 561213539;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            v62 = *inSpecifier;
            RegistryAccess::instance(*&inPropertyID);
            v63 = qword_1ED746318;
            os_unfair_recursive_lock_lock_with_options();
            v16 = (*(*v63 + 104))(v63, v62, ioPropertyDataSize, outPropertyData);
            break;
          case 0x6176656Eu:
            if (inSpecifierSize != 4)
            {
              return 561213539;
            }

            v14 = *inSpecifier;
            RegistryAccess::instance(*&inPropertyID);
            v15 = qword_1ED746318;
            os_unfair_recursive_lock_lock_with_options();
            v16 = (*(*v15 + 96))(v15, v14, ioPropertyDataSize, outPropertyData);
            break;
          default:
            return DecoderSpecificBitStreamFromESDS;
        }

LABEL_456:
        DecoderSpecificBitStreamFromESDS = v16;
        os_unfair_recursive_lock_unlock();
        return DecoderSpecificBitStreamFromESDS;
      }

      if (inPropertyID != 1635151459)
      {
        if (inPropertyID == 1650551910)
        {
          v12 = 561213539;
          if (inSpecifierSize != 24)
          {
            return v12;
          }

          if (inSpecifier)
          {
            *&theDict.mSampleRate = *inSpecifier;
            SanitizeClientAudioChannelLayout(__p, *(inSpecifier + 2), 20 * *(*(inSpecifier + 2) + 8) + 12);
          }

          return -50;
        }

        if (inPropertyID != 1651340391)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        v12 = 561213539;
        if (inSpecifierSize != 4)
        {
          return v12;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        if (*ioPropertyDataSize != 4)
        {
          return 561211770;
        }

        v19 = AudioFormatProperty_BitmapForLayoutTag(*inSpecifier);
        if (!v19)
        {
          return 1718449215;
        }

        goto LABEL_214;
      }

      goto LABEL_259;
    }

    if (inPropertyID <= 1667787890)
    {
      if (inPropertyID != 1667523440)
      {
        if (inPropertyID == 1667786097)
        {
          v12 = 561213539;
          if (*ioPropertyDataSize == 4)
          {
            if (inSpecifierSize != 16)
            {
              return v12;
            }

            if (inSpecifier)
            {
              LODWORD(__n.mSampleRate) = 0;
              SanitizeClientAudioChannelLayout(&theDict, *inSpecifier, 20 * *(*inSpecifier + 8) + 12);
            }

            return -50;
          }

          return 561211770;
        }

        if (inPropertyID == 1667786849)
        {
          v12 = 561213539;
          if (*ioPropertyDataSize == 4)
          {
            if (inSpecifierSize != 8)
            {
              return v12;
            }

            if (inSpecifier)
            {
              operator new[]();
            }

            return -50;
          }

          return 561211770;
        }

        return DecoderSpecificBitStreamFromESDS;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      if (inSpecifierSize >= 0x10)
      {
        return AudioFormatProperty_CanDecodeAudioFormatIndicatedByCodecsParameterValue(inSpecifier, ioPropertyDataSize, outPropertyData);
      }

      return 561213539;
    }

    if (inPropertyID != 1667787891)
    {
      if (inPropertyID == 1667788144)
      {
        v12 = 561213539;
        if (inSpecifierSize != 16)
        {
          return v12;
        }

        if (inSpecifier)
        {
          SanitizeClientAudioChannelLayout(&theDict, *inSpecifier, 20 * *(*inSpecifier + 8) + 12);
        }

        return -50;
      }

      if (inPropertyID == 1668047725)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        v12 = 561213539;
        if (inSpecifierSize == 4)
        {
          v29 = 0;
        }

        else
        {
          if (inSpecifierSize != 8)
          {
            return v12;
          }

          v29 = *(inSpecifier + 1);
        }

        v70 = *inSpecifier;
        v71 = AudioFormatProperty_ChannelLayoutSizeForWAVEChannelMask(*inSpecifier, v29, v5);
        if (*ioPropertyDataSize >= v71)
        {
          if (*ioPropertyDataSize > v71)
          {
            *ioPropertyDataSize = v71;
          }

          AudioFormatProperty_ChannelLayoutForWAVEChannelMask(v70, v29, outPropertyData, v72);
          return 0;
        }

        return 561211770;
      }

      return DecoderSpecificBitStreamFromESDS;
    }

    v12 = 561213539;
    if (inSpecifierSize < 0x51)
    {
      return v12;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    v47 = *(inSpecifier + 19);
    theDict.mSampleRate = *(inSpecifier + 10);
    mSampleRate = theDict.mSampleRate;
    *&theDict.mFormatID = *&theDict.mSampleRate + v47;
    *&theDict.mBytesPerPacket = 0;
    if ((LOBYTE(theDict.mSampleRate) & 3) != 0 && v47)
    {
      v48 = 0;
      v49 = LOBYTE(theDict.mSampleRate) + 1;
      v50 = -8;
      *&v51 = *&theDict.mSampleRate + 1;
      do
      {
        theDict.mFramesPerPacket = v50 + 16;
        theDict.mSampleRate = v51;
        v48 = *(*&v51 - 1) | (v48 << 8);
        theDict.mBytesPerPacket = v48;
        v50 += 8;
        if ((v49 & 3) == 0)
        {
          break;
        }

        ++v49;
        v52 = (*&v51)++ >= (*&mSampleRate + v47);
      }

      while (!v52);
      theDict.mBytesPerPacket = v48 << (24 - v50);
    }

    DecoderSpecificBitStreamFromESDS = 0;
    LODWORD(__n.mSampleRate) = v47;
    v123[0] = 0;
    v53 = *(inSpecifier + 2);
    if (v53 > 1902207330)
    {
      if (v53 > 2053202274)
      {
        if (v53 > 2053202791)
        {
          if (v53 == 2053202792)
          {
            goto LABEL_707;
          }

          if (v53 == 2053464883)
          {
LABEL_592:
            *outPropertyData = bswap32(v53);
            *(outPropertyData + 2) = bswap32(*(inSpecifier + 36)) >> 16;
            *(outPropertyData + 6) = 1;
            if (*ioPropertyDataSize >= 9)
            {
              DecoderSpecificBitStreamFromESDS = 560226676;
              if ((v47 - 46) >= 0xFFFFFFDF && mSampleRate != 0.0 && *ioPropertyDataSize - 8 >= v47 - 8 && *(*&mSampleRate + 4) == 862152036)
              {
                memcpy(outPropertyData + 8, (*&mSampleRate + 8), (v47 - 8));
                DecoderSpecificBitStreamFromESDS = 0;
                *(outPropertyData + 7) = v47 - 8;
                *ioPropertyDataSize = v47;
              }

              return DecoderSpecificBitStreamFromESDS;
            }

            return 561211770;
          }

          v76 = 2053202800;
          goto LABEL_694;
        }

        if (v53 == 2053202275)
        {
          goto LABEL_707;
        }

        v111 = 2053202739;
      }

      else
      {
        if (v53 > 1902207847)
        {
          if (v53 == 1902207848 || v53 == 1902207856)
          {
            goto LABEL_707;
          }

          v54 = 1902469939;
          goto LABEL_571;
        }

        if (v53 == 1902207331)
        {
          goto LABEL_707;
        }

        v111 = 1902207795;
      }
    }

    else
    {
      if (v53 <= 1885430114)
      {
        if (v53 > 1633772399)
        {
          if (v53 != 1633772400)
          {
            if (v53 != 1633889587)
            {
              v54 = 1700998451;
              goto LABEL_571;
            }

LABEL_703:
            *outPropertyData = bswap32(v53);
            *(outPropertyData + 2) = bswap32(*(inSpecifier + 36)) >> 16;
            *(outPropertyData + 6) = 1;
            if (v47 == 10)
            {
              DecoderSpecificBitStreamFromESDS = 0;
              *(outPropertyData + 7) = 10;
              v121 = **&mSampleRate;
              *(outPropertyData + 8) = *(*&mSampleRate + 8);
              *(outPropertyData + 1) = v121;
            }

            else
            {
              if (v47 != 11 || *(*&mSampleRate + 4) != 862151012)
              {
                return 560360820;
              }

              LOWORD(__p[0].mFormatID) = 0;
              *&__p[0].mSampleRate = 30475;
              LODWORD(v128) = 10;
              ConvertAC3MP4CookieToAC3Header(*&mSampleRate, __p, &v128, ioPropertyDataSize);
              DecoderSpecificBitStreamFromESDS = 0;
              *(outPropertyData + 1) = *&__p[0].mSampleRate;
              *(outPropertyData + 8) = __p[0].mFormatID;
              *(outPropertyData + 7) = 10;
            }

            v26 = 18;
            goto LABEL_509;
          }

LABEL_707:
          DecoderSpecificBitStreamFromESDS = ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS(&theDict, &__n, v123);
          if (DecoderSpecificBitStreamFromESDS)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          *outPropertyData = bswap32(v8[2]);
          *(outPropertyData + 2) = bswap32(*(v8 + 36)) >> 16;
          *(outPropertyData + 6) = 1;
          mSampleRate_low = LODWORD(__n.mSampleRate);
          *(outPropertyData + 7) = LOBYTE(__n.mSampleRate);
          memcpy(outPropertyData + 8, (*(v8 + 10) + v123[0]), mSampleRate_low);
          v26 = mSampleRate_low + 8;
          goto LABEL_509;
        }

        if (v53 == 1633772320)
        {
          goto LABEL_707;
        }

        v76 = 1633772392;
LABEL_694:
        if (v53 != v76)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        goto LABEL_707;
      }

      if (v53 > 1885430631)
      {
        if (v53 == 1885430632 || v53 == 1885430640)
        {
          goto LABEL_707;
        }

        v54 = 1885692723;
LABEL_571:
        if (v53 != v54)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        goto LABEL_592;
      }

      if (v53 == 1885430115)
      {
        goto LABEL_707;
      }

      v111 = 1885430579;
    }

    if (v53 != v111)
    {
      return DecoderSpecificBitStreamFromESDS;
    }

    goto LABEL_703;
  }

  if (inPropertyID > 1819242092)
  {
    if (inPropertyID <= 1935962210)
    {
      if (inPropertyID <= 1852992876)
      {
        if (inPropertyID <= 1835230562)
        {
          switch(inPropertyID)
          {
            case 0x6C6F6E6Du:
              v12 = 561213539;
              if (*ioPropertyDataSize == 8)
              {
                if (inSpecifierSize < 0xC)
                {
                  return v12;
                }

                if (inSpecifier)
                {
                  SanitizeClientAudioChannelLayout(&theDict, inSpecifier, inSpecifierSize);
                }

                return -50;
              }

              return 561211770;
            case 0x6C736E6Du:
              v12 = 561213539;
              if (*ioPropertyDataSize == 8)
              {
                if (inSpecifierSize < 0xC)
                {
                  return v12;
                }

                if (inSpecifier)
                {
                  SanitizeClientAudioChannelLayout(&theDict, inSpecifier, inSpecifierSize);
                }

                return -50;
              }

              return 561211770;
            case 0x6D636466u:
              if (*ioPropertyDataSize != 50)
              {
                return 561211770;
              }

              if (!inSpecifier)
              {
                return -50;
              }

              return AudioFormatProperty_FLACdfLaAtomFromOldFLACMagicCookie(inSpecifier, inSpecifierSize, outPropertyData);
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        if (inPropertyID == 1835230563)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          if (inSpecifierSize >= 0x18)
          {
            return AudioFormatProperty_CanonicalMagicCookieFromEncapsulatedMagicCookie(inSpecifier, ioPropertyDataSize, outPropertyData);
          }

          return 561213539;
        }

        if (inPropertyID == 1835884912)
        {
          v12 = 561213539;
          if (inSpecifierSize != 16)
          {
            return v12;
          }

          if (inSpecifier)
          {
            SanitizeClientAudioChannelLayout(&theDict, *inSpecifier, 20 * *(*inSpecifier + 8) + 12);
          }

          return -50;
        }

        if (inPropertyID != 1852008557)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        v12 = 561213539;
        if (*ioPropertyDataSize != 4)
        {
          return 561211770;
        }

        if (inSpecifierSize < 0xC)
        {
          return v12;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        if (20 * *(inSpecifier + 2) + 12 <= inSpecifierSize)
        {
          LODWORD(__p[0].mSampleRate) = 0;
          SanitizeClientAudioChannelLayout(&theDict, inSpecifier, inSpecifierSize);
        }

        return v12;
      }

      if (inPropertyID <= 1885565795)
      {
        if (inPropertyID == 1852992877)
        {
          v12 = 561213539;
          if (inSpecifierSize != 16)
          {
            return v12;
          }

          if (inSpecifier)
          {
            SanitizeClientAudioChannelLayout(&theDict, *inSpecifier, 20 * *(*inSpecifier + 8) + 12);
          }

          return -50;
        }

        if (inPropertyID != 1868983411)
        {
          if (inPropertyID == 1885433453)
          {
            v12 = 561213539;
            if (inSpecifierSize != 32)
            {
              return v12;
            }

            if (inSpecifier)
            {
              v21 = *(inSpecifier + 1);
              *&theDict.mSampleRate = *inSpecifier;
              *&theDict.mBytesPerPacket = v21;
              SanitizeClientAudioChannelLayout(__p, *(&v21 + 1), 20 * *(*(&v21 + 1) + 8) + 12);
            }

            return -50;
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        if (!inSpecifier)
        {
          return 2003329396;
        }

        v12 = 561213539;
        if (!inSpecifierSize)
        {
          return v12;
        }

        if (*ioPropertyDataSize == 48)
        {
          LODWORD(__p[0].mSampleRate) = 0;
          DecoderSpecificBitStreamFromESDS = FetchFormatListFromCodecs(GetOutputFormatListFromCodec, inSpecifier, inSpecifierSize, __p, 0);
          if (DecoderSpecificBitStreamFromESDS)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          CADeprecated::CAAutoFree<AudioFormatListItem>::CAAutoFree(&theDict, LODWORD(__p[0].mSampleRate), 1);
          if (LODWORD(__p[0].mSampleRate) < 0x30)
          {
            DecoderSpecificBitStreamFromESDS = 561211770;
            goto LABEL_650;
          }

          FormatListFromCodecs = FetchFormatListFromCodecs(GetOutputFormatListFromCodec, v8, v9, __p, *&theDict.mSampleRate);
LABEL_649:
          DecoderSpecificBitStreamFromESDS = FormatListFromCodecs;
          if (!FormatListFromCodecs)
          {
            v101 = theDict.mSampleRate;
            v103 = *(*&theDict.mSampleRate + 16);
            v102 = *(*&theDict.mSampleRate + 32);
            *outPropertyData = **&theDict.mSampleRate;
            *(outPropertyData + 1) = v103;
            *(outPropertyData + 2) = v102;
LABEL_653:
            free(*&v101);
            return DecoderSpecificBitStreamFromESDS;
          }

LABEL_650:
          *ioPropertyDataSize = 0;
          v101 = theDict.mSampleRate;
          if (!*&theDict.mSampleRate)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          goto LABEL_653;
        }

        if (*ioPropertyDataSize >= 0x30)
        {
          return FetchFormatListFromCodecs(GetOutputFormatListFromCodec, inSpecifier, inSpecifierSize, ioPropertyDataSize, outPropertyData);
        }

        return 561211770;
      }

      if (inPropertyID == 1885565796)
      {
        if (*ioPropertyDataSize != 40)
        {
          return 561211770;
        }

        v12 = -50;
        if (inSpecifierSize == 14 && inSpecifier)
        {
          return AudioFormatProperty_ASBDForISOPCMConfig(inSpecifier, outPropertyData);
        }

        return v12;
      }

      if (inPropertyID != 1886677364)
      {
        if (inPropertyID != 1935893602)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize != 8)
        {
          return 561213539;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        DecoderSpecificBitStreamFromESDS = 0;
        *outPropertyData = AudioFormatProperty_SoundCheckVolumeDB(*inSpecifier, 8, inSpecifier);
LABEL_508:
        v26 = 4;
        goto LABEL_509;
      }

      v12 = 561213539;
      if (!inSpecifierSize)
      {
        return v12;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      if (*ioPropertyDataSize < 0x10)
      {
        return 561211770;
      }

      DecoderSpecificBitStreamFromESDS = ParseiTunesSMPBData(inSpecifier, inSpecifierSize, outPropertyData);
      v26 = 16;
LABEL_509:
      *ioPropertyDataSize = v26;
      return DecoderSpecificBitStreamFromESDS;
    }

    if (inPropertyID <= 1986946670)
    {
      if (inPropertyID > 1952540514)
      {
        if (inPropertyID != 1952540515)
        {
          if (inPropertyID == 1986093932)
          {
            SanitizeClientAudioChannelLayout(&theDict, inSpecifier, inSpecifierSize);
          }

          if (inPropertyID != 1986225251)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          if (!inSpecifier)
          {
            return -50;
          }

          v12 = 561213539;
          if (inSpecifierSize < 0x80)
          {
            return v12;
          }

          if (*ioPropertyDataSize >= 4)
          {
            return AudioFormatProperty_IsValidCodecConfiguration(inSpecifier, ioPropertyDataSize, outPropertyData);
          }

          return 561211770;
        }

        if (inSpecifierSize == 4)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          v39 = 0;
          v40 = *inSpecifier;
          v41 = *ioPropertyDataSize >> 2;
          v42 = 2u;
          do
          {
            if (v42 != 49 && gAllLayoutTags[v42] == v40)
            {
              if (outPropertyData && v39 < v41)
              {
                *(outPropertyData + v39) = gAllLayoutTags[v42];
              }

              ++v39;
            }

            ++v42;
          }

          while (v42 != 122);
          DecoderSpecificBitStreamFromESDS = 0;
          v26 = 4 * v39;
          goto LABEL_509;
        }

        return 561213539;
      }

      if (inPropertyID == 1935962211)
      {
        v12 = -50;
        if (inSpecifierSize == 40 && inSpecifier)
        {
          if (*ioPropertyDataSize < 0xE)
          {
            return 561211770;
          }

          if (*ioPropertyDataSize != 14)
          {
            *ioPropertyDataSize = 14;
          }

          return AudioFormatProperty_ISOPCMConfigForASBD(inSpecifier, outPropertyData);
        }

        return v12;
      }

      if (inPropertyID == 1936286825)
      {
        if (inSpecifierSize < 0x38)
        {
          return 561213539;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v20 = 1936286825;
        return GetCodecPropertyFromFormatInfo(inSpecifier, ioPropertyDataSize, outPropertyData, v20);
      }

      if (inPropertyID != 1936745324)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      v12 = 561213539;
      if (inSpecifierSize < 0x20)
      {
        return v12;
      }

      if (*ioPropertyDataSize < 4)
      {
        return 561211770;
      }

      v19 = AudioFormatProperty_SpeakerHemispheresForChannelLayout(inSpecifier, *&inSpecifierSize);
LABEL_214:
      DecoderSpecificBitStreamFromESDS = 0;
      *outPropertyData = v19;
      return DecoderSpecificBitStreamFromESDS;
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
          return AudioFormatProperty_VorbisModeInfoFromFormatInfo(inSpecifier, ioPropertyDataSize, outPropertyData);
        }

        return 561213539;
      }

      if (inPropertyID == 1987076466)
      {
        if (!inSpecifier)
        {
          return -50;
        }

        if (inSpecifierSize < 0x38)
        {
          return 561213539;
        }

        v20 = 1987076466;
        return GetCodecPropertyFromFormatInfo(inSpecifier, ioPropertyDataSize, outPropertyData, v20);
      }

      if (inPropertyID != 2020106611)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      v12 = 561213539;
      if (inSpecifierSize < 8)
      {
        return v12;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      DecoderSpecificBitStreamFromESDS = 0;
      v23 = bswap32(*inSpecifier);
      if (v23 > 1902207330)
      {
        if (v23 > 2053202274)
        {
          if (v23 > 2053202799)
          {
            if (v23 == 2053464883 || v23 == 2053319475)
            {
              goto LABEL_638;
            }

            v75 = 25456;
          }

          else
          {
            if (v23 == 2053202275)
            {
              goto LABEL_626;
            }

            if (v23 == 2053202739)
            {
              goto LABEL_609;
            }

            v75 = 25448;
          }

          v24 = v75 | 0x7A610000;
        }

        else
        {
          if (v23 > 1902207855)
          {
            if (v23 == 1902207856)
            {
              goto LABEL_626;
            }

            if (v23 == 1902324531)
            {
              goto LABEL_638;
            }

            v86 = 1902469939;
            goto LABEL_619;
          }

          if (v23 == 1902207331)
          {
            goto LABEL_626;
          }

          if (v23 == 1902207795)
          {
            goto LABEL_609;
          }

          v24 = 1902207848;
        }
      }

      else
      {
        if (v23 <= 1885430114)
        {
          if (v23 <= 1633889586)
          {
            if (v23 != 1633772320 && v23 != 1633772392)
            {
              v24 = 1633772400;
              goto LABEL_625;
            }

LABEL_626:
            DecoderConfigDescr::DecoderConfigDescr(&theDict);
            memset(__p, 0, 40);
            std::vector<unsigned char>::vector[abi:ne200100](&__n, *(v8 + 7) + 2);
            bzero(&theDict, 0x4C8uLL);
            **&__n.mSampleRate = 5;
            v89 = *(v8 + 7);
            *(*&__n.mSampleRate + 1) = v89;
            memcpy((*&__n.mSampleRate + 2), v8 + 2, v89);
            *v123 = __n.mSampleRate;
            v124 = (*&__n.mSampleRate + __n.mFormatID - LODWORD(__n.mSampleRate));
            v125 = 0;
            if ((LOBYTE(__n.mSampleRate) & 3) != 0 && __n.mFormatID != LODWORD(__n.mSampleRate))
            {
              v90 = 0;
              v91 = LOBYTE(__n.mSampleRate) + 1;
              v92 = -8;
              v93 = *&__n.mSampleRate + 1;
              do
              {
                HIDWORD(v125) = v92 + 16;
                *v123 = v93;
                v90 = *(v93 - 1) | (v90 << 8);
                LODWORD(v125) = v90;
                v92 += 8;
                if ((v91 & 3) == 0)
                {
                  break;
                }

                ++v91;
                v52 = v93++ >= *&__n.mSampleRate + (__n.mFormatID - LODWORD(__n.mSampleRate));
              }

              while (!v52);
              LODWORD(v125) = v90 << (24 - v92);
            }

            DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(&theDict, v123, 0);
            DecoderSpecificBitStreamFromESDS = 1718449215;
            if (!DecoderConfigDescr::GetASBD(&theDict, __p) && *ioPropertyDataSize >= 0x28)
            {
              DecoderSpecificBitStreamFromESDS = 0;
              __p[0].mFormatID = bswap32(*v8);
              v94 = *&__p[0].mBytesPerPacket;
              *(outPropertyData + 4) = *&__p[0].mBitsPerChannel;
              *outPropertyData = *&__p[0].mSampleRate;
              *(outPropertyData + 1) = v94;
              *ioPropertyDataSize = 40;
            }

            v95 = __n.mSampleRate;
            if (!*&__n.mSampleRate)
            {
              goto LABEL_691;
            }

            *&__n.mFormatID = __n.mSampleRate;
LABEL_690:
            operator delete(*&v95);
LABEL_691:
            p_theDict = &theDict;
LABEL_737:
            DecoderConfigDescr::~DecoderConfigDescr(p_theDict);
            return DecoderSpecificBitStreamFromESDS;
          }

          if (v23 != 1633889587)
          {
            if (v23 != 1700997939)
            {
              v86 = 1700998451;
LABEL_619:
              if (v23 != v86)
              {
                return DecoderSpecificBitStreamFromESDS;
              }
            }

LABEL_638:
            if (*ioPropertyDataSize <= 0x27)
            {
              goto LABEL_639;
            }

            v26 = 0;
            DecoderSpecificBitStreamFromESDS = 560226676;
            memset(__p, 0, 40);
            v96 = *(inSpecifier + 7);
            if ((v96 - 5) > 0x20 || v96 > 0x25)
            {
              goto LABEL_509;
            }

            v97 = v96 + 8;
            LODWORD(theDict.mSampleRate) = (v96 + 8) << 24;
            HIDWORD(theDict.mSampleRate) = 862152036;
            memcpy(&theDict.mFormatID, v8 + 2, v96);
            DecoderSpecificBitStreamFromESDS = ParseEAC3MP4Cookie(&theDict, v97, 0, 0, __p, 0, v98, v99, v122, v123[0], v124, v125);
            *ioPropertyDataSize = 0;
            if (DecoderSpecificBitStreamFromESDS)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            v100 = bswap32(*v8);
            if (v100 > 1902324530)
            {
              if (v100 == 1902324531)
              {
                v100 = 1902469939;
              }

              else if (v100 == 2053319475)
              {
                v100 = 2053464883;
              }
            }

            else if (v100 == 1700997939)
            {
              v100 = 1700998451;
            }

            else if (v100 == 1885547315)
            {
              v100 = 1885692723;
            }

            DecoderSpecificBitStreamFromESDS = 0;
            __p[0].mFormatID = v100;
            v87 = *&__p[0].mBytesPerPacket;
            *(outPropertyData + 4) = *&__p[0].mBitsPerChannel;
            v88 = *&__p[0].mSampleRate;
            goto LABEL_751;
          }

LABEL_609:
          DecoderSpecificBitStreamFromESDS = 1718449215;
          memset(&theDict, 0, sizeof(theDict));
          if (ParseAC3Header(inSpecifier + 8, *(inSpecifier + 7), &theDict, 0, 0, 0, 0, 0) || *ioPropertyDataSize < 0x28)
          {
            v26 = 0;
            goto LABEL_509;
          }

          DecoderSpecificBitStreamFromESDS = 0;
          theDict.mFormatID = bswap32(*v8);
          *(outPropertyData + 4) = *&theDict.mBitsPerChannel;
          v88 = *&theDict.mSampleRate;
          v87 = *&theDict.mBytesPerPacket;
LABEL_751:
          *outPropertyData = v88;
          *(outPropertyData + 1) = v87;
LABEL_138:
          v26 = 40;
          goto LABEL_509;
        }

        if (v23 > 1885430639)
        {
          if (v23 == 1885430640)
          {
            goto LABEL_626;
          }

          if (v23 == 1885547315)
          {
            goto LABEL_638;
          }

          v86 = 1885692723;
          goto LABEL_619;
        }

        if (v23 == 1885430115)
        {
          goto LABEL_626;
        }

        if (v23 == 1885430579)
        {
          goto LABEL_609;
        }

        v24 = 1885430632;
      }

LABEL_625:
      if (v23 != v24)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      goto LABEL_626;
    }

    if (inPropertyID != 2020107116)
    {
      if (inPropertyID != 2020109667)
      {
        if (inPropertyID != 2020110438)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (inSpecifierSize >= 8)
        {
          if (!inSpecifier)
          {
            return -50;
          }

          DecoderSpecificBitStreamFromESDS = 0;
          *outPropertyData = bswap32(*(inSpecifier + 2)) >> 16;
          v26 = 2;
          goto LABEL_509;
        }

        return 561213539;
      }

      if (inSpecifierSize < 8)
      {
        return 561213539;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      DecoderSpecificBitStreamFromESDS = 0;
      v59 = bswap32(*inSpecifier);
      if (v59 > 1902207330)
      {
        if (v59 > 2053202274)
        {
          if (v59 > 2053202791)
          {
            if (v59 == 2053202792)
            {
              goto LABEL_722;
            }

            if (v59 == 2053464883)
            {
              goto LABEL_598;
            }

            v77 = 2053202800;
            goto LABEL_711;
          }

          if (v59 == 2053202275)
          {
            goto LABEL_722;
          }

          v113 = 2053202739;
        }

        else
        {
          if (v59 > 1902207847)
          {
            if (v59 == 1902207848 || v59 == 1902207856)
            {
              goto LABEL_722;
            }

            v60 = 1902469939;
            goto LABEL_581;
          }

          if (v59 == 1902207331)
          {
            goto LABEL_722;
          }

          v113 = 1902207795;
        }
      }

      else
      {
        if (v59 <= 1885430114)
        {
          if (v59 > 1633772399)
          {
            if (v59 != 1633772400)
            {
              if (v59 != 1633889587)
              {
                v60 = 1700998451;
                goto LABEL_581;
              }

LABEL_720:
              v114 = *(inSpecifier + 7);
              if (*ioPropertyDataSize < v114)
              {
                return 1718449215;
              }

              return ConvertAC3HeaderToAC3MP4Cookie(inSpecifier + 8, v114, outPropertyData, ioPropertyDataSize);
            }

LABEL_722:
            DecoderConfigDescr::DecoderConfigDescr(__p);
            memset(&__n, 0, sizeof(__n));
            std::vector<unsigned char>::vector[abi:ne200100](&v128, *(v8 + 7) + 2);
            bzero(__p, 0x4C8uLL);
            *v128 = 5;
            v115 = *(v8 + 7);
            *(v128 + 1) = v115;
            memcpy(v128 + 2, v8 + 2, v115);
            v126[0] = v128;
            v126[1] = v128 + (v129 - v128);
            v127 = 0;
            if ((v128 & 3) != 0 && v129 != v128)
            {
              v116 = 0;
              v117 = v128 + 1;
              v118 = -8;
              v119 = v128 + 1;
              do
              {
                HIDWORD(v127) = v118 + 16;
                v126[0] = v119;
                v116 = *(v119 - 1) | (v116 << 8);
                LODWORD(v127) = v116;
                v118 += 8;
                if ((v117 & 3) == 0)
                {
                  break;
                }

                ++v117;
                v52 = v119++ >= v128 + (v129 - v128);
              }

              while (!v52);
              LODWORD(v127) = v116 << (24 - v118);
            }

            DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(__p, v126, 0);
            DecoderSpecificBitStreamFromESDS = 1718449215;
            DecoderConfigDescr::GetASBD(__p, &__n);
            __p[0].mFormatID = 64;
            *&__p[0].mFormatFlags = 5;
            __p[0].mChannelsPerFrame = 0;
            *&__p[0].mFramesPerPacket = 6144 * __n.mChannelsPerFrame;
            DecoderConfigDescr::DecoderConfigDescr(v136);
            MP4AudioESDS::SetDecoderConfigDescriptor(&theDict, __p);
            if (v136[2] == 64)
            {
              v120 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(v136) + 37;
            }

            else
            {
              v120 = 19;
            }

            if (*ioPropertyDataSize >= v120)
            {
              operator new[]();
            }

            MP4AudioESDS::~MP4AudioESDS(&theDict);
            if (v128)
            {
              v129 = v128;
              operator delete(v128);
            }

            p_theDict = __p;
            goto LABEL_737;
          }

          if (v59 == 1633772320)
          {
            goto LABEL_722;
          }

          v77 = 1633772392;
LABEL_711:
          if (v59 != v77)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

          goto LABEL_722;
        }

        if (v59 > 1885430631)
        {
          if (v59 == 1885430632 || v59 == 1885430640)
          {
            goto LABEL_722;
          }

          v60 = 1885692723;
LABEL_581:
          if (v59 != v60)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

LABEL_598:
          v83 = *(inSpecifier + 7);
          if ((v83 - 5) <= 0x20 && outPropertyData && (v84 = v83 + 8, *ioPropertyDataSize >= v83 + 8))
          {
            *outPropertyData = v84 << 24;
            *(outPropertyData + 1) = 862152036;
            memcpy(outPropertyData + 8, v8 + 2, v83);
            DecoderSpecificBitStreamFromESDS = 0;
            *ioPropertyDataSize = v84;
          }

          else
          {
            DecoderSpecificBitStreamFromESDS = 1718449215;
            *ioPropertyDataSize = 0;
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        if (v59 == 1885430115)
        {
          goto LABEL_722;
        }

        v113 = 1885430579;
      }

      if (v59 != v113)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      goto LABEL_720;
    }

    v12 = 561213539;
    if (inSpecifierSize < 8)
    {
      return v12;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    DecoderSpecificBitStreamFromESDS = 0;
    v43 = bswap32(*inSpecifier);
    if (v43 > 1902207330)
    {
      if (v43 > 2053202274)
      {
        if (v43 > 2053202791)
        {
          if (v43 == 2053202792)
          {
            goto LABEL_676;
          }

          if (v43 == 2053464883)
          {
LABEL_587:
            if (*ioPropertyDataSize <= 0x1F)
            {
LABEL_639:
              *ioPropertyDataSize = 0;
              return 561211770;
            }

            v26 = 0;
            DecoderSpecificBitStreamFromESDS = 560226676;
            LODWORD(__p[0].mSampleRate) = 0;
            v78 = *(inSpecifier + 7);
            if ((v78 - 5) > 0x20 || v78 > 0x25)
            {
              goto LABEL_509;
            }

            v79 = v78 + 8;
            LODWORD(theDict.mSampleRate) = (v78 + 8) << 24;
            HIDWORD(theDict.mSampleRate) = 862152036;
            memcpy(&theDict.mFormatID, v8 + 2, v78);
            DecoderSpecificBitStreamFromESDS = ParseEAC3MP4Cookie(&theDict, v79, 0, 0, 0, __p, v80, v81, v122, v123[0], v124, v125);
            *ioPropertyDataSize = 0;
            if (DecoderSpecificBitStreamFromESDS)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            *(outPropertyData + 12) = 0;
            *(outPropertyData + 4) = 0;
            *(outPropertyData + 7) = 0;
            *(outPropertyData + 20) = 0;
            v82 = LODWORD(__p[0].mSampleRate);
LABEL_675:
            *outPropertyData = v82;
LABEL_486:
            v26 = 32;
            goto LABEL_509;
          }

          v74 = 2053202800;
          goto LABEL_661;
        }

        if (v43 == 2053202275)
        {
          goto LABEL_676;
        }

        v104 = 2053202739;
      }

      else
      {
        if (v43 > 1902207847)
        {
          if (v43 == 1902207848 || v43 == 1902207856)
          {
            goto LABEL_676;
          }

          v44 = 1902469939;
          goto LABEL_553;
        }

        if (v43 == 1902207331)
        {
          goto LABEL_676;
        }

        v104 = 1902207795;
      }
    }

    else
    {
      if (v43 <= 1885430114)
      {
        if (v43 > 1633772399)
        {
          if (v43 != 1633772400)
          {
            if (v43 != 1633889587)
            {
              v44 = 1700998451;
              goto LABEL_553;
            }

LABEL_670:
            LODWORD(theDict.mSampleRate) = 0;
            if (ParseAC3Header(inSpecifier + 8, *(inSpecifier + 7), 0, &theDict, 0, 0, 0, 0))
            {
              DecoderSpecificBitStreamFromESDS = 1718449215;
            }

            else
            {
              DecoderSpecificBitStreamFromESDS = 0;
            }

            if (*ioPropertyDataSize < 0x20)
            {
              return DecoderSpecificBitStreamFromESDS;
            }

            *(outPropertyData + 12) = 0;
            *(outPropertyData + 4) = 0;
            *(outPropertyData + 7) = 0;
            *(outPropertyData + 20) = 0;
            v82 = LODWORD(theDict.mSampleRate);
            goto LABEL_675;
          }

LABEL_676:
          DecoderConfigDescr::DecoderConfigDescr(&theDict);
          std::vector<unsigned char>::vector[abi:ne200100](__p, *(v8 + 7) + 2);
          v123[0] = 0;
          bzero(&theDict, 0x4C8uLL);
          **&__p[0].mSampleRate = 5;
          v105 = *(v8 + 7);
          *(*&__p[0].mSampleRate + 1) = v105;
          memcpy((*&__p[0].mSampleRate + 2), v8 + 2, v105);
          __n.mSampleRate = __p[0].mSampleRate;
          *&__n.mFormatID = *&__p[0].mSampleRate + __p[0].mFormatID - LODWORD(__p[0].mSampleRate);
          *&__n.mBytesPerPacket = 0;
          if ((LOBYTE(__p[0].mSampleRate) & 3) != 0 && __p[0].mFormatID != LODWORD(__p[0].mSampleRate))
          {
            v106 = 0;
            v107 = LOBYTE(__p[0].mSampleRate) + 1;
            v108 = -8;
            v109 = *&__p[0].mSampleRate + 1;
            do
            {
              __n.mFramesPerPacket = v108 + 16;
              *&__n.mSampleRate = v109;
              v106 = *(v109 - 1) | (v106 << 8);
              __n.mBytesPerPacket = v106;
              v108 += 8;
              if ((v107 & 3) == 0)
              {
                break;
              }

              ++v107;
              v52 = v109++ >= *&__p[0].mSampleRate + (__p[0].mFormatID - LODWORD(__p[0].mSampleRate));
            }

            while (!v52);
            __n.mBytesPerPacket = v106 << (24 - v108);
          }

          DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(&theDict, &__n, 0);
          if (DecoderConfigDescr::GetChannelLayoutTag(&theDict, v123))
          {
            DecoderSpecificBitStreamFromESDS = 1718449215;
          }

          else
          {
            DecoderSpecificBitStreamFromESDS = 0;
          }

          if (*ioPropertyDataSize >= 0x20)
          {
            *(outPropertyData + 12) = 0;
            *(outPropertyData + 4) = 0;
            *(outPropertyData + 7) = 0;
            *(outPropertyData + 20) = 0;
            *outPropertyData = v123[0];
            *ioPropertyDataSize = 32;
          }

          v95 = __p[0].mSampleRate;
          if (!*&__p[0].mSampleRate)
          {
            goto LABEL_691;
          }

          *&__p[0].mFormatID = __p[0].mSampleRate;
          goto LABEL_690;
        }

        if (v43 == 1633772320)
        {
          goto LABEL_676;
        }

        v74 = 1633772392;
LABEL_661:
        if (v43 != v74)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        goto LABEL_676;
      }

      if (v43 > 1885430631)
      {
        if (v43 == 1885430632 || v43 == 1885430640)
        {
          goto LABEL_676;
        }

        v44 = 1885692723;
LABEL_553:
        if (v43 != v44)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        goto LABEL_587;
      }

      if (v43 == 1885430115)
      {
        goto LABEL_676;
      }

      v104 = 1885430579;
    }

    if (v43 != v104)
    {
      return DecoderSpecificBitStreamFromESDS;
    }

    goto LABEL_670;
  }

  if (inPropertyID > 1719034481)
  {
    if (inPropertyID <= 1768187245)
    {
      if (inPropertyID <= 1768174435)
      {
        switch(inPropertyID)
        {
          case 0x66766272u:
            goto LABEL_142;
          case 0x68766463u:
            if (inSpecifierSize != 4)
            {
              return 561213539;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            v55 = *inSpecifier;
            RegistryAccess::instance(*&inPropertyID);
            v56 = qword_1ED746318;
            os_unfair_recursive_lock_lock_with_options();
            v16 = (*(*v56 + 104))(v56, v55, 0, 0);
            break;
          case 0x68766563u:
            if (inSpecifierSize != 4)
            {
              return 561213539;
            }

            if (!inSpecifier)
            {
              return -50;
            }

            v17 = *inSpecifier;
            RegistryAccess::instance(*&inPropertyID);
            v18 = qword_1ED746318;
            os_unfair_recursive_lock_lock_with_options();
            v16 = (*(*v18 + 96))(v18, v17, 0, 0);
            break;
          default:
            return DecoderSpecificBitStreamFromESDS;
        }

        goto LABEL_456;
      }

      if (inPropertyID != 1768174436)
      {
        if (inPropertyID == 1768174451)
        {
          if (inSpecifierSize >= 0xA)
          {
            if (!inSpecifier)
            {
              return -50;
            }

            if (*inSpecifier != 84 || *(inSpecifier + 1) != 65 || *(inSpecifier + 2) != 71)
            {
              *&theDict.mSampleRate = &unk_1F0337350;
              LOBYTE(theDict.mFormatID) = 0;
              *&theDict.mBytesPerFrame = &theDict.mBytesPerFrame;
              *&theDict.mBitsPerChannel = &theDict.mBytesPerFrame;
              v132 = 0;
              v133 = 0;
              v135[0] = 0;
              v134 = 0;
              *(v135 + 7) = 0;
              *(&theDict.mFormatID + 1) = *inSpecifier;
              *(&theDict.mBytesPerPacket + 1) = *(inSpecifier + 4);
              if (!ID3TagBase::Init(&theDict))
              {
                v12 = 2003329396;
                *&theDict.mSampleRate = &unk_1F0337350;
                std::__list_imp<ID3FrameInfo>::clear(&theDict.mBytesPerFrame);
                return v12;
              }

              *ioPropertyDataSize = 4;
              *outPropertyData = v134;
              *&theDict.mSampleRate = &unk_1F0337350;
              std::__list_imp<ID3FrameInfo>::clear(&theDict.mBytesPerFrame);
              return 0;
            }

            DecoderSpecificBitStreamFromESDS = 0;
            *outPropertyData = 128;
            return DecoderSpecificBitStreamFromESDS;
          }

          return 561213539;
        }

        if (inPropertyID != 1768186734)
        {
          return DecoderSpecificBitStreamFromESDS;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v12 = 561213539;
        if (inSpecifierSize >= 8 && *(inSpecifier + 1) + 8 <= inSpecifierSize)
        {
          return AudioFormatProperty_DecodeFormatIDsForCodingName(inSpecifier, ioPropertyDataSize, outPropertyData);
        }

        return v12;
      }

      if (inSpecifierSize < 0xA)
      {
        return 561213539;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      theDict.mSampleRate = 0.0;
      if (AudioFormatProperty_ID3TagToDictionary(inSpecifier, inSpecifierSize, &theDict))
      {
        return 2003329396;
      }

      DecoderSpecificBitStreamFromESDS = 0;
LABEL_336:
      *outPropertyData = theDict.mSampleRate;
      return DecoderSpecificBitStreamFromESDS;
    }

    if (inPropertyID > 1769172322)
    {
      switch(inPropertyID)
      {
        case 0x69736D63u:
          if (!inSpecifier)
          {
            return -50;
          }

          return GetMagicCookieFromISOSampleEntry(inSpecifier, inSpecifierSize, ioPropertyDataSize, outPropertyData);
        case 0x6C626C64u:
          if (inSpecifierSize)
          {
            if (inSpecifier)
            {
              theDict.mSampleRate = 0.0;
              DecoderSpecificBitStreamFromESDS = ISOLoudnessBoxForLoudnessInfoDictionary(*inSpecifier, &theDict);
              if (!DecoderSpecificBitStreamFromESDS)
              {
                v58 = theDict.mSampleRate;
                if (*&theDict.mSampleRate)
                {
                  *outPropertyData = CFDataCreateCopy(*MEMORY[0x1E695E480], *&theDict.mSampleRate);
                  *ioPropertyDataSize = 8;
                  CFRelease(*&v58);
                }
              }

              return DecoderSpecificBitStreamFromESDS;
            }

            return -50;
          }

          break;
        case 0x6C646C62u:
          if (inSpecifierSize)
          {
            if (inSpecifier)
            {
              theDict.mSampleRate = 0.0;
              DecoderSpecificBitStreamFromESDS = LoudnessInfoDictionaryForISOLoudnessBox(*inSpecifier, &theDict);
              if (!DecoderSpecificBitStreamFromESDS)
              {
                v28 = theDict.mSampleRate;
                if (*&theDict.mSampleRate)
                {
                  *outPropertyData = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *&theDict.mSampleRate);
                  *ioPropertyDataSize = 8;
                  CFRelease(*&v28);
                }
              }

              return DecoderSpecificBitStreamFromESDS;
            }

            return -50;
          }

          break;
        default:
          return DecoderSpecificBitStreamFromESDS;
      }

      return 561213539;
    }

    if (inPropertyID == 1768187246)
    {
      if (!inSpecifier)
      {
        return -50;
      }

      v12 = 561213539;
      if (inSpecifierSize >= 8 && *(inSpecifier + 1) + 8 <= inSpecifierSize)
      {
        return AudioFormatProperty_DecodeFormatIDsForEncapsulatedMagicCookieName(inSpecifier, ioPropertyDataSize, outPropertyData);
      }

      return v12;
    }

    if (inPropertyID != 1768780388)
    {
      if (inPropertyID != 1769170537)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      CanBeAuthorized = AudioFormatProperty_FormatIDFromISOAudioSampleEntry(inSpecifier, inSpecifierSize);
LABEL_94:
      DecoderSpecificBitStreamFromESDS = CanBeAuthorized;
      if (CanBeAuthorized)
      {
        return DecoderSpecificBitStreamFromESDS;
      }

      goto LABEL_508;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    if (inSpecifierSize < 0x38)
    {
      return 561213539;
    }

    v20 = 1768780388;
    return GetCodecPropertyFromFormatInfo(inSpecifier, ioPropertyDataSize, outPropertyData, v20);
  }

  if (inPropertyID <= 1718183272)
  {
    if (inPropertyID <= 1702064995)
    {
      if (inPropertyID != 1702060908)
      {
        if (inPropertyID != 1702061157)
        {
          if (inPropertyID != 1702061673)
          {
            return DecoderSpecificBitStreamFromESDS;
          }

LABEL_253:
          if (*ioPropertyDataSize >= 0x28)
          {
            if (inSpecifier)
            {
              v32 = AudioFormatProperty_AudioFormatInfoFromESDS(inSpecifier, inSpecifierSize, ioPropertyDataSize, outPropertyData);
              goto LABEL_387;
            }

            return -50;
          }

          return 561211770;
        }

        if (!inSpecifier)
        {
          return -50;
        }

        v32 = AudioFormatProperty_ESDSFromESD(inSpecifier, inSpecifierSize, outPropertyData, ioPropertyDataSize);
LABEL_387:
        v12 = v32;
        if (v32)
        {
          return v12;
        }

        return 0;
      }

      if (*ioPropertyDataSize != 32)
      {
        return 561211770;
      }

      if (!inSpecifier)
      {
        return -50;
      }

      *outPropertyData = 0u;
      *(outPropertyData + 1) = 0u;
      v36 = AudioFormatProperty_ChannelLayoutFromESDS(inSpecifier, inSpecifierSize, outPropertyData);
      goto LABEL_484;
    }

    if (inPropertyID == 1702064996)
    {
      goto LABEL_253;
    }

    if (inPropertyID != 1717855600 && inPropertyID != 1717925990)
    {
      return DecoderSpecificBitStreamFromESDS;
    }

LABEL_142:
    if (!inSpecifier)
    {
      return -50;
    }

    v12 = 561213539;
    if (inSpecifierSize != 4)
    {
      if (inSpecifierSize != 40)
      {
        return v12;
      }

      v8 = (inSpecifier + 8);
    }

    if (*ioPropertyDataSize == 4)
    {
      v27 = *v8;
      if (inPropertyID == 1717855600)
      {
        return AudioFormatProperty_FormatEmploysDependentPackets(v27, outPropertyData);
      }

      if (inPropertyID == 1719034482 || inPropertyID == 1717925990)
      {
        return AudioFormatProperty_FormatIsVBR(v27, outPropertyData);
      }

      return 0;
    }

    return 561211770;
  }

  if (inPropertyID <= 1718509932)
  {
    if (inPropertyID != 1718183273)
    {
      if (inPropertyID != 1718383476)
      {
        if (inPropertyID == 1718449257)
        {
          if (*ioPropertyDataSize != 40)
          {
            return 561211770;
          }

          return AudioFormatProperty_FormatInfo(*&inSpecifierSize, inSpecifier, outPropertyData);
        }

        return DecoderSpecificBitStreamFromESDS;
      }

      if (inSpecifier)
      {
        if (inSpecifierSize)
        {
          if (*ioPropertyDataSize != 48)
          {
            return AudioFormatProperty_FormatList(inSpecifier, inSpecifierSize, ioPropertyDataSize, outPropertyData);
          }

          LODWORD(__p[0].mSampleRate) = 0;
          DecoderSpecificBitStreamFromESDS = AudioFormatProperty_FormatListSize(inSpecifier, inSpecifierSize, __p);
          if (!DecoderSpecificBitStreamFromESDS)
          {
            CADeprecated::CAAutoFree<AudioFormatListItem>::CAAutoFree(&theDict, LODWORD(__p[0].mSampleRate), 1);
            FormatListFromCodecs = AudioFormatProperty_FormatList(v8, v9, __p, *&theDict.mSampleRate);
            goto LABEL_649;
          }

          return DecoderSpecificBitStreamFromESDS;
        }

        return 561213539;
      }

      return 2003329396;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    v12 = 561213539;
    if (inSpecifierSize < 4)
    {
      return v12;
    }

    if (*ioPropertyDataSize < 8)
    {
      return 561211770;
    }

    LODWORD(theDict.mSampleRate) = 1969977198;
    v37 = AudioFormatEncryptedFormatTranslator::DecryptFormatID(*inSpecifier, &theDict);
    v38 = LODWORD(theDict.mSampleRate);
    if (LODWORD(theDict.mSampleRate) != 1969977198)
    {
      DecoderSpecificBitStreamFromESDS = 0;
      *outPropertyData = v37;
      *(outPropertyData + 1) = v38;
      v26 = 8;
      goto LABEL_509;
    }

    return 560360820;
  }

  if (inPropertyID == 1718509933)
  {
    v12 = 561213539;
    if (inSpecifierSize != 40)
    {
      return v12;
    }

    if (!inSpecifier)
    {
      return -50;
    }

    if (*ioPropertyDataSize == 8)
    {
      return AudioFormatProperty_FormatName(inSpecifier, outPropertyData);
    }

    return 561211770;
  }

  if (inPropertyID == 1718642284)
  {
    if (!inSpecifier)
    {
      return -50;
    }

    v12 = 561213539;
    if (!inSpecifierSize)
    {
      return v12;
    }

    if (*ioPropertyDataSize == 4)
    {
      return AudioFormatProperty_FirstPlayableFormatFromList((inSpecifierSize / 0x30uLL), inSpecifier, outPropertyData);
    }

    return 561211770;
  }

  if (inPropertyID != 1718642285)
  {
    return DecoderSpecificBitStreamFromESDS;
  }

  v12 = -50;
  if (inSpecifier)
  {
    if (outPropertyData)
    {
      v12 = 561213539;
      if (inSpecifierSize)
      {
        if (*ioPropertyDataSize == 4)
        {
          return AudioFormatProperty_FirstPlayableFormatFromListAndMagicCookie(inSpecifier, outPropertyData);
        }

        return 561211770;
      }
    }
  }

  return v12;
}

void sub_18F5EC79C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC7A8);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC7B4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC7C0);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC7D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (STACK[0x680])
    {
      STACK[0x688] = STACK[0x680];
      JUMPOUT(0x18F5EC7ECLL);
    }

    JUMPOUT(0x18F5EC818);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC7F4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC800);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18F5EC944);
  }

  JUMPOUT(0x18F5EC9E4);
}

void sub_18F5EC884(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC894);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC8B0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC8C0);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC8DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(void))
{
  if (a2)
  {
    if (a27)
    {
      a28();
    }

    JUMPOUT(0x18F5EC9E4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC93C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_18F5EC970(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(uint64_t))
{
  if (a2)
  {
    if (v28)
    {
      a28(v28);
    }

    JUMPOUT(0x18F5EC9E4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC99C(uint64_t a1, int a2)
{
  if (a2)
  {
    os_unfair_recursive_lock_unlock();
    JUMPOUT(0x18F5EC9E4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC9C8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18F5EC9D4);
  }

  JUMPOUT(0x18F5EC944);
}

void sub_18F5EC9D8(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F5EB074);
  }

  JUMPOUT(0x18F5EC944);
}

OSStatus AudioUnitInitialize(AudioUnit inUnit)
{
  v15[5] = *MEMORY[0x1E69E9840];
  if (!inUnit)
  {
    return -50;
  }

  v1 = (*(*inUnit + 8))(inUnit);
  if (!v1)
  {
    return 560947818;
  }

  v2 = v1;
  if (*((**v1)(v1) + 38) != 24949)
  {
    return -3000;
  }

  v3 = **((**v2)(v2) + 112);
  if (!v3)
  {
    return -4;
  }

  result = v3(v2[3]);
  if (!result)
  {
    if (v2[3])
    {
      v5 = *((**v2)(v2) + 112);
      if (*(v5 + 160) | *(v5 + 192))
      {
        v13 = 0;
        v14 = 4;
        v6 = (*(v5 + 24))(v2[3], 64, 0, 0, &v13, &v14);
        v7 = v13;
        if (v6)
        {
          v7 = 0;
        }

        v13 = v7;
        *(v2 + 27) = v7;
        v2[12] = v5;
        if (*(v5 + 192))
        {
          v2[28][3](v2 + 29);
          v2[28] = &caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::empty;
        }

        else
        {
          v15[0] = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_0>;
          caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v2 + 28, v15);
          (*(v15[0] + 24))();
        }

        v8 = *(v2 + 27);
        if ((v8 - 1) <= 1)
        {
          operator new();
        }

        if (v8 == 2)
        {
          operator new();
        }

        if (v8 == 1)
        {
          operator new();
        }

        if (v8)
        {
          v15[0] = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_7>;
          caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v2 + 23, v15);
          (*(v15[0] + 24))();
          v12 = v2[28];
          v11 = (v2 + 28);
          if ((v12[4] & 1) == 0)
          {
            v15[0] = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_8>;
            caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v11, v15);
            (*(v15[0] + 24))();
          }
        }

        else
        {
          v15[0] = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_1>;
          caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v2 + 23, v15);
          (*(v15[0] + 24))();
          v10 = v2[28];
          v9 = (v2 + 28);
          if ((v10[4] & 1) == 0)
          {
            v15[0] = caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_2>;
            caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(v9, v15);
            (*(v15[0] + 24))();
          }
        }
      }

      return 0;
    }

    else
    {
      return -66740;
    }
  }

  return result;
}

void sub_18F5ECEFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CAFormatter::CAFormatter(CAFormatter *this, const AudioChannelLayout *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = funopen(&v10, 0, CAMemoryStream::Write, 0, 0);
  v5 = v4;
  v10 = v4;
  if (a2)
  {
    fprintf(v4, "tag=0x%x", a2->mChannelLayoutTag);
    if (a2->mChannelLayoutTag)
    {
      if (a2->mChannelLayoutTag == 0x10000)
      {
        fprintf(v5, ", channel bitmap=0x%x\n", a2->mChannelBitmap);
      }
    }

    else
    {
      v6 = "s";
      if (a2->mNumberChannelDescriptions == 1)
      {
        v6 = "";
      }

      fprintf(v5, ", %d channel description%s [", a2->mNumberChannelDescriptions, v6);
      if (a2->mNumberChannelDescriptions)
      {
        v7 = 0;
        mChannelDescriptions = a2->mChannelDescriptions;
        do
        {
          if (v7)
          {
            fwrite(", ", 2uLL, 1uLL, v5);
          }

          outPropertyData = 0;
          ioPropertyDataSize = 8;
          if (AudioFormatGetProperty(0x63736E6Du, 0x14u, mChannelDescriptions, &ioPropertyDataSize, &outPropertyData))
          {
            fprintf(v5, "%d", mChannelDescriptions->mChannelLabel);
          }

          else
          {
            CFStringGetCString(outPropertyData, buffer, 96, 0x8000100u);
            fputs(buffer, v5);
            CFRelease(outPropertyData);
          }

          ++v7;
          ++mChannelDescriptions;
        }

        while (v7 < a2->mNumberChannelDescriptions);
      }

      fputc(93, v5);
    }
  }

  else
  {
    fwrite("NULL", 4uLL, 1uLL, v4);
  }

  v9 = CAMemoryStream::cstr(&v10);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *this = v9;
  fclose(v10);
  free(v11);
}

void sub_18F5ED184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, FILE *a12, void *a13)
{
  fclose(a12);
  free(a13);
  _Unwind_Resume(a1);
}

FILE *CAMemoryStream::cstr(FILE **this)
{
  fflush(*this);
  v2 = this[1];
  if (!v2)
  {
    v2 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    this[1] = v2;
    this[3] = 1;
  }

  *(&this[2]->_p + v2) = 0;
  return this[1];
}

uint64_t CAMemoryStream::Write(CAMemoryStream *this, void *a2, const char *a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(this + 2);
    v7 = v6 + a3;
    if ((v7 + 1) <= *(this + 3))
    {
      v8 = *(this + 1);
    }

    else
    {
      v8 = malloc_type_realloc(*(this + 1), (v7 & 0xFFFFFFFFFFFFFF80) + 128, 0x100004077774924uLL);
      if (!v8)
      {
        fwrite("realloc failed", 0xEuLL, 1uLL, *MEMORY[0x1E69E9848]);
        return 0xFFFFFFFFLL;
      }

      *(this + 1) = v8;
      *(this + 3) = (v7 & 0xFFFFFFFFFFFFFF80) + 128;
      v6 = *(this + 2);
    }

    memcpy(&v8[v6], a2, v3);
    *(this + 2) = v7;
  }

  return v3;
}

uint64_t AudioFormatProperty_ChannelShortName(int a1, const __CFString **a2, uint64_t a3, const __CFString *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v6 = sAudioToolboxBundle;
  }

  v7 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) == 0x30000)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v11 = @"HOA_N3D";
    goto LABEL_9;
  }

  if (v7 == 0x20000)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v11 = @"HOA_ACN";
    goto LABEL_9;
  }

  if (v7 == 0x10000)
  {
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v11 = @"Discrete";
LABEL_9:
    v12 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v11, @"AudioChannelShortLabels", v6, v9);
    snprintf(__str, 0x10uLL, "-%u", a1);
    CFStringAppendCString(Mutable, __str, 0x8000100u);
    CFStringInsert(Mutable, 0, v12);
    *a2 = CFStringCreateCopy(v8, Mutable);
    CFRelease(Mutable);
    CFRelease(v12);
    return 0;
  }

  result = 560360820;
  if (a1 > 199)
  {
    if (a1 > 206)
    {
      if (a1 > 304)
      {
        if (a1 > 99998)
        {
          if (a1 != 0x40000)
          {
            if (a1 != 99999)
            {
              return result;
            }

            v14 = @"AAAAA - NOTE";
            goto LABEL_94;
          }

          v14 = @"Obj";
        }

        else
        {
          if (a1 == 305)
          {
            v14 = @"Lang";
            goto LABEL_94;
          }

          if (a1 != 400)
          {
            return result;
          }

          v14 = @"Discrete";
        }

        v15 = @"AudioChannelLabels";
LABEL_95:
        v16 = ThreadSafeCFCopyLocalizedStringFromTableInBundle(v14, v15, v6, a4);
        result = 0;
        *a2 = v16;
        return result;
      }

      if (a1 > 301)
      {
        if (a1 == 302)
        {
          v14 = @"phoneR";
        }

        else
        {
          if (a1 != 304)
          {
            return result;
          }

          v14 = @"Click";
        }

        goto LABEL_94;
      }

      if (a1 != 207)
      {
        if (a1 != 301)
        {
          return result;
        }

        v14 = @"phoneL";
        goto LABEL_94;
      }

      goto LABEL_29;
    }

    if (a1 <= 202)
    {
      if (a1 == 200)
      {
        v14 = @"W";
        goto LABEL_94;
      }

      if (a1 != 201)
      {
LABEL_29:
        v14 = @"Y";
LABEL_94:
        v15 = @"AudioChannelShortLabels";
        goto LABEL_95;
      }
    }

    else
    {
      if (a1 <= 204)
      {
        if (a1 == 203)
        {
          v14 = @"Z";
        }

        else
        {
          v14 = @"Mid";
        }

        goto LABEL_94;
      }

      if (a1 == 205)
      {
        v14 = @"Side";
        goto LABEL_94;
      }
    }

    v14 = @"X";
    goto LABEL_94;
  }

  switch(a1)
  {
    case -1:
      v14 = @"?";
      goto LABEL_94;
    case 0:
      v14 = @"_";
      goto LABEL_94;
    case 1:
      v14 = @"L";
      goto LABEL_94;
    case 2:
      v14 = @"R";
      goto LABEL_94;
    case 3:
      v14 = @"C";
      goto LABEL_94;
    case 4:
      v14 = @"LFE";
      goto LABEL_94;
    case 5:
      v14 = @"Ls";
      goto LABEL_94;
    case 6:
      v14 = @"Rs";
      goto LABEL_94;
    case 7:
      v14 = @"Lc";
      goto LABEL_94;
    case 8:
      v14 = @"Rc";
      goto LABEL_94;
    case 9:
      v14 = @"Cs";
      goto LABEL_94;
    case 10:
      v14 = @"Lsd";
      goto LABEL_94;
    case 11:
      v14 = @"Rsd";
      goto LABEL_94;
    case 12:
      v14 = @"Ts";
      goto LABEL_94;
    case 13:
      v14 = @"Vhl";
      goto LABEL_94;
    case 14:
      v14 = @"Vhc";
      goto LABEL_94;
    case 15:
      v14 = @"Vhr";
      goto LABEL_94;
    case 16:
      v14 = @"Tbl";
      goto LABEL_94;
    case 17:
      v14 = @"Tbc";
      goto LABEL_94;
    case 18:
      v14 = @"Tbr";
      goto LABEL_94;
    case 33:
      v14 = @"Rls";
      goto LABEL_94;
    case 34:
      v14 = @"Rrs";
      goto LABEL_94;
    case 35:
      v14 = @"Lw";
      goto LABEL_94;
    case 36:
      v14 = @"Rw";
      goto LABEL_94;
    case 37:
      v14 = @"LFE2";
      goto LABEL_94;
    case 38:
      v14 = @"Lt";
      goto LABEL_94;
    case 39:
      v14 = @"Rt";
      goto LABEL_94;
    case 40:
      v14 = @"HI";
      goto LABEL_94;
    case 41:
      v14 = @"VI-N";
      goto LABEL_94;
    case 42:
      v14 = @"Mono";
      goto LABEL_94;
    case 43:
      v14 = @"Dlg";
      goto LABEL_94;
    case 44:
      v14 = @"Csd";
      goto LABEL_94;
    case 45:
      v14 = @"Haptic";
      goto LABEL_94;
    case 49:
      v14 = @"Ltm";
      goto LABEL_94;
    case 51:
      v14 = @"Rtm";
      goto LABEL_94;
    case 52:
      v14 = @"Ltr";
      goto LABEL_94;
    case 53:
      v14 = @"Ctr";
      goto LABEL_94;
    case 54:
      v14 = @"Rtr";
      goto LABEL_94;
    case 55:
      v14 = @"Lss";
      goto LABEL_94;
    case 56:
      v14 = @"Rss";
      goto LABEL_94;
    case 57:
      v14 = @"Lb";
      goto LABEL_94;
    case 58:
      v14 = @"Rb";
      goto LABEL_94;
    case 59:
      v14 = @"Cb";
      goto LABEL_94;
    case 60:
      v14 = @"Lts";
      goto LABEL_94;
    case 61:
      v14 = @"Rts";
      goto LABEL_94;
    case 62:
      v14 = @"LFE3";
      goto LABEL_94;
    case 63:
      v14 = @"Lbs";
      goto LABEL_94;
    case 64:
      v14 = @"Rbs";
      goto LABEL_94;
    case 65:
      v14 = @"Leos";
      goto LABEL_94;
    case 66:
      v14 = @"Reos";
      goto LABEL_94;
    default:
      return result;
  }

  return result;
}

void *ThreadSafeCFCopyLocalizedStringFromTableInBundle(const __CFString *a1, const __CFString *a2, __CFBundle *a3, const __CFString *a4)
{
  CABundleLocker::CABundleLocker(&v10);
  if (a3)
  {
    v7 = CFBundleCopyLocalizedString(a3, a1, a1, a2);
  }

  else
  {
    v7 = CFRetain(a1);
  }

  v8 = v7;
  CABundleLocker::~CABundleLocker(&v10);
  return v8;
}

uint64_t AudioFileFormatRegistry::AddComponentFormats(AudioFileFormatRegistry *this)
{
  std::mutex::lock(&AudioFileMutex(void)::global);
  v2 = *(this + 56);
  if ((v2 & 1) == 0)
  {
    *(this + 56) = 1;
  }

  std::mutex::unlock(&AudioFileMutex(void)::global);
  return v2 ^ 1u;
}

uint64_t ID3Size(unsigned int a1, const unsigned __int8 *a2, int *a3)
{
  *a3 = 0;
  if (a1 >= 3)
  {
    if (*a2 != 17481 || a2[2] != 51)
    {
      if (*a2 != 16724 || a2[2] != 71)
      {
        return 0;
      }

      result = 128;
      v6 = 1;
LABEL_16:
      *a3 = v6;
      return result;
    }

    if (a1 >= 0xA && a2[3] != 255 && a2[4] != 255)
    {
      result = (((a2[7] & 0x7F) << 14) & 0xF01FC000 | ((a2[6] & 0x7F) << 21) | a2[9] & 0x7F | ((a2[8] & 0x7F) << 7)) + 10;
      v6 = 2;
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t AudioFileFormatRegistry::Get(AudioFileFormatRegistry *this, unsigned int a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v4 != v5)
  {
    v6 = (v4 - v5) >> 4;
    v4 = *(this + 4);
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 4);
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  if (*v4 == a2)
  {
    return *(v4 + 1);
  }

  if (!AudioFileFormatRegistry::AddComponentFormats(this))
  {
    return 0;
  }

  v12 = *(this + 4);
  v4 = *(this + 5);
  if (v4 != v12)
  {
    v13 = (v4 - v12) >> 4;
    v4 = *(this + 4);
    do
    {
      v14 = v13 >> 1;
      v15 = &v4[16 * (v13 >> 1)];
      v17 = *v15;
      v16 = (v15 + 4);
      v13 += ~(v13 >> 1);
      if (v17 < a2)
      {
        v4 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
  }

  if (*v4 == a2)
  {
    return *(v4 + 1);
  }

  else
  {
    return 0;
  }
}

OSStatus AudioFileOpenURL(CFURLRef inFileRef, AudioFilePermissions inPermissions, AudioFileTypeID inFileTypeHint, AudioFileID *outAudioFile)
{
  v40 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = -50;
  if (inFileRef && outAudioFile)
  {
    v7 = inPermissions;
    v9 = CFURLCopyScheme(inFileRef);
    if (v9)
    {
      v10 = v9;
      v41.location = 0;
      v41.length = 12;
      v11 = CFStringCompareWithOptions(v9, @"ipod-library", v41, 0);
      CFRelease(v10);
      if (v11 == kCFCompareEqualTo)
      {
        operator new();
      }
    }

    if (CFURLGetFileSystemRepresentation(inFileRef, 1u, buffer, 1024))
    {
      if (v7 == 3)
      {
        v12 = open(buffer, 2);
      }

      else
      {
        v12 = open(buffer, v7 == 2);
      }

      v13 = v12;
      if ((v12 & 0x80000000) != 0)
      {
        v18 = *__error();
        if (v18 <= 0x1F)
        {
          if (((1 << v18) & 0x40022002) != 0)
          {
            LODWORD(v4) = -54;
            return v4;
          }

          if (((1 << v18) & 0x1800000) != 0)
          {
            LODWORD(v4) = -42;
            return v4;
          }

          if (v18 == 31)
          {
            LODWORD(v4) = 561017960;
            return v4;
          }
        }

        LODWORD(v4) = 2003334207;
        return v4;
      }

      CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(&v38, 0x2000uLL, 1);
      for (i = 0; ; lseek(v13, i, 0))
      {
        v15 = read(v13, v38, 0x2000uLL);
        v16 = v15;
        if (v15 < 1)
        {
          v19 = 0;
          v20 = 0;
          LODWORD(v4) = 2003334207;
          goto LABEL_63;
        }

        if (v15 < 0xA)
        {
          break;
        }

        v17 = ID3Size(v15, v38, v37);
        if (!v17)
        {
          break;
        }

        i += v17;
      }

      AudioFileFormatRegistry = GetAudioFileFormatRegistry();
      v22 = AudioFileFormatRegistry;
      v4 = v38;
      if (inFileTypeHint)
      {
        v23 = AudioFileFormatRegistry::Get(AudioFileFormatRegistry, inFileTypeHint);
        v19 = v23;
        if (v23)
        {
          if ((*(*v23 + 24))(v23, v16, v4) == 1)
          {
            goto LABEL_62;
          }
        }
      }

      v24 = CFURLCopyPathExtension(inFileRef);
      if (v24)
      {
        v36 = inFileTypeHint;
        for (j = *(v22 + 1); j != *(v22 + 2); j += 16)
        {
          v19 = *(j + 8);
          if (v19 && (*(*v19 + 16))(*(j + 8), v24) && (*(*v19 + 24))(v19, v16, v4))
          {
LABEL_61:
            CFRelease(v24);
            goto LABEL_62;
          }
        }

        if (AudioFileFormatRegistry::AddComponentFormats(v22))
        {
          for (k = *(v22 + 1); k != *(v22 + 2); k += 16)
          {
            v19 = *(k + 8);
            if (v19 && (*(*v19 + 16))(*(k + 8), v24) && (*(*v19 + 24))(v19, v16, v4))
            {
              goto LABEL_61;
            }
          }
        }

        CFRelease(v24);
        inFileTypeHint = v36;
      }

      v27 = inFileTypeHint;
      v29 = *(v22 + 1);
      v28 = *(v22 + 2);
      while (v29 != v28)
      {
        v19 = *(v29 + 8);
        if (v19)
        {
          if ((*(*v19 + 24))(*(v29 + 8), v16, v4) == 1)
          {
            goto LABEL_62;
          }

          v28 = *(v22 + 2);
        }

        v29 += 16;
      }

      if (AudioFileFormatRegistry::AddComponentFormats(v22))
      {
        v31 = *(v22 + 1);
        v30 = *(v22 + 2);
        while (v31 != v30)
        {
          v19 = *(v31 + 8);
          if (v19)
          {
            if ((*(*v19 + 24))(*(v31 + 8), v16, v4) == 1)
            {
              goto LABEL_62;
            }

            v30 = *(v22 + 2);
          }

          v31 += 16;
        }
      }

      if (v27 && (v32 = AudioFileFormatRegistry::Get(v22, v27), (v19 = v32) != 0) && (*(*v32 + 24))(v32, v16, v4))
      {
LABEL_62:
        v20 = 1;
      }

      else
      {
        close(v13);
        v19 = 0;
        v20 = 0;
        LODWORD(v4) = 1954115647;
      }

LABEL_63:
      if (v38)
      {
        free(v38);
      }

      if (v20)
      {
        v33 = NewAudioFileHandle(v19);
        v34 = v33;
        if (v33)
        {
          LODWORD(v4) = (*(*v33 + 48))(v33, inFileRef, v7, v13);
          if (v4)
          {
            (*(*v34 + 8))(v34);
            *outAudioFile = 0;
          }

          else
          {
            *outAudioFile = v34[2];
          }
        }

        else
        {
          LODWORD(v4) = 1954115647;
        }
      }
    }

    else
    {
      LODWORD(v4) = -43;
    }
  }

  return v4;
}

void sub_18F5EE880(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *CADeprecated::CAAutoFree<unsigned char>::CAAutoFree(void *a1, size_t size, int a3)
{
  *a1 = 0;
  if (a3)
  {
    v5 = malloc_type_malloc(size, 0xD7524C8FuLL);
    v6 = v5;
    if (!size || v5)
    {
      bzero(v5, size);
      goto LABEL_7;
    }

LABEL_8:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
  }

  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  v6 = v7;
  if (size && !v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  *a1 = v6;
  return a1;
}

uint64_t GetAudioFileFormatRegistry(void)
{
  std::mutex::lock(&AudioFileMutex(void)::global);
  v0 = sAudioFileFormatRegistry;
  if (!sAudioFileFormatRegistry)
  {
    operator new();
  }

  std::mutex::unlock(&AudioFileMutex(void)::global);
  return v0;
}

uint64_t NewAudioFileHandle(AudioFileFormatBase *a1)
{
  if (a1)
  {
    v1 = (*(*a1 + 120))(a1);
    if (v1)
    {
      if ((*(*v1 + 136))(v1))
      {
        operator new();
      }
    }
  }

  return 0;
}

uint64_t AudioFileObject::DoOpen(AudioFileObject *this, const __CFURL *a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *(this + 100) = a3;
  v4 = (*(*this + 24))(this, a2);
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AudioFileObject.cpp";
      v12 = 1024;
      v13 = 80;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  Open failed";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, v8, &v10, 0x12u);
    }
  }

  else
  {
    v6 = AudioFileObject::ValidateFormatAndData(this, v5);
    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AudioFileObject.cpp";
      v12 = 1024;
      v13 = 83;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  ValidateFormatAndData failed";
      goto LABEL_7;
    }
  }

  return v6;
}

uint64_t AudioFileObject::Open(AudioFileObject *this, const __CFURL *a2, char a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    AudioFileObject::SetURL(this, a2);
    AudioFileObject::OpenFile(this, a3, a4);
  }

  return 1886547263;
}

uint64_t CAFAudioFile::ParseAudioFile(CAFAudioFile *this)
{
  v53 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v40 = 0;
  *&v38 = 0;
  *(this + 9) = 0;
  (*(*this + 240))(this, 0);
  v2 = (*(**(this + 13) + 24))(*(this + 13), &v40);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v49[0]) = 1024;
      *(v49 + 2) = 1191;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  GetSize Failed";
LABEL_60:
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
      goto LABEL_61;
    }

    goto LABEL_61;
  }

  v3 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 8, &v35, &v41);
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v49[0]) = 1024;
      *(v49 + 2) = 1196;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  FSRead Failed 1";
      goto LABEL_60;
    }

LABEL_61:
    v9 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_62;
  }

  if (v41 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v49[0]) = 1024;
      *(v49 + 2) = 1197;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  byteCount < sizeof(fileChunk)";
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v6 = v35;
  LODWORD(v35) = bswap32(v35);
  v7 = WORD2(v35);
  WORD2(v35) = __rev16(WORD2(v35));
  HIWORD(v35) = bswap32(HIWORD(v35)) >> 16;
  if (v6 != 1717985635)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v49[0]) = 1024;
      *(v49 + 2) = 1201;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  fileChunk.mFileType != kCAF_FileType";
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  if (v7 != 256)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      LOWORD(v49[0]) = 1024;
      *(v49 + 2) = 1202;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  fileChunk.mFileVersion != kCAF_FileVersion_Initial";
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v8 = 1685348671;
  if (v40 < 9)
  {
    return v8;
  }

  v9 = 0;
  v10 = 0;
  v34 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 8;
  do
  {
    v14 = (*(**(this + 13) + 48))(*(this + 13), 0, v13, 12, &v42, &v41);
    if (v14)
    {
      v3 = v14;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v44 = 136315394;
        v45 = "CAFAudioFile.cpp";
        v46 = 1024;
        v47 = 1212;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  FSRead Failed 1";
        goto LABEL_69;
      }

LABEL_62:
      *(this + 20) = (v9 == 1684108385) & (v10 ^ 1);
      v8 = v3;
      if (v3 == -39)
      {
        if (v11 & v12)
        {
          return 0;
        }

        else
        {
          return 1685348671;
        }
      }

      return v8;
    }

    if (v41 < 0xC)
    {
      break;
    }

    v9 = bswap32(v42);
    v42 = v9;
    v15 = bswap64(v43);
    v43 = v15;
    LODWORD(v38) = v9;
    if (v15 >= 0)
    {
      v16 = v15 + 12;
    }

    else
    {
      v16 = v15;
    }

    *(&v38 + 1) = v16;
    v39 = v13;
    if (v9 == 1684108385)
    {
      v41 = 4;
      v24 = (*(**(this + 13) + 48))(*(this + 13), 0, v13 + 12, 4, this + 168, &v41);
      if (v24)
      {
        v3 = v24;
        v9 = 1684108385;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315394;
          v45 = "CAFAudioFile.cpp";
          v46 = 1024;
          v47 = 1265;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  FSRead Failed 2", v44, 0x12u);
        }

        v12 = 1;
        goto LABEL_62;
      }

      if (v41 <= 3)
      {
        v9 = 1684108385;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315394;
          v45 = "CAFAudioFile.cpp";
          v46 = 1024;
          v47 = 1266;
          v32 = MEMORY[0x1E69E9C10];
          v33 = "%25s:%-5d  byteCount < sizeof(mEditCount)";
LABEL_79:
          _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, v33, v44, 0x12u);
        }

LABEL_55:
        v8 = 0;
        *(this + 20) = (v9 == 1684108385) & (v10 ^ 1);
        return v8;
      }

      *(this + 9) = v13 + 16;
      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 >= 0x10)
        {
          v25 = v16 - 16;
        }

        else
        {
          v25 = 0;
        }

        (*(*this + 240))(this, v25);
        v12 = 1;
        goto LABEL_47;
      }

      (*(*this + 240))(this, v40 - (v13 + 16));
      v16 = v40 - v13;
      *(&v38 + 1) = v40 - v13;
      v12 = 1;
      v10 = 1;
    }

    else if (v9 == 1684370275)
    {
      v18 = (*(**(this + 13) + 48))(*(this + 13), 0, v13 + 12, 32, &v35, &v41);
      if (v18)
      {
        v3 = v18;
        v9 = 1684370275;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315394;
          v45 = "CAFAudioFile.cpp";
          v46 = 1024;
          v47 = 1238;
          v30 = MEMORY[0x1E69E9C10];
          v31 = "%25s:%-5d  FSRead Failed 1";
          goto LABEL_69;
        }

        goto LABEL_62;
      }

      if (v41 <= 0x1F)
      {
        v9 = 1684370275;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315394;
          v45 = "CAFAudioFile.cpp";
          v46 = 1024;
          v47 = 1239;
          v32 = MEMORY[0x1E69E9C10];
          v33 = "%25s:%-5d  byteCount < sizeof(format)";
          goto LABEL_79;
        }

        goto LABEL_55;
      }

      v35 = bswap64(v35);
      v19 = vrev32q_s8(v36);
      v36 = v19;
      v20 = vrev32_s8(v37);
      v37 = v20;
      v50 = 0;
      v52 = 0;
      *buf = v35;
      *&buf[8] = v19.i32[0];
      *&v49[1] = vextq_s8(v19, v19, 8uLL).u64[0];
      v51 = v20;
      if (v19.i32[3] == 1)
      {
        v50 = v19.i32[2];
      }

      v21 = v19.i32[1];
      if (v19.i32[0] == 1819304813)
      {
        if (v19.i8[4])
        {
          v22 = 1;
        }

        else
        {
          v22 = 4;
        }

        v23 = (v22 | v19.i8[4] & 2) ^ 2;
        if ((v20.i8[4] & 7) != 0 || (v20.i32[1] >> 3) * v20.i32[0] != v19.i32[2])
        {
          v21 = v23 | 0x10;
        }

        else
        {
          v21 = v23 | 8;
        }
      }

      v49[0] = v21;
      v26 = (*(*this + 184))(this, buf);
      if (v26)
      {
        v3 = v26;
        v9 = 1684370275;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315394;
          v45 = "CAFAudioFile.cpp";
          v46 = 1024;
          v47 = 1254;
          v30 = MEMORY[0x1E69E9C10];
          v31 = "%25s:%-5d  SetDataFormat Failed";
LABEL_69:
          _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_ERROR, v31, v44, 0x12u);
        }

        goto LABEL_62;
      }

      v11 = 1;
    }

    else
    {
      v17 = v34;
      if (v9 == 1885432692)
      {
        v17 = 1;
      }

      v34 = v17;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_47:
    v13 += v16;
    v27 = v40;
    if (v13 > v40)
    {
      break;
    }

    std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v38);
  }

  while (v13 < v27);
  if (v11)
  {
    if (v36.i32[2])
    {
      (*(*this + 656))(this);
      v28 = (*(*this + 232))(this);
      (*(*this + 256))(this, v28 / v36.u32[2]);
    }

    if ((v34 & 1) == 0 || (v8 = CAFAudioFile::ParsePacketTableChunk(this), !v8))
    {
      (*(*this + 552))(this, this + 200);
      goto LABEL_55;
    }
  }

  return v8;
}

uint64_t CAFAudioFile::OpenFromDataSource(CAFAudioFile *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = (*(*this + 792))(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "CAFAudioFile.cpp";
    v5 = 1024;
    v6 = 1146;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAFAudioFile::OpenFromDataSource Failed", &v3, 0x12u);
  }

  return v1;
}

uint64_t CAFAudioFile::SetDataFormat(CAFAudioFile *this, AudioStreamBasicDescription *a2)
{
  v3 = AudioFileObject::SetDataFormat(this, a2);
  v4 = *(this + 32);
  *(this + 32) = 0;
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1000C403E1C8BA9);
  }

  return v3;
}

uint64_t CAFAudioFile::IsDataFormatSupported(CAFAudioFile *this, const AudioStreamBasicDescription *a2)
{
  if (a2->mFormatID != 1819304813)
  {
    return 1;
  }

  mBitsPerChannel = a2->mBitsPerChannel;
  mFormatFlags = a2->mFormatFlags;
  v4 = (mFormatFlags >> 2) & 1;
  if (mBitsPerChannel > 8)
  {
    v4 = 1;
  }

  if (v4 != 1 || (a2->mFormatFlags & 0x1F80) != 0)
  {
    return 0;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  v8 = (mFormatFlags >> 4) & 1;
  if (mChannelsPerFrame * ((mBitsPerChannel + 7) >> 3) == a2->mBytesPerFrame)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t UnixFile_DataSource::GetSize(UnixFile_DataSource *this, uint64_t *a2)
{
  *a2 = -1;
  if (fstat(*(this + 3), &v6) == -1)
  {
    return 4294967253;
  }

  result = 0;
  st_size = v6.st_size;
  *(this + 3) = v6.st_size;
  *a2 = st_size;
  return result;
}

uint64_t Cached_DataSource::ReadBytes(Cached_DataSource *this, uint64_t a2, int64_t a3, size_t __n, char *__dst, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v30 = 0;
  v29 = 0;
  if (!__dst)
  {
    return 4294967246;
  }

  if ((a2 & 3) == 2)
  {
    result = (*(*this + 24))(this, &v30);
    if (result)
    {
      return result;
    }

    v13 = v30;
  }

  else
  {
    v30 = 0;
    v14 = a3;
    if ((a2 & 3) == 0)
    {
      goto LABEL_12;
    }

    v14 = 0;
    if ((a2 & 3) == 3)
    {
      goto LABEL_13;
    }

    v13 = *(this + 8);
  }

  v14 = v13 + a3;
LABEL_12:
  if (v14 < 0)
  {
    return 4294967256;
  }

LABEL_13:
  if (v14 < *(this + 8))
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (!*(this + 3))
    {
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 3, *(this + 8), 1);
      result = (*(**(this + 2) + 48))(*(this + 2), 0, 0, *(this + 8), *(this + 3), this + 32);
      if (result)
      {
        if (result != -39)
        {
          return result;
        }
      }
    }

    v15 = *(this + 8);
    v16 = v15 - v14;
    if (v15 - v14 >= __n)
    {
      v17 = __n;
    }

    else
    {
      v17 = v15 - v14;
    }

    memcpy(__dst, (*(this + 3) + v14), v17);
    if (v16 >= __n)
    {
      result = 0;
      if (!a6)
      {
LABEL_41:
        *(this + 8) = v17 + v14;
        return result;
      }
    }

    else
    {
      v31 = 0;
      result = (*(**(this + 2) + 48))(*(this + 2), 0, *(this + 8), (__n - v17), &__dst[v17], &v31);
      v17 += v31;
      if (!a6)
      {
        goto LABEL_41;
      }
    }

    *a6 = v17;
    goto LABEL_41;
  }

  v18 = (this + 52);
  v20 = (this + 40);
  v19 = *(this + 5);
  v21 = *(this + 12);
  if (v19)
  {
    if (v21 > __n)
    {
      v22 = *(this + 7);
      if (v14 >= v22)
      {
        v23 = v22 + *(this + 13);
        v24 = v23 - v14;
        if (v23 > v14)
        {
          v25 = __n;
          v26 = (v19 + v14 - v22);
          if (v14 + __n <= v23)
          {
            memcpy(__dst, v26, __n);
            result = 0;
          }

          else
          {
            memcpy(__dst, v26, v23 - v14);
            v27 = *(this + 7) + *(this + 13);
            result = (*(**(this + 2) + 48))(*(this + 2), 0, v27, *(this + 12), *(this + 5), this + 52);
            if (result && result != -39)
            {
              LODWORD(__n) = v24;
            }

            else
            {
              *(this + 7) = v27;
              if (v25 - v24 >= *(this + 13))
              {
                v28 = *(this + 13);
              }

              else
              {
                v28 = v25 - v24;
              }

              if (v28)
              {
                memcpy(&__dst[v24], *v20, v28);
              }

              result = 0;
              LODWORD(__n) = v28 + v24;
            }
          }

          goto LABEL_56;
        }
      }
    }

    if (v21 >= __n)
    {
LABEL_48:
      *(this + 7) = v14;
      result = (*(**(this + 2) + 48))(*(this + 2), 0, v14, v21, v19, this + 52);
      if (result && result != -39)
      {
        return result;
      }

      if (*v18 >= __n)
      {
        __n = __n;
      }

      else
      {
        __n = *v18;
      }

      memcpy(__dst, *v20, __n);
      result = 0;
      goto LABEL_56;
    }
  }

  else if (v21 >= __n)
  {
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 5, *(this + 12), 1);
    v21 = *(this + 12);
    v19 = *(this + 5);
    goto LABEL_48;
  }

  result = (*(**(this + 2) + 48))(*(this + 2), a2, a3, __n, __dst, &v29);
  LODWORD(__n) = v29;
  *(this + 8) = v14 + v29;
LABEL_56:
  if (a6)
  {
    *a6 = __n;
  }

  return result;
}

void CADeprecated::CAAutoFree<unsigned char>::allocBytes(void **a1, size_t size, int a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = malloc_type_malloc(size, 0xB2C9138AuLL);
    v8 = v7;
    if (!size || v7)
    {
      bzero(v7, size);
      goto LABEL_9;
    }

LABEL_10:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
  }

  v9 = malloc_type_malloc(size, 0xBAAF0B94uLL);
  v8 = v9;
  if (size && !v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  *a1 = v8;
}

uint64_t UnixFile_DataSource::ReadBytes(UnixFile_DataSource *this, unsigned int a2, uint64_t a3, unsigned int a4, void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v11 = UnixFile_DataSource::UFCurrentOffset(this, a2, a3);
  if (v11 < 0)
  {
    return 4294967256;
  }

  if (a4)
  {
    v12 = v11;
    v13 = (a2 >> 5) & 1;
    v14 = *(this + 5);
    if (v14 != v13)
    {
      *(this + 5) = v13;
      fcntl(*(this + 3), 48, v14);
    }

    v15 = pread(*(this + 3), a5, a4, v12);
    if (v15 != -1)
    {
      v16 = v15;
      *(this + 4) = v15 + v12;
      if (a6)
      {
        result = 0;
        *a6 = v16;
        return result;
      }

      return 0;
    }

    return 4294967256;
  }

  return 0;
}

uint64_t UnixFile_DataSource::UFCurrentOffset(UnixFile_DataSource *this, char a2, uint64_t a3)
{
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      return -1;
    }

    v6 = 0;
    v4 = (*(*this + 24))(this, &v6);
    if (v4)
    {
      return v4;
    }

    goto LABEL_7;
  }

  if ((a2 & 3) != 0)
  {
    v6 = 0;
    v4 = (*(*this + 40))(this, &v6);
    if (v4)
    {
      return v4;
    }

LABEL_7:
    a3 += v6;
  }

  return a3;
}

uint64_t AudioFileObject::SetDataFormat(AudioFileObject *this, AudioStreamBasicDescription *a2)
{
  v4 = 1718449215;
  if (AudioFileObject::IsDataFormatValid(a2, a2) && (*(*this + 624))(this, a2))
  {
    v5 = *(this + 10);
    v6 = *&a2->mBitsPerChannel;
    v7 = *&a2->mSampleRate;
    *(this + 40) = *&a2->mBytesPerPacket;
    *(this + 24) = v7;
    *(this + 7) = v6;
    v8 = *(this + 10);
    if (v8)
    {
      if (v8 != v5)
      {
        v9 = (*(*this + 232))(this);
        (*(*this + 256))(this, v9 / *(this + 10));
        (*(*this + 656))(this, *(this + 10));
        if (!*(this + 137) && (*(this + 100) & 2) != 0)
        {
          if (*(this + 33))
          {
            *(this + 136) = 1;
          }

          else
          {
            (*(*this + 224))(this);
          }
        }
      }
    }

    ioPropertyDataSize = 4;
    AudioFormatGetProperty(0x66646570u, 0x28u, a2, &ioPropertyDataSize, this + 64);
    v4 = 0;
    *(this + 137) = 0;
  }

  return v4;
}