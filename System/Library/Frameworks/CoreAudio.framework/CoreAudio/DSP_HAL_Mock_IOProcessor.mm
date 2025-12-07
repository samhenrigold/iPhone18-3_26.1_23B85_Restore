@interface DSP_HAL_Mock_IOProcessor
- (BOOL)callAdaptHook:(const void *)hook;
- (BOOL)callNegotiateHook:(const void *)hook;
- (DSP_HAL_Mock_IOProcessor)init;
- (id)adaptToConfigurationChange:(id)change withCallbacks:(void *)callbacks error:(id *)error;
- (id)adaptToConfigurationChange:withCallbacks:error:;
- (id)basic_negotiateConfigurationChange:(void *)change error:(id *)error;
- (id)conference_negotiateConfigurationChange:(void *)change error:(id *)error;
- (id)negotiateConfigurationChange:(id)change error:(id *)error;
- (id)simulateConfigurationChange:(id)change error:(id *)error;
- (id)spatial_negotiateConfigurationChange:(void *)change error:(id *)error;
- (uint64_t)adaptToConfigurationChange:withCallbacks:error:;
- (void)adaptToConfigurationChange:withCallbacks:error:;
- (void)dealloc;
- (void)setDspCallbacks:(void *)callbacks;
- (void)setFeatureFlag:(int)flag;
- (void)setTestHookFetcher:(function<DSP_HAL_Mock_TestHooks)(;
@end

@implementation DSP_HAL_Mock_IOProcessor

- (void)setTestHookFetcher:(function<DSP_HAL_Mock_TestHooks)(
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::__value_func[abi:ne200100](v7, a3);
  p_testHookFetcher = &self->_testHookFetcher;
  if (&self->_testHookFetcher != v7)
  {
    v5 = v8;
    f = self->_testHookFetcher.__f_.__f_;
    if (v8 == v7)
    {
      if (f == p_testHookFetcher)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(*self->_testHookFetcher.__f_.__f_ + 24))(self->_testHookFetcher.__f_.__f_, v7);
        (*(*self->_testHookFetcher.__f_.__f_ + 32))(self->_testHookFetcher.__f_.__f_);
        self->_testHookFetcher.__f_.__f_ = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, &self->_testHookFetcher);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = self->_testHookFetcher.__f_.__f_;
      }

      self->_testHookFetcher.__f_.__f_ = p_testHookFetcher;
    }

    else if (f == p_testHookFetcher)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_testHookFetcher.__f_.__f_, v7);
      (*(*self->_testHookFetcher.__f_.__f_ + 32))(self->_testHookFetcher.__f_.__f_);
      self->_testHookFetcher.__f_.__f_ = v8;
      v8 = v7;
    }

    else
    {
      v8 = self->_testHookFetcher.__f_.__f_;
      self->_testHookFetcher.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v7);
}

- (id)adaptToConfigurationChange:(id)change withCallbacks:(void *)callbacks error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  featureFlag = [(DSP_HAL_Mock_IOProcessor *)self featureFlag];
  applesauce::CF::DictionaryRef::from_get(&cf, changeCopy);
  v9 = [(DSP_HAL_Mock_IOProcessor *)self callAdaptHook:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    if ((featureFlag & 0x81) != 0x81)
    {
      dspCallbacks = [(DSP_HAL_Mock_IOProcessor *)self dspCallbacks];
      if (dspCallbacks)
      {
        atomic_load(dspCallbacks + 316);
        [(DSP_HAL_Mock_IOProcessor *)self setDspCallbacks:0];
      }

      operator new();
    }

    if (error)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Force Fail Adapt" code:-1 userInfo:0];
LABEL_9:
      *error = v10;
    }
  }

  else if (error)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
    goto LABEL_9;
  }

  return 0;
}

- (uint64_t)adaptToConfigurationChange:withCallbacks:error:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z75-[DSP_HAL_Mock_IOProcessor adaptToConfigurationChange:withCallbacks:error:]E4$_13"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)adaptToConfigurationChange:withCallbacks:error:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1E12C1730);
}

