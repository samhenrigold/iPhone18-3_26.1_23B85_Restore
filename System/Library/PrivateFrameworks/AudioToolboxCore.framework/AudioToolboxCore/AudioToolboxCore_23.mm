uint64_t AUv3InstanceBase::isOutOfProcessAUv2(AUv3InstanceBase *this)
{
  if (!*(this + 9))
  {
    return 0;
  }

  result = (*(*this + 216))(this);
  if (result)
  {
    return [*(this + 9) isLoadedInProcess] ^ 1;
  }

  return result;
}

uint64_t std::function<int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v10 = a2;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = (*(*v6 + 48))(v6, &v10, &v9, a4);

  return v7;
}

uint64_t layoutSize(AVAudioChannelLayout *a1)
{
  v1 = a1;
  if ([(AVAudioChannelLayout *)v1 layout])
  {
    if (*[(AVAudioChannelLayout *)v1 layout])
    {
      v2 = 12;
    }

    else
    {
      v2 = 20 * [(AVAudioChannelLayout *)v1 layout][8] + 12;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void AUv3InstanceBase::ParameterMap::paramIDsForScope(AUv3InstanceBase::ParameterMap *this, AUv3InstanceBase::ParameterMap *a2, unsigned int a3)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  memset(v14, 0, sizeof(v14));
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  if (v7 != v6)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[48 * (v8 >> 1)];
      v11 = *v10;
      if (*v10 != a3)
      {
        v12 = (v10 + 12);
        v13 = v8 + ~v9;
        if (v11 < a3)
        {
          v9 = v13;
          v6 = v12;
        }
      }

      v8 = v9;
    }

    while (v9);
    if (v6 < v7 && *v6 == a3)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](1uLL);
    }
  }

  objc_destroyWeak(v14);
}

void sub_18F75EDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  if (v6)
  {
    *(v5 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t AUv3InstanceBase::ParameterMap::parameterInfo(AUv3InstanceBase::ParameterMap *this, unsigned int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(this);
  *&a4->flags = 0;
  *&a4->clumpID = 0u;
  *&a4->unit = 0u;
  *&a4->name[32] = 0u;
  *&a4->name[48] = 0u;
  *a4->name = 0u;
  *&a4->name[16] = 0u;
  v34 = 0u;
  v36 = 0;
  v35 = 0u;
  LODWORD(v34) = a3;
  v9 = *(this + 3);
  v8 = *(this + 4);
  if (v8 == v9)
  {
    goto LABEL_16;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[6 * (v10 >> 1)];
    v13 = *v12 >= a2;
    if (*v12 == a2)
    {
      if (*(v12 + 1))
      {
        goto LABEL_8;
      }

      v13 = *(v12 + 2) >= a3;
    }

    if (!v13)
    {
      v9 = v12 + 6;
      v11 = v10 + ~v11;
    }

LABEL_8:
    v10 = v11;
  }

  while (v11);
  if (v9 == v8 || *v9 != a2 || *(v9 + 1) || *(v9 + 2) != a3)
  {
LABEL_16:
    objc_destroyWeak(&v34 + 1);
    WeakRetained = 0;
    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(v9 + 2);
  v15 = *(v9 + 10);
  objc_destroyWeak(&v34 + 1);
  if (!WeakRetained)
  {
LABEL_17:
    v23 = 4294956418;
    goto LABEL_18;
  }

  v16 = objc_loadWeakRetained(this);
  v17 = [v16 parameterTree];
  v18 = [v17 _autoCreatedForV2AU];

  v19 = [WeakRetained unitName];
  a4->unitName = v19;

  a4->unit = [WeakRetained unit];
  [WeakRetained minValue];
  a4->minValue = v20;
  [WeakRetained maxValue];
  a4->maxValue = v21;
  if (v18)
  {
    [WeakRetained _defaultValue];
  }

  else
  {
    [WeakRetained value];
  }

  a4->defaultValue = v22;
  v25 = [WeakRetained flags];
  a4->flags = v25 | 0x8000000;
  a4->clumpID = v15;
  v28 = *(this + 13);
  v27 = this + 104;
  v26 = v28;
  if (v28)
  {
    v29 = v27;
    do
    {
      v30 = *(v26 + 8);
      v13 = v30 >= v15;
      v31 = v30 < v15;
      if (v13)
      {
        v29 = v26;
      }

      v26 = *&v26[8 * v31];
    }

    while (v26);
    if (v29 != v27 && v15 >= *(v29 + 8))
    {
      a4->flags = v25 | 0x8100000;
    }
  }

  v32 = [WeakRetained displayName];
  v33 = v32;
  if (v32)
  {
    a4->cfNameString = v32;
    stpncpy(a4->name, [(__CFString *)v32 UTF8String], 0x34uLL);
  }

  else
  {
    a4->cfNameString = &stru_1F0340B48;
  }

  v23 = 0;
LABEL_18:

  return v23;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterValueStrings(id **a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(a1, a2, 0, a3);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueStrings];
    *a4 = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 4294956417;
    }
  }

  else
  {
    v8 = 4294956418;
  }

  return v8;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterStringFromValue(id **this, unsigned int a2, unsigned int a3, const float *a4, const __CFString **a5)
{
  *a5 = 0;
  v7 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this, a2, 0, a3);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringFromValue:a4];
    v10 = v9;
    if (v9)
    {
      *a5 = v9;
    }

    v11 = 0;
  }

  else
  {
    v11 = 4294956418;
  }

  return v11;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterIDName(id *this, unsigned int a2, unsigned int a3, int a4, const __CFString **a5)
{
  WeakRetained = objc_loadWeakRetained(this);
  v11 = [WeakRetained parameterTree];

  *a5 = 0;
  v12 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this, a2, 0, a3);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 displayNameWithLength:a4];
    v15 = v14;
    if (v14)
    {
      v16 = 0;
      *a5 = v14;
    }

    else
    {
      v16 = 4294956417;
    }
  }

  else
  {
    v16 = 4294956418;
  }

  return v16;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterGroupName(AUv3InstanceBase::ParameterMap *this, unsigned int a2, const __CFString **a3)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(this);
  *a3 = 0;
  v8 = *(this + 13);
  v7 = this + 104;
  v6 = v8;
  if (!v8)
  {
    return 4294967246;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 8);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 8) > a2)
  {
    return 4294967246;
  }

  v14 = *(v9 + 5);
  v15 = [v14 displayName];

  if (v15)
  {
    *a3 = [v14 displayName];
  }

  return 0;
}

uint64_t AUv3InstanceBase::ParameterMap::parameterValueFromString(id **this, unsigned int a2, unsigned int a3, const __CFString *a4, float *a5)
{
  *a5 = 0.0;
  v7 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this, a2, 0, a3);
  v8 = v7;
  if (v7)
  {
    [v7 valueFromString:a4];
    v9 = 0;
    *a5 = v10;
  }

  else
  {
    v9 = 4294956418;
  }

  return v9;
}

uint64_t AUv3InstanceBase::GetPropertyInfo(AUv3InstanceBase *this, int a2, int a3, int a4, unsigned int *a5, unsigned __int8 *a6)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v7[0] = this;
  v7[1] = &v10;
  v7[2] = &v9;
  v7[3] = &v8;
  v7[4] = a5;
  v7[5] = a6;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetPropertyInfo(unsigned int,unsigned int,unsigned int,unsigned int &,unsigned char &)::{lambda(void)#1}>, v7);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetPropertyInfo(unsigned int,unsigned int,unsigned int,unsigned int &,unsigned char &)::{lambda(void)#1}>(uint64_t **a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = *(*a1)[2];
  v4 = *(*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v43 = 0;
  v7 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v7 + 8), v2);
  if (Value)
  {
    v9 = Value;
    *__p = 0;
    v10 = objc_opt_class();
    v11 = [v9[1] UTF8String];
    AUAudioUnitProperties::accessorsForProperty(v10, v11, 0, __p, v12);
    *v6 = objc_opt_respondsToSelector() & 1;
    v13 = (**v9)(v9, *(v1 + 72), v3, v4);
    v14 = v13;
    if ((v13 & 0x100000000) == 0)
    {
      return v14;
    }

    if (v13)
    {
      *v5 = v13;
      if ((v9[2] & 5) != 0)
      {
        return 0;
      }

      v14 = 0;
LABEL_47:
      *v6 = 0;
      return v14;
    }

    if (v9[6])
    {
      if ((v9[2] & 2) != 0)
      {
        v22 = AUv3InstanceBase::GetBus(v1, v3, v4, &v43);
        v23 = v22;
        v14 = v43;
        if (v43)
        {

          v15 = 0;
          goto LABEL_99;
        }

        v15 = [v22 valueForKey:v9[1]];
      }

      else
      {
        if (v3)
        {
          v15 = 0;
          v14 = 4294956430;
LABEL_99:

          return v14;
        }

        if (v4)
        {
          v15 = 0;
          v14 = 4294956419;
          goto LABEL_99;
        }

        v15 = [*(v1 + 72) valueForKey:v9[1]];
      }

      if (v15)
      {
        *v5 = 0;
        v14 = std::function<int ()(objc_object *,void *,unsigned int &)>::operator()((v9 + 3), v15, 0, v5);
      }

      else
      {
        v14 = 4294956445;
      }

      goto LABEL_99;
    }
  }

  if (v2 <= 37)
  {
    switch(v2)
    {
      case 1:
      case 23:
        if (v3 != 1)
        {
          return 4294956430;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 152) - *(v1 + 144)) >> 3) <= v4)
        {
          return 4294956419;
        }

        if (v2 == 23 || v2 == 1)
        {
          v14 = 0;
          v17 = 16;
          goto LABEL_61;
        }

        return 4294956417;
      case 2:
        if (v3)
        {
          v31 = v4;
        }

        else
        {
          v31 = 0;
        }

        if (v3)
        {
          v32 = v3;
        }

        else
        {
          v32 = 2;
        }

        v33 = AUv3InstanceBase::GetBus(v1, v32, v31, &v43);
        v14 = v43;
        if (!v43)
        {
          goto LABEL_42;
        }

        return v14;
      case 3:
        AUv3InstanceBase::ParameterMap::paramIDsForScope(__p, (v1 + 200), v3);
        v34 = *__p;
        *v5 = (*&__p[8] - *__p) & 0xFFFFFFFC;
        *v6 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        return 0;
      case 4:
        v14 = 0;
        v21 = 104;
        goto LABEL_46;
      case 8:
        if (v3)
        {
          v28 = v4;
        }

        else
        {
          v28 = 0;
        }

        if (v3)
        {
          v29 = v3;
        }

        else
        {
          v29 = 2;
        }

        v30 = AUv3InstanceBase::GetBus(v1, v29, v28, &v43);
        v14 = v43;
        if (!v43)
        {
          goto LABEL_60;
        }

        return v14;
      case 11:
        if ((v3 - 3) < 0xFFFFFFFE)
        {
          return 4294956430;
        }

        v37 = *(v1 + 72);
        if (v3 == 1)
        {
          [v37 inputBusses];
        }

        else
        {
          [v37 outputBusses];
        }
        v42 = ;
        *v5 = 4;
        *v6 = [v42 isCountChangeable];

        return 0;
      case 13:
        v26 = [*(v1 + 72) channelCapabilities];
        v27 = v26;
        if (v26)
        {
          *v5 = 2 * [v26 count];
          *v6 = 0;

          return 0;
        }

        v36 = *AudioComponentLogCategory();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          return 4294956417;
        }

        *__p = 136316162;
        *&__p[4] = "AUv3Instance.mm";
        v45 = 1024;
        v46 = 767;
        v47 = 1024;
        v48 = 13;
        v49 = 1024;
        v50 = v3;
        v51 = 1024;
        v52 = v4;
        goto LABEL_93;
      case 19:
        v24 = AUv3InstanceBase::GetBus(v1, v3, v4, &v43);
        v25 = v24;
        v14 = v43;
        if (v43)
        {

          return v14;
        }

        *v6 = 1;
        v38 = [v24 format];
        v39 = [v38 channelLayout];

        if (v39)
        {
          *v5 = layoutSize(v39);

          return 0;
        }

        v14 = 4294956445;
        break;
      case 27:
        v14 = 0;
LABEL_60:
        v17 = 40;
        goto LABEL_61;
      case 29:
        *v5 = 4;
        if (*(v1 + 72) && (*(*v1 + 216))(v1))
        {
          v35 = [*(v1 + 72) isLoadedInProcess];
        }

        else
        {
          v35 = 1;
        }

        v14 = 0;
        *v6 = v35;
        return v14;
      case 33:
        goto LABEL_40;
      case 34:
      case 35:
        v14 = 0;
        v21 = 16;
        goto LABEL_46;
      default:
        goto LABEL_75;
    }

    return v14;
  }

  if (v2 <= 1841)
  {
    if (v2 <= 55)
    {
      if (v2 != 38)
      {
        if (v2 == 45)
        {
          v18 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID((v1 + 200), v3, 0, v4);
          v19 = v18;
          if (!v18)
          {
            return 4294967246;
          }

          v20 = [v18 dependentParameters];
          *v5 = 8 * [v20 count];

          *v6 = 0;
          return 0;
        }

        goto LABEL_75;
      }

LABEL_40:
      v14 = 0;
      v21 = 24;
LABEL_46:
      *v5 = v21;
      goto LABEL_47;
    }

    if (v2 != 56)
    {
      if (v2 == 57)
      {
        v14 = 0;
        *v5 = 0;
        goto LABEL_47;
      }

      goto LABEL_75;
    }

LABEL_41:
    v14 = 0;
LABEL_42:
    v17 = 8;
LABEL_61:
    *v5 = v17;
    *v6 = 1;
    return v14;
  }

  if (v2 > 3500)
  {
    if (v2 != 3501 && v2 != 3502)
    {
      goto LABEL_75;
    }

LABEL_36:
    v14 = 0;
    v21 = 8;
    goto LABEL_46;
  }

  if (v2 == 1842)
  {
    goto LABEL_41;
  }

  if (v2 == 2015)
  {
    goto LABEL_36;
  }

LABEL_75:
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v36 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    *__p = 136316162;
    *&__p[4] = "AUv3Instance.mm";
    v45 = 1024;
    v46 = 910;
    v47 = 1024;
    v48 = v2;
    v49 = 1024;
    v50 = v3;
    v51 = 1024;
    v52 = v4;
LABEL_93:
    _os_log_impl(&dword_18F5DF000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid property id %d (scope %d, element %d)", __p, 0x24u);
  }

  return 4294956417;
}

os_log_t *AudioComponentLogCategory(void)
{
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  return gAudioComponentLogCategory;
}

uint64_t AUv3InstanceBase::Reset(AUv3InstanceBase *this, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  v4[0] = &v6;
  v4[1] = &v5;
  v4[2] = this;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Reset(unsigned int,unsigned int)::{lambda(void)#1}>, v4);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Reset(unsigned int,unsigned int)::{lambda(void)#1}>(void *a1)
{
  v3 = *a1;
  if (***a1)
  {
    return 4294956430;
  }

  if (*v3[1])
  {
    return 4294956419;
  }

  [*(v3[2] + 9) reset];
  return 0;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Uninitialize(void)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 80) == 1)
  {
    [*(v1 + 72) deallocateRenderResources];
    *(v1 + 80) = 0;
  }

  return 0;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Initialize(void)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 80))
  {
    return 0;
  }

  v3 = *(v1 + 72);
  v8 = 0;
  v4 = [v3 allocateRenderResourcesAndReturnError:&v8];
  v5 = v8;
  v6 = v5;
  if (v4)
  {
    AUv3RenderAdapter::initialize((v1 + 136), *(v1 + 72));
    v2 = 0;
    *(v1 + 80) = 1;
  }

  else if (v5)
  {
    v2 = [v5 code];
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t AUv3InstanceBase::Close(AUv3InstanceBase *this)
{
  (*(*this + 64))(this);
  v2 = *(this + 11);
  *(this + 11) = 0;

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 22) = 0;
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 23) = 0;
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 24) = 0;
  }

  AUv3InstanceBase::ParameterMap::setAudioUnit((this + 200), 0, 0);
  v6 = *(this + 9);
  *(this + 9) = 0;

  return 0;
}

void AUv3InstanceBase::ParameterMap::setAudioUnit(AUv3InstanceBase::ParameterMap *this, AUv3InstanceBase *a2, AUAudioUnit *a3)
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(this);

  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(this);
    [v6 removeObserver:*(this + 9) forKeyPath:@"parameterTree" context:0];

    v7 = atomic_exchange(this + 11, 0);
    if (v7)
    {
      v8 = objc_loadWeakRetained(this);
      v9 = [v8 parameterTree];
      [v9 removeParameterObserver:v7];
    }

    atomic_store(0, this + 16);
    v10 = objc_storeWeak(this, obj);
    *(this + 1) = a2;
    v11 = v10;

    if (obj)
    {
      v12 = objc_loadWeakRetained(this);
      [v12 addObserver:*(this + 9) forKeyPath:@"parameterTree" options:3 context:0];

      *(this + 80) = 1;
    }
  }
}

void sub_18F75FFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x18F75FF44);
  }

  _Unwind_Resume(a1);
}

BOOL AUv3InstanceBase::CanDo(AUv3InstanceBase *this, unsigned int a2)
{
  if (a2 <= 0x15)
  {
    result = 1;
    if (((1 << a2) & 0x37CEFE) != 0)
    {
      return result;
    }
  }

  if (a2 - 257 >= 2)
  {
    if (a2 - 513 <= 1)
    {
      return *(this + 12) == 1635086197;
    }

    return 0;
  }

  v4 = *(this + 12);
  result = 1;
  if (v4 > 1635086952)
  {
    if (v4 == 1635086953)
    {
      return result;
    }

    v5 = 29293;
  }

  else
  {
    if (v4 == 1635085673)
    {
      return result;
    }

    v5 = 28021;
  }

  if (v4 != (v5 | 0x61750000))
  {
    return 0;
  }

  return result;
}

void ___ZN16AUv3InstanceBase12ParameterMapC2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained((v1 + 128));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (atomic_exchange((v1 + 88), 0))
    {
      [WeakRetained removeParameterObserver:?];
    }

    objc_storeWeak((v1 + 128), 0);
  }

  atomic_store(0, (v1 + 16));
  os_unfair_recursive_lock_unlock();
  v5 = objc_loadWeakRetained(v1);
  v6 = [v5 parameterTree];

  if (v6)
  {
    v7 = v6;
    if ([v7 _autoCreatedForV2AU] >= 2)
    {
      v8 = *(v1 + 8);
      os_unfair_recursive_lock_lock_with_options();
      memset(v12, 0, sizeof(v12));
      v9 = *(v8 + 104);
      v10 = *(v8 + 112);
      v13 = v12;
      v14 = 0;
      v11 = v10 - v9;
      if (v10 != v9)
      {
        if (!((v11 >> 4) >> 60))
        {
          std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v11 >> 4);
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&v13);
      os_unfair_recursive_lock_unlock();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_18F7602B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](va);
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void AUv3InstanceBase::AUv3InstanceBase(AUv3InstanceBase *this, const AudioComponentDescription *a2)
{
  *this = &unk_1F033C758;
  *(this + 5) = 0;
  *(this + 1) = AUIB_Open;
  *(this + 2) = AUIB_Close;
  componentType = a2->componentType;
  v4 = AUInstanceBase::LookupMethod_Music;
  if (a2->componentType <= 1635086196)
  {
    v5 = componentType - 1635085670;
    v6 = v5 > 0xF;
    v7 = (1 << v5) & 0x8009;
    if (!v6 && v7 != 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v4 = AUInstanceBase::LookupMethod;
    goto LABEL_15;
  }

  if (componentType != 1635086957 && componentType != 1635086953)
  {
    if (componentType == 1635086197)
    {
      v4 = AUInstanceBase::LookupMethod_Output;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  *(this + 3) = v4;
  *(this + 4) = 0;
  *this = &unk_1F033C378;
  v10 = *&a2->componentType;
  *(this + 16) = a2->componentFlagsMask;
  *(this + 3) = v10;
  *(this + 9) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 14) = 0u;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 216) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v11 = objc_alloc_init(_AUParameterTreeObserver);
  *(this + 34) = v11;
  *(this + 280) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 36) = 0;
  *(this + 37) = this + 304;
  *(this + 20) = 0u;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN16AUv3InstanceBase12ParameterMapC2Ev_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = this + 200;
  [(_AUParameterTreeObserver *)v11 setCallback:v12];
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 364) = 0u;
  *(this + 48) = 0;
  *(this + 49) = 0;
  if (AUv3InstanceBase::sSelectorsOnce != -1)
  {
    dispatch_once(&AUv3InstanceBase::sSelectorsOnce, &__block_literal_global_4193);
  }
}

void sub_18F760558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  objc_destroyWeak((v14 + 328));
  std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(*(v14 + 304));

  a14 = (v14 + 248);
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&a14);
  objc_destroyWeak(v15);

  AUv3RenderAdapter::~AUv3RenderAdapter((v14 + 136));
  v17 = *(v14 + 128);
  *(v14 + 128) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  a14 = (v14 + 104);
  std::vector<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataStreamFormat,AudioMetadataTimeline::Node<AudioMetadataTrackFormat,AudioMetadataTimeline::Node<AudioMetadataTrackUID,AudioMetadataTimeline::Node<AudioMetadataObject,AudioMetadataTimeline::Node<AudioMetadataContent,AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>>>>>>>>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

IMP ___ZN16AUv3InstanceBaseC2ERK25AudioComponentDescription_block_invoke()
{
  AUv3InstanceBase::sSel_SetV2Parameter = sel_setV2Parameter_value_bufferOffset_sequenceNumber_;
  AUv3InstanceBase::sSel_GetV2Parameter = sel_getV2Parameter_sequenceNumber_;
  AUv3InstanceBase::sSel_address = sel_address;
  v0 = objc_opt_class();
  result = class_getMethodImplementation(v0, AUv3InstanceBase::sSel_address);
  AUv3InstanceBase::sAUParameter_address = result;
  return result;
}

void AUv3InstanceBase::DoOpen(AUv3InstanceBase *this, OpaqueAudioComponentInstance *a2, AUAudioUnit *a3)
{
  v27 = a3;
  *(this + 5) = a2;
  objc_storeStrong(this + 9, a3);
  AUv3InstanceBase::ParameterMap::setAudioUnit((this + 200), this, v27);
  v6 = [*(this + 9) renderBlock];

  if (!v6)
  {
    AudioComponentInstanceSetNoCanDo(a2, 14);
  }

  AudioComponentInstanceSetNoCanDo(a2, 20);
  AudioComponentInstanceSetNoCanDo(a2, 21);
  v7 = [(AUAudioUnit *)v27 inputBusses];
  std::vector<AUv3RenderAdapter::AUInputElement>::resize(this + 18, [v7 count]);

  v8 = [*(this + 9) scheduleParameterBlock];
  v9 = *(this + 22);
  *(this + 22) = v8;

  v10 = *(this + 22);
  if (v10)
  {
    v11 = [v10 copy];
    v12 = *(this + 22);
    *(this + 22) = v11;
  }

  v13 = [*(this + 9) scheduleMIDIEventBlock];
  v14 = *(this + 23);
  *(this + 23) = v13;

  v15 = *(this + 23);
  if (v15)
  {
    v16 = [v15 copy];
    v17 = *(this + 23);
    *(this + 23) = v16;
  }

  v18 = [*(this + 9) scheduleMIDIEventListBlock];
  v19 = *(this + 24);
  *(this + 24) = v18;

  v20 = *(this + 24);
  if (v20)
  {
    v21 = [v20 copy];
    v22 = *(this + 24);
    *(this + 24) = v21;
  }

  v23 = objc_opt_class();
  *(this + 49) = class_getMethodImplementation(v23, AUv3InstanceBase::sSel_GetV2Parameter);
  MethodImplementation = class_getMethodImplementation(v23, AUv3InstanceBase::sSel_SetV2Parameter);
  *(this + 48) = MethodImplementation;
  if (!*(this + 49) || !MethodImplementation)
  {
    std::terminate();
  }

  v25 = *(this + 5);
  if (v25)
  {
    v26 = (*(*v25 + 8))(v25);
    if (v26)
    {
      *(v26 + 80) = [*(this + 9) isLoadedInProcess] ^ 1;
    }
  }
}

uint64_t MP4BoxParser_SampleSize::Init(MP4BoxParser **this)
{
  v12 = *MEMORY[0x1E69E9840];
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 != 1937013298 && v3 != 1937011578)
    {
      return 4294967294;
    }

    v5 = (*(*this + 3))(this);
    result = MP4BoxParser::ReadDataSourceBytes(this[1], v5, 8uLL, v11);
    if (!result)
    {
      *(this + 16) = bswap32(v11[1]);
      v6 = *(this + 6);
      v7 = (*(*this + 3))(this);
      if (*(this + 5) == 1937011578)
      {
        v8 = v11[0];
        *(this + 15) = bswap32(v11[0]);
        if (v8)
        {
          return 0;
        }

        v10 = 2;
      }

      else
      {
        v9 = HIBYTE(v11[0]);
        *(this + 15) = HIBYTE(v11[0]);
        if (v9 != 16)
        {
          return 2003334207;
        }

        v10 = 1;
      }

      if (*(this + 16) <= (v6 - v7 - 8) >> v10)
      {
        return 0;
      }

      else
      {
        return 2003334207;
      }
    }
  }

  return result;
}

