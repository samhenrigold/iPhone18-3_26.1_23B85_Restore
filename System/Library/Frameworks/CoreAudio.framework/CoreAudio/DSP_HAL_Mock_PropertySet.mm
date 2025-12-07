@interface DSP_HAL_Mock_PropertySet
- (BOOL)hasHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address;
- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withData:(id)data withQualifier:(id)qualifier error:(id *)error;
- (DSP_HAL_Mock_PropertySet)init;
- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withQualifierData:(id)data;
- (id)getHostedDSPPropertyInfoArray;
- (unsigned)getVoiceActivityState;
- (void)configureForFeatureFlag:(int)flag;
- (void)configureForProcessor:(function<void (unsigned)int;
- (void)dealloc;
- (void)setPropertyUpdater:(function<unsigned int (const AudioObjectPropertyAddress)&;
- (void)toggleVoiceActivityAndNotify;
@end

@implementation DSP_HAL_Mock_PropertySet

- (void)setPropertyUpdater:(function<unsigned int (const AudioObjectPropertyAddress)&
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::__value_func[abi:ne200100](v7, a3);
  p_propertyUpdater = &self->_propertyUpdater;
  if (&self->_propertyUpdater != v7)
  {
    v5 = v8;
    f = self->_propertyUpdater.__f_.__f_;
    if (v8 == v7)
    {
      if (f == p_propertyUpdater)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(*self->_propertyUpdater.__f_.__f_ + 24))(self->_propertyUpdater.__f_.__f_, v7);
        (*(*self->_propertyUpdater.__f_.__f_ + 32))(self->_propertyUpdater.__f_.__f_);
        self->_propertyUpdater.__f_.__f_ = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, &self->_propertyUpdater);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = self->_propertyUpdater.__f_.__f_;
      }

      self->_propertyUpdater.__f_.__f_ = p_propertyUpdater;
    }

    else if (f == p_propertyUpdater)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_propertyUpdater.__f_.__f_, v7);
      (*(*self->_propertyUpdater.__f_.__f_ + 32))(self->_propertyUpdater.__f_.__f_);
      self->_propertyUpdater.__f_.__f_ = v8;
      v8 = v7;
    }

    else
    {
      v8 = self->_propertyUpdater.__f_.__f_;
      self->_propertyUpdater.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v7);
}

- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withQualifierData:(id)data
{
  mElement = address.mElement;
  mSelector = address.mSelector;
  mScope = address.mScope;
  dataCopy = data;
  if (mSelector == 1983997011 && mScope == 1768845428)
  {
    if (!mElement)
    {
      propVoiceActivityState = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
      {
        v11 = atomic_load(v10 + 42);
      }

      else
      {
        v11 = 0;
      }

      *bytes = v11;
      v26 = CFDataCreate(0, bytes, 4);
      v17 = v26;
      v30 = v26;
      if (v26)
      {
        v27 = CFGetTypeID(v26);
        if (v27 != CFDataGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        CFRelease(v17);
      }

      goto LABEL_41;
    }

LABEL_16:
    if ([(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam]&& (mSelector == 1684500589 || mSelector == 707406378) && (mScope == 1768845428 || mScope == 707406378) && mElement + 1 <= 1)
    {
      if (dataCopy)
      {
        if ([dataCopy length] == 4)
        {
          *bytes = 0;
          [dataCopy getBytes:bytes length:4];
          if (*bytes == 1651797616)
          {
            propDSPGraphParam = [(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam];
            {
              v20 = atomic_load(v19 + 42);
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v29 = v21;
            AMCP::CF::create_data(&v30, &v29, 4);
LABEL_53:
            v17 = v30;
            AMCP::Log::Scope::get_os_log_t(v30);
            objc_claimAutoreleasedReturnValue();
            applesauce::CF::DataRef::~DataRef(&v30);
            goto LABEL_41;
          }
        }
      }
    }

    else if ([(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam]&& (mSelector == 1684498541 || mSelector == 707406378) && (mScope == 1768845428 || mScope == 707406378))
    {
      v17 = 0;
      if (!dataCopy || mElement + 1 > 1)
      {
        goto LABEL_41;
      }

      if ([dataCopy length] == 4)
      {
        *bytes = 0;
        [dataCopy getBytes:bytes length:4];
        if (*bytes == 1651797616)
        {
          propHasDSPGraphParam = [(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam];
          {
            v24 = atomic_load(v23 + 42);
          }

          else
          {
            v24 = 0;
          }

          v29 = v24;
          AMCP::CF::create_data(&v30, &v29, 4);
          goto LABEL_53;
        }
      }
    }

LABEL_40:
    v17 = 0;
    goto LABEL_41;
  }

  if (mSelector != 1685278561 || mScope != 1768845428 || mElement)
  {
    goto LABEL_16;
  }

  propAvailableOffloadsInput = [(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput];
  if (!propAvailableOffloadsInput)
  {
    goto LABEL_40;
  }

  if (!v13)
  {
    goto LABEL_40;
  }

  v14 = atomic_load(v13 + 21);
  if (!v14)
  {
    goto LABEL_40;
  }

  applesauce::CF::DictionaryRef::from_get(&v30, v14);
  v15 = v30;
  v16 = v15;
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:v16 format:200 options:0 error:0];

LABEL_41:

  return v17;
}

- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withData:(id)data withQualifier:(id)qualifier error:(id *)error
{
  mElement = address.mElement;
  v8 = *&address.mSelector;
  dataCopy = data;
  qualifierCopy = qualifier;
  if (![(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam]|| v8 != 1684500589 && v8 != 707406378 || HIDWORD(v8) != 1768845428 && HIDWORD(v8) != 707406378)
  {
    goto LABEL_14;
  }

  v12 = 0;
  if (!qualifierCopy || mElement + 1 > 1)
  {
    goto LABEL_15;
  }

  if ([qualifierCopy length] != 4 || (v18 = 0, objc_msgSend(qualifierCopy, "getBytes:length:", &v18, 4), !dataCopy) || v18 != 1651797616 || objc_msgSend(dataCopy, "length") != 4)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  propDSPGraphParam = [(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam];
  if (propDSPGraphParam)
  {
  }

  else
  {
    v14 = 0;
  }

  v17 = 0.0;
  [dataCopy getBytes:&v17 length:4];
  v16 = v17;
  if (v16 != COERCE_FLOAT(atomic_exchange(v14 + 42, LODWORD(v17))))
  {
    std::condition_variable::notify_one(v14 + 1);
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (BOOL)hasHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address
{
  result = 0;
  if (address.mSelector > 1685278560)
  {
    if (address.mSelector == 1685278561)
    {
      v8 = [(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput:*&address.mSelector];
    }

    else
    {
      if (address.mSelector != 1983997011)
      {
        return result;
      }

      v8 = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState:*&address.mSelector];
    }

    v10 = v8 == 0;
  }

  else
  {
    mElement = address.mElement;
    mScope = address.mScope;
    if (address.mSelector == 1684498541)
    {
      propHasDSPGraphParam = [(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam];
    }

    else
    {
      if (address.mSelector != 1684500589)
      {
        return result;
      }

      propHasDSPGraphParam = [(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam];
    }

    v10 = mScope != 1768845428 || mElement != 0 || propHasDSPGraphParam == 0;
  }

  return !v10;
}

- (id)getHostedDSPPropertyInfoArray
{
  v9 = 0;
  v10 = 0;
  v8 = &unk_1F598E988;
  memset(v11, 0, sizeof(v11));
  if ([(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState])
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>(&cf, "");
  }

  if ([(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput])
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>(&cf, "");
  }

  if ([(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam])
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>(&cf, "");
  }

  if ([(DSP_HAL_Mock_PropertySet *)self propHasDSPGraphParam])
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::DSPPropertyInfo,std::allocator<DSP_Host_Types::DSPPropertyInfo>,char const(&)[1],0>(&cf, "");
  }

  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v8[3](&v8, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v6, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v3 = v6;
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  v8 = &unk_1F598E988;
  cf = v11;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  v8 = &unk_1F598E9C8;
  if (v10 == 1 && v9)
  {
    CFRelease(v9);
  }

  return v4;
}

- (void)configureForFeatureFlag:(int)flag
{
  if ((~flag & 0x101) == 0 && ![(DSP_HAL_Mock_PropertySet *)self propAvailableOffloadsInput])
  {
    operator new();
  }

  if ((~flag & 0x201) == 0 && ![(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam])
  {
    operator new();
  }

  if ((~flag & 0x401) == 0 && ![(DSP_HAL_Mock_PropertySet *)self propDSPGraphParam])
  {
    operator new();
  }
}

- (unsigned)getVoiceActivityState
{
  propVoiceActivityState = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
  if (propVoiceActivityState)
  {
    if (propVoiceActivityState)
    {
      v3 = atomic_load(&propVoiceActivityState[21]);
      LODWORD(propVoiceActivityState) = v3 != 0;
    }
  }

  return propVoiceActivityState;
}

- (void)toggleVoiceActivityAndNotify
{
  v16 = *MEMORY[0x1E69E9840];
  propVoiceActivityState = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
  if (!propVoiceActivityState)
  {
    return;
  }

  if (!v4)
  {
    return;
  }

  v5 = v4;
  objc_msgSend_propertyUpdater(self);
  v6 = v15;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v14);
  if (!v6)
  {
    if ((std::chrono::steady_clock::now().__d_.__rep_ - *(v5 + 22)) / 1000000000.0 * 1000.0 <= *(v5 + 23))
    {
      return;
    }

    *(v5 + 22) = std::chrono::steady_clock::now();
    v10 = atomic_load(v5 + 42);
    if (atomic_exchange(v5 + 42, v10 == 0) == (v10 == 0))
    {
      return;
    }

LABEL_10:
    std::condition_variable::notify_one(v5 + 1);
    return;
  }

  objc_msgSend_propertyUpdater(self);
  v11 = 1983997011;
  v7 = atomic_load(v5 + 42);
  v12 = 0;
  v13 = v7 != 0;
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = (*(*v15 + 48))(v15, &v11, &v13) != 0;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v14);
  v9 = atomic_load(v5 + 42);
  if (v9 != v8 && atomic_exchange(v5 + 42, v8) != v8)
  {
    goto LABEL_10;
  }
}

- (void)configureForProcessor:(function<void (unsigned)int
{
  v8 = *MEMORY[0x1E69E9840];
  if (![(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState])
  {
    operator new();
  }

  if (a3->var0.var1)
  {
    propVoiceActivityState = [(DSP_HAL_Mock_PropertySet *)self propVoiceActivityState];
    if (propVoiceActivityState)
    {
    }

    else
    {
      v6 = 0;
    }

    std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:ne200100](v7, a3);
    DSP_TemplatedProperty<1983997011u,1768845428u,unsigned int>::setNotifyCallback(v6, v7);
    std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v7);
  }
}

- (void)dealloc
{
  propVoiceActivityState = self->_propVoiceActivityState;
  if (propVoiceActivityState)
  {
    (*(propVoiceActivityState->var0 + 1))(propVoiceActivityState, a2);
    self->_propVoiceActivityState = 0;
  }

  propAvailableOffloadsInput = self->_propAvailableOffloadsInput;
  if (propAvailableOffloadsInput)
  {
    (*(propAvailableOffloadsInput->var0 + 1))(propAvailableOffloadsInput, a2);
    self->_propAvailableOffloadsInput = 0;
  }

  propDSPGraphParam = self->_propDSPGraphParam;
  if (propDSPGraphParam)
  {
    (*(propDSPGraphParam->var0 + 1))(propDSPGraphParam, a2);
    self->_propDSPGraphParam = 0;
  }

  propHasDSPGraphParam = self->_propHasDSPGraphParam;
  if (propHasDSPGraphParam)
  {
    (*(propHasDSPGraphParam->var0 + 1))(propHasDSPGraphParam, a2);
    self->_propHasDSPGraphParam = 0;
  }

  v7.receiver = self;
  v7.super_class = DSP_HAL_Mock_PropertySet;
  [(DSP_HAL_Mock_PropertySet *)&v7 dealloc];
}

- (DSP_HAL_Mock_PropertySet)init
{
  v3.receiver = self;
  v3.super_class = DSP_HAL_Mock_PropertySet;
  result = [(DSP_HAL_Mock_PropertySet *)&v3 init];
  if (result)
  {
    *&result->_propDSPGraphParam = 0u;
    *&result->_propAvailableOffloadsInput = 0u;
  }

  return result;
}

@end