- (id)adaptToConfigurationChange:withCallbacks:error:
{
  *a2 = &unk_1F59630C8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (id)negotiateConfigurationChange:(id)change error:(id *)error
{
  changeCopy = change;
  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(&v13);
  v13 = &unk_1F5985AA8;
  applesauce::CF::DictionaryRef::from_get(&cf, changeCopy);
  v13[4](&v13, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16[17] != 1 || (v16[16] & 1) == 0)
  {
    [(DSP_HAL_Mock_IOProcessor *)self setDspCallbacks:0];
  }

  if (!v18[5])
  {
    goto LABEL_9;
  }

  v7 = *(v18[3] + 28);
  if (v7 > 8)
  {
LABEL_12:
    v9 = [(DSP_HAL_Mock_IOProcessor *)self conference_negotiateConfigurationChange:&v13 error:error];
    goto LABEL_13;
  }

  v8 = 1 << v7;
  if ((v8 & 0x10A) == 0)
  {
    if ((v8 & 0x30) != 0)
    {
      v9 = [(DSP_HAL_Mock_IOProcessor *)self spatial_negotiateConfigurationChange:&v13 error:error];
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:
  v9 = [(DSP_HAL_Mock_IOProcessor *)self basic_negotiateConfigurationChange:&v13 error:error];
LABEL_13:
  v10 = v9;
  v13 = &unk_1F598DC40;
  v20 = &v19;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v20);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(v18);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v17);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v16);
  v13 = &unk_1F598DC90;
  if (v15 == 1 && v14)
  {
    CFRelease(v14);
  }

  return v10;
}

- (id)simulateConfigurationChange:(id)change error:(id *)error
{
  v4 = [(DSP_HAL_Mock_IOProcessor *)self negotiateConfigurationChange:change error:error];

  return v4;
}

- (id)basic_negotiateConfigurationChange:(void *)change error:(id *)error
{
  if (*(change + 41) == 1)
  {
    v7 = *(change + 40);
  }

  else
  {
    v7 = 0;
  }

  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(&cf, change);
  v8 = [(DSP_HAL_Mock_IOProcessor *)self callNegotiateHook:&cf];
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_21;
  }

  if ((v7 & 1) == 0)
  {
    if (error)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = *MEMORY[0x1E696A798];
      v14 = 0;
      goto LABEL_18;
    }

LABEL_19:
    v15 = objc_alloc_init(MEMORY[0x1E695DF18]);
    goto LABEL_21;
  }

  v9 = *(change + 84);
  v10 = *(change + 85);
  if (v9 == v10)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v11 = *v9;
    if (*(*v9 + 64) == 1 && *(v11 + 240) == 1)
    {
      break;
    }

    v9 += 2;
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  if (*(v11 + 664) == *(v11 + 672))
  {
LABEL_12:
    if (error)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = *MEMORY[0x1E696A798];
      v14 = 2003329396;
LABEL_18:
      *error = [v12 initWithDomain:v13 code:v14 userInfo:0];
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v32 = 0;
  v33 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0u;
  v31 = &unk_1F598EA30;
  v36 = 0;
  v37 = -1;
  DSP_Host_Types::FormatDescription::FormatDescription(&cf, (change + 120));
  if (DSP_Dictionariable::DictionarySet::has_all_values(__p, v30) && v25 == 1 && v28 == 1 && v26[17] == 1 && v27[4] == 1 && v26[16] & 1 | (v24[4] == 1))
  {
    std::allocate_shared[abi:ne200100]<DSP_Host_Types::FormatDescription,std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription&,0>(&Mutable, &cf);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v31[3](&v31, &Mutable);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v18, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v17 = v18;
  v15 = v17;
  if (v17)
  {
    CFRelease(v17);
  }

  cf = &unk_1F598DDD8;
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v27);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v26);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v24);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v23);
  cf = &unk_1F598DE18;
  if (v22 == 1 && v21)
  {
    CFRelease(v21);
  }

  v31 = &unk_1F598EA30;
  cf = &v35;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = &v34[1] + 8;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = v34;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  v31 = &unk_1F598EA70;
  if (v33 == 1 && v32)
  {
    CFRelease(v32);
  }