void MP4BoxParser_SampleSize::~MP4BoxParser_SampleSize(MP4BoxParser_SampleSize *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MP4BoxParser_SampleSize::MP4BoxParser_SampleSize(MP4BoxParser_SampleSize *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *this = &unk_1F032BFF8;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

uint64_t MP4BoxParser_SampleSize::GetSampleSize(MP4BoxParser_SampleSize *this, unsigned int a2, unsigned int *a3)
{
  result = 2003334207;
  if (*(this + 16) <= a2)
  {
    return result;
  }

  *a3 = 0;
  v7 = *(this + 15);
  if (*(this + 5) == 1937011578)
  {
    if (v7)
    {
LABEL_4:
      result = 0;
      *a3 = v7;
      return result;
    }
  }

  else if (v7)
  {
    if (v7 != 16)
    {
      return result;
    }

    v8 = 2;
    goto LABEL_9;
  }

  v8 = 4;
LABEL_9:
  v9 = (*(*this + 24))(this);
  result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v8 * a2 + v9 + 8, v8, &v11);
  if (!result)
  {
    v10 = *(this + 15);
    if (v10 == 16)
    {
      v7 = bswap32(v11) >> 16;
      goto LABEL_4;
    }

    result = 2003334207;
    if (!v10)
    {
      v7 = bswap32(v11);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t MP4BoxParser_SampleSize::GetByteCount(MP4BoxParser_SampleSize *this)
{
  if (*(this + 5) == 1937011578)
  {
    v2 = *(this + 15);
    if (v2)
    {
      return (*(this + 16) * v2);
    }
  }

  v6 = 0;
  if (*(this + 16))
  {
    v4 = 0;
    LODWORD(v3) = 0;
    while (!MP4BoxParser_SampleSize::GetSampleSize(this, v4, &v6))
    {
      v3 = v6 + v3;
      if (++v4 >= *(this + 16))
      {
        return v3;
      }
    }
  }

  return 0;
}

void _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, char *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 5)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 5)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 5;
      v15 = &v8[32 * (a3 - (v14 >> 5))];
      v18 = 32 * a3 - 32 * (v14 >> 5);
      do
      {
        v19 = &v8[v17];
        v20 = *(a4 + 1);
        *v19 = *a4;
        *(v19 + 1) = v20;
        v17 += 32;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v21 = &__src[32 * a3];
        v22 = &v15[-32 * a3];
        v23 = v15;
        if (v22 < v8)
        {
          v23 = v15;
          do
          {
            v24 = *v22;
            v25 = *(v22 + 1);
            v22 += 32;
            *v23 = v24;
            *(v23 + 1) = v25;
            v23 += 32;
          }

          while (v22 < v8);
        }

        *(a1 + 8) = v23;
        if (v15 != v21)
        {
          memmove(&__src[32 * a3], __src, v15 - v21);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          v4 += 32 * v26;
        }

        do
        {
          v27 = *(v4 + 1);
          *v6 = *v4;
          *(v6 + 1) = v27;
          v6 += 32;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 5);
      if (v11 >> 59)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 32 * ((__src - v10) >> 5);
      v29 = (v28 + 32 * a3);
      v30 = 32 * a3;
      v31 = v28;
      do
      {
        v32 = *(a4 + 1);
        *v31 = *a4;
        v31[1] = v32;
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
      v33 = *(a1 + 8) - __src;
      memcpy(v29, __src, v33);
      v34 = &v29[v33];
      *(a1 + 8) = v6;
      v35 = *a1;
      v36 = &v6[-*a1];
      v37 = v28 - v36;
      memcpy((v28 - v36), *a1, v36);
      *a1 = v37;
      *(a1 + 8) = v34;
      *(a1 + 16) = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<float>(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      v17 = (v16 + v16) * cos(v15);
      *a5++ = v17;
      v18 = exp(v14 + v14);
      *a6++ = -v18;
      v19 = v9 * *(v13 - 1);
      v20 = v9 * *v13;
      v21 = hypot(v19, v20);
      *(v10 - 22) = v21 + v21;
      *(v10 - 11) = atan2(v20, v19);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<float>(unsigned int a1, uint64_t a2, float *a3, _DWORD *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      v17 = v11 * v14;
      *a3++ = v17;
      *&v16 = v11 * -(v15 * v16);
      *a4++ = LODWORD(v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

void _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, char *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 6)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 6)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 6;
      v15 = &v8[64 * (a3 - (v14 >> 6))];
      v18 = (a3 << 6) - (v14 >> 6 << 6);
      do
      {
        v19 = &v8[v17];
        v21 = *a4;
        v20 = *(a4 + 1);
        v22 = *(a4 + 3);
        *(v19 + 2) = *(a4 + 2);
        *(v19 + 3) = v22;
        *v19 = v21;
        *(v19 + 1) = v20;
        v17 += 64;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v23 = &__src[64 * a3];
        v24 = &v15[-64 * a3];
        v25 = v15;
        if (v24 < v8)
        {
          v25 = v15;
          do
          {
            v27 = *v24;
            v26 = *(v24 + 1);
            v28 = *(v24 + 3);
            *(v25 + 2) = *(v24 + 2);
            *(v25 + 3) = v28;
            *v25 = v27;
            *(v25 + 1) = v26;
            v25 += 64;
            v24 += 64;
          }

          while (v24 < v8);
        }

        *(a1 + 8) = v25;
        if (v15 != v23)
        {
          memmove(&__src[64 * a3], __src, v15 - v23);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v29 = 0;
          }

          else
          {
            v29 = a3;
          }

          v4 += 64 * v29;
        }

        do
        {
          v31 = *v4;
          v30 = *(v4 + 1);
          v32 = *(v4 + 3);
          *(v6 + 2) = *(v4 + 2);
          *(v6 + 3) = v32;
          *v6 = v31;
          *(v6 + 1) = v30;
          v6 += 64;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 6);
      if (v11 >> 58)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = (__src - v10) >> 6 << 6;
      v34 = (v33 + (a3 << 6));
      v35 = a3 << 6;
      v36 = v33;
      do
      {
        v38 = *a4;
        v37 = *(a4 + 1);
        v39 = *(a4 + 3);
        v36[2] = *(a4 + 2);
        v36[3] = v39;
        *v36 = v38;
        v36[1] = v37;
        v36 += 4;
        v35 -= 64;
      }

      while (v35);
      v40 = *(a1 + 8) - __src;
      memcpy(v34, __src, v40);
      v41 = &v34[v40];
      *(a1 + 8) = v6;
      v42 = *a1;
      v43 = &v6[-*a1];
      v44 = v33 - v43;
      memcpy((v33 - v43), *a1, v43);
      *a1 = v44;
      *(a1 + 8) = v41;
      *(a1 + 16) = 0;
      if (v42)
      {

        operator delete(v42);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<double>(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, long double *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      *a5++ = (v16 + v16) * cos(v15);
      *a6++ = -exp(v14 + v14);
      v17 = v9 * *(v13 - 1);
      v18 = v9 * *v13;
      v19 = hypot(v17, v18);
      *(v10 - 22) = v19 + v19;
      *(v10 - 11) = atan2(v18, v17);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<double>(unsigned int a1, uint64_t a2, double *a3, double *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      *a3++ = v11 * v14;
      *a4++ = v11 * -(v15 * v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

_DWORD *RamstadSRC::initFilter(RamstadSRC *this, double a2, int a3)
{
  if (a3 == 34)
  {
    v4 = vcvtpd_s64_f64(*(this + 4) / *(this + 5));
  }

  else
  {
    v4 = 1;
  }

  *(this + 22) = v4;
  v5 = fmin(a2, 1.0) * *(this + 13);
  v6 = *(this + 12);
  if (*(this + 14) == 8)
  {
    v7 = v6;
  }

  else
  {
    v7 = (3 * v6 + 1) >> 1;
  }

  if (*(this + 93) == 1)
  {
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 160, *(this + 20), v7, &v50);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 184, *(this + 23), v7, &v50);
    {
      GetKernelFactoryD(void)::sFactory.__m_.__sig = 850045863;
      *GetKernelFactoryD(void)::sFactory.__m_.__opaque = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[16] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[32] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[48] = 0u;
      *&qword_1EAD30EB8 = 0u;
    }

    v9 = *(this + 13);
    v8 = *(this + 14);
    v10 = (*(this + 92) & 1) == 0;
    std::mutex::lock(&GetKernelFactoryD(void)::sFactory);
    v12 = qword_1EAD30EB0;
    v11 = qword_1EAD30EB8;
    v13 = qword_1EAD30EB0;
    if (!qword_1EAD30EB0 && qword_1EAD30EB8)
    {
LABEL_29:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v14 = v12 + 40 * v11;
      if (v13 == v14)
      {
        break;
      }

      v15 = *(v13 + 32);
      if (!v15 || *(v15 + 8) == -1)
      {
        if (v12 > v13)
        {
          goto LABEL_67;
        }

        if (!v12 && v11)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v13 >= v14)
        {
LABEL_67:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v13 + 40 != v14)
        {
          v16 = v13;
          do
          {
            v17 = v16 + 40;
            v18 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 + 40) + 80;
            v16 = v17;
          }

          while (v18 != v14);
        }

        v19 = *(v14 - 8);
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }

        v12 = qword_1EAD30EB0;
        v11 = --qword_1EAD30EB8;
      }

      else
      {
        v13 += 40;
      }

      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v11 == 0;
      }

      if (!v20)
      {
        goto LABEL_29;
      }
    }

    *&v54 = __PAIR64__(v9, v8);
    *(&v54 + 1) = v5;
    v55 = v10;
    v34 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v54);
    v35 = v34[1];
    if (!v35 || (v36 = std::__shared_weak_count::lock(v35)) == 0 || !*v34)
    {
      operator new();
    }

    *&v37 = *v34;
    *(&v37 + 1) = v36;
    v48 = v37;
    std::mutex::unlock(&GetKernelFactoryD(void)::sFactory);
    v42 = *(this + 3);
    v43 = v48;
    *(this + 1) = v48;
    if (v42)
    {
LABEL_62:
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  else
  {
    v50 = 0uLL;
    v51 = 0uLL;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 112, *(this + 14), v7, &v50);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 136, *(this + 17), v7, &v50);
    {
      GetKernelFactory(void)::sFactory.__m_.__sig = 850045863;
      *GetKernelFactory(void)::sFactory.__m_.__opaque = 0u;
      *&GetKernelFactory(void)::sFactory.__m_.__opaque[16] = 0u;
      *&GetKernelFactory(void)::sFactory.__m_.__opaque[32] = 0u;
      *&GetKernelFactory(void)::sFactory.__m_.__opaque[48] = 0u;
      *&qword_1EAD0E4D8 = 0u;
    }

    v22 = *(this + 13);
    v21 = *(this + 14);
    v23 = (*(this + 92) & 1) == 0;
    std::mutex::lock(&GetKernelFactory(void)::sFactory);
    v25 = qword_1EAD0E4D0;
    v24 = qword_1EAD0E4D8;
    v26 = qword_1EAD0E4D0;
    if (!qword_1EAD0E4D0 && qword_1EAD0E4D8)
    {
LABEL_51:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v27 = v25 + 40 * v24;
      if (v26 == v27)
      {
        break;
      }

      v28 = *(v26 + 32);
      if (!v28 || *(v28 + 8) == -1)
      {
        if (v25 > v26)
        {
          goto LABEL_68;
        }

        if (!v25 && v24)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v26 >= v27)
        {
LABEL_68:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v26 + 40 != v27)
        {
          v29 = v26;
          do
          {
            v30 = v29 + 40;
            v31 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v29, v29 + 40) + 80;
            v29 = v30;
          }

          while (v31 != v27);
        }

        v32 = *(v27 - 8);
        if (v32)
        {
          std::__shared_weak_count::__release_weak(v32);
        }

        v25 = qword_1EAD0E4D0;
        v24 = --qword_1EAD0E4D8;
      }

      else
      {
        v26 += 40;
      }

      if (v25)
      {
        v33 = 1;
      }

      else
      {
        v33 = v24 == 0;
      }

      if (!v33)
      {
        goto LABEL_51;
      }
    }

    *&v54 = __PAIR64__(v22, v21);
    *(&v54 + 1) = v5;
    v55 = v23;
    v38 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v54);
    v39 = v38[1];
    if (!v39 || (v40 = std::__shared_weak_count::lock(v39)) == 0 || !*v38)
    {
      operator new();
    }

    *&v41 = *v38;
    *(&v41 + 1) = v40;
    v49 = v41;
    std::mutex::unlock(&GetKernelFactory(void)::sFactory);
    v42 = *(this + 1);
    v43 = v49;
    *this = v49;
    if (v42)
    {
      goto LABEL_62;
    }
  }

  v44 = *(this + 12);
  LODWORD(v56) = 0;
  std::vector<float>::assign(this + 26, v44, &v56, v43);
  v45 = *(this + 12);
  LODWORD(v56) = 0;
  return std::vector<float>::assign(this + 29, v45, &v56, v46);
}

void sub_18F761ED4(_Unwind_Exception *a1)
{
  shared_weak_owners = v2[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v2[3].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  v6 = *v3;
  if (*v3)
  {
    v2[2].__vftable = v6;
    operator delete(v6);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::mutex::unlock(&GetKernelFactory(void)::sFactory);
  _Unwind_Resume(a1);
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(__int128 *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAD0E4D0;
  v2 = qword_1EAD0E4D8;
  if (qword_1EAD0E4D0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1EAD0E4D8 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1EAD0E4D0;
  if (qword_1EAD0E4D8)
  {
    v5 = qword_1EAD0E4D0;
    v6 = qword_1EAD0E4D8;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v25 = *a1;
    v9 = *(a1 + 2);
    v27[0] = 0;
    v27[1] = 0;
    v26 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v23 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, v8) != 0xFF)
      {
        v24 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v8, &v24, &v25, &v23))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v23;
        if (qword_1EAD0E4D0 > v23)
        {
          goto LABEL_57;
        }

        if (!qword_1EAD0E4D0 && qword_1EAD0E4D8)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1EAD0E4D0 + 40 * qword_1EAD0E4D8;
        if (v23 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1EAD0E4E0 >= qword_1EAD0E4D8)
          {
            if (qword_1EAD0E4E0 == qword_1EAD0E4D8)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(&v22, v23, &v25);
            }

            else
            {
              if (v15 == v23)
              {
                v20 = v25;
                *(v15 + 16) = v26;
                *v15 = v20;
                *(v15 + 24) = *v27;
                v27[0] = 0;
                v27[1] = 0;
                ++qword_1EAD0E4D8;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1EAD0E4D8;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v25;
                v14[16] = v26;
                v18 = *v27;
                v27[0] = 0;
                v27[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v22 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v23 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v25) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, (v7 - 40)) != 0xFF)
        {
          v23 = (v7 - 40);
          goto LABEL_43;
        }

        v24 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v1, &v24, &v25, &v23))
        {
LABEL_43:
          if (!qword_1EAD0E4D0 && v23)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v22 = v23;
LABEL_48:
          if (v27[1])
          {
            std::__shared_weak_count::__release_weak(v27[1]);
          }

          v5 = v22;
          if (!v22)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v5 + 24;
        }
      }
    }

    goto LABEL_32;
  }

  return v5 + 24;
}

void sub_18F7624A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernel>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032C0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v5 = v3 == v4;
    v2 = v3 < v4 ? 0xFFFFFFFFLL : 1;
    if (v5)
    {
      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      if (v6 == v7)
      {
        LODWORD(v2) = 0;
      }

      else
      {
        LODWORD(v2) = -127;
      }

      if (v6 > v7)
      {
        LODWORD(v2) = 1;
      }

      if (v6 < v7)
      {
        v2 = 0xFFFFFFFFLL;
      }

      else
      {
        v2 = v2;
      }

      if (!v2)
      {
        v8 = *(a1 + 16);
        v9 = *(a2 + 16);
        v10 = v8 == v9;
        if (v8 < v9)
        {
          LODWORD(v2) = -1;
        }

        else
        {
          LODWORD(v2) = 1;
        }

        if (v10)
        {
          return 0;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(boost::container *a1, const char *a2, __int128 *a3)
{
  if (qword_1EAD0E4E0 != qword_1EAD0E4D8)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1EAD0E4E0 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1EAD0E4E0 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1EAD0E4E0;
  }

  if (qword_1EAD0E4E0 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1EAD0E4E0 / 5uLL;
  }

  v5 = qword_1EAD0E4E0 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1EAD0E4E0 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error(a1, a2);
  }

  v10 = qword_1EAD0E4D0;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1EAD0E4D0;
  v14 = (qword_1EAD0E4D0 + 40 * qword_1EAD0E4D8);
  v15 = v11;
  if (qword_1EAD0E4D0 != a2)
  {
    v16 = qword_1EAD0E4D0;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1EAD0E4D8;
    if (qword_1EAD0E4D8)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1EAD0E4D0);
  }

  qword_1EAD0E4D0 = v12;
  ++qword_1EAD0E4D8;
  qword_1EAD0E4E0 = v6;
  *a1 = &a2[v12 - v10];
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F032C040;
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

  JUMPOUT(0x193ADF220);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAD30EB0;
  v2 = qword_1EAD30EB8;
  if (qword_1EAD30EB0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1EAD30EB8 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1EAD30EB0;
  if (qword_1EAD30EB8)
  {
    v5 = qword_1EAD30EB0;
    v6 = qword_1EAD30EB8;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v25 = *a1;
    v9 = *(a1 + 16);
    v27[0] = 0;
    v27[1] = 0;
    v26 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v23 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, v8) != 0xFF)
      {
        v24 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v8, &v24, &v25, &v23))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v23;
        if (qword_1EAD30EB0 > v23)
        {
          goto LABEL_57;
        }

        if (!qword_1EAD30EB0 && qword_1EAD30EB8)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1EAD30EB0 + 40 * qword_1EAD30EB8;
        if (v23 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1EAD30EC0 >= qword_1EAD30EB8)
          {
            if (qword_1EAD30EC0 == qword_1EAD30EB8)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(&v22, v23, &v25);
            }

            else
            {
              if (v15 == v23)
              {
                v20 = v25;
                *(v15 + 16) = v26;
                *v15 = v20;
                *(v15 + 24) = *v27;
                v27[0] = 0;
                v27[1] = 0;
                ++qword_1EAD30EB8;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1EAD30EB8;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v25;
                v14[16] = v26;
                v18 = *v27;
                v27[0] = 0;
                v27[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v22 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v23 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v25) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, (v7 - 40)) != 0xFF)
        {
          v23 = (v7 - 40);
          goto LABEL_43;
        }

        v24 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v1, &v24, &v25, &v23))
        {
LABEL_43:
          if (!qword_1EAD30EB0 && v23)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v22 = v23;
LABEL_48:
          if (v27[1])
          {
            std::__shared_weak_count::__release_weak(v27[1]);
          }

          v5 = v22;
          if (!v22)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v5 + 24;
        }
      }
    }

    goto LABEL_32;
  }

  return v5 + 24;
}

void sub_18F762ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernelD>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernelD>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032C068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(boost::container *a1, const char *a2, __int128 *a3)
{
  if (qword_1EAD30EC0 != qword_1EAD30EB8)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1EAD30EC0 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1EAD30EC0 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1EAD30EC0;
  }

  if (qword_1EAD30EC0 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1EAD30EC0 / 5uLL;
  }

  v5 = qword_1EAD30EC0 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1EAD30EC0 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error(a1, a2);
  }

  v10 = qword_1EAD30EB0;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1EAD30EB0;
  v14 = (qword_1EAD30EB0 + 40 * qword_1EAD30EB8);
  v15 = v11;
  if (qword_1EAD30EB0 != a2)
  {
    v16 = qword_1EAD30EB0;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1EAD30EB8;
    if (qword_1EAD30EB8)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1EAD30EB0);
  }

  qword_1EAD30EB0 = v12;
  ++qword_1EAD30EB8;
  qword_1EAD30EC0 = v6;
  *a1 = &a2[v12 - v10];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

void RamstadSRC::RamstadSRC(RamstadSRC *this, double a2, double a3, int a4, unsigned int a5)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 12) = a4;
  *(this + 18) = 0;
  *(this + 22) = 1;
  *(this + 92) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = -1;
  if (a5 <= 0x3F)
  {
    v5 = 8;
  }

  else
  {
    v5 = 11;
  }

  *(this + 66) = -1;
  *(this + 14) = v5;
  *(this + 93) = a5 > 0x5F;
  v6 = floor(a2);
  v7 = v6 == a2;
  v8 = a2 / a3;
  *(this + 13) = qword_18F901820[a5 - 33 < 2];
  if (!v7 || (v9 = floor(a3), v9 != a3))
  {
    *(this + 12) = 0x3E80000000000000;
    *(this + 92) = 0;
    *(this + 13) = 256;
    v18 = vcvtmd_s64_f64(v8);
    *(this + 15) = v18;
    v19 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
    *(this + 17) = v19;
    *(this + 10) = (v18 << 32 >> 1) + v19;
    *(this + 32) = -1;
LABEL_26:
    *(this + 66) = -1;
    goto LABEL_27;
  }

  v10 = v6;
  v11 = v9;
  if (v6 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = -v10;
  }

  if (v11 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = -v11;
  }

  v14 = 1;
  if (v12 >= 2 && v13 >= 2)
  {
    v14 = v13;
    do
    {
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (v12 < v14)
      {
        v14 = v12;
      }

      v12 = v15 % v14;
    }

    while (v15 % v14);
  }

  v16 = v11 / v14;
  if (v16 > 1280)
  {
    *(this + 12) = 0x3E80000000000000;
    *(this + 92) = 0;
    *(this + 13) = 256;
    v20 = vcvtmd_s64_f64(v8);
    *(this + 15) = v20;
    v21 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
    *(this + 17) = v21;
    *(this + 10) = (v20 << 32 >> 1) + v21;
    *(this + 32) = -1;
    goto LABEL_26;
  }

  *(this + 92) = 1;
  v17 = v10 / v14;
  *(this + 13) = v16;
  *(this + 15) = v17 / v16;
  *(this + 16) = v17;
  *(this + 17) = v17 % v16;
LABEL_27:
  *(this + 18) = 0;
  RamstadSRC::initFilter(this, 1.0 / v8, a5);
}