LABEL_21:

  return v15;
}

- (id)conference_negotiateConfigurationChange:(void *)change error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(change + 41) == 1)
  {
    v7 = *(change + 40);
  }

  else
  {
    v7 = 0;
  }

  if (*(change + 14))
  {
    v8 = *(*(change + 12) + 28) != 6;
  }

  else
  {
    v8 = 1;
  }

  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(cf, change);
  v9 = [(DSP_HAL_Mock_IOProcessor *)self callNegotiateHook:cf];
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v9)
  {
    if (v7)
    {
      v10 = (~[(DSP_HAL_Mock_IOProcessor *)self featureFlag]& 0x21) != 0;
      featureFlag = [(DSP_HAL_Mock_IOProcessor *)self featureFlag];
      v12 = v10 && v8;
      if ((featureFlag & 0x41) == 65 && !v8)
      {
        v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v13 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(featureFlag);
        }

        v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v16 = *v14;
          AMCP::Log::Scope::get_os_log_t(*v14);
          objc_claimAutoreleasedReturnValue();
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v16 = *v14;
          AMCP::Log::Scope::get_os_log_t(*v14);
          objc_claimAutoreleasedReturnValue();
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v35 = 0;
          v36 = 0;
          v37 = 47;
          do
          {
            v38 = &aLibraryCachesC_11[v35];
            if (v37 == 47)
            {
              v36 = &aLibraryCachesC_11[v35];
            }

            v37 = v38[1];
            if (!v38[1])
            {
              break;
            }
          }

          while (v35++ < 0xFFF);
          if (v36)
          {
            v40 = v36 + 1;
          }

          else
          {
            v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/DSP/Factories/DSP_HAL_MockFeature_Processors.mm";
          }

          *cf = 136315394;
          *&cf[4] = v40;
          v42 = 1024;
          v43 = 461;
          _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] MOCK WARNING: It is not normal for VAD to request format changes.", cf, 0x12u);
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = *(change + 84);
    v19 = *(change + 85);
    if (v18 != v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      while (1)
      {
        v23 = *v18;
        if (*(*v18 + 64) == 1 && *(v23 + 240) == 1)
        {
          if (v22 == 0.0 && v23[83] != v23[84])
          {
            v20 = *v18;
          }

          if (v23[89] != v23[90])
          {
            v21 = *v18;
          }

          if (v20)
          {
              ;
            }

            for (j = v20[83]; j != v20[84] && v22 == 0.0; j += 2)
            {
              v27 = *j;
              v28 = *(*j + 344);
              v29 = *(*j + 336);
              if (v29 != v28 && *(v27 + 160) == 1 && *(v27 + 44) == 1 && *(v27 + 40) == 1)
              {
                if (!v12)
                {
                  v22 = *(v27 + 152);
                  break;
                }

                while (1)
                {
                  if (*(v29 + 48) == 1 && *(v29 + 76) == 1 && *(v29 + 124) == 1 && *(v29 + 97) == 1 && *(v29 + 120) == 1)
                  {
                    if (*(v29 + 96) & 1 | (*(v29 + 72) == 1))
                    {
                      v22 = *(v29 + 40);
                      if (v22 != *(v27 + 152))
                      {
                        break;
                      }
                    }
                  }

                  v29 += 152;
                  if (v29 == v28)
                  {
                    v22 = *(v27 + 152);
                    break;
                  }
                }
              }
            }
          }

          if (v21)
          {
            break;
          }
        }

LABEL_71:
        v18 += 16;
        if (v18 == v19)
        {
          goto LABEL_72;
        }
      }

      if (*(v21 + 64))
      {
        v30 = v21;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30[89];
      v32 = v30[90];
      while (v31 != v32)
      {
        if (*(*v31 + 44) != 1 || *(*v31 + 40) != 2)
        {
          v21 = 0;
          goto LABEL_71;
        }

        v31 += 16;
      }

      if (v22 == 0.0)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v22 != 0.0)
      {
        std::allocate_shared[abi:ne200100]<DSP_Host_Types::DeviceConfiguration,std::allocator<DSP_Host_Types::DeviceConfiguration>,char const(&)[1],0>(cf, "");
      }
    }

    if (error)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      *error = [v33 initWithDomain:*MEMORY[0x1E696A798] code:2003329396 userInfo:0];
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF18]);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)spatial_negotiateConfigurationChange:(void *)change error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  if (*(change + 41) == 1)
  {
    v7 = *(change + 40);
  }

  else
  {
    v7 = 0;
  }

  objc_msgSend_testHookFetcher(self, a2);
  if (!*&v25[0])
  {
    v47[0] = 0;
    goto LABEL_14;
  }

  objc_msgSend_testHookFetcher(self);
  if (!v30)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v30 + 48))(&cf);
  if (v34)
  {
    if (v34 == &cf)
    {
      v47[0] = v46;
      (*(*v34 + 3))();
      goto LABEL_13;
    }

    v8 = &v34;
    v47[0] = v34;
  }

  else
  {
    v8 = v47;
  }

  *v8 = 0;
LABEL_13:
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](&__p);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v41);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&v37);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](&v35);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](&cf);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](&Mutable);
LABEL_14:
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](&v22);
  if (v47[0])
  {
    DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator applesauce::CF::DictionaryRef(&cf, change);
    if (!v47[0])
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = (*(*v47[0] + 48))(v47[0], &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((v9 & 1) == 0)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"MockDSP Failure" code:-1 userInfo:0];
        *error = v13 = 0;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_70;
    }
  }

  for (i = *(change + 84); ; i += 2)
  {
    if (i == *(change + 85))
    {
      if (error)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        *error = [v12 initWithDomain:*MEMORY[0x1E696A798] code:2003329396 userInfo:0];
      }

      goto LABEL_26;
    }

    v11 = *i;
    if ((*(*i + 64) & 1) != 0 && *(v11 + 240) == 1)
    {
      break;
    }
  }

  if (*(v11 + 688) == *(v11 + 696))
  {
    if (error)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      *error = [v18 initWithDomain:*MEMORY[0x1E696A798] code:2003329396 userInfo:0];
    }

LABEL_26:
    v13 = objc_alloc_init(MEMORY[0x1E695DF18]);
    goto LABEL_70;
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_1F598EA30;
  memset(v25, 0, sizeof(v25));
  v26 = 0u;
  v27 = 0;
  v28 = -1;
  DSP_Host_Types::FormatDescription::FormatDescription(&cf, (change + 272));
  if (v7)
  {
    if (*(change + 516) == 1)
    {
      v14 = *(change + 128);
      if (v14)
      {
        if (v14 != 0x10000)
        {
          v16 = *(change + 128);
          goto LABEL_50;
        }

        if (*(change + 540) == 1)
        {
          v15 = *(change + 134);
          if (v15)
          {
            v16 = 0;
            do
            {
              v16 += v15 & 1;
              v17 = v15 >= 2;
              v15 >>= 1;
            }

            while (v17);
          }

          else
          {
            v16 = 0;
          }

LABEL_50:
          v38 = v16;
          v39 = 1;
        }
      }

      else if (*(change + 564) == 1)
      {
        v16 = *(change + 140);
        goto LABEL_50;
      }
    }

    if (DSP_Dictionariable::DictionarySet::has_all_values(__p, v45) && v39 == 1 && v43 == 1 && v41[1] == 1 && v42[4] == 1 && v41[0] & 1 | (v38 == 1))
    {
      std::allocate_shared[abi:ne200100]<DSP_Host_Types::FormatDescription,std::allocator<DSP_Host_Types::FormatDescription>,DSP_Host_Types::FormatDescription&,0>(&Mutable, &cf);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v22[3](&v22, &Mutable);
    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v21, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v19 = v21;
    v13 = v19;
    if (v19)
    {
LABEL_61:
      CFRelease(v19);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v22[3](&v22, &Mutable);
    mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v21, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v19 = v21;
    v13 = v19;
    if (v19)
    {
      goto LABEL_61;
    }
  }

  cf = &unk_1F598DDD8;
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v42);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v40);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v36);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v34);
  cf = &unk_1F598DE18;
  if (v33 == 1 && v32)
  {
    CFRelease(v32);
  }

  v22 = &unk_1F598EA30;
  cf = &v26;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = &v25[1] + 8;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  cf = v25;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&cf);
  v22 = &unk_1F598EA70;
  if (v24 == 1 && v23)
  {
    CFRelease(v23);
  }