void sub_18F763574(_Unwind_Exception *exception_object)
{
  v4 = v1[29];
  if (v4)
  {
    v1[30] = v4;
    operator delete(v4);
  }

  v5 = v1[26];
  if (v5)
  {
    v1[27] = v5;
    operator delete(v5);
  }

  v6 = v1[23];
  if (v6)
  {
    v1[24] = v6;
    operator delete(v6);
  }

  v7 = v1[20];
  if (v7)
  {
    v1[21] = v7;
    operator delete(v7);
  }

  v8 = v1[17];
  if (v8)
  {
    v1[18] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[15] = v9;
    operator delete(v9);
  }

  v10 = v1[3];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = v1[1];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void RamstadSRC::~RamstadSRC(RamstadSRC *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void RamstadSRC::reset(RamstadSRC *this)
{
  *(this + 18) = 0;
  *(this + 22) = 1;
  if (*(this + 93) == 1)
  {
    v2 = *(this + 20);
    v3 = *(this + 21) - v2;
    if (v3 >= 1)
    {
      bzero(v2, v3);
    }

    v4 = *(this + 23);
    v5 = *(this + 24);
  }

  else
  {
    v6 = *(this + 14);
    v7 = *(this + 15) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v4 = *(this + 17);
    v5 = *(this + 18);
  }

  if (v5 - v4 >= 1)
  {

    bzero(v4, v5 - v4);
  }
}

double RamstadSRC::processMono(RamstadSRC *this, RamstadSRC *a2, const float *a3, float *a4, int a5, int a6, int a7, int a8)
{
  if (*(a2 + 12) == 1)
  {
    RamstadSRC::checkPreflight(&v306, a2, a5, a6);
    if ((v307 & 1) == 0)
    {
      v45 = 0;
      v26 = v306;
LABEL_161:
      *this = v26;
      *(this + 4) = v45;
      goto LABEL_162;
    }

    if (*(a2 + 93) == 1)
    {
      if (*(a2 + 92))
      {
        v17 = *(a2 + 17);
        v16 = *(a2 + 18);
        v18 = *(a2 + 22);
        v19 = *(a2 + 2);
        v20 = *(v19 + 16);
        v21 = *(v19 + 40);
        v22 = *(a2 + 20);
        v23 = *(a2 + 23);
        v24 = *(a2 + 13);
        v25 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v27 = 0;
            do
            {
              v29 = v22[2];
              v28 = v22[3];
              v30 = v18;
              v32 = *v22;
              v31 = v22[1];
              if (v18 >= 1)
              {
                do
                {
                  v33 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v34 = vmlaq_f64(v33, v29, v20[2]);
                  v35 = vmlaq_f64(v33, v28, v20[3]);
                  v36 = vmlaq_f64(v33, v32, *v20);
                  v37 = vmlaq_f64(vmlaq_f64(v33, v31, v20[1]), v23[1], v20[5]);
                  v38 = vmlaq_f64(v36, *v23, v20[4]);
                  v39 = vmlaq_f64(v35, v23[3], v20[7]);
                  v40 = vmlaq_f64(v34, v23[2], v20[6]);
                  *v23 = v32;
                  v23[1] = v31;
                  v23[2] = v29;
                  v23[3] = v28;
                  v22[2] = v40;
                  v22[3] = v39;
                  a3 += a7;
                  v32 = v38;
                  *v22 = v38;
                  v22[1] = v37;
                  v31 = v37;
                  v29 = v40;
                  v28 = v39;
                  --v30;
                }

                while (v30);
              }

              v26 += v18;
              v41 = (v21 + ((2 * v16) << 6));
              v42 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v41[4], *v23), v32, *v41), vmlaq_f64(vmulq_f64(v41[6], v23[2]), v29, v41[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v41[5], v23[1]), v31, v41[1]), vmlaq_f64(vmulq_f64(v41[7], v23[3]), v28, v41[3]))));
              *a4 = v42;
              a4 += a8;
              v43 = v16 + v17;
              if (v43 < v24)
              {
                v18 = v25;
              }

              else
              {
                v18 = v25 + 1;
              }

              if (v43 < v24)
              {
                v44 = 0;
              }

              else
              {
                v44 = v24;
              }

              v16 = v43 - v44;
              ++v27;
            }

            while (v27 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v206 = v22[2];
            v205 = v22[3];
            v207 = *v22;
            v208 = v22[1];
            v209 = v204;
            do
            {
              v210 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v211 = vmlaq_f64(v210, v206, v20[2]);
              v212 = vmlaq_f64(v210, v205, v20[3]);
              v213 = vmlaq_f64(v210, v207, *v20);
              v214 = vmlaq_f64(vmlaq_f64(v210, v208, v20[1]), v23[1], v20[5]);
              v215 = vmlaq_f64(v213, *v23, v20[4]);
              v216 = vmlaq_f64(v212, v23[3], v20[7]);
              v217 = vmlaq_f64(v211, v23[2], v20[6]);
              *v23 = v207;
              v23[1] = v208;
              v23[2] = v206;
              v23[3] = v205;
              v22[2] = v217;
              v22[3] = v216;
              a3 += a7;
              v207 = v215;
              *v22 = v215;
              v22[1] = v214;
              v208 = v214;
              v206 = v217;
              v205 = v216;
              --v209;
            }

            while (v209);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v110 = 0;
            v26 = 0;
            do
            {
              if (v18 < 1)
              {
                v127 = v22[6];
                v126 = v22[7];
                v129 = v22[4];
                v128 = v22[5];
              }

              else
              {
                v111 = v18;
                do
                {
                  v112 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v113 = *v22;
                  v114 = v22[1];
                  v115 = v22[2];
                  v116 = v22[3];
                  v117 = vmlaq_f64(vmlaq_f64(v112, *v22, *v20), *v23, v20[8]);
                  v118 = vmlaq_f64(vmlaq_f64(v112, v114, v20[1]), v23[1], v20[9]);
                  v119 = vmlaq_f64(vmlaq_f64(v112, v115, v20[2]), v23[2], v20[10]);
                  v120 = vmlaq_f64(vmlaq_f64(v112, v116, v20[3]), v23[3], v20[11]);
                  v23[2] = v115;
                  v23[3] = v116;
                  *v23 = v113;
                  v23[1] = v114;
                  v22[2] = v119;
                  v22[3] = v120;
                  *v22 = v117;
                  v22[1] = v118;
                  v122 = v22[4];
                  v121 = v22[5];
                  v124 = v22[6];
                  v123 = v22[7];
                  v125 = vmlaq_f64(v112, v122, v20[4]);
                  v126 = vmlaq_f64(vmlaq_f64(0, v123, v20[7]), v23[7], v20[15]);
                  v127 = vmlaq_f64(vmlaq_f64(0, v124, v20[6]), v23[6], v20[14]);
                  v128 = vmlaq_f64(vmlaq_f64(v112, v121, v20[5]), v23[5], v20[13]);
                  v129 = vmlaq_f64(v125, v23[4], v20[12]);
                  v23[4] = v122;
                  v23[5] = v121;
                  v23[6] = v124;
                  v23[7] = v123;
                  v22[6] = v127;
                  v22[7] = v126;
                  v22[4] = v129;
                  v22[5] = v128;
                  a3 += a7;
                  --v111;
                }

                while (v111);
              }

              v26 += v18;
              v130 = (v21 + ((4 * v16) << 6));
              v131 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v130[8], *v23), *v22, *v130), vmlaq_f64(vmulq_f64(v130[10], v23[2]), v22[2], v130[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v130[9], v23[1]), v22[1], v130[1]), vmlaq_f64(vmulq_f64(v130[11], v23[3]), v22[3], v130[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v130[12], v23[4]), v129, v130[4]), vmlaq_f64(vmulq_f64(v130[14], v23[6]), v127, v130[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v130[13], v23[5]), v128, v130[5]), vmlaq_f64(vmulq_f64(v130[15], v23[7]), v126, v130[7])))));
              *a4 = v131;
              a4 += a8;
              v132 = v16 + v17;
              if (v132 < v24)
              {
                v18 = v25;
              }

              else
              {
                v18 = v25 + 1;
              }

              if (v132 < v24)
              {
                v133 = 0;
              }

              else
              {
                v133 = v24;
              }

              v16 = v132 - v133;
              ++v110;
            }

            while (v110 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v247 = v204;
            do
            {
              v248 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v249 = *v22;
              v250 = v22[1];
              v251 = v22[2];
              v252 = v22[3];
              v253 = vmlaq_f64(vmlaq_f64(v248, *v22, *v20), *v23, v20[8]);
              v254 = vmlaq_f64(vmlaq_f64(v248, v250, v20[1]), v23[1], v20[9]);
              v255 = vmlaq_f64(vmlaq_f64(v248, v251, v20[2]), v23[2], v20[10]);
              v256 = vmlaq_f64(vmlaq_f64(v248, v252, v20[3]), v23[3], v20[11]);
              v23[2] = v251;
              v23[3] = v252;
              *v23 = v249;
              v23[1] = v250;
              v22[2] = v255;
              v22[3] = v256;
              *v22 = v253;
              v22[1] = v254;
              v258 = v22[4];
              v257 = v22[5];
              v260 = v22[6];
              v259 = v22[7];
              v261 = vmlaq_f64(v248, v258, v20[4]);
              v262 = vmlaq_f64(vmlaq_f64(0, v259, v20[7]), v23[7], v20[15]);
              v263 = vmlaq_f64(vmlaq_f64(0, v260, v20[6]), v23[6], v20[14]);
              v264 = vmlaq_f64(vmlaq_f64(v248, v257, v20[5]), v23[5], v20[13]);
              v265 = vmlaq_f64(v261, v23[4], v20[12]);
              v23[4] = v258;
              v23[5] = v257;
              v23[6] = v260;
              v23[7] = v259;
              v22[6] = v263;
              v22[7] = v262;
              v22[4] = v265;
              v22[5] = v264;
              a3 += a7;
              --v247;
            }

            while (v247);
          }
        }
      }

      else
      {
        v65 = *(a2 + 17);
        v16 = *(a2 + 18);
        v18 = *(a2 + 22);
        v66 = *(a2 + 2);
        v67 = *(v66 + 16);
        v68 = *(v66 + 40);
        v69 = *(a2 + 20);
        v70 = *(a2 + 23);
        v71 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v72 = 0;
            do
            {
              v74 = v69[2];
              v73 = v69[3];
              v75 = v18;
              v77 = *v69;
              v76 = v69[1];
              if (v18 >= 1)
              {
                do
                {
                  v78 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v79 = vmlaq_f64(v78, v74, v67[2]);
                  v80 = vmlaq_f64(v78, v73, v67[3]);
                  v81 = vmlaq_f64(v78, v77, *v67);
                  v82 = vmlaq_f64(vmlaq_f64(v78, v76, v67[1]), v70[1], v67[5]);
                  v83 = vmlaq_f64(v81, *v70, v67[4]);
                  v84 = vmlaq_f64(v80, v70[3], v67[7]);
                  v85 = vmlaq_f64(v79, v70[2], v67[6]);
                  *v70 = v77;
                  v70[1] = v76;
                  v70[2] = v74;
                  v70[3] = v73;
                  v69[2] = v85;
                  v69[3] = v84;
                  a3 += a7;
                  v77 = v83;
                  *v69 = v83;
                  v69[1] = v82;
                  v76 = v82;
                  v74 = v85;
                  v73 = v84;
                  --v75;
                }

                while (v75);
              }

              v26 += v18;
              v86 = (v68 + (((v16 >> 22) & 0x1FE) << 6));
              v87 = v70[2];
              v88 = v70[3];
              v89 = vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v70, v86[12]), v77, v86[8]), vmlaq_f64(vmulq_f64(v87, v86[14]), v74, v86[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v70[1], v86[13]), v76, v86[9]), vmlaq_f64(vmulq_f64(v88, v86[15]), v73, v86[11]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v86[4], *v70), v77, *v86), vmlaq_f64(vmulq_f64(v86[6], v87), v74, v86[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v86[5], v70[1]), v76, v86[1]), vmlaq_f64(vmulq_f64(v86[7], v88), v73, v86[3]))));
              *v89.f64 = v89.f64[1] + *(a2 + 12) * (v16 & 0x7FFFFF) * (v89.f64[0] - v89.f64[1]);
              *a4 = *v89.f64;
              a4 += a8;
              LODWORD(v86) = v16 + v65;
              v16 = (v16 + v65) & 0x7FFFFFFF;
              v18 = v71 + (v86 >> 31);
              ++v72;
            }

            while (v72 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v227 = v69[2];
            v226 = v69[3];
            v228 = *v69;
            v229 = v69[1];
            v230 = v204;
            do
            {
              v231 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v232 = vmlaq_f64(v231, v227, v67[2]);
              v233 = vmlaq_f64(v231, v226, v67[3]);
              v234 = vmlaq_f64(v231, v228, *v67);
              v235 = vmlaq_f64(vmlaq_f64(v231, v229, v67[1]), v70[1], v67[5]);
              v236 = vmlaq_f64(v234, *v70, v67[4]);
              v237 = vmlaq_f64(v233, v70[3], v67[7]);
              v238 = vmlaq_f64(v232, v70[2], v67[6]);
              *v70 = v228;
              v70[1] = v229;
              v70[2] = v227;
              v70[3] = v226;
              v69[2] = v238;
              v69[3] = v237;
              a3 += a7;
              v228 = v236;
              *v69 = v236;
              v69[1] = v235;
              v229 = v235;
              v227 = v238;
              v226 = v237;
              --v230;
            }

            while (v230);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v151 = 0;
            do
            {
              if (v18 < 1)
              {
                v168 = v69[6];
                v167 = v69[7];
                v170 = v69[4];
                v169 = v69[5];
              }

              else
              {
                v152 = v18;
                do
                {
                  v153 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v154 = *v69;
                  v155 = v69[1];
                  v156 = v69[2];
                  v157 = v69[3];
                  v158 = vmlaq_f64(vmlaq_f64(v153, *v69, *v67), *v70, v67[8]);
                  v159 = vmlaq_f64(vmlaq_f64(v153, v155, v67[1]), v70[1], v67[9]);
                  v160 = vmlaq_f64(vmlaq_f64(v153, v156, v67[2]), v70[2], v67[10]);
                  v161 = vmlaq_f64(vmlaq_f64(v153, v157, v67[3]), v70[3], v67[11]);
                  v70[2] = v156;
                  v70[3] = v157;
                  *v70 = v154;
                  v70[1] = v155;
                  v69[2] = v160;
                  v69[3] = v161;
                  *v69 = v158;
                  v69[1] = v159;
                  v163 = v69[4];
                  v162 = v69[5];
                  v165 = v69[6];
                  v164 = v69[7];
                  v166 = vmlaq_f64(v153, v163, v67[4]);
                  v167 = vmlaq_f64(vmlaq_f64(0, v164, v67[7]), v70[7], v67[15]);
                  v168 = vmlaq_f64(vmlaq_f64(0, v165, v67[6]), v70[6], v67[14]);
                  v169 = vmlaq_f64(vmlaq_f64(v153, v162, v67[5]), v70[5], v67[13]);
                  v170 = vmlaq_f64(v166, v70[4], v67[12]);
                  v70[4] = v163;
                  v70[5] = v162;
                  v70[6] = v165;
                  v70[7] = v164;
                  v69[6] = v168;
                  v69[7] = v167;
                  v69[4] = v170;
                  v69[5] = v169;
                  a3 += a7;
                  --v152;
                }

                while (v152);
              }

              v26 += v18;
              v171 = (v68 + (((v16 >> 21) & 0x3FC) << 6));
              v172 = v69[1];
              v174 = v69[2];
              v173 = v69[3];
              v175 = v70[2];
              v176 = v70[3];
              v177 = v70[6];
              v178 = v70[7];
              v179 = v70[4];
              v180 = v70[5];
              v181 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v70, v171[24]), *v69, v171[16]), vmlaq_f64(vmulq_f64(v175, v171[26]), v174, v171[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v70[1], v171[25]), v172, v171[17]), vmlaq_f64(vmulq_f64(v176, v171[27]), v173, v171[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v171[8], *v70), *v69, *v171), vmlaq_f64(vmulq_f64(v171[10], v175), v174, v171[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v171[9], v70[1]), v172, v171[1]), vmlaq_f64(vmulq_f64(v171[11], v176), v173, v171[3])))), vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v179, v171[28]), v170, v171[20]), vmlaq_f64(vmulq_f64(v177, v171[30]), v168, v171[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v180, v171[29]), v169, v171[21]), vmlaq_f64(vmulq_f64(v178, v171[31]), v167, v171[23]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v171[12], v179), v170, v171[4]), vmlaq_f64(vmulq_f64(v171[14], v177), v168, v171[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v171[13], v180), v169, v171[5]), vmlaq_f64(vmulq_f64(v171[15], v178), v167, v171[7])))));
              *v181.f64 = v181.f64[1] + *(a2 + 12) * (v16 & 0x7FFFFF) * (v181.f64[0] - v181.f64[1]);
              *a4 = *v181.f64;
              a4 += a8;
              LODWORD(v171) = v16 + v65;
              v16 = (v16 + v65) & 0x7FFFFFFF;
              v18 = v71 + (v171 >> 31);
              ++v151;
            }

            while (v151 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v276 = v204;
            do
            {
              v277 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v278 = *v69;
              v279 = v69[1];
              v280 = v69[2];
              v281 = v69[3];
              v282 = vmlaq_f64(vmlaq_f64(v277, *v69, *v67), *v70, v67[8]);
              v283 = vmlaq_f64(vmlaq_f64(v277, v279, v67[1]), v70[1], v67[9]);
              v284 = vmlaq_f64(vmlaq_f64(v277, v280, v67[2]), v70[2], v67[10]);
              v285 = vmlaq_f64(vmlaq_f64(v277, v281, v67[3]), v70[3], v67[11]);
              v70[2] = v280;
              v70[3] = v281;
              *v70 = v278;
              v70[1] = v279;
              v69[2] = v284;
              v69[3] = v285;
              *v69 = v282;
              v69[1] = v283;
              v287 = v69[4];
              v286 = v69[5];
              v289 = v69[6];
              v288 = v69[7];
              v290 = vmlaq_f64(v277, v287, v67[4]);
              v291 = vmlaq_f64(vmlaq_f64(0, v288, v67[7]), v70[7], v67[15]);
              v292 = vmlaq_f64(vmlaq_f64(0, v289, v67[6]), v70[6], v67[14]);
              v293 = vmlaq_f64(vmlaq_f64(v277, v286, v67[5]), v70[5], v67[13]);
              v294 = vmlaq_f64(v290, v70[4], v67[12]);
              v70[4] = v287;
              v70[5] = v286;
              v70[6] = v289;
              v70[7] = v288;
              v69[6] = v292;
              v69[7] = v291;
              v69[4] = v294;
              v69[5] = v293;
              a3 += a7;
              --v276;
            }

            while (v276);
          }
        }
      }
    }

    else if (*(a2 + 92))
    {
      v46 = *(a2 + 17);
      v16 = *(a2 + 18);
      v18 = *(a2 + 22);
      v47 = *(*a2 + 16);
      v48 = *(*a2 + 40);
      v49 = *(a2 + 14);
      v50 = *(a2 + 17);
      v51 = *(a2 + 13);
      v52 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v53 = 0;
          do
          {
            v55 = *v49;
            v56 = v49[1];
            v57 = v18;
            if (v18 >= 1)
            {
              do
              {
                v58 = vld1q_dup_f32(a3);
                v54 = 4 * a7;
                a3 = (a3 + v54);
                v59 = vmlaq_f32(v58, v56, v47[1]);
                v60 = vmlaq_f32(vmlaq_f32(v58, v55, *v47), *v50, v47[2]);
                v61 = vmlaq_f32(v59, v50[1], v47[3]);
                *v50 = v55;
                v50[1] = v56;
                *v49 = v60;
                v49[1] = v61;
                v55 = v60;
                v56 = v61;
                --v57;
              }

              while (v57);
            }

            v26 += v18;
            v62 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v48 + 32 * (2 * v16) + 32), *v50), v55, *(v48 + 32 * (2 * v16))), vmlaq_f32(vmulq_f32(*(v48 + 32 * (2 * v16) + 48), v50[1]), v56, *(v48 + 32 * (2 * v16) + 16)));
            *a4 = vaddv_f32(vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)));
            a4 += a8;
            v63 = v16 + v46;
            if (v63 < v51)
            {
              v18 = v52;
            }

            else
            {
              v18 = v52 + 1;
            }

            if (v63 < v51)
            {
              v64 = 0;
            }

            else
            {
              v64 = v51;
            }

            v16 = v63 - v64;
            ++v53;
          }

          while (v53 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v219 = *v49;
          v218 = v49[1];
          v221 = v204;
          do
          {
            v222 = vld1q_dup_f32(a3);
            v220 = 4 * a7;
            a3 = (a3 + v220);
            v223 = vmlaq_f32(v222, v218, v47[1]);
            v224 = vmlaq_f32(vmlaq_f32(v222, v219, *v47), *v50, v47[2]);
            v225 = vmlaq_f32(v223, v50[1], v47[3]);
            *v50 = v219;
            v50[1] = v218;
            *v49 = v224;
            v49[1] = v225;
            v219 = v224;
            v218 = v225;
            --v221;
          }

          while (v221);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v134 = 0;
          v26 = 0;
          do
          {
            if (v18 < 1)
            {
              v144 = v49[2];
              v143 = v49[3];
            }

            else
            {
              v136 = v18;
              do
              {
                v137 = vld1q_dup_f32(a3);
                v135 = 4 * a7;
                a3 = (a3 + v135);
                v138 = v49[1];
                v139 = vmlaq_f32(vmlaq_f32(v137, *v49, *v47), *v50, v47[4]);
                v140 = vmlaq_f32(vmlaq_f32(v137, v138, v47[1]), v50[1], v47[5]);
                *v50 = *v49;
                v50[1] = v138;
                *v49 = v139;
                v49[1] = v140;
                v141 = v49[2];
                v142 = v49[3];
                v143 = vmlaq_f32(vmlaq_f32(0, v142, v47[3]), v50[3], v47[7]);
                v144 = vmlaq_f32(vmlaq_f32(v137, v141, v47[2]), v50[2], v47[6]);
                v50[2] = v141;
                v50[3] = v142;
                v49[2] = v144;
                v49[3] = v143;
                --v136;
              }

              while (v136);
            }

            v26 += v18;
            v145 = (v48 + 32 * (4 * v16));
            v146 = vmlaq_f32(vmulq_f32(v145[6], v50[2]), v144, v145[2]);
            v147 = vaddq_f32(vmlaq_f32(vmulq_f32(v145[4], *v50), *v49, *v145), vmlaq_f32(vmulq_f32(v145[5], v50[1]), v49[1], v145[1]));
            *v147.i8 = vadd_f32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
            v148 = vaddq_f32(v146, vmlaq_f32(vmulq_f32(v145[7], v50[3]), v143, v145[3]));
            *v148.i8 = vadd_f32(*v148.i8, *&vextq_s8(v148, v148, 8uLL));
            *a4 = vaddv_f32(vadd_f32(vzip1_s32(*v147.i8, *v148.i8), vzip2_s32(*v147.i8, *v148.i8)));
            a4 += a8;
            v149 = v16 + v46;
            if (v149 < v51)
            {
              v18 = v52;
            }

            else
            {
              v18 = v52 + 1;
            }

            if (v149 < v51)
            {
              v150 = 0;
            }

            else
            {
              v150 = v51;
            }

            v16 = v149 - v150;
            ++v134;
          }

          while (v134 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v267 = v204;
          do
          {
            v268 = vld1q_dup_f32(a3);
            v266 = 4 * a7;
            a3 = (a3 + v266);
            v269 = v49[1];
            v270 = vmlaq_f32(vmlaq_f32(v268, *v49, *v47), *v50, v47[4]);
            v271 = vmlaq_f32(vmlaq_f32(v268, v269, v47[1]), v50[1], v47[5]);
            *v50 = *v49;
            v50[1] = v269;
            *v49 = v270;
            v49[1] = v271;
            v272 = v49[2];
            v273 = v49[3];
            v274 = vmlaq_f32(vmlaq_f32(0, v273, v47[3]), v50[3], v47[7]);
            v275 = vmlaq_f32(vmlaq_f32(v268, v272, v47[2]), v50[2], v47[6]);
            v50[2] = v272;
            v50[3] = v273;
            v49[2] = v275;
            v49[3] = v274;
            --v267;
          }

          while (v267);
        }
      }
    }

    else
    {
      v90 = *(a2 + 17);
      v16 = *(a2 + 18);
      v18 = *(a2 + 22);
      v91 = *(*a2 + 16);
      v92 = *(*a2 + 40);
      v93 = *(a2 + 14);
      v94 = *(a2 + 17);
      v95 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v96 = 0;
          do
          {
            v98 = *v93;
            v99 = v93[1];
            v100 = v18;
            if (v18 >= 1)
            {
              do
              {
                v101 = vld1q_dup_f32(a3);
                v97 = 4 * a7;
                a3 = (a3 + v97);
                v102 = vmlaq_f32(v101, v99, v91[1]);
                v103 = vmlaq_f32(vmlaq_f32(v101, v98, *v91), *v94, v91[2]);
                v104 = vmlaq_f32(v102, v94[1], v91[3]);
                *v94 = v98;
                v94[1] = v99;
                *v93 = v103;
                v93[1] = v104;
                v98 = v103;
                v99 = v104;
                --v100;
              }

              while (v100);
            }

            v26 += v18;
            v105 = *(a2 + 12) * (v16 & 0x7FFFFF);
            v106 = (v92 + 32 * ((v16 >> 22) & 0x1FE));
            v107 = v94[1];
            v108 = vaddq_f32(vmlaq_f32(vmulq_f32(v106[2], *v94), v98, *v106), vmlaq_f32(vmulq_f32(v106[3], v107), v99, v106[1]));
            *v108.i8 = vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
            v109 = vaddq_f32(vmlaq_f32(vmulq_f32(*v94, v106[6]), v98, v106[4]), vmlaq_f32(vmulq_f32(v107, v106[7]), v99, v106[5]));
            *v109.i8 = vadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
            *v109.i8 = vadd_f32(vzip1_s32(*v109.i8, *v108.i8), vzip2_s32(*v109.i8, *v108.i8));
            *a4 = *&v109.i32[1] + (v105 * (*v109.i32 - *&v109.i32[1]));
            a4 += a8;
            LODWORD(v106) = v16 + v90;
            v16 = (v16 + v90) & 0x7FFFFFFF;
            v18 = v95 + (v106 >> 31);
            ++v96;
          }

          while (v96 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v240 = *v93;
          v239 = v93[1];
          v242 = v204;
          do
          {
            v243 = vld1q_dup_f32(a3);
            v241 = 4 * a7;
            a3 = (a3 + v241);
            v244 = vmlaq_f32(v243, v239, v91[1]);
            v245 = vmlaq_f32(vmlaq_f32(v243, v240, *v91), *v94, v91[2]);
            v246 = vmlaq_f32(v244, v94[1], v91[3]);
            *v94 = v240;
            v94[1] = v239;
            *v93 = v245;
            v93[1] = v246;
            v240 = v245;
            v239 = v246;
            --v242;
          }

          while (v242);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v182 = 0;
          do
          {
            if (v18 < 1)
            {
              v192 = v93[2];
              v191 = v93[3];
            }

            else
            {
              v184 = v18;
              do
              {
                v185 = vld1q_dup_f32(a3);
                v183 = 4 * a7;
                a3 = (a3 + v183);
                v186 = v93[1];
                v187 = vmlaq_f32(vmlaq_f32(v185, *v93, *v91), *v94, v91[4]);
                v188 = vmlaq_f32(vmlaq_f32(v185, v186, v91[1]), v94[1], v91[5]);
                *v94 = *v93;
                v94[1] = v186;
                *v93 = v187;
                v93[1] = v188;
                v189 = v93[2];
                v190 = v93[3];
                v191 = vmlaq_f32(vmlaq_f32(0, v190, v91[3]), v94[3], v91[7]);
                v192 = vmlaq_f32(vmlaq_f32(v185, v189, v91[2]), v94[2], v91[6]);
                v94[2] = v189;
                v94[3] = v190;
                v93[2] = v192;
                v93[3] = v191;
                --v184;
              }

              while (v184);
            }

            v26 += v18;
            v193 = *(a2 + 12) * (v16 & 0x7FFFFF);
            v194 = (v92 + 32 * ((v16 >> 21) & 0x3FC));
            v195 = v93[1];
            v196 = v94[1];
            v198 = v94[2];
            v197 = v94[3];
            v199 = vaddq_f32(vmlaq_f32(vmulq_f32(v194[4], *v94), *v93, *v194), vmlaq_f32(vmulq_f32(v194[5], v196), v195, v194[1]));
            *v199.i8 = vadd_f32(*v199.i8, *&vextq_s8(v199, v199, 8uLL));
            v200 = vaddq_f32(vmlaq_f32(vmulq_f32(v194[6], v198), v192, v194[2]), vmlaq_f32(vmulq_f32(v194[7], v197), v191, v194[3]));
            *v200.i8 = vadd_f32(*v200.i8, *&vextq_s8(v200, v200, 8uLL));
            v201 = vmlaq_f32(vmulq_f32(v198, v194[14]), v192, v194[10]);
            v202 = vaddq_f32(vmlaq_f32(vmulq_f32(*v94, v194[12]), *v93, v194[8]), vmlaq_f32(vmulq_f32(v196, v194[13]), v195, v194[9]));
            *v202.i8 = vadd_f32(*v202.i8, *&vextq_s8(v202, v202, 8uLL));
            v203 = vaddq_f32(v201, vmlaq_f32(vmulq_f32(v197, v194[15]), v191, v194[11]));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            *v202.i8 = vadd_f32(vadd_f32(vzip1_s32(*v202.i8, *v199.i8), vzip2_s32(*v202.i8, *v199.i8)), vadd_f32(vzip1_s32(*v203.i8, *v200.i8), vzip2_s32(*v203.i8, *v200.i8)));
            *a4 = *&v202.i32[1] + (v193 * (*v202.i32 - *&v202.i32[1]));
            a4 += a8;
            LODWORD(v194) = v16 + v90;
            v16 = (v16 + v90) & 0x7FFFFFFF;
            v18 = v95 + (v194 >> 31);
            ++v182;
          }

          while (v182 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v296 = v204;
          do
          {
            v297 = vld1q_dup_f32(a3);
            v295 = 4 * a7;
            a3 = (a3 + v295);
            v298 = v93[1];
            v299 = vmlaq_f32(vmlaq_f32(v297, *v93, *v91), *v94, v91[4]);
            v300 = vmlaq_f32(vmlaq_f32(v297, v298, v91[1]), v94[1], v91[5]);
            *v94 = *v93;
            v94[1] = v298;
            *v93 = v299;
            v93[1] = v300;
            v301 = v93[2];
            v302 = v93[3];
            v303 = vmlaq_f32(vmlaq_f32(0, v302, v91[3]), v94[3], v91[7]);
            v304 = vmlaq_f32(vmlaq_f32(v297, v301, v91[2]), v94[2], v91[6]);
            v94[2] = v301;
            v94[3] = v302;
            v93[2] = v304;
            v93[3] = v303;
            --v296;
          }

          while (v296);
        }
      }
    }

    v18 -= v204;
    v26 += v204;
LABEL_160:
    *(a2 + 18) = v16;
    *(a2 + 22) = v18;
    v45 = 1;
    goto LABEL_161;
  }

  *this = 1919747238;
  *(this + 4) = 0;
LABEL_162:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}