LABEL_70:
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v46);

  return v13;
}

- (void)setDspCallbacks:(void *)callbacks
{
  dspCallbacks = self->_dspCallbacks;
  if (dspCallbacks)
  {
    (*(*dspCallbacks + 8))(dspCallbacks, a2);
    self->_dspCallbacks = 0;
  }

  if (callbacks)
  {
    self->_dspCallbacks = callbacks;
  }
}

- (BOOL)callAdaptHook:(const void *)hook
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_testHookFetcher(self, a2);
  if (!v17)
  {
    std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v16);
    return 1;
  }

  objc_msgSend_testHookFetcher(self);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v10);
  v5 = v12;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v16);
  if (!v5)
  {
    return 1;
  }

  objc_msgSend_testHookFetcher(self);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v17 + 48))(v10);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v12 + 48))(v12, hook);
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v16);
  return v6;
}

- (void)setFeatureFlag:(int)flag
{
  v3 = *&flag;
  self->_featureFlag = flag;
  processorProperties = [(DSP_HAL_Mock_IOProcessor *)self processorProperties];

  if (processorProperties)
  {
    processorProperties2 = [(DSP_HAL_Mock_IOProcessor *)self processorProperties];
    [processorProperties2 configureForFeatureFlag:v3];
  }
}

- (BOOL)callNegotiateHook:(const void *)hook
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_testHookFetcher(self, a2);
  if (!v17)
  {
    std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v16);
    return 1;
  }

  objc_msgSend_testHookFetcher(self);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v10);
  v5 = v11;
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v16);
  if (!v5)
  {
    return 1;
  }

  objc_msgSend_testHookFetcher(self);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v17 + 48))(v10);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = (*(*v11 + 48))(v11, hook);
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v16);
  return v6;
}

- (void)dealloc
{
  processorProperties = self->_processorProperties;
  self->_processorProperties = 0;

  dspCallbacks = self->_dspCallbacks;
  if (dspCallbacks)
  {
    (*(*dspCallbacks + 8))(dspCallbacks);
    self->_dspCallbacks = 0;
  }

  hostCallbacks = self->_hostCallbacks;
  self->_hostCallbacks = 0;

  v6.receiver = self;
  v6.super_class = DSP_HAL_Mock_IOProcessor;
  [(DSP_HAL_Mock_IOProcessor *)&v6 dealloc];
}

- (DSP_HAL_Mock_IOProcessor)init
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = DSP_HAL_Mock_IOProcessor;
  v2 = [(DSP_HAL_Mock_IOProcessor *)&v11 init];
  v3 = v2;
  v4 = v2;
  if (v2)
  {
    hostCallbacks = v2->_hostCallbacks;
    v2->_dspCallbacks = 0;
    v2->_hostCallbacks = 0;

    processorProperties = v4->_processorProperties;
    v4->_processorProperties = 0;

    v4->_featureFlag = 97;
    f = v4->_testHookFetcher.__f_.__f_;
    v4->_testHookFetcher.__f_.__f_ = 0;
    if (f == &v3->_testHookFetcher)
    {
      (*(*f->__f_.__buf_.__data + 32))(f);
    }

    else if (f)
    {
      (*(*f->__f_.__buf_.__data + 40))(f);
    }

    v8 = objc_alloc_init(DSP_HAL_Mock_PropertySet);
    [(DSP_HAL_Mock_IOProcessor *)v4 setProcessorProperties:v8];

    processorProperties = [(DSP_HAL_Mock_IOProcessor *)v4 processorProperties];
    v13 = 0;
    [processorProperties configureForProcessor:v12];
    std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](v12);
  }

  return v4;
}

@end