uint64_t RamstadSRC::checkPreflight(uint64_t this, RamstadSRC *a2, int a3, int a4)
{
  v6 = this;
  v7 = *(a2 + 66);
  if (v7 == -1)
  {
    this = RamstadSRC::outputSamplesForInputSamples(a2, a3, &v9);
    if (*(a2 + 66) != a4)
    {
      v8 = 1919746222;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v7 != a4)
  {
    v8 = 1919746226;
    goto LABEL_10;
  }

  if (*(a2 + 64) <= a3 && *(a2 + 65) >= a3)
  {
LABEL_7:
    *(v6 + 4) = 1;
    return this;
  }

  v8 = 1919746231;
LABEL_10:
  *v6 = v8;
  *(v6 + 4) = 0;
  return this;
}

uint64_t RamstadSRC::outputSamplesForInputSamples(RamstadSRC *this, int a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  *a3 = 0;
  v7 = *(this + 22);
  v8 = __OFSUB__(a2, v7);
  v9 = a2 - v7;
  if (v9 < 0 == v8)
  {
    if (*(this + 92) == 1)
    {
      v11 = *(this + 13) * v9;
      v12 = *(this + 18);
      v13 = *(this + 16);
    }

    else
    {
      v12 = v9 << 31;
      v11 = *(this + 18);
      v13 = *(this + 10);
    }

    v14 = ((v12 + v11 + v13 - 1) / v13) + 1;
    v15 = vcvtpd_s64_f64(*(this + 5) / *(this + 4));
    v16 = v14 + 2 * v15;
    v17 = v14 - 2 * v15;
    do
    {
      while (1)
      {
        v6 = v14;
        v5 = RamstadSRC::inputSamplesForOutputSamples(this, v14);
        if (v5 > a2)
        {
          break;
        }

        if ((v16 - v6) < 2)
        {
          goto LABEL_10;
        }

        v14 = (v6 + ((v16 - v6) >> 1));
        v17 = v6;
      }

      v14 = (v17 + ((v6 - v17) >> 1));
      v16 = v6;
    }

    while (v14 != v6);
LABEL_10:
    *a3 = v5;
  }

  *(this + 64) = v5;
  *(this + 65) = a2;
  *(this + 66) = v6;
  return v6;
}

uint64_t RamstadSRC::inputSamplesForOutputSamples(RamstadSRC *this, int a2)
{
  v2 = (a2 - 1);
  if (a2 < 1)
  {
    return 0;
  }

  if (*(this + 92) == 1)
  {
    v3 = (*(this + 18) + *(this + 16) * v2) / *(this + 13);
  }

  else
  {
    v3 = (*(this + 18) + *(this + 10) * v2) >> 31;
  }

  v4 = (*(this + 22) + v3);
  *(this + 64) = v4;
  *(this + 65) = v4;
  *(this + 66) = a2;
  return v4;
}

double RamstadSRC::processStereo(RamstadSRC *this, RamstadSRC *a2, const float *a3, const float *a4, float *a5, float *a6, int a7, int a8, int a9, int a10)
{
  if (*(a2 + 12) == 2)
  {
    RamstadSRC::checkPreflight(&v599, a2, a7, a8);
    if (v600)
    {
      *(this + 4) = 1;
      if (*(a2 + 93) == 1)
      {
        if (*(a2 + 92))
        {
          v19 = *(a2 + 17);
          v18 = *(a2 + 18);
          v20 = *(a2 + 22);
          v21 = *(a2 + 2);
          v22 = *(v21 + 16);
          v23 = *(v21 + 40);
          v24 = *(a2 + 20);
          v25 = *(a2 + 23);
          v26 = *(a2 + 13);
          v27 = *(a2 + 15);
          if (*(a2 + 14) == 8)
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v29 = 0;
              v30 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v55 = v24[6];
                  v54 = v24[7];
                  v53 = v24[4];
                  v52 = v24[5];
                }

                else
                {
                  v31 = v20;
                  do
                  {
                    v32 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v33 = *v24;
                    v34 = v24[1];
                    v35 = v24[2];
                    v36 = v24[3];
                    v37 = vmlaq_f64(v32, v36, v22[3]);
                    v38 = vmlaq_f64(v32, v35, v22[2]);
                    v39 = vmlaq_f64(v32, v34, v22[1]);
                    v40 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v41 = vmlaq_f64(vmlaq_f64(v32, *v24, *v22), *v25, v22[4]);
                    v42 = vmlaq_f64(v39, v25[1], v22[5]);
                    v43 = vmlaq_f64(v38, v25[2], v22[6]);
                    v44 = vmlaq_f64(v37, v25[3], v22[7]);
                    v25[2] = v35;
                    v25[3] = v36;
                    *v25 = v33;
                    v25[1] = v34;
                    v24[2] = v43;
                    v24[3] = v44;
                    *v24 = v41;
                    v24[1] = v42;
                    v46 = v24[4];
                    v45 = v24[5];
                    v48 = v24[6];
                    v47 = v24[7];
                    v49 = vmlaq_f64(v40, v48, v22[2]);
                    v50 = vmlaq_f64(v40, v47, v22[3]);
                    v51 = vmlaq_f64(v40, v46, *v22);
                    v52 = vmlaq_f64(vmlaq_f64(v40, v45, v22[1]), v25[5], v22[5]);
                    v53 = vmlaq_f64(v51, v25[4], v22[4]);
                    v54 = vmlaq_f64(v50, v25[7], v22[7]);
                    v55 = vmlaq_f64(v49, v25[6], v22[6]);
                    v25[4] = v46;
                    v25[5] = v45;
                    v25[6] = v48;
                    v25[7] = v47;
                    v24[6] = v55;
                    v24[7] = v54;
                    v24[4] = v53;
                    v24[5] = v52;
                    a3 = (a3 + v30);
                    a4 = (a4 + v30);
                    --v31;
                  }

                  while (v31);
                }

                v28 += v20;
                v56 = (v23 + ((2 * v18) << 6));
                v57 = v56[1];
                v59 = v56[2];
                v58 = v56[3];
                v60 = v56[6];
                v61 = v56[7];
                v62 = v56[4];
                v63 = v56[5];
                v64 = vmlaq_f64(vmulq_f64(v60, v25[6]), v55, v59);
                v65 = vmlaq_f64(vmulq_f64(v62, v25[4]), v53, *v56);
                v66 = vmlaq_f64(vmulq_f64(v61, v25[7]), v54, v58);
                v67 = vmlaq_f64(vmulq_f64(v63, v25[5]), v52, v57);
                v68 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v62, *v25), *v24, *v56), vmlaq_f64(vmulq_f64(v60, v25[2]), v24[2], v59)), vaddq_f64(vmlaq_f64(vmulq_f64(v63, v25[1]), v24[1], v57), vmlaq_f64(vmulq_f64(v61, v25[3]), v24[3], v58))));
                *a5 = v68;
                v69 = vaddvq_f64(vaddq_f64(vaddq_f64(v65, v64), vaddq_f64(v67, v66)));
                *a6 = v69;
                a5 += a10;
                a6 += a10;
                v70 = v18 + v19;
                if (v70 < v26)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v27 + 1;
                }

                if (v70 < v26)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = v26;
                }

                v18 = v70 - v71;
                ++v29;
              }

              while (v29 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v420 = 0;
              v421 = v419;
              do
              {
                v422 = vdupq_lane_s64(COERCE__INT64(a3[v420]), 0);
                v423 = *v24;
                v424 = v24[1];
                v425 = v24[2];
                v426 = v24[3];
                v427 = vmlaq_f64(v422, v426, v22[3]);
                v428 = vmlaq_f64(v422, v425, v22[2]);
                v429 = vmlaq_f64(v422, v424, v22[1]);
                v430 = vdupq_lane_s64(COERCE__INT64(a4[v420]), 0);
                v431 = vmlaq_f64(vmlaq_f64(v422, *v24, *v22), *v25, v22[4]);
                v432 = vmlaq_f64(v429, v25[1], v22[5]);
                v433 = vmlaq_f64(v428, v25[2], v22[6]);
                v434 = vmlaq_f64(v427, v25[3], v22[7]);
                v25[2] = v425;
                v25[3] = v426;
                *v25 = v423;
                v25[1] = v424;
                v24[2] = v433;
                v24[3] = v434;
                *v24 = v431;
                v24[1] = v432;
                v436 = v24[4];
                v435 = v24[5];
                v438 = v24[6];
                v437 = v24[7];
                v439 = vmlaq_f64(v430, v438, v22[2]);
                v440 = vmlaq_f64(v430, v437, v22[3]);
                v441 = vmlaq_f64(v430, v436, *v22);
                v442 = vmlaq_f64(vmlaq_f64(v430, v435, v22[1]), v25[5], v22[5]);
                v443 = vmlaq_f64(v441, v25[4], v22[4]);
                v444 = vmlaq_f64(v440, v25[7], v22[7]);
                v445 = vmlaq_f64(v439, v25[6], v22[6]);
                v25[4] = v436;
                v25[5] = v435;
                v25[6] = v438;
                v25[7] = v437;
                v24[6] = v445;
                v24[7] = v444;
                v24[4] = v443;
                v24[5] = v442;
                v420 += a9;
                --v421;
              }

              while (v421);
            }
          }

          else
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v212 = 0;
              v28 = 0;
              v213 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v242 = v24[10];
                  v241 = v24[11];
                  v240 = v24[8];
                  v239 = v24[9];
                }

                else
                {
                  v214 = v20;
                  do
                  {
                    v215 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v216 = *v24;
                    v217 = v24[1];
                    v218 = v24[2];
                    v219 = v24[3];
                    v220 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v221 = vmlaq_f64(vmlaq_f64(v215, *v24, *v22), *v25, v22[8]);
                    v222 = vmlaq_f64(vmlaq_f64(v215, v217, v22[1]), v25[1], v22[9]);
                    v223 = vmlaq_f64(vmlaq_f64(v215, v218, v22[2]), v25[2], v22[10]);
                    v224 = vmlaq_f64(vmlaq_f64(v215, v219, v22[3]), v25[3], v22[11]);
                    v25[2] = v218;
                    v25[3] = v219;
                    *v25 = v216;
                    v25[1] = v217;
                    v24[2] = v223;
                    v24[3] = v224;
                    *v24 = v221;
                    v24[1] = v222;
                    v225 = v24[4];
                    v226 = v24[5];
                    v227 = v24[6];
                    v228 = v24[7];
                    v229 = vmlaq_f64(vmlaq_f64(v220, v225, *v22), v25[4], v22[8]);
                    v230 = vmlaq_f64(vmlaq_f64(v220, v226, v22[1]), v25[5], v22[9]);
                    v231 = vmlaq_f64(vmlaq_f64(v220, v227, v22[2]), v25[6], v22[10]);
                    v232 = vmlaq_f64(vmlaq_f64(v220, v228, v22[3]), v25[7], v22[11]);
                    v25[4] = v225;
                    v25[5] = v226;
                    v25[6] = v227;
                    v25[7] = v228;
                    v24[6] = v231;
                    v24[7] = v232;
                    v24[4] = v229;
                    v24[5] = v230;
                    v234 = v24[8];
                    v233 = v24[9];
                    v236 = v24[10];
                    v235 = v24[11];
                    v237 = vmlaq_f64(v220, v236, v22[6]);
                    v238 = vmlaq_f64(v215, v234, v22[4]);
                    v239 = vmlaq_f64(vmlaq_f64(v215, v233, v22[5]), v25[9], v22[13]);
                    v240 = vmlaq_f64(v238, v25[8], v22[12]);
                    v241 = vmlaq_f64(vmlaq_f64(v220, v235, v22[7]), v25[11], v22[15]);
                    v242 = vmlaq_f64(v237, v25[10], v22[14]);
                    v25[8] = v234;
                    v25[9] = v233;
                    v25[10] = v236;
                    v25[11] = v235;
                    v24[10] = v242;
                    v24[11] = v241;
                    v24[8] = v240;
                    v24[9] = v239;
                    a3 = (a3 + v213);
                    a4 = (a4 + v213);
                    --v214;
                  }

                  while (v214);
                }

                v28 += v20;
                v243 = (v23 + ((4 * v18) << 6));
                v244 = v243[1];
                v246 = v243[2];
                v245 = v243[3];
                v247 = v243[10];
                v248 = v243[11];
                v249 = v243[8];
                v250 = v243[9];
                v251 = vmlaq_f64(vmulq_f64(v247, v25[2]), v24[2], v246);
                v252 = vmlaq_f64(vmulq_f64(v249, *v25), *v24, *v243);
                v253 = vmlaq_f64(vmulq_f64(v248, v25[3]), v24[3], v245);
                v254 = vmlaq_f64(vmulq_f64(v250, v25[1]), v24[1], v244);
                v255 = vmlaq_f64(vmulq_f64(v247, v25[6]), v24[6], v246);
                v256 = vmlaq_f64(vmulq_f64(v249, v25[4]), v24[4], *v243);
                v257 = vmlaq_f64(vmulq_f64(v248, v25[7]), v24[7], v245);
                v258 = vmlaq_f64(vmulq_f64(v250, v25[5]), v24[5], v244);
                v259 = vmlaq_f64(vmulq_f64(v243[15], v25[11]), v241, v243[7]);
                v260 = vmlaq_f64(vmulq_f64(v243[14], v25[10]), v242, v243[6]);
                v261 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v252, v251), vaddq_f64(v254, v253)), vaddq_f64(vmlaq_f64(vmulq_f64(v243[12], v25[8]), v240, v243[4]), vmlaq_f64(vmulq_f64(v243[13], v25[9]), v239, v243[5]))));
                *a5 = v261;
                v262 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v256, v255), vaddq_f64(v258, v257)), vaddq_f64(v260, v259)));
                *a6 = v262;
                a5 += a10;
                a6 += a10;
                v263 = v18 + v19;
                if (v263 < v26)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v27 + 1;
                }

                if (v263 < v26)
                {
                  v264 = 0;
                }

                else
                {
                  v264 = v26;
                }

                v18 = v263 - v264;
                ++v212;
              }

              while (v212 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v503 = 0;
              v504 = v419;
              do
              {
                v505 = vdupq_lane_s64(COERCE__INT64(a3[v503]), 0);
                v506 = *v24;
                v507 = v24[1];
                v508 = v24[2];
                v509 = v24[3];
                v510 = vdupq_lane_s64(COERCE__INT64(a4[v503]), 0);
                v511 = vmlaq_f64(vmlaq_f64(v505, *v24, *v22), *v25, v22[8]);
                v512 = vmlaq_f64(vmlaq_f64(v505, v507, v22[1]), v25[1], v22[9]);
                v513 = vmlaq_f64(vmlaq_f64(v505, v508, v22[2]), v25[2], v22[10]);
                v514 = vmlaq_f64(vmlaq_f64(v505, v509, v22[3]), v25[3], v22[11]);
                v25[2] = v508;
                v25[3] = v509;
                *v25 = v506;
                v25[1] = v507;
                v24[2] = v513;
                v24[3] = v514;
                *v24 = v511;
                v24[1] = v512;
                v515 = v24[4];
                v516 = v24[5];
                v517 = v24[6];
                v518 = v24[7];
                v519 = vmlaq_f64(vmlaq_f64(v510, v515, *v22), v25[4], v22[8]);
                v520 = vmlaq_f64(vmlaq_f64(v510, v516, v22[1]), v25[5], v22[9]);
                v521 = vmlaq_f64(vmlaq_f64(v510, v517, v22[2]), v25[6], v22[10]);
                v522 = vmlaq_f64(vmlaq_f64(v510, v518, v22[3]), v25[7], v22[11]);
                v25[4] = v515;
                v25[5] = v516;
                v25[6] = v517;
                v25[7] = v518;
                v24[6] = v521;
                v24[7] = v522;
                v24[4] = v519;
                v24[5] = v520;
                v524 = v24[8];
                v523 = v24[9];
                v526 = v24[10];
                v525 = v24[11];
                v527 = vmlaq_f64(v510, v526, v22[6]);
                v528 = vmlaq_f64(v505, v524, v22[4]);
                v529 = vmlaq_f64(vmlaq_f64(v505, v523, v22[5]), v25[9], v22[13]);
                v530 = vmlaq_f64(v528, v25[8], v22[12]);
                v531 = vmlaq_f64(vmlaq_f64(v510, v525, v22[7]), v25[11], v22[15]);
                v532 = vmlaq_f64(v527, v25[10], v22[14]);
                v25[8] = v524;
                v25[9] = v523;
                v25[10] = v526;
                v25[11] = v525;
                v24[10] = v532;
                v24[11] = v531;
                v24[8] = v530;
                v24[9] = v529;
                v503 += a9;
                --v504;
              }

              while (v504);
            }
          }
        }

        else
        {
          v104 = *(a2 + 17);
          v18 = *(a2 + 18);
          v20 = *(a2 + 22);
          v105 = *(a2 + 2);
          v106 = *(v105 + 16);
          v107 = *(v105 + 40);
          v108 = *(a2 + 20);
          v109 = *(a2 + 23);
          v110 = *(a2 + 15);
          if (*(a2 + 14) == 8)
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v111 = 0;
              v112 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v137 = v108[6];
                  v136 = v108[7];
                  v135 = v108[4];
                  v134 = v108[5];
                }

                else
                {
                  v113 = v20;
                  do
                  {
                    v114 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v115 = *v108;
                    v116 = v108[1];
                    v117 = v108[2];
                    v118 = v108[3];
                    v119 = vmlaq_f64(v114, v118, v106[3]);
                    v120 = vmlaq_f64(v114, v117, v106[2]);
                    v121 = vmlaq_f64(v114, v116, v106[1]);
                    v122 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v123 = vmlaq_f64(vmlaq_f64(v114, *v108, *v106), *v109, v106[4]);
                    v124 = vmlaq_f64(v121, v109[1], v106[5]);
                    v125 = vmlaq_f64(v120, v109[2], v106[6]);
                    v126 = vmlaq_f64(v119, v109[3], v106[7]);
                    v109[2] = v117;
                    v109[3] = v118;
                    *v109 = v115;
                    v109[1] = v116;
                    v108[2] = v125;
                    v108[3] = v126;
                    *v108 = v123;
                    v108[1] = v124;
                    v128 = v108[4];
                    v127 = v108[5];
                    v130 = v108[6];
                    v129 = v108[7];
                    v131 = vmlaq_f64(v122, v130, v106[2]);
                    v132 = vmlaq_f64(v122, v129, v106[3]);
                    v133 = vmlaq_f64(v122, v128, *v106);
                    v134 = vmlaq_f64(vmlaq_f64(v122, v127, v106[1]), v109[5], v106[5]);
                    v135 = vmlaq_f64(v133, v109[4], v106[4]);
                    v136 = vmlaq_f64(v132, v109[7], v106[7]);
                    v137 = vmlaq_f64(v131, v109[6], v106[6]);
                    v109[4] = v128;
                    v109[5] = v127;
                    v109[6] = v130;
                    v109[7] = v129;
                    v108[6] = v137;
                    v108[7] = v136;
                    v108[4] = v135;
                    v108[5] = v134;
                    a3 = (a3 + v112);
                    a4 = (a4 + v112);
                    --v113;
                  }

                  while (v113);
                }

                v28 += v20;
                v138 = *(a2 + 12) * (v18 & 0x7FFFFF);
                v139 = (v107 + (((v18 >> 22) & 0x1FE) << 6));
                v140 = v139[1];
                v142 = v139[2];
                v141 = v139[3];
                v143 = v108[1];
                v145 = v108[2];
                v144 = v108[3];
                v146 = v139[6];
                v147 = v139[7];
                v148 = v139[4];
                v149 = v139[5];
                v150 = v109[2];
                v151 = v109[3];
                v152 = v109[1];
                v153 = vmlaq_f64(vmulq_f64(v149, v152), v143, v140);
                v154 = v109[6];
                v155 = v109[7];
                v156 = v109[4];
                v157 = v109[5];
                v158 = vmlaq_f64(vmulq_f64(v149, v157), v134, v140);
                v159 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v148, *v109), *v108, *v139), vmlaq_f64(vmulq_f64(v146, v150), v145, v142)), vaddq_f64(v153, vmlaq_f64(vmulq_f64(v147, v151), v144, v141)));
                v160 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v148, v156), v135, *v139), vmlaq_f64(vmulq_f64(v146, v154), v137, v142)), vaddq_f64(v158, vmlaq_f64(vmulq_f64(v147, v155), v136, v141)));
                v162 = v139[8];
                v161 = v139[9];
                v164 = v139[10];
                v163 = v139[11];
                v165 = v139[14];
                v166 = v139[15];
                v167 = v139[12];
                v168 = v139[13];
                v169 = vmlaq_f64(vmulq_f64(v152, v168), v143, v161);
                v170 = vmlaq_f64(vmulq_f64(v157, v168), v134, v161);
                v171 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v109, v167), *v108, v162), vmlaq_f64(vmulq_f64(v150, v165), v145, v164)), vaddq_f64(v169, vmlaq_f64(vmulq_f64(v151, v166), v144, v163))), v159));
                v172 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v156, v167), v135, v162), vmlaq_f64(vmulq_f64(v154, v165), v137, v164)), vaddq_f64(v170, vmlaq_f64(vmulq_f64(v155, v166), v136, v163))), v160));
                *a5 = v171.f32[1] + (v138 * (v171.f32[0] - v171.f32[1]));
                *a6 = v172.f32[1] + (v138 * (v172.f32[0] - v172.f32[1]));
                a5 += a10;
                a6 += a10;
                LODWORD(v139) = v18 + v104;
                v18 = (v18 + v104) & 0x7FFFFFFF;
                v20 = v110 + (v139 >> 31);
                ++v111;
              }

              while (v111 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v461 = 0;
              v462 = v419;
              do
              {
                v463 = vdupq_lane_s64(COERCE__INT64(a3[v461]), 0);
                v464 = *v108;
                v465 = v108[1];
                v466 = v108[2];
                v467 = v108[3];
                v468 = vmlaq_f64(v463, v467, v106[3]);
                v469 = vmlaq_f64(v463, v466, v106[2]);
                v470 = vmlaq_f64(v463, v465, v106[1]);
                v471 = vdupq_lane_s64(COERCE__INT64(a4[v461]), 0);
                v472 = vmlaq_f64(vmlaq_f64(v463, *v108, *v106), *v109, v106[4]);
                v473 = vmlaq_f64(v470, v109[1], v106[5]);
                v474 = vmlaq_f64(v469, v109[2], v106[6]);
                v475 = vmlaq_f64(v468, v109[3], v106[7]);
                v109[2] = v466;
                v109[3] = v467;
                *v109 = v464;
                v109[1] = v465;
                v108[2] = v474;
                v108[3] = v475;
                *v108 = v472;
                v108[1] = v473;
                v477 = v108[4];
                v476 = v108[5];
                v479 = v108[6];
                v478 = v108[7];
                v480 = vmlaq_f64(v471, v479, v106[2]);
                v481 = vmlaq_f64(v471, v478, v106[3]);
                v482 = vmlaq_f64(v471, v477, *v106);
                v483 = vmlaq_f64(vmlaq_f64(v471, v476, v106[1]), v109[5], v106[5]);
                v484 = vmlaq_f64(v482, v109[4], v106[4]);
                v485 = vmlaq_f64(v481, v109[7], v106[7]);
                v486 = vmlaq_f64(v480, v109[6], v106[6]);
                v109[4] = v477;
                v109[5] = v476;
                v109[6] = v479;
                v109[7] = v478;
                v108[6] = v486;
                v108[7] = v485;
                v108[4] = v484;
                v108[5] = v483;
                v461 += a9;
                --v462;
              }

              while (v462);
            }
          }

          else
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v297 = 0;
              v298 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v327 = v108[10];
                  v326 = v108[11];
                  v325 = v108[8];
                  v324 = v108[9];
                }

                else
                {
                  v299 = v20;
                  do
                  {
                    v300 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v301 = *v108;
                    v302 = v108[1];
                    v303 = v108[2];
                    v304 = v108[3];
                    v305 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v306 = vmlaq_f64(vmlaq_f64(v300, *v108, *v106), *v109, v106[8]);
                    v307 = vmlaq_f64(vmlaq_f64(v300, v302, v106[1]), v109[1], v106[9]);
                    v308 = vmlaq_f64(vmlaq_f64(v300, v303, v106[2]), v109[2], v106[10]);
                    v309 = vmlaq_f64(vmlaq_f64(v300, v304, v106[3]), v109[3], v106[11]);
                    v109[2] = v303;
                    v109[3] = v304;
                    *v109 = v301;
                    v109[1] = v302;
                    v108[2] = v308;
                    v108[3] = v309;
                    *v108 = v306;
                    v108[1] = v307;
                    v310 = v108[4];
                    v311 = v108[5];
                    v312 = v108[6];
                    v313 = v108[7];
                    v314 = vmlaq_f64(vmlaq_f64(v305, v310, *v106), v109[4], v106[8]);
                    v315 = vmlaq_f64(vmlaq_f64(v305, v311, v106[1]), v109[5], v106[9]);
                    v316 = vmlaq_f64(vmlaq_f64(v305, v312, v106[2]), v109[6], v106[10]);
                    v317 = vmlaq_f64(vmlaq_f64(v305, v313, v106[3]), v109[7], v106[11]);
                    v109[4] = v310;
                    v109[5] = v311;
                    v109[6] = v312;
                    v109[7] = v313;
                    v108[6] = v316;
                    v108[7] = v317;
                    v108[4] = v314;
                    v108[5] = v315;
                    v319 = v108[8];
                    v318 = v108[9];
                    v321 = v108[10];
                    v320 = v108[11];
                    v322 = vmlaq_f64(v305, v321, v106[6]);
                    v323 = vmlaq_f64(v300, v319, v106[4]);
                    v324 = vmlaq_f64(vmlaq_f64(v300, v318, v106[5]), v109[9], v106[13]);
                    v325 = vmlaq_f64(v323, v109[8], v106[12]);
                    v326 = vmlaq_f64(vmlaq_f64(v305, v320, v106[7]), v109[11], v106[15]);
                    v327 = vmlaq_f64(v322, v109[10], v106[14]);
                    v109[8] = v319;
                    v109[9] = v318;
                    v109[10] = v321;
                    v109[11] = v320;
                    v108[10] = v327;
                    v108[11] = v326;
                    v108[8] = v325;
                    v108[9] = v324;
                    a3 = (a3 + v298);
                    a4 = (a4 + v298);
                    --v299;
                  }

                  while (v299);
                }

                v328 = (v107 + (((v18 >> 21) & 0x3FC) << 6));
                v329 = v328[1];
                v331 = v328[2];
                v330 = v328[3];
                v332 = v108[1];
                v334 = v108[2];
                v333 = v108[3];
                v336 = v328[10];
                v335 = v328[11];
                v337 = v328[8];
                v338 = v328[9];
                v340 = v109[2];
                v339 = v109[3];
                v341 = v109[1];
                v342 = vmlaq_f64(vmulq_f64(v336, v340), v334, v331);
                v343 = vmlaq_f64(vmulq_f64(v337, *v109), *v108, *v328);
                v344 = vmlaq_f64(vmulq_f64(v335, v339), v333, v330);
                v598 = vmlaq_f64(vmulq_f64(v338, v341), v332, v329);
                v345 = v108[4];
                v346 = v108[5];
                v347 = v108[6];
                v348 = v108[7];
                v349 = v109[6];
                v350 = v109[7];
                v351 = v109[4];
                v352 = v109[5];
                v353 = vmulq_f64(v335, v350);
                v354 = vmlaq_f64(vmulq_f64(v336, v349), v347, v331);
                v355 = vmlaq_f64(vmulq_f64(v337, v351), v345, *v328);
                v356 = vmlaq_f64(v353, v348, v330);
                v357 = vmlaq_f64(vmulq_f64(v338, v352), v346, v329);
                v358 = v328[18];
                v359 = v328[26];
                v360 = v328[27];
                v361 = vmlaq_f64(vmulq_f64(v340, v359), v334, v358);
                v362 = v328[24];
                v363 = v328[25];
                v364 = v328[16];
                v365 = vmlaq_f64(vmulq_f64(v349, v359), v347, v358);
                v366 = vmlaq_f64(vmulq_f64(v351, v362), v345, v364);
                v367 = v328[19];
                v368 = v328[17];
                v369 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v109, v362), *v108, v364), v361), vaddq_f64(vmlaq_f64(vmulq_f64(v341, v363), v332, v368), vmlaq_f64(vmulq_f64(v339, v360), v333, v367))), vaddq_f64(vaddq_f64(v343, v342), vaddq_f64(v598, v344))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[8], v328[28]), v325, v328[20]), vmlaq_f64(vmulq_f64(v109[9], v328[29]), v324, v328[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v328[12], v109[8]), v325, v328[4]), vmlaq_f64(vmulq_f64(v328[13], v109[9]), v324, v328[5]))));
                v370 = *(a2 + 12) * (v18 & 0x7FFFFF);
                *&v369.f64[0] = vcvt_f32_f64(v369);
                v371 = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v366, v365), vaddq_f64(vmlaq_f64(vmulq_f64(v352, v363), v346, v368), vmlaq_f64(vmulq_f64(v350, v360), v348, v367))), vaddq_f64(vaddq_f64(v355, v354), vaddq_f64(v357, v356))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[10], v328[30]), v327, v328[22]), vmlaq_f64(vmulq_f64(v109[11], v328[31]), v326, v328[23])), vaddq_f64(vmlaq_f64(vmulq_f64(v328[14], v109[10]), v327, v328[6]), vmlaq_f64(vmulq_f64(v328[15], v109[11]), v326, v328[7])))));
                *a5 = *(v369.f64 + 1) + (v370 * (*v369.f64 - *(v369.f64 + 1)));
                *a6 = v371.f32[1] + (v370 * (v371.f32[0] - v371.f32[1]));
                v28 += v20;
                a5 += a10;
                a6 += a10;
                v372 = v18 + v104;
                v18 = (v18 + v104) & 0x7FFFFFFF;
                v20 = v110 + (v372 >> 31);
                ++v297;
              }

              while (v297 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v550 = 0;
              v551 = v419;
              do
              {
                v552 = vdupq_lane_s64(COERCE__INT64(a3[v550]), 0);
                v553 = *v108;
                v554 = v108[1];
                v555 = v108[2];
                v556 = v108[3];
                v557 = vdupq_lane_s64(COERCE__INT64(a4[v550]), 0);
                v558 = vmlaq_f64(vmlaq_f64(v552, *v108, *v106), *v109, v106[8]);
                v559 = vmlaq_f64(vmlaq_f64(v552, v554, v106[1]), v109[1], v106[9]);
                v560 = vmlaq_f64(vmlaq_f64(v552, v555, v106[2]), v109[2], v106[10]);
                v561 = vmlaq_f64(vmlaq_f64(v552, v556, v106[3]), v109[3], v106[11]);
                v109[2] = v555;
                v109[3] = v556;
                *v109 = v553;
                v109[1] = v554;
                v108[2] = v560;
                v108[3] = v561;
                *v108 = v558;
                v108[1] = v559;
                v562 = v108[4];
                v563 = v108[5];
                v564 = v108[6];
                v565 = v108[7];
                v566 = vmlaq_f64(vmlaq_f64(v557, v562, *v106), v109[4], v106[8]);
                v567 = vmlaq_f64(vmlaq_f64(v557, v563, v106[1]), v109[5], v106[9]);
                v568 = vmlaq_f64(vmlaq_f64(v557, v564, v106[2]), v109[6], v106[10]);
                v569 = vmlaq_f64(vmlaq_f64(v557, v565, v106[3]), v109[7], v106[11]);
                v109[4] = v562;
                v109[5] = v563;
                v109[6] = v564;
                v109[7] = v565;
                v108[6] = v568;
                v108[7] = v569;
                v108[4] = v566;
                v108[5] = v567;
                v571 = v108[8];
                v570 = v108[9];
                v573 = v108[10];
                v572 = v108[11];
                v574 = vmlaq_f64(v557, v573, v106[6]);
                v575 = vmlaq_f64(v552, v571, v106[4]);
                v576 = vmlaq_f64(vmlaq_f64(v552, v570, v106[5]), v109[9], v106[13]);
                v577 = vmlaq_f64(v575, v109[8], v106[12]);
                v578 = vmlaq_f64(vmlaq_f64(v557, v572, v106[7]), v109[11], v106[15]);
                v579 = vmlaq_f64(v574, v109[10], v106[14]);
                v109[8] = v571;
                v109[9] = v570;
                v109[10] = v573;
                v109[11] = v572;
                v108[10] = v579;
                v108[11] = v578;
                v108[8] = v577;
                v108[9] = v576;
                v550 += a9;
                --v551;
              }

              while (v551);
            }
          }
        }

LABEL_164:
        v20 -= v419;
        v28 += v419;
LABEL_165:
        *(a2 + 18) = v18;
        *(a2 + 22) = v20;
LABEL_166:
        *this = v28;
        goto LABEL_167;
      }

      if (*(a2 + 92))
      {
        v73 = *(a2 + 17);
        v18 = *(a2 + 18);
        v20 = *(a2 + 22);
        v74 = *(*a2 + 16);
        v75 = *(*a2 + 40);
        v76 = *(a2 + 14);
        v77 = *(a2 + 17);
        v78 = *(a2 + 13);
        v79 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a8 < 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = 0;
            v80 = 0;
            v81 = 4 * a9;
            do
            {
              if (v20 < 1)
              {
                v92 = v76[2];
                v93 = v76[3];
              }

              else
              {
                v82 = v20;
                do
                {
                  v83 = vld1q_dup_f32(a3);
                  a3 = (a3 + v81);
                  v84 = vld1q_dup_f32(a4);
                  a4 = (a4 + v81);
                  v85 = v76[1];
                  v86 = vmlaq_f32(v83, v85, v74[1]);
                  v87 = vmlaq_f32(vmlaq_f32(v83, *v76, *v74), *v77, v74[2]);
                  v88 = vmlaq_f32(v86, v77[1], v74[3]);
                  *v77 = *v76;
                  v77[1] = v85;
                  *v76 = v87;
                  v76[1] = v88;
                  v89 = v76[2];
                  v90 = v76[3];
                  v91 = vmlaq_f32(v84, v90, v74[1]);
                  v92 = vmlaq_f32(vmlaq_f32(v84, v89, *v74), v77[2], v74[2]);
                  v93 = vmlaq_f32(v91, v77[3], v74[3]);
                  v77[2] = v89;
                  v77[3] = v90;
                  v76[2] = v92;
                  v76[3] = v93;
                  --v82;
                }

                while (v82);
              }

              v28 += v20;
              v94 = (v75 + 32 * (2 * v18));
              v95 = v94[1];
              v97 = v94[2];
              v96 = v94[3];
              v98 = vmlaq_f32(vmulq_f32(v96, v77[3]), v93, v95);
              v99 = vmlaq_f32(vmulq_f32(v97, v77[2]), v92, *v94);
              v100 = vaddq_f32(vmlaq_f32(vmulq_f32(v97, *v77), *v76, *v94), vmlaq_f32(vmulq_f32(v96, v77[1]), v76[1], v95));
              *a5 = vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)));
              v101 = vaddq_f32(v99, v98);
              *a6 = vaddv_f32(vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL)));
              a5 += a10;
              a6 += a10;
              v102 = v18 + v73;
              if (v102 < v78)
              {
                v20 = v79;
              }

              else
              {
                v20 = v79 + 1;
              }

              if (v102 < v78)
              {
                v103 = 0;
              }

              else
              {
                v103 = v78;
              }

              v18 = v102 - v103;
              ++v80;
            }

            while (v80 != a8);
          }

          v419 = a7 - v28;
          if (a7 <= v28)
          {
            goto LABEL_165;
          }

          if (v20 < v419)
          {
            v419 = v20;
          }

          if (v419 >= 1)
          {
            v446 = 0;
            v447 = v419;
            do
            {
              v448 = &a3[v446];
              v449 = &a4[v446];
              v450 = vld1q_dup_f32(v448);
              v451 = vld1q_dup_f32(v449);
              v452 = v76[1];
              v453 = vmlaq_f32(v450, v452, v74[1]);
              v454 = vmlaq_f32(vmlaq_f32(v450, *v76, *v74), *v77, v74[2]);
              v455 = vmlaq_f32(v453, v77[1], v74[3]);
              *v77 = *v76;
              v77[1] = v452;
              *v76 = v454;
              v76[1] = v455;
              v456 = v76[2];
              v457 = v76[3];
              v458 = vmlaq_f32(v451, v457, v74[1]);
              v459 = vmlaq_f32(vmlaq_f32(v451, v456, *v74), v77[2], v74[2]);
              v460 = vmlaq_f32(v458, v77[3], v74[3]);
              v77[2] = v456;
              v77[3] = v457;
              v76[2] = v459;
              v76[3] = v460;
              v446 += a9;
              --v447;
            }

            while (v447);
          }
        }

        else
        {
          if (a8 < 1)
          {
            v28 = 0;
          }

          else
          {
            v265 = 0;
            v28 = 0;
            v266 = 4 * a9;
            do
            {
              if (v20 < 1)
              {
                v279 = v76[4];
                v280 = v76[5];
              }

              else
              {
                v267 = v20;
                do
                {
                  v268 = vld1q_dup_f32(a3);
                  a3 = (a3 + v266);
                  v269 = vld1q_dup_f32(a4);
                  a4 = (a4 + v266);
                  v270 = v76[1];
                  v271 = vmlaq_f32(vmlaq_f32(v268, *v76, *v74), *v77, v74[4]);
                  v272 = vmlaq_f32(vmlaq_f32(v268, v270, v74[1]), v77[1], v74[5]);
                  *v77 = *v76;
                  v77[1] = v270;
                  *v76 = v271;
                  v76[1] = v272;
                  v273 = v76[2];
                  v274 = v76[3];
                  v275 = vmlaq_f32(vmlaq_f32(v269, v273, *v74), v77[2], v74[4]);
                  v276 = vmlaq_f32(vmlaq_f32(v269, v274, v74[1]), v77[3], v74[5]);
                  v77[2] = v273;
                  v77[3] = v274;
                  v76[2] = v275;
                  v76[3] = v276;
                  v277 = v76[4];
                  v278 = v76[5];
                  v279 = vmlaq_f32(vmlaq_f32(v268, v277, v74[2]), v77[4], v74[6]);
                  v280 = vmlaq_f32(vmlaq_f32(v269, v278, v74[3]), v77[5], v74[7]);
                  v77[4] = v277;
                  v77[5] = v278;
                  v76[4] = v279;
                  v76[5] = v280;
                  --v267;
                }

                while (v267);
              }

              v28 += v20;
              v281 = (v75 + 32 * (4 * v18));
              v282 = v281[1];
              v284 = v281[4];
              v283 = v281[5];
              v285 = vmlaq_f32(vmulq_f32(v283, v77[1]), v76[1], v282);
              v286 = vmlaq_f32(vmulq_f32(v284, *v77), *v76, *v281);
              v287 = vmlaq_f32(vmulq_f32(v283, v77[3]), v76[3], v282);
              v288 = vmlaq_f32(vmulq_f32(v284, v77[2]), v76[2], *v281);
              v289 = vmlaq_f32(vmulq_f32(v281[7], v77[5]), v280, v281[3]);
              v290 = vmlaq_f32(vmulq_f32(v281[6], v77[4]), v279, v281[2]);
              v291 = vaddq_f32(v286, v285);
              *v291.i8 = vadd_f32(*v291.i8, *&vextq_s8(v291, v291, 8uLL));
              v292 = vadd_f32(*v290.i8, *&vextq_s8(v290, v290, 8uLL));
              *a5 = vaddv_f32(vadd_f32(vzip1_s32(*v291.i8, v292), vzip2_s32(*v291.i8, v292)));
              v293 = vaddq_f32(v288, v287);
              *v293.i8 = vadd_f32(*v293.i8, *&vextq_s8(v293, v293, 8uLL));
              v294 = vadd_f32(*v289.i8, *&vextq_s8(v289, v289, 8uLL));
              *a6 = vaddv_f32(vadd_f32(vzip1_s32(*v293.i8, v294), vzip2_s32(*v293.i8, v294)));
              a5 += a10;
              a6 += a10;
              v295 = v18 + v73;
              if (v295 < v78)
              {
                v20 = v79;
              }

              else
              {
                v20 = v79 + 1;
              }

              if (v295 < v78)
              {
                v296 = 0;
              }

              else
              {
                v296 = v78;
              }

              v18 = v295 - v296;
              ++v265;
            }

            while (v265 != a8);
          }

          v419 = a7 - v28;
          if (a7 <= v28)
          {
            goto LABEL_165;
          }

          if (v20 < v419)
          {
            v419 = v20;
          }

          if (v419 >= 1)
          {
            v533 = 0;
            v534 = v419;
            do
            {
              v535 = &a3[v533];
              v536 = &a4[v533];
              v537 = vld1q_dup_f32(v535);
              v538 = v76[1];
              v539 = vld1q_dup_f32(v536);
              v540 = vmlaq_f32(vmlaq_f32(v537, *v76, *v74), *v77, v74[4]);
              v541 = vmlaq_f32(vmlaq_f32(v537, v538, v74[1]), v77[1], v74[5]);
              *v77 = *v76;
              v77[1] = v538;
              *v76 = v540;
              v76[1] = v541;
              v542 = v76[2];
              v543 = v76[3];
              v544 = vmlaq_f32(vmlaq_f32(v539, v542, *v74), v77[2], v74[4]);
              v545 = vmlaq_f32(vmlaq_f32(v539, v543, v74[1]), v77[3], v74[5]);
              v77[2] = v542;
              v77[3] = v543;
              v76[2] = v544;
              v76[3] = v545;
              v546 = v76[4];
              v547 = v76[5];
              v548 = vmlaq_f32(vmlaq_f32(v537, v546, v74[2]), v77[4], v74[6]);
              v549 = vmlaq_f32(vmlaq_f32(v539, v547, v74[3]), v77[5], v74[7]);
              v77[4] = v546;
              v77[5] = v547;
              v76[4] = v548;
              v76[5] = v549;
              v533 += a9;
              --v534;
            }

            while (v534);
          }
        }

        goto LABEL_164;
      }

      v174 = *(a2 + 17);
      v173 = *(a2 + 18);
      v175 = *(a2 + 22);
      v176 = *(*a2 + 16);
      v177 = *(*a2 + 40);
      v178 = *(a2 + 14);
      v179 = *(a2 + 17);
      v180 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a8 >= 1)
        {
          v181 = 0;
          v28 = 0;
          v182 = 4 * a9;
          while (1)
          {
            v28 += v175;
            if (v28 > *(a2 + 64))
            {
              break;
            }

            if (v175 < 1)
            {
              v192 = v178[2];
              v193 = v178[3];
            }

            else
            {
              do
              {
                v183 = vld1q_dup_f32(a3);
                a3 = (a3 + v182);
                v184 = vld1q_dup_f32(a4);
                a4 = (a4 + v182);
                v185 = v178[1];
                v186 = vmlaq_f32(v183, v185, v176[1]);
                v187 = vmlaq_f32(vmlaq_f32(v183, *v178, *v176), *v179, v176[2]);
                v188 = vmlaq_f32(v186, v179[1], v176[3]);
                *v179 = *v178;
                v179[1] = v185;
                *v178 = v187;
                v178[1] = v188;
                v189 = v178[2];
                v190 = v178[3];
                v191 = vmlaq_f32(v184, v190, v176[1]);
                v192 = vmlaq_f32(vmlaq_f32(v184, v189, *v176), v179[2], v176[2]);
                v193 = vmlaq_f32(v191, v179[3], v176[3]);
                v179[2] = v189;
                v179[3] = v190;
                v178[2] = v192;
                v178[3] = v193;
                --v175;
              }

              while (v175);
            }

            v194 = *(a2 + 12) * (v173 & 0x7FFFFF);
            v195 = (v177 + 32 * ((v173 >> 22) & 0x1FE));
            v196 = v195[1];
            v197 = v178[1];
            v199 = v195[2];
            v198 = v195[3];
            v200 = v179[1];
            v202 = v179[2];
            v201 = v179[3];
            v203 = vaddq_f32(vmlaq_f32(vmulq_f32(v199, *v179), *v178, *v195), vmlaq_f32(vmulq_f32(v198, v200), v197, v196));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            v204 = vaddq_f32(vmlaq_f32(vmulq_f32(v199, v202), v192, *v195), vmlaq_f32(vmulq_f32(v198, v201), v193, v196));
            *v204.i8 = vadd_f32(*v204.i8, *&vextq_s8(v204, v204, 8uLL));
            v205 = v195[4];
            v206 = v195[5];
            v208 = v195[6];
            v207 = v195[7];
            v209 = vmlaq_f32(vmulq_f32(v202, v208), v192, v205);
            v210 = vaddq_f32(vmlaq_f32(vmulq_f32(*v179, v208), *v178, v205), vmlaq_f32(vmulq_f32(v200, v207), v197, v206));
            *v210.i8 = vadd_f32(*v210.i8, *&vextq_s8(v210, v210, 8uLL));
            *v210.i8 = vadd_f32(vzip1_s32(*v210.i8, *v203.i8), vzip2_s32(*v210.i8, *v203.i8));
            v211 = vaddq_f32(v209, vmlaq_f32(vmulq_f32(v201, v207), v193, v206));
            *v211.i8 = vadd_f32(*v211.i8, *&vextq_s8(v211, v211, 8uLL));
            *v211.i8 = vadd_f32(vzip1_s32(*v211.i8, *v204.i8), vzip2_s32(*v211.i8, *v204.i8));
            *a5 = *&v210.i32[1] + (v194 * (*v210.i32 - *&v210.i32[1]));
            *a6 = *&v211.i32[1] + (v194 * (*v211.i32 - *&v211.i32[1]));
            a5 += a10;
            a6 += a10;
            LODWORD(v195) = v173 + v174;
            v173 = (v173 + v174) & 0x7FFFFFFF;
            v175 = v180 + (v195 >> 31);
            if (++v181 == a8)
            {
              goto LABEL_134;
            }
          }

          v72 = 1919747786;
          goto LABEL_23;
        }

        v28 = 0;
LABEL_134:
        v487 = a7 - v28;
        if (a7 > v28)
        {
          if (v175 < v487)
          {
            v487 = v175;
          }

          if (v487 >= 1)
          {
            v488 = 0;
            v489 = v487;
            do
            {
              v490 = &a3[v488];
              v491 = &a4[v488];
              v492 = vld1q_dup_f32(v490);
              v493 = vld1q_dup_f32(v491);
              v494 = v178[1];
              v495 = vmlaq_f32(v492, v494, v176[1]);
              v496 = vmlaq_f32(vmlaq_f32(v492, *v178, *v176), *v179, v176[2]);
              v497 = vmlaq_f32(v495, v179[1], v176[3]);
              *v179 = *v178;
              v179[1] = v494;
              *v178 = v496;
              v178[1] = v497;
              v498 = v178[2];
              v499 = v178[3];
              v500 = vmlaq_f32(v493, v499, v176[1]);
              v501 = vmlaq_f32(vmlaq_f32(v493, v498, *v176), v179[2], v176[2]);
              v502 = vmlaq_f32(v500, v179[3], v176[3]);
              v179[2] = v498;
              v179[3] = v499;
              v178[2] = v501;
              v178[3] = v502;
              v488 += a9;
              --v489;
            }

            while (v489);
          }

LABEL_175:
          v175 -= v487;
          v28 += v487;
        }
      }

      else
      {
        if (a8 >= 1)
        {
          v373 = 0;
          v28 = 0;
          v374 = 4 * a9;
          while (1)
          {
            v28 += v175;
            if (v28 > *(a2 + 64))
            {
              break;
            }

            if (v175 < 1)
            {
              v386 = v178[4];
              v387 = v178[5];
            }

            else
            {
              do
              {
                v375 = vld1q_dup_f32(a3);
                a3 = (a3 + v374);
                v376 = vld1q_dup_f32(a4);
                a4 = (a4 + v374);
                v377 = v178[1];
                v378 = vmlaq_f32(vmlaq_f32(v375, *v178, *v176), *v179, v176[4]);
                v379 = vmlaq_f32(vmlaq_f32(v375, v377, v176[1]), v179[1], v176[5]);
                *v179 = *v178;
                v179[1] = v377;
                *v178 = v378;
                v178[1] = v379;
                v380 = v178[2];
                v381 = v178[3];
                v382 = vmlaq_f32(vmlaq_f32(v376, v380, *v176), v179[2], v176[4]);
                v383 = vmlaq_f32(vmlaq_f32(v376, v381, v176[1]), v179[3], v176[5]);
                v179[2] = v380;
                v179[3] = v381;
                v178[2] = v382;
                v178[3] = v383;
                v384 = v178[4];
                v385 = v178[5];
                v386 = vmlaq_f32(vmlaq_f32(v375, v384, v176[2]), v179[4], v176[6]);
                v387 = vmlaq_f32(vmlaq_f32(v376, v385, v176[3]), v179[5], v176[7]);
                v179[4] = v384;
                v179[5] = v385;
                v178[4] = v386;
                v178[5] = v387;
                --v175;
              }

              while (v175);
            }

            v388 = *(a2 + 12) * (v173 & 0x7FFFFF);
            v389 = (v177 + 32 * ((v173 >> 21) & 0x3FC));
            v390 = v389[1];
            v391 = v178[1];
            v393 = v389[4];
            v392 = v389[5];
            v394 = v179[1];
            v395 = vmlaq_f32(vmulq_f32(v392, v394), v391, v390);
            v396 = v178[2];
            v397 = v178[3];
            v399 = v179[2];
            v398 = v179[3];
            v400 = vmlaq_f32(vmulq_f32(v392, v398), v397, v390);
            v402 = v179[4];
            v401 = v179[5];
            v403 = vmlaq_f32(vmulq_f32(v389[7], v401), v387, v389[3]);
            v404 = vmlaq_f32(vmulq_f32(v389[6], v402), v386, v389[2]);
            v405 = vaddq_f32(vmlaq_f32(vmulq_f32(v393, *v179), *v178, *v389), v395);
            *v405.i8 = vadd_f32(*v405.i8, *&vextq_s8(v405, v405, 8uLL));
            *v390.f32 = vadd_f32(*v404.i8, *&vextq_s8(v404, v404, 8uLL));
            v406 = vaddq_f32(vmlaq_f32(vmulq_f32(v393, v399), v396, *v389), v400);
            *v406.i8 = vadd_f32(*v406.i8, *&vextq_s8(v406, v406, 8uLL));
            *v393.f32 = vadd_f32(*v403.i8, *&vextq_s8(v403, v403, 8uLL));
            v407 = v389[8];
            v408 = v389[9];
            v410 = v389[12];
            v409 = v389[13];
            v411 = vmlaq_f32(vmulq_f32(v394, v409), v391, v408);
            v412 = vmlaq_f32(vmulq_f32(v398, v409), v397, v408);
            v413 = vmlaq_f32(vmulq_f32(v399, v410), v396, v407);
            v414 = vmlaq_f32(vmulq_f32(v401, v389[15]), v387, v389[11]);
            v415 = vmlaq_f32(vmulq_f32(v402, v389[14]), v386, v389[10]);
            v416 = vaddq_f32(vmlaq_f32(vmulq_f32(*v179, v410), *v178, v407), v411);
            *v416.i8 = vadd_f32(*v416.i8, *&vextq_s8(v416, v416, 8uLL));
            v417 = vadd_f32(*v415.i8, *&vextq_s8(v415, v415, 8uLL));
            *v416.i8 = vadd_f32(vadd_f32(vzip1_s32(*v416.i8, *v405.i8), vzip2_s32(*v416.i8, *v405.i8)), vadd_f32(vzip1_s32(v417, *v390.f32), vzip2_s32(v417, *v390.f32)));
            v418 = vaddq_f32(v413, v412);
            *v418.i8 = vadd_f32(*v418.i8, *&vextq_s8(v418, v418, 8uLL));
            *v405.i8 = vadd_f32(*v414.i8, *&vextq_s8(v414, v414, 8uLL));
            *v418.i8 = vadd_f32(vadd_f32(vzip1_s32(*v418.i8, *v406.i8), vzip2_s32(*v418.i8, *v406.i8)), vadd_f32(vzip1_s32(*v405.i8, *v393.f32), vzip2_s32(*v405.i8, *v393.f32)));
            *a5 = *&v416.i32[1] + (v388 * (*v416.i32 - *&v416.i32[1]));
            *a6 = *&v418.i32[1] + (v388 * (*v418.i32 - *&v418.i32[1]));
            a5 += a10;
            a6 += a10;
            LODWORD(v389) = v173 + v174;
            v173 = (v173 + v174) & 0x7FFFFFFF;
            v175 = v180 + (v389 >> 31);
            if (++v373 == a8)
            {
              goto LABEL_169;
            }
          }

          v72 = 1919747836;
          goto LABEL_23;
        }

        v28 = 0;
LABEL_169:
        v487 = a7 - v28;
        if (a7 > v28)
        {
          if (v175 < v487)
          {
            v487 = v175;
          }

          if (v487 >= 1)
          {
            v581 = 0;
            v582 = v487;
            do
            {
              v583 = &a3[v581];
              v584 = &a4[v581];
              v585 = vld1q_dup_f32(v583);
              v586 = v178[1];
              v587 = vld1q_dup_f32(v584);
              v588 = vmlaq_f32(vmlaq_f32(v585, *v178, *v176), *v179, v176[4]);
              v589 = vmlaq_f32(vmlaq_f32(v585, v586, v176[1]), v179[1], v176[5]);
              *v179 = *v178;
              v179[1] = v586;
              *v178 = v588;
              v178[1] = v589;
              v590 = v178[2];
              v591 = v178[3];
              v592 = vmlaq_f32(vmlaq_f32(v587, v590, *v176), v179[2], v176[4]);
              v593 = vmlaq_f32(vmlaq_f32(v587, v591, v176[1]), v179[3], v176[5]);
              v179[2] = v590;
              v179[3] = v591;
              v178[2] = v592;
              v178[3] = v593;
              v594 = v178[4];
              v595 = v178[5];
              v596 = vmlaq_f32(vmlaq_f32(v585, v594, v176[2]), v179[4], v176[6]);
              v597 = vmlaq_f32(vmlaq_f32(v587, v595, v176[3]), v179[5], v176[7]);
              v179[4] = v594;
              v179[5] = v595;
              v178[4] = v596;
              v178[5] = v597;
              v581 += a9;
              --v582;
            }

            while (v582);
          }

          goto LABEL_175;
        }
      }

      *(a2 + 18) = v173;
      *(a2 + 22) = v175;
      goto LABEL_166;
    }

    v72 = v599;
  }

  else
  {
    v72 = 1919747262;
  }

LABEL_23:
  *this = v72;
  *(this + 4) = 0;
LABEL_167:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}

double RamstadSRC::processMulti(RamstadSRC *this, const float **a2, float *const *a3, uint64_t *a4, int a5, int a6, int a7, int a8)
{
  RamstadSRC::checkPreflight(&v759, a2, a5, a6);
  if (v760)
  {
    if (*(a2 + 93) == 1)
    {
      if (*(a2 + 92))
      {
        v16 = *(a2 + 17);
        v15 = *(a2 + 18);
        v17 = *(a2 + 22);
        v18 = a2[2];
        v19 = *(v18 + 2);
        v20 = *(v18 + 5);
        v21 = a2[20];
        v22 = a2[23];
        v23 = *(a2 + 13);
        v24 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v61 = 0;
            v26 = 0;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            LODWORD(v27) = 0;
            v28 = 0;
            v29 = a8;
            do
            {
              if (v17 >= 1)
              {
                v30 = 0;
                v27 = v27;
                do
                {
                  v31 = *(a2 + 12);
                  if (v31)
                  {
                    v32 = a3;
                    v33 = v21;
                    v34 = v22;
                    do
                    {
                      v35 = *v32++;
                      v36 = vdupq_lane_s64(COERCE__INT64(*(v35 + 4 * v27)), 0);
                      v38 = *v33;
                      v37 = v33[1];
                      v40 = v33[2];
                      v39 = v33[3];
                      v41 = vmlaq_f64(v36, v40, v19[2]);
                      v42 = vmlaq_f64(v36, v39, v19[3]);
                      v43 = vmlaq_f64(v36, *v33, *v19);
                      v44 = vmlaq_f64(vmlaq_f64(v36, v37, v19[1]), v34[1], v19[5]);
                      v45 = vmlaq_f64(v43, *v34, v19[4]);
                      v46 = vmlaq_f64(v42, v34[3], v19[7]);
                      v47 = vmlaq_f64(v41, v34[2], v19[6]);
                      v34[2] = v40;
                      v34[3] = v39;
                      *v34 = v38;
                      v34[1] = v37;
                      v34 += 4;
                      v33[2] = v47;
                      v33[3] = v46;
                      *v33 = v45;
                      v33[1] = v44;
                      v33 += 4;
                      --v31;
                    }

                    while (v31);
                  }

                  v27 += a7;
                  ++v30;
                }

                while (v30 != v17);
              }

              v48 = *(a2 + 12);
              if (v48)
              {
                v50 = v21;
                v51 = v22;
                v52 = a4;
                do
                {
                  v53 = v51[2];
                  v54 = v51[3];
                  v55 = *v51;
                  v56 = v51[1];
                  v51 += 4;
                  v57 = *v52++;
                  v49 = (v20 + ((2 * v15) << 6));
                  v58 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v49[4], v55), *v50, *v49), vmlaq_f64(vmulq_f64(v49[6], v53), v50[2], v49[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v49[5], v56), v50[1], v49[1]), vmlaq_f64(vmulq_f64(v49[7], v54), v50[3], v49[3]))));
                  *(v57 + 4 * v25) = v58;
                  v50 += 4;
                  --v48;
                }

                while (v48);
              }

              v26 += v17;
              v59 = v15 + v16;
              if (v59 < v23)
              {
                v17 = v24;
              }

              else
              {
                v17 = v24 + 1;
              }

              if (v59 < v23)
              {
                v60 = 0;
              }

              else
              {
                v60 = v23;
              }

              v15 = v59 - v60;
              ++v28;
              v25 += v29;
            }

            while (v28 != a6);
            v61 = v27;
          }

          v527 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_248;
          }

          if (v17 < v527)
          {
            v527 = v17;
          }

          if (v527 >= 1)
          {
            for (i = 0; i != v527; ++i)
            {
              v529 = *(a2 + 12);
              if (v529)
              {
                v530 = a3;
                v531 = v21;
                v532 = v22;
                do
                {
                  v533 = *v530++;
                  v534 = vdupq_lane_s64(COERCE__INT64(*(v533 + 4 * v61)), 0);
                  v536 = *v531;
                  v535 = v531[1];
                  v538 = v531[2];
                  v537 = v531[3];
                  v539 = vmlaq_f64(v534, v538, v19[2]);
                  v540 = vmlaq_f64(v534, v537, v19[3]);
                  v541 = vmlaq_f64(v534, *v531, *v19);
                  v542 = vmlaq_f64(vmlaq_f64(v534, v535, v19[1]), v532[1], v19[5]);
                  v543 = vmlaq_f64(v541, *v532, v19[4]);
                  v544 = vmlaq_f64(v540, v532[3], v19[7]);
                  v545 = vmlaq_f64(v539, v532[2], v19[6]);
                  v532[2] = v538;
                  v532[3] = v537;
                  *v532 = v536;
                  v532[1] = v535;
                  v532 += 4;
                  v531[2] = v545;
                  v531[3] = v544;
                  *v531 = v543;
                  v531[1] = v542;
                  v531 += 4;
                  --v529;
                }

                while (v529);
              }

              v61 += a7;
            }
          }
        }

        else
        {
          if (a6 < 1)
          {
            v293 = 0;
            v26 = 0;
          }

          else
          {
            v214 = 0;
            v26 = 0;
            v215 = 0;
            LODWORD(v216) = 0;
            v217 = a8;
            do
            {
              if (v17 >= 1)
              {
                v218 = 0;
                v216 = v216;
                do
                {
                  v219 = *(a2 + 12);
                  v220 = v219 != 0;
                  v221 = v22;
                  v222 = v21;
                  v223 = (v219 - v220);
                  if (v219 != v220)
                  {
                    v224 = 0;
                    v222 = v21;
                    v221 = v22;
                    do
                    {
                      v225 = &a3[v224];
                      v226 = vdupq_lane_s64(COERCE__INT64((*v225)[v216]), 0);
                      v227 = vdupq_lane_s64(COERCE__INT64(*(*(v225 + 1) + 4 * v216)), 0);
                      v228 = *v222;
                      v229 = v222[1];
                      v230 = v222[2];
                      v231 = v222[3];
                      v232 = vmlaq_f64(vmlaq_f64(v226, *v222, *v19), *v221, v19[8]);
                      v233 = vmlaq_f64(vmlaq_f64(v226, v229, v19[1]), v221[1], v19[9]);
                      v234 = vmlaq_f64(vmlaq_f64(v226, v230, v19[2]), v221[2], v19[10]);
                      v235 = vmlaq_f64(vmlaq_f64(v226, v231, v19[3]), v221[3], v19[11]);
                      v221[2] = v230;
                      v221[3] = v231;
                      *v221 = v228;
                      v221[1] = v229;
                      v222[2] = v234;
                      v222[3] = v235;
                      *v222 = v232;
                      v222[1] = v233;
                      v236 = v222[4];
                      v237 = v222[5];
                      v238 = v222[6];
                      v239 = v222[7];
                      v240 = vmlaq_f64(vmlaq_f64(v227, v236, *v19), v221[4], v19[8]);
                      v241 = vmlaq_f64(vmlaq_f64(v227, v237, v19[1]), v221[5], v19[9]);
                      v242 = vmlaq_f64(vmlaq_f64(v227, v238, v19[2]), v221[6], v19[10]);
                      v243 = vmlaq_f64(vmlaq_f64(v227, v239, v19[3]), v221[7], v19[11]);
                      v221[4] = v236;
                      v221[5] = v237;
                      v221[6] = v238;
                      v221[7] = v239;
                      v222[6] = v242;
                      v222[7] = v243;
                      v222[4] = v240;
                      v222[5] = v241;
                      v245 = v222[8];
                      v244 = v222[9];
                      v247 = v222[10];
                      v246 = v222[11];
                      v248 = vmlaq_f64(v227, v247, v19[6]);
                      v249 = vmlaq_f64(v226, v245, v19[4]);
                      v250 = vmlaq_f64(vmlaq_f64(v226, v244, v19[5]), v221[9], v19[13]);
                      v251 = vmlaq_f64(v249, v221[8], v19[12]);
                      v252 = vmlaq_f64(vmlaq_f64(v227, v246, v19[7]), v221[11], v19[15]);
                      v253 = vmlaq_f64(v248, v221[10], v19[14]);
                      v221[8] = v245;
                      v221[9] = v244;
                      v221[10] = v247;
                      v221[11] = v246;
                      v222[10] = v253;
                      v222[11] = v252;
                      v222[8] = v251;
                      v222[9] = v250;
                      v222 += 12;
                      v221 += 12;
                      v224 += 2;
                    }

                    while (v224 < v223);
                  }

                  if (v219)
                  {
                    v254 = vdupq_lane_s64(COERCE__INT64(a3[v219 - 1][v216]), 0);
                    v255 = *v222;
                    v256 = v222[1];
                    v257 = v222[2];
                    v258 = v222[3];
                    v259 = vmlaq_f64(vmlaq_f64(v254, *v222, *v19), *v221, v19[8]);
                    v260 = vmlaq_f64(vmlaq_f64(v254, v256, v19[1]), v221[1], v19[9]);
                    v261 = vmlaq_f64(vmlaq_f64(v254, v257, v19[2]), v221[2], v19[10]);
                    v262 = vmlaq_f64(vmlaq_f64(v254, v258, v19[3]), v221[3], v19[11]);
                    v221[2] = v257;
                    v221[3] = v258;
                    *v221 = v255;
                    v221[1] = v256;
                    v222[2] = v261;
                    v222[3] = v262;
                    *v222 = v259;
                    v222[1] = v260;
                    v264 = v222[4];
                    v263 = v222[5];
                    v266 = v222[6];
                    v265 = v222[7];
                    v267 = vmlaq_f64(v254, v264, v19[4]);
                    v268 = vmlaq_f64(vmlaq_f64(0, v265, v19[7]), v221[7], v19[15]);
                    v269 = vmlaq_f64(vmlaq_f64(0, v266, v19[6]), v221[6], v19[14]);
                    v270 = vmlaq_f64(vmlaq_f64(v254, v263, v19[5]), v221[5], v19[13]);
                    v271 = vmlaq_f64(v267, v221[4], v19[12]);
                    v221[4] = v264;
                    v221[5] = v263;
                    v221[6] = v266;
                    v221[7] = v265;
                    v222[6] = v269;
                    v222[7] = v268;
                    v222[4] = v271;
                    v222[5] = v270;
                  }

                  v216 += a7;
                  ++v218;
                }

                while (v218 != v17);
              }

              v272 = (v20 + ((4 * v15) << 6));
              v273 = *(a2 + 12);
              v274 = v273 != 0;
              v275 = v22;
              v276 = v21;
              v277 = (v273 - v274);
              if (v273 != v274)
              {
                v278 = 0;
                v276 = v21;
                v275 = v22;
                do
                {
                  v279 = &a4[v278];
                  v280 = v272[1];
                  v282 = v272[2];
                  v281 = v272[3];
                  v283 = v272[10];
                  v284 = v272[11];
                  v285 = v272[8];
                  v286 = v272[9];
                  v287 = *v279;
                  v288 = v279[1];
                  v289 = vmlaq_f64(vmulq_f64(v286, v275[5]), v276[5], v280);
                  *v280.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v285, *v275), *v276, *v272), vmlaq_f64(vmulq_f64(v283, v275[2]), v276[2], v282)), vaddq_f64(vmlaq_f64(vmulq_f64(v286, v275[1]), v276[1], v280), vmlaq_f64(vmulq_f64(v284, v275[3]), v276[3], v281))), vaddq_f64(vmlaq_f64(vmulq_f64(v272[12], v275[8]), v276[8], v272[4]), vmlaq_f64(vmulq_f64(v272[13], v275[9]), v276[9], v272[5]))));
                  *v281.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v285, v275[4]), v276[4], *v272), vmlaq_f64(vmulq_f64(v283, v275[6]), v276[6], v282)), vaddq_f64(v289, vmlaq_f64(vmulq_f64(v284, v275[7]), v276[7], v281))), vaddq_f64(vmlaq_f64(vmulq_f64(v272[14], v275[10]), v276[10], v272[6]), vmlaq_f64(vmulq_f64(v272[15], v275[11]), v276[11], v272[7]))));
                  *(v287 + 4 * v214) = LODWORD(v280.f64[0]);
                  *(v288 + 4 * v214) = LODWORD(v281.f64[0]);
                  v276 += 12;
                  v275 += 12;
                  v278 += 2;
                }

                while (v278 < v277);
              }

              if (v273)
              {
                v290 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v272[8], *v275), *v276, *v272), vmlaq_f64(vmulq_f64(v272[10], v275[2]), v276[2], v272[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v272[9], v275[1]), v276[1], v272[1]), vmlaq_f64(vmulq_f64(v272[11], v275[3]), v276[3], v272[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v272[12], v275[4]), v276[4], v272[4]), vmlaq_f64(vmulq_f64(v272[14], v275[6]), v276[6], v272[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v272[13], v275[5]), v276[5], v272[5]), vmlaq_f64(vmulq_f64(v272[15], v275[7]), v276[7], v272[7])))));
                *(a4[v273 - 1] + 4 * v214) = v290;
              }

              v26 += v17;
              v291 = v15 + v16;
              if (v291 < v23)
              {
                v17 = v24;
              }

              else
              {
                v17 = v24 + 1;
              }

              if (v291 < v23)
              {
                v292 = 0;
              }

              else
              {
                v292 = v23;
              }

              v15 = v291 - v292;
              ++v215;
              v214 += v217;
            }

            while (v215 != a6);
            v293 = v216;
          }

          v527 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_248;
          }

          if (v17 < v527)
          {
            v527 = v17;
          }

          if (v527 >= 1)
          {
            for (j = 0; j != v527; ++j)
            {
              v590 = *(a2 + 12);
              v591 = v22;
              v592 = v21;
              v593 = v590 - (v590 != 0);
              if (v593)
              {
                v594 = 0;
                v592 = v21;
                v591 = v22;
                do
                {
                  v595 = &a3[v594];
                  v596 = vdupq_lane_s64(COERCE__INT64((*v595)[v293]), 0);
                  v597 = vdupq_lane_s64(COERCE__INT64(*(*(v595 + 1) + 4 * v293)), 0);
                  v598 = *v592;
                  v599 = v592[1];
                  v600 = v592[2];
                  v601 = v592[3];
                  v602 = vmlaq_f64(vmlaq_f64(v596, *v592, *v19), *v591, v19[8]);
                  v603 = vmlaq_f64(vmlaq_f64(v596, v599, v19[1]), v591[1], v19[9]);
                  v604 = vmlaq_f64(vmlaq_f64(v596, v600, v19[2]), v591[2], v19[10]);
                  v605 = vmlaq_f64(vmlaq_f64(v596, v601, v19[3]), v591[3], v19[11]);
                  v591[2] = v600;
                  v591[3] = v601;
                  *v591 = v598;
                  v591[1] = v599;
                  v592[2] = v604;
                  v592[3] = v605;
                  *v592 = v602;
                  v592[1] = v603;
                  v606 = v592[4];
                  v607 = v592[5];
                  v608 = v592[6];
                  v609 = v592[7];
                  v610 = vmlaq_f64(vmlaq_f64(v597, v606, *v19), v591[4], v19[8]);
                  v611 = vmlaq_f64(vmlaq_f64(v597, v607, v19[1]), v591[5], v19[9]);
                  v612 = vmlaq_f64(vmlaq_f64(v597, v608, v19[2]), v591[6], v19[10]);
                  v613 = vmlaq_f64(vmlaq_f64(v597, v609, v19[3]), v591[7], v19[11]);
                  v591[4] = v606;
                  v591[5] = v607;
                  v591[6] = v608;
                  v591[7] = v609;
                  v592[6] = v612;
                  v592[7] = v613;
                  v592[4] = v610;
                  v592[5] = v611;
                  v615 = v592[8];
                  v614 = v592[9];
                  v617 = v592[10];
                  v616 = v592[11];
                  v618 = vmlaq_f64(v597, v617, v19[6]);
                  v619 = vmlaq_f64(v596, v615, v19[4]);
                  v620 = vmlaq_f64(vmlaq_f64(v596, v614, v19[5]), v591[9], v19[13]);
                  v621 = vmlaq_f64(v619, v591[8], v19[12]);
                  v622 = vmlaq_f64(vmlaq_f64(v597, v616, v19[7]), v591[11], v19[15]);
                  v623 = vmlaq_f64(v618, v591[10], v19[14]);
                  v591[8] = v615;
                  v591[9] = v614;
                  v591[10] = v617;
                  v591[11] = v616;
                  v592[10] = v623;
                  v592[11] = v622;
                  v592[8] = v621;
                  v592[9] = v620;
                  v592 += 12;
                  v591 += 12;
                  v594 += 2;
                }

                while (v594 < v593);
              }

              if (v590)
              {
                v624 = vdupq_lane_s64(COERCE__INT64(a3[v590 - 1][v293]), 0);
                v625 = *v592;
                v626 = v592[1];
                v627 = v592[2];
                v628 = v592[3];
                v629 = vmlaq_f64(vmlaq_f64(v624, *v592, *v19), *v591, v19[8]);
                v630 = vmlaq_f64(vmlaq_f64(v624, v626, v19[1]), v591[1], v19[9]);
                v631 = vmlaq_f64(vmlaq_f64(v624, v627, v19[2]), v591[2], v19[10]);
                v632 = vmlaq_f64(vmlaq_f64(v624, v628, v19[3]), v591[3], v19[11]);
                v591[2] = v627;
                v591[3] = v628;
                *v591 = v625;
                v591[1] = v626;
                v592[2] = v631;
                v592[3] = v632;
                *v592 = v629;
                v592[1] = v630;
                v634 = v592[4];
                v633 = v592[5];
                v636 = v592[6];
                v635 = v592[7];
                v637 = vmlaq_f64(v624, v634, v19[4]);
                v638 = vmlaq_f64(vmlaq_f64(0, v635, v19[7]), v591[7], v19[15]);
                v639 = vmlaq_f64(vmlaq_f64(0, v636, v19[6]), v591[6], v19[14]);
                v640 = vmlaq_f64(vmlaq_f64(v624, v633, v19[5]), v591[5], v19[13]);
                v641 = vmlaq_f64(v637, v591[4], v19[12]);
                v591[4] = v634;
                v591[5] = v633;
                v591[6] = v636;
                v591[7] = v635;
                v592[6] = v639;
                v592[7] = v638;
                v592[4] = v641;
                v592[5] = v640;
              }

              v293 += a7;
            }
          }
        }

LABEL_247:
        v17 -= v527;
        v26 += v527;
LABEL_248:
        *(a2 + 18) = v15;
        *(a2 + 22) = v17;
LABEL_276:
        v62 = 1;
        goto LABEL_277;
      }

      v100 = *(a2 + 17);
      v99 = *(a2 + 18);
      v101 = *(a2 + 22);
      v102 = a2[2];
      v103 = *(v102 + 2);
      v104 = *(v102 + 5);
      v105 = a2[20];
      v106 = a2[23];
      v107 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v160 = 0;
          v26 = 0;
        }

        else
        {
          v108 = 0;
          v26 = 0;
          LODWORD(v109) = 0;
          v110 = 0;
          v111 = a8;
          do
          {
            if (v101 >= 1)
            {
              v112 = 0;
              v109 = v109;
              do
              {
                v113 = *(a2 + 12);
                if (v113)
                {
                  v114 = a3;
                  v115 = v105;
                  v116 = v106;
                  do
                  {
                    v117 = *v114++;
                    v118 = vdupq_lane_s64(COERCE__INT64(*(v117 + 4 * v109)), 0);
                    v120 = *v115;
                    v119 = v115[1];
                    v122 = v115[2];
                    v121 = v115[3];
                    v123 = vmlaq_f64(v118, v122, v103[2]);
                    v124 = vmlaq_f64(v118, v121, v103[3]);
                    v125 = vmlaq_f64(v118, *v115, *v103);
                    v126 = vmlaq_f64(vmlaq_f64(v118, v119, v103[1]), v116[1], v103[5]);
                    v127 = vmlaq_f64(v125, *v116, v103[4]);
                    v128 = vmlaq_f64(v124, v116[3], v103[7]);
                    v129 = vmlaq_f64(v123, v116[2], v103[6]);
                    v116[2] = v122;
                    v116[3] = v121;
                    *v116 = v120;
                    v116[1] = v119;
                    v116 += 4;
                    v115[2] = v129;
                    v115[3] = v128;
                    *v115 = v127;
                    v115[1] = v126;
                    v115 += 4;
                    --v113;
                  }

                  while (v113);
                }

                v109 += a7;
                ++v112;
              }

              while (v112 != v101);
            }

            v130 = *(a2 + 12);
            if (v130)
            {
              v131 = *(a2 + 12) * (v99 & 0x7FFFFF);
              v132 = (v104 + (((v99 >> 22) & 0x1FE) << 6));
              v133 = a2[26];
              v134 = v105;
              v135 = v106;
              v136 = v133;
              v137 = *(a2 + 12);
              do
              {
                v138 = v135[2];
                v139 = v135[3];
                v140 = *v135;
                v141 = v135[1];
                v135 += 4;
                v142 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v132[4], v140), *v134, *v132), vmlaq_f64(vmulq_f64(v132[6], v138), v134[2], v132[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v132[5], v141), v134[1], v132[1]), vmlaq_f64(vmulq_f64(v132[7], v139), v134[3], v132[3]))));
                *v136++ = v142;
                v134 += 4;
                --v137;
              }

              while (v137);
              v143 = a2[29];
              v144 = v105;
              v145 = v106;
              v146 = v143;
              v147 = v130;
              do
              {
                v148 = v145[2];
                v149 = v145[3];
                v150 = *v145;
                v151 = v145[1];
                v145 += 4;
                v152 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v132[12], v150), *v144, v132[8]), vmlaq_f64(vmulq_f64(v132[14], v148), v144[2], v132[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v132[13], v151), v144[1], v132[9]), vmlaq_f64(vmulq_f64(v132[15], v149), v144[3], v132[11]))));
                *v146++ = v152;
                v144 += 4;
                --v147;
              }

              while (v147);
              v153 = a4;
              do
              {
                v154 = *v133++;
                v155 = v154;
                v156 = *v143++;
                v157 = v155 + (v131 * (v156 - v155));
                v158 = *v153++;
                *(v158 + 4 * v108) = v157;
                --v130;
              }

              while (v130);
            }

            v26 += v101;
            v159 = v99 + v100;
            v99 = (v99 + v100) & 0x7FFFFFFF;
            v101 = v107 + (v159 >> 31);
            ++v110;
            v108 += v111;
          }

          while (v110 != a6);
          v160 = v109;
        }

        v558 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_275;
        }

        if (v101 < v558)
        {
          v558 = v101;
        }

        if (v558 >= 1)
        {
          for (k = 0; k != v558; ++k)
          {
            v560 = *(a2 + 12);
            if (v560)
            {
              v561 = a3;
              v562 = v105;
              v563 = v106;
              do
              {
                v564 = *v561++;
                v565 = vdupq_lane_s64(COERCE__INT64(*(v564 + 4 * v160)), 0);
                v567 = *v562;
                v566 = v562[1];
                v569 = v562[2];
                v568 = v562[3];
                v570 = vmlaq_f64(v565, v569, v103[2]);
                v571 = vmlaq_f64(v565, v568, v103[3]);
                v572 = vmlaq_f64(v565, *v562, *v103);
                v573 = vmlaq_f64(vmlaq_f64(v565, v566, v103[1]), v563[1], v103[5]);
                v574 = vmlaq_f64(v572, *v563, v103[4]);
                v575 = vmlaq_f64(v571, v563[3], v103[7]);
                v576 = vmlaq_f64(v570, v563[2], v103[6]);
                v563[2] = v569;
                v563[3] = v568;
                *v563 = v567;
                v563[1] = v566;
                v563 += 4;
                v562[2] = v576;
                v562[3] = v575;
                *v562 = v574;
                v562[1] = v573;
                v562 += 4;
                --v560;
              }

              while (v560);
            }

            v160 += a7;
          }
        }

LABEL_274:
        v101 -= v558;
        v26 += v558;
LABEL_275:
        *(a2 + 18) = v99;
        *(a2 + 22) = v101;
        goto LABEL_276;
      }

      if (a6 < 1)
      {
        v443 = 0;
        v26 = 0;
LABEL_250:
        v558 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_275;
        }

        if (v101 < v558)
        {
          v558 = v101;
        }

        if (v558 >= 1)
        {
          for (m = 0; m != v558; ++m)
          {
            v674 = *(a2 + 12);
            v675 = v106;
            v676 = v105;
            v677 = v674 - (v674 != 0);
            if (v677)
            {
              v678 = 0;
              v676 = v105;
              v675 = v106;
              do
              {
                v679 = &a3[v678];
                v680 = vdupq_lane_s64(COERCE__INT64((*v679)[v443]), 0);
                v681 = vdupq_lane_s64(COERCE__INT64(*(*(v679 + 1) + 4 * v443)), 0);
                v682 = *v676;
                v683 = v676[1];
                v684 = v676[2];
                v685 = v676[3];
                v686 = vmlaq_f64(vmlaq_f64(v680, *v676, *v103), *v675, v103[8]);
                v687 = vmlaq_f64(vmlaq_f64(v680, v683, v103[1]), v675[1], v103[9]);
                v688 = vmlaq_f64(vmlaq_f64(v680, v684, v103[2]), v675[2], v103[10]);
                v689 = vmlaq_f64(vmlaq_f64(v680, v685, v103[3]), v675[3], v103[11]);
                v675[2] = v684;
                v675[3] = v685;
                *v675 = v682;
                v675[1] = v683;
                v676[2] = v688;
                v676[3] = v689;
                *v676 = v686;
                v676[1] = v687;
                v690 = v676[4];
                v691 = v676[5];
                v692 = v676[6];
                v693 = v676[7];
                v694 = vmlaq_f64(vmlaq_f64(v681, v690, *v103), v675[4], v103[8]);
                v695 = vmlaq_f64(vmlaq_f64(v681, v691, v103[1]), v675[5], v103[9]);
                v696 = vmlaq_f64(vmlaq_f64(v681, v692, v103[2]), v675[6], v103[10]);
                v697 = vmlaq_f64(vmlaq_f64(v681, v693, v103[3]), v675[7], v103[11]);
                v675[4] = v690;
                v675[5] = v691;
                v675[6] = v692;
                v675[7] = v693;
                v676[6] = v696;
                v676[7] = v697;
                v676[4] = v694;
                v676[5] = v695;
                v699 = v676[8];
                v698 = v676[9];
                v701 = v676[10];
                v700 = v676[11];
                v702 = vmlaq_f64(v681, v701, v103[6]);
                v703 = vmlaq_f64(v680, v699, v103[4]);
                v704 = vmlaq_f64(vmlaq_f64(v680, v698, v103[5]), v675[9], v103[13]);
                v705 = vmlaq_f64(v703, v675[8], v103[12]);
                v706 = vmlaq_f64(vmlaq_f64(v681, v700, v103[7]), v675[11], v103[15]);
                v707 = vmlaq_f64(v702, v675[10], v103[14]);
                v675[8] = v699;
                v675[9] = v698;
                v675[10] = v701;
                v675[11] = v700;
                v676[10] = v707;
                v676[11] = v706;
                v676[8] = v705;
                v676[9] = v704;
                v676 += 12;
                v675 += 12;
                v678 += 2;
              }

              while (v678 < v677);
            }

            if (v674)
            {
              v708 = vdupq_lane_s64(COERCE__INT64(a3[v674 - 1][v443]), 0);
              v709 = *v676;
              v710 = v676[1];
              v711 = v676[2];
              v712 = v676[3];
              v713 = vmlaq_f64(vmlaq_f64(v708, *v676, *v103), *v675, v103[8]);
              v714 = vmlaq_f64(vmlaq_f64(v708, v710, v103[1]), v675[1], v103[9]);
              v715 = vmlaq_f64(vmlaq_f64(v708, v711, v103[2]), v675[2], v103[10]);
              v716 = vmlaq_f64(vmlaq_f64(v708, v712, v103[3]), v675[3], v103[11]);
              v675[2] = v711;
              v675[3] = v712;
              *v675 = v709;
              v675[1] = v710;
              v676[2] = v715;
              v676[3] = v716;
              *v676 = v713;
              v676[1] = v714;
              v718 = v676[4];
              v717 = v676[5];
              v720 = v676[6];
              v719 = v676[7];
              v721 = vmlaq_f64(v708, v718, v103[4]);
              v722 = vmlaq_f64(vmlaq_f64(0, v719, v103[7]), v675[7], v103[15]);
              v723 = vmlaq_f64(vmlaq_f64(0, v720, v103[6]), v675[6], v103[14]);
              v724 = vmlaq_f64(vmlaq_f64(v708, v717, v103[5]), v675[5], v103[13]);
              v725 = vmlaq_f64(v721, v675[4], v103[12]);
              v675[4] = v718;
              v675[5] = v717;
              v675[6] = v720;
              v675[7] = v719;
              v676[6] = v723;
              v676[7] = v722;
              v676[4] = v725;
              v676[5] = v724;
            }

            v443 += a7;
          }
        }

        goto LABEL_274;
      }

      v353 = 0;
      v26 = 0;
      v354 = 0;
      LODWORD(v355) = 0;
      v356 = a8;
      while (1)
      {
        if (v101 >= 1)
        {
          v357 = 0;
          v355 = v355;
          do
          {
            v358 = *(a2 + 12);
            v359 = v358 != 0;
            v360 = v106;
            v361 = v105;
            v362 = (v358 - v359);
            if (v358 != v359)
            {
              v363 = 0;
              v361 = v105;
              v360 = v106;
              do
              {
                v364 = &a3[v363];
                v365 = vdupq_lane_s64(COERCE__INT64((*v364)[v355]), 0);
                v366 = vdupq_lane_s64(COERCE__INT64(*(*(v364 + 1) + 4 * v355)), 0);
                v367 = *v361;
                v368 = v361[1];
                v369 = v361[2];
                v370 = v361[3];
                v371 = vmlaq_f64(vmlaq_f64(v365, *v361, *v103), *v360, v103[8]);
                v372 = vmlaq_f64(vmlaq_f64(v365, v368, v103[1]), v360[1], v103[9]);
                v373 = vmlaq_f64(vmlaq_f64(v365, v369, v103[2]), v360[2], v103[10]);
                v374 = vmlaq_f64(vmlaq_f64(v365, v370, v103[3]), v360[3], v103[11]);
                v360[2] = v369;
                v360[3] = v370;
                *v360 = v367;
                v360[1] = v368;
                v361[2] = v373;
                v361[3] = v374;
                *v361 = v371;
                v361[1] = v372;
                v375 = v361[4];
                v376 = v361[5];
                v377 = v361[6];
                v378 = v361[7];
                v379 = vmlaq_f64(vmlaq_f64(v366, v375, *v103), v360[4], v103[8]);
                v380 = vmlaq_f64(vmlaq_f64(v366, v376, v103[1]), v360[5], v103[9]);
                v381 = vmlaq_f64(vmlaq_f64(v366, v377, v103[2]), v360[6], v103[10]);
                v382 = vmlaq_f64(vmlaq_f64(v366, v378, v103[3]), v360[7], v103[11]);
                v360[4] = v375;
                v360[5] = v376;
                v360[6] = v377;
                v360[7] = v378;
                v361[6] = v381;
                v361[7] = v382;
                v361[4] = v379;
                v361[5] = v380;
                v384 = v361[8];
                v383 = v361[9];
                v386 = v361[10];
                v385 = v361[11];
                v387 = vmlaq_f64(v366, v386, v103[6]);
                v388 = vmlaq_f64(v365, v384, v103[4]);
                v389 = vmlaq_f64(vmlaq_f64(v365, v383, v103[5]), v360[9], v103[13]);
                v390 = vmlaq_f64(v388, v360[8], v103[12]);
                v391 = vmlaq_f64(vmlaq_f64(v366, v385, v103[7]), v360[11], v103[15]);
                v392 = vmlaq_f64(v387, v360[10], v103[14]);
                v360[8] = v384;
                v360[9] = v383;
                v360[10] = v386;
                v360[11] = v385;
                v361[10] = v392;
                v361[11] = v391;
                v361[8] = v390;
                v361[9] = v389;
                v361 += 12;
                v360 += 12;
                v363 += 2;
              }

              while (v363 < v362);
            }

            if (v358)
            {
              v393 = vdupq_lane_s64(COERCE__INT64(a3[v358 - 1][v355]), 0);
              v394 = *v361;
              v395 = v361[1];
              v396 = v361[2];
              v397 = v361[3];
              v398 = vmlaq_f64(vmlaq_f64(v393, *v361, *v103), *v360, v103[8]);
              v399 = vmlaq_f64(vmlaq_f64(v393, v395, v103[1]), v360[1], v103[9]);
              v400 = vmlaq_f64(vmlaq_f64(v393, v396, v103[2]), v360[2], v103[10]);
              v401 = vmlaq_f64(vmlaq_f64(v393, v397, v103[3]), v360[3], v103[11]);
              v360[2] = v396;
              v360[3] = v397;
              *v360 = v394;
              v360[1] = v395;
              v361[2] = v400;
              v361[3] = v401;
              *v361 = v398;
              v361[1] = v399;
              v403 = v361[4];
              v402 = v361[5];
              v405 = v361[6];
              v404 = v361[7];
              v406 = vmlaq_f64(v393, v403, v103[4]);
              v407 = vmlaq_f64(vmlaq_f64(0, v404, v103[7]), v360[7], v103[15]);
              v408 = vmlaq_f64(vmlaq_f64(0, v405, v103[6]), v360[6], v103[14]);
              v409 = vmlaq_f64(vmlaq_f64(v393, v402, v103[5]), v360[5], v103[13]);
              v410 = vmlaq_f64(v406, v360[4], v103[12]);
              v360[4] = v403;
              v360[5] = v402;
              v360[6] = v405;
              v360[7] = v404;
              v361[6] = v408;
              v361[7] = v407;
              v361[4] = v410;
              v361[5] = v409;
            }

            v355 += a7;
            ++v357;
          }

          while (v357 != v101);
        }

        v411 = *(a2 + 12);
        v412 = (v104 + (((v99 >> 21) & 0x3FC) << 6));
        v413 = *(a2 + 12);
        v414 = a2[26];
        v415 = v106;
        v416 = v105;
        v417 = v413 - (*(a2 + 12) != 0);
        if (v417)
        {
          v418 = 0;
          v419 = a2[26];
          v416 = v105;
          v415 = v106;
          do
          {
            v420 = v412[1];
            v421 = v412[3];
            v422 = v412[11];
            v423 = v412[9];
            *v419++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[8], *v415), *v416, *v412), vmlaq_f64(vmulq_f64(v412[10], v415[2]), v416[2], v412[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v423, v415[1]), v416[1], v420), vmlaq_f64(vmulq_f64(v422, v415[3]), v416[3], v421))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[8], v415[4]), v416[4], *v412), vmlaq_f64(vmulq_f64(v412[10], v415[6]), v416[6], v412[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v423, v415[5]), v416[5], v420), vmlaq_f64(vmulq_f64(v422, v415[7]), v416[7], v421)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[12], v415[8]), v416[8], v412[4]), vmlaq_f64(vmulq_f64(v412[13], v415[9]), v416[9], v412[5])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[14], v415[10]), v416[10], v412[6]), vmlaq_f64(vmulq_f64(v412[15], v415[11]), v416[11], v412[7])))));
            v416 += 12;
            v415 += 12;
            v418 += 2;
          }

          while (v418 < v417);
        }

        if (v413)
        {
          v424 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[8], *v415), *v416, *v412), vmlaq_f64(vmulq_f64(v412[10], v415[2]), v416[2], v412[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[9], v415[1]), v416[1], v412[1]), vmlaq_f64(vmulq_f64(v412[11], v415[3]), v416[3], v412[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[12], v415[4]), v416[4], v412[4]), vmlaq_f64(vmulq_f64(v412[14], v415[6]), v416[6], v412[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[13], v415[5]), v416[5], v412[5]), vmlaq_f64(vmulq_f64(v412[15], v415[7]), v416[7], v412[7])))));
          v414[(v413 - 1)] = v424;
        }

        v425 = a2[29];
        v426 = v106;
        v427 = v105;
        if (v417)
        {
          v428 = 0;
          v429 = a2[29];
          v427 = v105;
          v426 = v106;
          do
          {
            v430 = v412[17];
            v431 = v412[19];
            v432 = v412[27];
            v433 = v412[25];
            *v429++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[24], *v426), *v427, v412[16]), vmlaq_f64(vmulq_f64(v412[26], v426[2]), v427[2], v412[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v433, v426[1]), v427[1], v430), vmlaq_f64(vmulq_f64(v432, v426[3]), v427[3], v431))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[24], v426[4]), v427[4], v412[16]), vmlaq_f64(vmulq_f64(v412[26], v426[6]), v427[6], v412[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v433, v426[5]), v427[5], v430), vmlaq_f64(vmulq_f64(v432, v426[7]), v427[7], v431)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[28], v426[8]), v427[8], v412[20]), vmlaq_f64(vmulq_f64(v412[29], v426[9]), v427[9], v412[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[30], v426[10]), v427[10], v412[22]), vmlaq_f64(vmulq_f64(v412[31], v426[11]), v427[11], v412[23])))));
            v427 += 12;
            v426 += 12;
            v428 += 2;
          }

          while (v428 < v417);
        }

        v434 = v411 * (v99 & 0x7FFFFF);
        if (v413)
        {
          break;
        }

        v435 = a4;
        if (v413)
        {
          goto LABEL_150;
        }

LABEL_151:
        v26 += v101;
        v442 = v99 + v100;
        v99 = (v99 + v100) & 0x7FFFFFFF;
        v101 = v107 + (v442 >> 31);
        ++v354;
        v353 += v356;
        if (v354 == a6)
        {
          v443 = v355;
          goto LABEL_250;
        }
      }

      v436 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[24], *v426), *v427, v412[16]), vmlaq_f64(vmulq_f64(v412[26], v426[2]), v427[2], v412[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[25], v426[1]), v427[1], v412[17]), vmlaq_f64(vmulq_f64(v412[27], v426[3]), v427[3], v412[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v412[28], v426[4]), v427[4], v412[20]), vmlaq_f64(vmulq_f64(v412[30], v426[6]), v427[6], v412[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v412[29], v426[5]), v427[5], v412[21]), vmlaq_f64(vmulq_f64(v412[31], v426[7]), v427[7], v412[23])))));
      v425[(v413 - 1)] = v436;
      v435 = a4;
      do
      {
LABEL_150:
        v437 = *v414++;
        v438 = v437;
        v439 = *v425++;
        v440 = v438 + (v434 * (v439 - v438));
        v441 = *v435++;
        *(v441 + 4 * v353) = v440;
        --v413;
      }

      while (v413);
      goto LABEL_151;
    }

    if (*(a2 + 92))
    {
      v63 = *(a2 + 17);
      v15 = *(a2 + 18);
      v17 = *(a2 + 22);
      v64 = *(*a2 + 2);
      v65 = *(*a2 + 5);
      v66 = a2[14];
      v67 = a2[17];
      v68 = *(a2 + 13);
      v69 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v98 = 0;
          v26 = 0;
        }

        else
        {
          v70 = 0;
          v26 = 0;
          LODWORD(v71) = 0;
          v72 = 0;
          v73 = a8;
          do
          {
            if (v17 >= 1)
            {
              v74 = 0;
              v71 = v71;
              do
              {
                v75 = *(a2 + 12);
                if (v75)
                {
                  v76 = a3;
                  v77 = v66;
                  v78 = v67;
                  do
                  {
                    v79 = *v76++;
                    v80 = (v79 + 4 * v71);
                    v81 = vld1q_dup_f32(v80);
                    v82 = v77[1];
                    v83 = vmlaq_f32(v81, v82, v64[1]);
                    v84 = vmlaq_f32(vmlaq_f32(v81, *v77, *v64), *v78, v64[2]);
                    v85 = vmlaq_f32(v83, v78[1], v64[3]);
                    *v78 = *v77;
                    v78[1] = v82;
                    v78 += 2;
                    *v77 = v84;
                    v77[1] = v85;
                    v77 += 2;
                    --v75;
                  }

                  while (v75);
                }

                v71 += a7;
                ++v74;
              }

              while (v74 != v17);
            }

            v86 = *(a2 + 12);
            if (v86)
            {
              v87 = v66;
              v88 = v67;
              v89 = a4;
              do
              {
                v90 = *v87;
                v91 = v87[1];
                v87 += 2;
                v93 = *v88;
                v92 = v88[1];
                v88 += 2;
                v94 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v65 + 64 * v15 + 32), v93), v90, *(v65 + 64 * v15)), vmlaq_f32(vmulq_f32(*(v65 + 64 * v15 + 48), v92), v91, *(v65 + 64 * v15 + 16)));
                v95 = *v89++;
                *(v95 + 4 * v70) = vaddv_f32(vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL)));
                --v86;
              }

              while (v86);
            }

            v26 += v17;
            v96 = v15 + v63;
            if (v96 < v68)
            {
              v17 = v69;
            }

            else
            {
              v17 = v69 + 1;
            }

            if (v96 < v68)
            {
              v97 = 0;
            }

            else
            {
              v97 = v68;
            }

            v15 = v96 - v97;
            ++v72;
            v70 += v73;
          }

          while (v72 != a6);
          v98 = v71;
        }

        v527 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_248;
        }

        if (v17 < v527)
        {
          v527 = v17;
        }

        if (v527 >= 1)
        {
          for (n = 0; n != v527; ++n)
          {
            v547 = *(a2 + 12);
            if (v547)
            {
              v548 = a3;
              v549 = v66;
              v550 = v67;
              do
              {
                v551 = *v548++;
                v552 = (v551 + 4 * v98);
                v553 = vld1q_dup_f32(v552);
                v554 = v549[1];
                v555 = vmlaq_f32(v553, v554, v64[1]);
                v556 = vmlaq_f32(vmlaq_f32(v553, *v549, *v64), *v550, v64[2]);
                v557 = vmlaq_f32(v555, v550[1], v64[3]);
                *v550 = *v549;
                v550[1] = v554;
                v550 += 2;
                *v549 = v556;
                v549[1] = v557;
                v549 += 2;
                --v547;
              }

              while (v547);
            }

            v98 += a7;
          }
        }
      }

      else
      {
        if (a6 < 1)
        {
          v352 = 0;
          v26 = 0;
        }

        else
        {
          v294 = 0;
          v26 = 0;
          v295 = 0;
          LODWORD(v296) = 0;
          v297 = a8;
          do
          {
            if (v17 >= 1)
            {
              v298 = 0;
              v296 = v296;
              do
              {
                v299 = *(a2 + 12);
                v300 = v67;
                v301 = v66;
                v302 = v299 - (v299 != 0);
                if (v302)
                {
                  v303 = 0;
                  v301 = v66;
                  v300 = v67;
                  do
                  {
                    v304 = &a3[v303];
                    v305 = &(*v304)[v296];
                    v306 = (*(v304 + 1) + 4 * v296);
                    v307 = vld1q_dup_f32(v305);
                    v308 = vld1q_dup_f32(v306);
                    v309 = v301[1];
                    v310 = vmlaq_f32(vmlaq_f32(v307, *v301, *v64), *v300, v64[4]);
                    v311 = vmlaq_f32(vmlaq_f32(v307, v309, v64[1]), v300[1], v64[5]);
                    *v300 = *v301;
                    v300[1] = v309;
                    *v301 = v310;
                    v301[1] = v311;
                    v312 = v301[2];
                    v313 = v301[3];
                    v314 = vmlaq_f32(vmlaq_f32(v308, v312, *v64), v300[2], v64[4]);
                    v315 = vmlaq_f32(vmlaq_f32(v308, v313, v64[1]), v300[3], v64[5]);
                    v300[2] = v312;
                    v300[3] = v313;
                    v301[2] = v314;
                    v301[3] = v315;
                    v316 = v301[4];
                    v317 = v301[5];
                    v318 = vmlaq_f32(vmlaq_f32(v307, v316, v64[2]), v300[4], v64[6]);
                    v319 = vmlaq_f32(vmlaq_f32(v308, v317, v64[3]), v300[5], v64[7]);
                    v300[4] = v316;
                    v300[5] = v317;
                    v301[4] = v318;
                    v301[5] = v319;
                    v301 += 6;
                    v300 += 6;
                    v303 += 2;
                  }

                  while (v303 < v302);
                }

                if (v299)
                {
                  v320 = &a3[v299 - 1][v296];
                  v321 = vld1q_dup_f32(v320);
                  v322 = v301[1];
                  v323 = vmlaq_f32(vmlaq_f32(v321, *v301, *v64), *v300, v64[4]);
                  v324 = vmlaq_f32(vmlaq_f32(v321, v322, v64[1]), v300[1], v64[5]);
                  *v300 = *v301;
                  v300[1] = v322;
                  *v301 = v323;
                  v301[1] = v324;
                  v325 = v301[2];
                  v326 = v301[3];
                  v327 = vmlaq_f32(vmlaq_f32(0, v326, v64[3]), v300[3], v64[7]);
                  v328 = vmlaq_f32(vmlaq_f32(v321, v325, v64[2]), v300[2], v64[6]);
                  v300[2] = v325;
                  v300[3] = v326;
                  v301[2] = v328;
                  v301[3] = v327;
                }

                v296 += a7;
                ++v298;
              }

              while (v298 != v17);
            }

            v329 = (v65 + 128 * v15);
            v330 = *(a2 + 12);
            v331 = v67;
            v332 = v66;
            v333 = v330 - (v330 != 0);
            if (v333)
            {
              v334 = 0;
              v332 = v66;
              v331 = v67;
              do
              {
                v335 = &a4[v334];
                v336 = v329[1];
                v338 = v329[4];
                v337 = v329[5];
                v339 = vmlaq_f32(vmulq_f32(v337, v331[1]), v332[1], v336);
                v340 = vmlaq_f32(vmulq_f32(v337, v331[3]), v332[3], v336);
                v342 = *v335;
                v341 = v335[1];
                v343 = vmlaq_f32(vmulq_f32(v329[7], v331[5]), v332[5], v329[3]);
                v344 = vmlaq_f32(vmulq_f32(v329[6], v331[4]), v332[4], v329[2]);
                v345 = vaddq_f32(vmlaq_f32(vmulq_f32(v338, *v331), *v332, *v329), v339);
                *v345.i8 = vadd_f32(*v345.i8, *&vextq_s8(v345, v345, 8uLL));
                v346 = vadd_f32(*v344.i8, *&vextq_s8(v344, v344, 8uLL));
                *v345.i8 = vadd_f32(vzip1_s32(*v345.i8, v346), vzip2_s32(*v345.i8, v346));
                v347 = vaddq_f32(vmlaq_f32(vmulq_f32(v338, v331[2]), v332[2], *v329), v340);
                *v347.i8 = vadd_f32(*v347.i8, *&vextq_s8(v347, v347, 8uLL));
                *v343.i8 = vadd_f32(*v343.i8, *&vextq_s8(v343, v343, 8uLL));
                *(v342 + 4 * v294) = vaddv_f32(*v345.i8);
                *(v341 + 4 * v294) = vaddv_f32(vadd_f32(vzip1_s32(*v347.i8, *v343.i8), vzip2_s32(*v347.i8, *v343.i8)));
                v332 += 6;
                v331 += 6;
                v334 += 2;
              }

              while (v334 < v333);
            }

            if (v330)
            {
              v348 = vaddq_f32(vmlaq_f32(vmulq_f32(v329[4], *v331), *v332, *v329), vmlaq_f32(vmulq_f32(v329[5], v331[1]), v332[1], v329[1]));
              *v348.i8 = vadd_f32(*v348.i8, *&vextq_s8(v348, v348, 8uLL));
              v349 = vaddq_f32(vmlaq_f32(vmulq_f32(v329[6], v331[2]), v332[2], v329[2]), vmlaq_f32(vmulq_f32(v329[7], v331[3]), v332[3], v329[3]));
              *v349.i8 = vadd_f32(*v349.i8, *&vextq_s8(v349, v349, 8uLL));
              *(a4[v330 - 1] + 4 * v294) = vaddv_f32(vadd_f32(vzip1_s32(*v348.i8, *v349.i8), vzip2_s32(*v348.i8, *v349.i8)));
            }

            v26 += v17;
            v350 = v15 + v63;
            if (v350 < v68)
            {
              v17 = v69;
            }

            else
            {
              v17 = v69 + 1;
            }

            if (v350 < v68)
            {
              v351 = 0;
            }

            else
            {
              v351 = v68;
            }

            v15 = v350 - v351;
            ++v295;
            v294 += v297;
          }

          while (v295 != a6);
          v352 = v296;
        }

        v527 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_248;
        }

        if (v17 < v527)
        {
          v527 = v17;
        }

        if (v527 >= 1)
        {
          for (ii = 0; ii != v527; ++ii)
          {
            v643 = *(a2 + 12);
            v644 = v67;
            v645 = v66;
            v646 = v643 - (v643 != 0);
            if (v646)
            {
              v647 = 0;
              v645 = v66;
              v644 = v67;
              do
              {
                v648 = &a3[v647];
                v649 = &(*v648)[v352];
                v650 = (*(v648 + 1) + 4 * v352);
                v651 = vld1q_dup_f32(v649);
                v652 = vld1q_dup_f32(v650);
                v653 = v645[1];
                v654 = vmlaq_f32(vmlaq_f32(v651, *v645, *v64), *v644, v64[4]);
                v655 = vmlaq_f32(vmlaq_f32(v651, v653, v64[1]), v644[1], v64[5]);
                *v644 = *v645;
                v644[1] = v653;
                *v645 = v654;
                v645[1] = v655;
                v656 = v645[2];
                v657 = v645[3];
                v658 = vmlaq_f32(vmlaq_f32(v652, v656, *v64), v644[2], v64[4]);
                v659 = vmlaq_f32(vmlaq_f32(v652, v657, v64[1]), v644[3], v64[5]);
                v644[2] = v656;
                v644[3] = v657;
                v645[2] = v658;
                v645[3] = v659;
                v660 = v645[4];
                v661 = v645[5];
                v662 = vmlaq_f32(vmlaq_f32(v651, v660, v64[2]), v644[4], v64[6]);
                v663 = vmlaq_f32(vmlaq_f32(v652, v661, v64[3]), v644[5], v64[7]);
                v644[4] = v660;
                v644[5] = v661;
                v645[4] = v662;
                v645[5] = v663;
                v645 += 6;
                v644 += 6;
                v647 += 2;
              }

              while (v647 < v646);
            }

            if (v643)
            {
              v664 = &a3[v643 - 1][v352];
              v665 = vld1q_dup_f32(v664);
              v666 = v645[1];
              v667 = vmlaq_f32(vmlaq_f32(v665, *v645, *v64), *v644, v64[4]);
              v668 = vmlaq_f32(vmlaq_f32(v665, v666, v64[1]), v644[1], v64[5]);
              *v644 = *v645;
              v644[1] = v666;
              *v645 = v667;
              v645[1] = v668;
              v669 = v645[2];
              v670 = v645[3];
              v671 = vmlaq_f32(vmlaq_f32(0, v670, v64[3]), v644[3], v64[7]);
              v672 = vmlaq_f32(vmlaq_f32(v665, v669, v64[2]), v644[2], v64[6]);
              v644[2] = v669;
              v644[3] = v670;
              v645[2] = v672;
              v645[3] = v671;
            }

            v352 += a7;
          }
        }
      }

      goto LABEL_247;
    }

    v161 = *(a2 + 17);
    v99 = *(a2 + 18);
    v101 = *(a2 + 22);
    v162 = *(*a2 + 2);
    v163 = *(*a2 + 5);
    v164 = a2[14];
    v165 = a2[17];
    v166 = *(a2 + 15);
    if (*(a2 + 14) == 8)
    {
      if (a6 < 1)
      {
        v213 = 0;
        v26 = 0;
      }

      else
      {
        v167 = 0;
        v26 = 0;
        LODWORD(v168) = 0;
        v169 = 0;
        v170 = a8;
        do
        {
          if (v101 >= 1)
          {
            v171 = 0;
            v168 = v168;
            do
            {
              v172 = *(a2 + 12);
              if (v172)
              {
                v173 = a3;
                v174 = v164;
                v175 = v165;
                do
                {
                  v176 = *v173++;
                  v177 = (v176 + 4 * v168);
                  v178 = vld1q_dup_f32(v177);
                  v179 = v174[1];
                  v180 = vmlaq_f32(v178, v179, v162[1]);
                  v181 = vmlaq_f32(vmlaq_f32(v178, *v174, *v162), *v175, v162[2]);
                  v182 = vmlaq_f32(v180, v175[1], v162[3]);
                  *v175 = *v174;
                  v175[1] = v179;
                  v175 += 2;
                  *v174 = v181;
                  v174[1] = v182;
                  v174 += 2;
                  --v172;
                }

                while (v172);
              }

              v168 += a7;
              ++v171;
            }

            while (v171 != v101);
          }

          v183 = *(a2 + 12);
          if (v183)
          {
            v184 = *(a2 + 12) * (v99 & 0x7FFFFF);
            v185 = (v163 + 32 * ((v99 >> 22) & 0x1FE));
            v186 = a2[26];
            v187 = v164;
            v188 = v165;
            v189 = v186;
            v190 = *(a2 + 12);
            do
            {
              v191 = *v187;
              v192 = v187[1];
              v187 += 2;
              v194 = *v188;
              v193 = v188[1];
              v188 += 2;
              v195 = vaddq_f32(vmlaq_f32(vmulq_f32(v185[2], v194), v191, *v185), vmlaq_f32(vmulq_f32(v185[3], v193), v192, v185[1]));
              *v189++ = vaddv_f32(vadd_f32(*v195.i8, *&vextq_s8(v195, v195, 8uLL)));
              --v190;
            }

            while (v190);
            v196 = a2[29];
            v197 = v164;
            v198 = v165;
            v199 = v196;
            v200 = v183;
            do
            {
              v201 = *v197;
              v202 = v197[1];
              v197 += 2;
              v204 = *v198;
              v203 = v198[1];
              v198 += 2;
              v205 = vaddq_f32(vmlaq_f32(vmulq_f32(v185[6], v204), v201, v185[4]), vmlaq_f32(vmulq_f32(v185[7], v203), v202, v185[5]));
              *v199++ = vaddv_f32(vadd_f32(*v205.i8, *&vextq_s8(v205, v205, 8uLL)));
              --v200;
            }

            while (v200);
            v206 = a4;
            do
            {
              v207 = *v186++;
              v208 = v207;
              v209 = *v196++;
              v210 = v208 + (v184 * (v209 - v208));
              v211 = *v206++;
              *(v211 + 4 * v167) = v210;
              --v183;
            }

            while (v183);
          }

          v26 += v101;
          v212 = v99 + v161;
          v99 = (v99 + v161) & 0x7FFFFFFF;
          v101 = v166 + (v212 >> 31);
          ++v169;
          v167 += v170;
        }

        while (v169 != a6);
        v213 = v168;
      }

      v558 = a5 - v26;
      if (a5 <= v26)
      {
        goto LABEL_275;
      }

      if (v101 < v558)
      {
        v558 = v101;
      }

      if (v558 >= 1)
      {
        for (jj = 0; jj != v558; ++jj)
        {
          v578 = *(a2 + 12);
          if (v578)
          {
            v579 = a3;
            v580 = v164;
            v581 = v165;
            do
            {
              v582 = *v579++;
              v583 = (v582 + 4 * v213);
              v584 = vld1q_dup_f32(v583);
              v585 = v580[1];
              v586 = vmlaq_f32(v584, v585, v162[1]);
              v587 = vmlaq_f32(vmlaq_f32(v584, *v580, *v162), *v581, v162[2]);
              v588 = vmlaq_f32(v586, v581[1], v162[3]);
              *v581 = *v580;
              v581[1] = v585;
              v581 += 2;
              *v580 = v587;
              v580[1] = v588;
              v580 += 2;
              --v578;
            }

            while (v578);
          }

          v213 += a7;
        }
      }

      goto LABEL_274;
    }

    if (a6 < 1)
    {
      v526 = 0;
      v26 = 0;
LABEL_263:
      v558 = a5 - v26;
      if (a5 <= v26)
      {
        goto LABEL_275;
      }

      if (v101 < v558)
      {
        v558 = v101;
      }

      if (v558 >= 1)
      {
        for (kk = 0; kk != v558; ++kk)
        {
          v727 = *(a2 + 12);
          v728 = v165;
          v729 = v164;
          v730 = v727 - (v727 != 0);
          if (v730)
          {
            v731 = 0;
            v729 = v164;
            v728 = v165;
            do
            {
              v732 = &a3[v731];
              v733 = &(*v732)[v526];
              v734 = (*(v732 + 1) + 4 * v526);
              v735 = vld1q_dup_f32(v733);
              v736 = vld1q_dup_f32(v734);
              v737 = v729[1];
              v738 = vmlaq_f32(vmlaq_f32(v735, *v729, *v162), *v728, v162[4]);
              v739 = vmlaq_f32(vmlaq_f32(v735, v737, v162[1]), v728[1], v162[5]);
              *v728 = *v729;
              v728[1] = v737;
              *v729 = v738;
              v729[1] = v739;
              v740 = v729[2];
              v741 = v729[3];
              v742 = vmlaq_f32(vmlaq_f32(v736, v740, *v162), v728[2], v162[4]);
              v743 = vmlaq_f32(vmlaq_f32(v736, v741, v162[1]), v728[3], v162[5]);
              v728[2] = v740;
              v728[3] = v741;
              v729[2] = v742;
              v729[3] = v743;
              v744 = v729[4];
              v745 = v729[5];
              v746 = vmlaq_f32(vmlaq_f32(v735, v744, v162[2]), v728[4], v162[6]);
              v747 = vmlaq_f32(vmlaq_f32(v736, v745, v162[3]), v728[5], v162[7]);
              v728[4] = v744;
              v728[5] = v745;
              v729[4] = v746;
              v729[5] = v747;
              v729 += 6;
              v728 += 6;
              v731 += 2;
            }

            while (v731 < v730);
          }

          if (v727)
          {
            v748 = &a3[v727 - 1][v526];
            v749 = vld1q_dup_f32(v748);
            v750 = v729[1];
            v751 = vmlaq_f32(vmlaq_f32(v749, *v729, *v162), *v728, v162[4]);
            v752 = vmlaq_f32(vmlaq_f32(v749, v750, v162[1]), v728[1], v162[5]);
            *v728 = *v729;
            v728[1] = v750;
            *v729 = v751;
            v729[1] = v752;
            v753 = v729[2];
            v754 = v729[3];
            v755 = vmlaq_f32(vmlaq_f32(0, v754, v162[3]), v728[3], v162[7]);
            v756 = vmlaq_f32(vmlaq_f32(v749, v753, v162[2]), v728[2], v162[6]);
            v728[2] = v753;
            v728[3] = v754;
            v729[2] = v756;
            v729[3] = v755;
          }

          v526 += a7;
        }
      }

      goto LABEL_274;
    }

    v444 = 0;
    v26 = 0;
    v445 = 0;
    LODWORD(v446) = 0;
    v447 = a8;
    while (1)
    {
      if (v101 >= 1)
      {
        v448 = 0;
        v446 = v446;
        do
        {
          v449 = *(a2 + 12);
          v450 = v165;
          v451 = v164;
          v452 = v449 - (v449 != 0);
          if (v452)
          {
            v453 = 0;
            v451 = v164;
            v450 = v165;
            do
            {
              v454 = &a3[v453];
              v455 = &(*v454)[v446];
              v456 = (*(v454 + 1) + 4 * v446);
              v457 = vld1q_dup_f32(v455);
              v458 = vld1q_dup_f32(v456);
              v459 = v451[1];
              v460 = vmlaq_f32(vmlaq_f32(v457, *v451, *v162), *v450, v162[4]);
              v461 = vmlaq_f32(vmlaq_f32(v457, v459, v162[1]), v450[1], v162[5]);
              *v450 = *v451;
              v450[1] = v459;
              *v451 = v460;
              v451[1] = v461;
              v462 = v451[2];
              v463 = v451[3];
              v464 = vmlaq_f32(vmlaq_f32(v458, v462, *v162), v450[2], v162[4]);
              v465 = vmlaq_f32(vmlaq_f32(v458, v463, v162[1]), v450[3], v162[5]);
              v450[2] = v462;
              v450[3] = v463;
              v451[2] = v464;
              v451[3] = v465;
              v466 = v451[4];
              v467 = v451[5];
              v468 = vmlaq_f32(vmlaq_f32(v457, v466, v162[2]), v450[4], v162[6]);
              v469 = vmlaq_f32(vmlaq_f32(v458, v467, v162[3]), v450[5], v162[7]);
              v450[4] = v466;
              v450[5] = v467;
              v451[4] = v468;
              v451[5] = v469;
              v451 += 6;
              v450 += 6;
              v453 += 2;
            }

            while (v453 < v452);
          }

          if (v449)
          {
            v470 = &a3[v449 - 1][v446];
            v471 = vld1q_dup_f32(v470);
            v472 = v451[1];
            v473 = vmlaq_f32(vmlaq_f32(v471, *v451, *v162), *v450, v162[4]);
            v474 = vmlaq_f32(vmlaq_f32(v471, v472, v162[1]), v450[1], v162[5]);
            *v450 = *v451;
            v450[1] = v472;
            *v451 = v473;
            v451[1] = v474;
            v475 = v451[2];
            v476 = v451[3];
            v477 = vmlaq_f32(vmlaq_f32(0, v476, v162[3]), v450[3], v162[7]);
            v478 = vmlaq_f32(vmlaq_f32(v471, v475, v162[2]), v450[2], v162[6]);
            v450[2] = v475;
            v450[3] = v476;
            v451[2] = v478;
            v451[3] = v477;
          }

          v446 += a7;
          ++v448;
        }

        while (v448 != v101);
      }

      v479 = *(a2 + 12);
      v480 = (v163 + 32 * ((v99 >> 21) & 0x3FC));
      v481 = *(a2 + 12);
      v482 = a2[26];
      v483 = v165;
      v484 = v164;
      v485 = v481 - (*(a2 + 12) != 0);
      if (v485)
      {
        v486 = 0;
        v487 = a2[26];
        v484 = v164;
        v483 = v165;
        do
        {
          v488 = v480[1];
          v490 = v480[4];
          v489 = v480[5];
          v491 = vmlaq_f32(vmulq_f32(v489, v483[1]), v484[1], v488);
          v492 = vmlaq_f32(vmulq_f32(v489, v483[3]), v484[3], v488);
          v493 = vmlaq_f32(vmulq_f32(v480[7], v483[5]), v484[5], v480[3]);
          v494 = vmlaq_f32(vmulq_f32(v480[6], v483[4]), v484[4], v480[2]);
          v495 = vaddq_f32(vmlaq_f32(vmulq_f32(v490, *v483), *v484, *v480), v491);
          *v494.i8 = vadd_f32(*v494.i8, *&vextq_s8(v494, v494, 8uLL));
          *v495.i8 = vadd_f32(*v495.i8, *&vextq_s8(v495, v495, 8uLL));
          v496 = vaddq_f32(vmlaq_f32(vmulq_f32(v490, v483[2]), v484[2], *v480), v492);
          *v496.i8 = vadd_f32(*v496.i8, *&vextq_s8(v496, v496, 8uLL));
          *v493.i8 = vadd_f32(*v493.i8, *&vextq_s8(v493, v493, 8uLL));
          *v487++ = vadd_f32(vadd_f32(vzip1_s32(*v495.i8, *v496.i8), vzip2_s32(*v495.i8, *v496.i8)), vadd_f32(vzip1_s32(*v494.i8, *v493.i8), vzip2_s32(*v494.i8, *v493.i8)));
          v484 += 6;
          v483 += 6;
          v486 += 2;
        }

        while (v486 < v485);
      }

      if (v481)
      {
        v497 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[4], *v483), *v484, *v480), vmlaq_f32(vmulq_f32(v480[5], v483[1]), v484[1], v480[1]));
        *v497.i8 = vadd_f32(*v497.i8, *&vextq_s8(v497, v497, 8uLL));
        v498 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[6], v483[2]), v484[2], v480[2]), vmlaq_f32(vmulq_f32(v480[7], v483[3]), v484[3], v480[3]));
        *v498.i8 = vadd_f32(*v498.i8, *&vextq_s8(v498, v498, 8uLL));
        v482[(v481 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v497.i8, *v498.i8), vzip2_s32(*v497.i8, *v498.i8)));
      }

      v499 = a2[29];
      v500 = v165;
      v501 = v164;
      if (v485)
      {
        v502 = 0;
        v503 = a2[29];
        v501 = v164;
        v500 = v165;
        do
        {
          v504 = v480[8];
          v505 = v480[9];
          v507 = v480[12];
          v506 = v480[13];
          v508 = vmlaq_f32(vmulq_f32(v506, v500[1]), v501[1], v505);
          v509 = vmlaq_f32(vmulq_f32(v507, *v500), *v501, v504);
          v510 = vmlaq_f32(vmulq_f32(v506, v500[3]), v501[3], v505);
          v511 = vmlaq_f32(vmulq_f32(v507, v500[2]), v501[2], v504);
          v512 = vmlaq_f32(vmulq_f32(v480[15], v500[5]), v501[5], v480[11]);
          v513 = vmlaq_f32(vmulq_f32(v480[14], v500[4]), v501[4], v480[10]);
          v514 = vaddq_f32(v509, v508);
          *v513.i8 = vadd_f32(*v513.i8, *&vextq_s8(v513, v513, 8uLL));
          *v514.i8 = vadd_f32(*v514.i8, *&vextq_s8(v514, v514, 8uLL));
          v515 = vaddq_f32(v511, v510);
          *v515.i8 = vadd_f32(*v515.i8, *&vextq_s8(v515, v515, 8uLL));
          *v512.i8 = vadd_f32(*v512.i8, *&vextq_s8(v512, v512, 8uLL));
          *v503++ = vadd_f32(vadd_f32(vzip1_s32(*v514.i8, *v515.i8), vzip2_s32(*v514.i8, *v515.i8)), vadd_f32(vzip1_s32(*v513.i8, *v512.i8), vzip2_s32(*v513.i8, *v512.i8)));
          v501 += 6;
          v500 += 6;
          v502 += 2;
        }

        while (v502 < v485);
      }

      v516 = v479 * (v99 & 0x7FFFFF);
      if (v481)
      {
        break;
      }

      v517 = a4;
      if (v481)
      {
        goto LABEL_175;
      }

LABEL_176:
      v26 += v101;
      v525 = v99 + v161;
      v99 = (v99 + v161) & 0x7FFFFFFF;
      v101 = v166 + (v525 >> 31);
      ++v445;
      v444 += v447;
      if (v445 == a6)
      {
        v526 = v446;
        goto LABEL_263;
      }
    }

    v518 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[12], *v500), *v501, v480[8]), vmlaq_f32(vmulq_f32(v480[13], v500[1]), v501[1], v480[9]));
    *v518.i8 = vadd_f32(*v518.i8, *&vextq_s8(v518, v518, 8uLL));
    v519 = vaddq_f32(vmlaq_f32(vmulq_f32(v480[14], v500[2]), v501[2], v480[10]), vmlaq_f32(vmulq_f32(v480[15], v500[3]), v501[3], v480[11]));
    *v519.i8 = vadd_f32(*v519.i8, *&vextq_s8(v519, v519, 8uLL));
    v499[(v481 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v518.i8, *v519.i8), vzip2_s32(*v518.i8, *v519.i8)));
    v517 = a4;
    do
    {
LABEL_175:
      v520 = *v482++;
      v521 = v520;
      v522 = *v499++;
      v523 = v521 + (v516 * (v522 - v521));
      v524 = *v517++;
      *(v524 + 4 * v444) = v523;
      --v481;
    }

    while (v481);
    goto LABEL_176;
  }

  v62 = 0;
  v26 = v759;
LABEL_277:
  *this = v26;
  *(this + 4) = v62;
  result = NAN;
  a2[32] = -1;
  *(a2 + 66) = -1;
  return result;
}

OSStatus AudioFileStreamOpen(void *inClientData, AudioFileStream_PropertyListenerProc inPropertyListenerProc, AudioFileStream_PacketsProc inPacketsProc, AudioFileTypeID inFileTypeHint, AudioFileStreamID *outAudioFileStream)
{
  if (outAudioFileStream)
  {
    operator new();
  }

  return -50;
}

void sub_18F768E84(void *a1, int a2)
{
  BaseOpaqueObject::~BaseOpaqueObject(v2);
  MEMORY[0x193ADF220](v2, 0x10F1C40F59B0EB5);
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  __cxa_end_catch();
  __break(1u);
}

void sub_18F768EE8(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F768E6CLL);
}

uint64_t AudioFileStreamPrepareToOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a6)
  {
    operator new();
  }

  return 4294967246;
}

void sub_18F769058(void *a1, int a2)
{
  MEMORY[0x193ADF220](v3, 0x10F3C40BA36BB60);
  BaseOpaqueObject::~BaseOpaqueObject(v2);
  MEMORY[0x193ADF220](v2, 0x10F1C40F59B0EB5);
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  __cxa_end_catch();
  __break(1u);
}

void sub_18F7690E0(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F76903CLL);
}

OSStatus AudioFileStreamParseBytes(AudioFileStreamID inAudioFileStream, UInt32 inDataByteSize, const void *inData, AudioFileStreamParseFlags inFlags)
{
  v4 = inFlags;
  v19 = *MEMORY[0x1E69E9840];
  if (inDataByteSize && !inData)
  {
    return -50;
  }

  v8 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v17[0]) = 136315394;
      *(v17 + 4) = "AudioFileStream.cpp";
      WORD6(v17[0]) = 1024;
      *(v17 + 14) = 122;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", v17, 0x12u);
    }

    return -50;
  }

  v9 = v8;
  *(v8 + 88) += *(v8 + 80);
  *(v8 + 72) = inData;
  *(v8 + 80) = inDataByteSize;
  *(v8 + 116) = inDataByteSize;
  if (inDataByteSize || inData)
  {
    for (i = *(v8 + 16); ; *(i + 236) = 0)
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v11 = v4 | *(i + 176);
      *(i + 176) = v11 & 1;
      if (*(*(i + 8) + 104) == 1 && (v11 & 1) != 0 && ((*(*i + 216))(i) & 1) != 0)
      {
        break;
      }

      v12 = *(i + 240);
      v13 = *(i + 248);
      v14 = (i + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      result = v12(v14, v17);
      *(i + 176) = 0;
      i = *&v17[0];
      if (result)
      {
        v15 = 1;
      }

      else
      {
        v15 = *&v17[0] == 0;
      }

      if (v15)
      {
        goto LABEL_26;
      }

      v16 = *(v9 + 16);
      if (v16 == *&v17[0])
      {
        i = *(v9 + 16);
      }

      else
      {
        *(v9 + 16) = *&v17[0];
        *(i + 8) = v9;
        if (v16)
        {
          (*(*v16 + 8))(v16);
          i = *(v9 + 16);
        }
      }

      *(i + 240) = *(v17 + 8);
    }

    result = 1685283617;
  }

  else
  {
    result = (*(**(v8 + 16) + 16))(*(v8 + 16));
  }

LABEL_26:
  *(v9 + 116) = 0;
  return result;
}

void sub_18F769380(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F769350);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamSeek(AudioFileStreamID inAudioFileStream, SInt64 inPacketOffset, SInt64 *outDataByteOffset, AudioFileStreamSeekFlags *ioFlags)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!outDataByteOffset)
  {
    return -50;
  }

  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "AudioFileStream.cpp";
      v12 = 1024;
      v13 = 148;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v10, 0x12u);
    }

    return -50;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    return (*(*v8 + 48))(v8, inPacketOffset, outDataByteOffset, ioFlags);
  }

  else
  {
    return 1836020325;
  }
}

void sub_18F7694F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F7694B4);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamGetPropertyInfo(AudioFileStreamID inAudioFileStream, AudioFileStreamPropertyID inPropertyID, UInt32 *outPropertyDataSize, Boolean *outWritable)
{
  v6 = *&inPropertyID;
  v15 = *MEMORY[0x1E69E9840];
  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      return (*(*v8 + 24))(*(v7 + 16), v6, outPropertyDataSize, outWritable);
    }

    else if (v6 == 1869640816)
    {
      if (outPropertyDataSize)
      {
        *outPropertyDataSize = (*(v7 + 56) - *(v7 + 48)) & 0xFFFFFFFC;
      }

      v9 = 0;
      if (outWritable)
      {
        *outWritable = 1;
      }
    }

    else
    {
      return 1886681407;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "AudioFileStream.cpp";
      v13 = 1024;
      v14 = 172;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v11, 0x12u);
    }

    return -50;
  }

  return v9;
}

void sub_18F769698(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F769664);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamGetProperty(AudioFileStreamID inAudioFileStream, AudioFileStreamPropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v20 = *MEMORY[0x1E69E9840];
  result = -50;
  if (ioPropertyDataSize)
  {
    v5 = outPropertyData;
    if (outPropertyData)
    {
      v7 = *&inPropertyID;
      v8 = BaseOpaqueObject::ResolveOpaqueRef();
      if (v8)
      {
        v9 = v8;
        if (v7 == 1869640816)
        {
          bzero(v5, *ioPropertyDataSize);
          v10 = *ioPropertyDataSize >> 2;
          v11 = *(v9 + 48);
          v12 = (*(v9 + 56) - v11) >> 2;
          if (v12 >= v10)
          {
            v13 = v10;
          }

          else
          {
            v13 = v12;
          }

          *ioPropertyDataSize = 4 * v13;
          if (v13)
          {
            do
            {
              v14 = *v11++;
              *v5++ = v14;
              --v13;
            }

            while (v13);
          }

          return 0;
        }

        else
        {
          v15 = *(v8 + 16);
          if (v15)
          {
            return (*(*v15 + 32))(v15, v7, ioPropertyDataSize, v5);
          }

          else
          {
            return 1886681407;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315394;
          v17 = "AudioFileStream.cpp";
          v18 = 1024;
          v19 = 198;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v16, 0x12u);
        }

        return -50;
      }
    }
  }

  return result;
}

void sub_18F769864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F769834);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamSetProperty(AudioFileStreamID inAudioFileStream, AudioFileStreamPropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = -50;
  if (inPropertyDataSize && inPropertyData)
  {
    v6 = *&inPropertyDataSize;
    v7 = *&inPropertyID;
    v8 = BaseOpaqueObject::ResolveOpaqueRef();
    if (v8)
    {
      v9 = v8;
      if (v7 == 1869640816)
      {
        if (v6 >= 4)
        {
          v10 = 0;
          v11 = v6 >> 2;
          v12 = *(v8 + 56);
          do
          {
            v13 = *(inPropertyData + v10);
            v14 = v9[6];
            v15 = v12 - v14;
            v16 = (v12 - v14) >> 2;
            if (v12 == v14)
            {
LABEL_11:
              v20 = v9[8];
              if (v12 >= v20)
              {
                v21 = v16 + 1;
                if ((v16 + 1) >> 62)
                {
                  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                }

                v22 = v20 - v14;
                if (v22 >> 1 > v21)
                {
                  v21 = v22 >> 1;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v23 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v23);
                }

                v24 = (v12 - v14) >> 2;
                v25 = (4 * v16);
                v26 = (4 * v16 - 4 * v24);
                *v25 = v13;
                v12 = (v25 + 1);
                memcpy(v26, v14, v15);
                v27 = v9[6];
                v9[6] = v26;
                v9[7] = v12;
                v9[8] = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v12 = v13;
                v12 += 4;
              }

              v9[7] = v12;
            }

            else
            {
              v17 = 0;
              v18 = 1;
              while (*&v14[4 * v17] != v13)
              {
                v17 = v18;
                if (v16 <= v18++)
                {
                  goto LABEL_11;
                }
              }
            }

            ++v10;
          }

          while (v10 != v11);
        }

        return 0;
      }

      else
      {
        v28 = *(v8 + 16);
        if (v28)
        {
          return (*(*v28 + 40))(v28, v7, v6, inPropertyData);
        }

        else
        {
          return 1886681407;
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315394;
      v31 = "AudioFileStream.cpp";
      v32 = 1024;
      v33 = 223;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v30, 0x12u);
    }
  }

  return v4;
}

void sub_18F769AFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F769AB4);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioFileStreamClose(AudioFileStreamID inAudioFileStream)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (v1)
  {
    (*(*v1 + 8))(v1);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "AudioFileStream.cpp";
      v5 = 1024;
      v6 = 242;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  afsw == NULL", &v3, 0x12u);
    }

    return -50;
  }
}

uint64_t HOA::getTDesign(HOA *this, _OWORD *__dst, float *a3, float *__C, float *a5)
{
  if (__dst)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  switch(this)
  {
    case 0:
      if (v8)
      {
        *__dst = 0;
        *a3 = 0.0;
      }

      v9 = 1;
      break;
    case 1:
      if (v8)
      {
        *__dst = xmmword_18F901E40;
        *a3 = xmmword_18F901E50;
      }

      v9 = 4;
      break;
    case 2:
      if (v8)
      {
        *__dst = xmmword_18F9035A4;
        __dst[1] = unk_18F9035B4;
        __dst[2] = xmmword_18F9035C4;
        *(a3 + 2) = xmmword_18F9035F4;
        *a3 = xmmword_18F9035D4;
        *(a3 + 1) = unk_18F9035E4;
      }

      v9 = 12;
      break;
    case 3:
      if (v8)
      {
        __dst[2] = xmmword_18F903624;
        __dst[3] = unk_18F903634;
        __dst[4] = xmmword_18F903644;
        __dst[5] = unk_18F903654;
        *__dst = xmmword_18F903604;
        __dst[1] = unk_18F903614;
        *(a3 + 2) = xmmword_18F903684;
        *(a3 + 3) = unk_18F903694;
        *(a3 + 4) = xmmword_18F9036A4;
        *(a3 + 5) = unk_18F9036B4;
        v9 = 24;
        *a3 = xmmword_18F903664;
        *(a3 + 1) = unk_18F903674;
      }

      else
      {
        v9 = 24;
      }

      break;
    case 4:
      if (v8)
      {
        __dst[2] = xmmword_18F9036E4;
        __dst[3] = unk_18F9036F4;
        __dst[8] = xmmword_18F903744;
        __dst[6] = xmmword_18F903724;
        __dst[7] = unk_18F903734;
        __dst[4] = xmmword_18F903704;
        __dst[5] = unk_18F903714;
        *__dst = xmmword_18F9036C4;
        __dst[1] = unk_18F9036D4;
        *(a3 + 6) = xmmword_18F9037B4;
        *(a3 + 7) = unk_18F9037C4;
        *(a3 + 8) = xmmword_18F9037D4;
        *(a3 + 2) = xmmword_18F903774;
        *(a3 + 3) = unk_18F903784;
        *(a3 + 4) = xmmword_18F903794;
        *(a3 + 5) = unk_18F9037A4;
        v9 = 36;
        *a3 = xmmword_18F903754;
        *(a3 + 1) = unk_18F903764;
      }

      else
      {
        v9 = 36;
      }

      break;
    case 5:
      if (v8)
      {
        __dst[12] = xmmword_18F9038A4;
        __dst[13] = unk_18F9038B4;
        __dst[14] = xmmword_18F9038C4;
        __dst[8] = xmmword_18F903864;
        __dst[9] = unk_18F903874;
        __dst[10] = xmmword_18F903884;
        __dst[11] = unk_18F903894;
        __dst[4] = xmmword_18F903824;
        __dst[5] = unk_18F903834;
        __dst[6] = xmmword_18F903844;
        __dst[7] = unk_18F903854;
        *__dst = xmmword_18F9037E4;
        __dst[1] = unk_18F9037F4;
        __dst[2] = xmmword_18F903804;
        __dst[3] = unk_18F903814;
        *(a3 + 12) = xmmword_18F903994;
        *(a3 + 13) = unk_18F9039A4;
        *(a3 + 14) = xmmword_18F9039B4;
        *(a3 + 8) = xmmword_18F903954;
        *(a3 + 9) = unk_18F903964;
        *(a3 + 10) = xmmword_18F903974;
        *(a3 + 11) = unk_18F903984;
        *(a3 + 4) = xmmword_18F903914;
        *(a3 + 5) = unk_18F903924;
        *(a3 + 6) = xmmword_18F903934;
        *(a3 + 7) = unk_18F903944;
        *a3 = xmmword_18F9038D4;
        *(a3 + 1) = unk_18F9038E4;
        v9 = 60;
        *(a3 + 2) = xmmword_18F9038F4;
        *(a3 + 3) = unk_18F903904;
      }

      else
      {
        v9 = 60;
      }

      break;
    case 6:
      if (v8)
      {
        memcpy(__dst, &unk_18F9039C4, 0x150uLL);
        memcpy(a3, &unk_18F903B14, 0x150uLL);
      }

      v9 = 84;
      break;
    case 7:
      if (v8)
      {
        memcpy(__dst, &unk_18F903C64, 0x1B0uLL);
        memcpy(a3, &unk_18F903E14, 0x1B0uLL);
      }

      v9 = 108;
      break;
    case 8:
      if (v8)
      {
        memcpy(__dst, &unk_18F903FC4, 0x240uLL);
        memcpy(a3, &unk_18F904204, 0x240uLL);
      }

      v9 = 144;
      break;
    case 9:
      if (v8)
      {
        memcpy(__dst, &unk_18F904444, 0x2D0uLL);
        memcpy(a3, &unk_18F904714, 0x2D0uLL);
      }

      v9 = 180;
      break;
    case 10:
      if (v8)
      {
        memcpy(__dst, &unk_18F9049E4, 0x360uLL);
        memcpy(a3, &unk_18F904D44, 0x360uLL);
      }

      v9 = 216;
      break;
    case 11:
      if (v8)
      {
        memcpy(__dst, &unk_18F9050A4, 0x428uLL);
        memcpy(a3, &unk_18F9054CC, 0x428uLL);
      }

      v9 = 266;
      break;
    case 12:
      if (v8)
      {
        memcpy(__dst, &unk_18F9058F4, 0x4E8uLL);
        memcpy(a3, &unk_18F905DDC, 0x4E8uLL);
      }

      v9 = 314;
      break;
    case 13:
      if (v8)
      {
        memcpy(__dst, &unk_18F9062C4, 0x5B8uLL);
        memcpy(a3, &unk_18F90687C, 0x5B8uLL);
      }

      v9 = 366;
      break;
    case 14:
      if (v8)
      {
        memcpy(__dst, &unk_18F906E34, 0x698uLL);
        memcpy(a3, &unk_18F9074CC, 0x698uLL);
      }

      v9 = 422;
      break;
    case 15:
      if (v8)
      {
        memcpy(__dst, &unk_18F907B64, 0x788uLL);
        memcpy(a3, &unk_18F9082EC, 0x788uLL);
      }

      v9 = 482;
      break;
    case 16:
      if (v8)
      {
        memcpy(__dst, &unk_18F908A74, 0x888uLL);
        memcpy(a3, &unk_18F9092FC, 0x888uLL);
      }

      v9 = 546;
      break;
    case 17:
      if (v8)
      {
        memcpy(__dst, &unk_18F909B84, 0x998uLL);
        memcpy(a3, &unk_18F90A51C, 0x998uLL);
      }

      v9 = 614;
      break;
    case 18:
      if (v8)
      {
        memcpy(__dst, &unk_18F90AEB4, 0xAB8uLL);
        memcpy(a3, &unk_18F90B96C, 0xAB8uLL);
      }

      v9 = 686;
      break;
    case 19:
      if (v8)
      {
        memcpy(__dst, &unk_18F90C424, 0xBE8uLL);
        memcpy(a3, &unk_18F90D00C, 0xBE8uLL);
      }

      v9 = 762;
      break;
    case 20:
      if (v8)
      {
        memcpy(__dst, &unk_18F90DBF4, 0xD28uLL);
        memcpy(a3, &unk_18F90E91C, 0xD28uLL);
      }

      v9 = 842;
      break;
    case 21:
      if (v8)
      {
        memcpy(__dst, &unk_18F90F644, 0xE78uLL);
        memcpy(a3, &unk_18F9104BC, 0xE78uLL);
      }

      v9 = 926;
      break;
    default:
      if (v8)
      {
        memcpy(__dst, &unk_18F911334, 0xFD8uLL);
        memcpy(a3, &unk_18F91230C, 0xFD8uLL);
      }

      v9 = 1014;
      break;
  }

  if (__C)
  {
    __A = 1.0;
    vDSP_vfill(&__A, __C, 1, v9);
  }

  return v9;
}

uint64_t MP4BoxParser_MovieExtendsHeader::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) != 1835362404)
    {
      return 4294967294;
    }

    if (*(this + 56) == 1)
    {
      v6 = 0;
      v5 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v5, 8uLL, &v6);
      if (result)
      {
        return result;
      }

      v4 = bswap64(v6);
      goto LABEL_10;
    }

    if (!*(this + 56))
    {
      v7 = 0;
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, &v7);
      if (result)
      {
        return result;
      }

      v4 = bswap32(v7);
LABEL_10:
      this[8] = v4;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void MP4BoxParser_MovieExtendsHeader::~MP4BoxParser_MovieExtendsHeader(MP4BoxParser_MovieExtendsHeader *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void sub_18F76A638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(void *a1, void *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F032C3A0;
  v5[1] = a1;
  v5[3] = v5;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), v5);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_18F76AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v7, (a1 + 1));
  v2 = *a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE10sync_proxyEv_block_invoke;
  v5[3] = &__block_descriptor_64_ea8_32c69_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v6, v7);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v5];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v7);

  return v3;
}

void sub_18F76AB34(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v5, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c69_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](v4, v5);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v5);

  return v1;
}

id *caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray *> &&)#1},std::allocator<std::tuple<NSArray *> &>,void ()(NSError,std::tuple<NSArray *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSArray *> &&)#1},std::allocator<std::tuple<NSArray *> &>,void ()(NSError,std::tuple<NSArray *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C3A0;
  a2[1] = v2;
  return result;
}

void sub_18F76B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, ...)
{
  va_start(va, a15);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v16 + v19));

  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v7, (a1 + 1));
  v2 = *a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJEE11async_proxyEv_block_invoke;
  v5[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v6, v7);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v5];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);

  return v3;
}

void sub_18F76B318(_Unwind_Exception *a1)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v1 + 32);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v2 - 56);
  _Unwind_Resume(a1);
}

void sub_18F76B544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, ...)
{
  va_start(va, a15);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v16 + v19));

  _Unwind_Resume(a1);
}

void sub_18F76B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, ...)
{
  va_start(va, a15);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  std::recursive_mutex::unlock((v16 + v19));

  _Unwind_Resume(a1);
}

void sub_18F76BA14(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id getAVAudioFormatClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioFormatClass(void)::softClass;
  v7 = getAVAudioFormatClass(void)::softClass;
  if (!getAVAudioFormatClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL21getAVAudioFormatClassv_block_invoke_4337;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL21getAVAudioFormatClassv_block_invoke_4337(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F76BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVAudioChannelLayoutClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke_4324;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke_4324(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9373;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9373(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9782;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke_9782(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F76BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL28getAVAudioChannelLayoutClassv_block_invoke_4324(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioChannelLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioChannelLayoutClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioChannelLayoutClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "AVAudioChannelLayout"}];

    __break(1u);
  }
}

void AVFAudioLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_4331;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72C0E98;
    v5 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_5085;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72C0F68;
    v5 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke_9367;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72C19A0;
    v5 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke_4331(uint64_t a1)
{
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL21getAVAudioFormatClassv_block_invoke_4337(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFormat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFormatClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioFormatClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "AVAudioFormat"}];

    __break(1u);
  }
}

void sub_18F76C588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v17 + 8);

  a9.super_class = AUMessageChannel_XPC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *_ZNKSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorNS_5tupleIJEEEENS_9allocatorIS8_EEFvS3_OS5_EE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_1F032C4F0;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorNS_5tupleIJEEEENS_9allocatorIS8_EEFvS3_OS5_EED0Ev(uint64_t a1)
{

  JUMPOUT(0x193ADF220);
}

void sub_18F76C830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v12 = v10;

  caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void sub_18F76C9D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(uint64_t a1, void *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F032CD60;
  v5[1] = a1;
  v5[3] = v5;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](a1 + 8, v5);

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v5);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_18F76CE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_proxy(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v7, (a1 + 1));
  v2 = *a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbEE10sync_proxyEv_block_invoke;
  v5[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v6, v7);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v5];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v7);

  return v3;
}

void sub_18F76CF78(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::reply(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v5, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbEEEEEE_e20_v20__0__NSError_8B16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::__value_func[abi:ne200100](v4, v5);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v5);

  return v1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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