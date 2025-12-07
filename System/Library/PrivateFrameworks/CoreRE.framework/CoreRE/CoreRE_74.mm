__n128 std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCA98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

_anonymous_namespace_ *std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = v2 = re::REPHASESpatialMixerDefinitionCache::createBaseSpatialMixerDefinition(*(a1 + 8), *(**(a1 + 16) + 336), *(**(a1 + 16) + 344));
  [(_anonymous_namespace_ *)v2 setSourceDirectivityModelParameters:v3];

  v5 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = **(a1 + 24);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition created and cached a definition with focus %f.", &v8, 0xCu);
  }

  return v2;
}

uint64_t std::__function::__func<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0,std::allocator<re::REPHASESpatialMixerDefinitionCache::getBeamSpatialMixerDefinition(double,std::shared_ptr<re::audio::REPHASESoundPrepareState>)::$_0>,PHASESpatialMixerDefinition * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<re::audio::REPHASEEntity>::shared_ptr[abi:ne200100]<re::audio::REPHASEEntity,0>(void *a1, void *a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1E2160088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<re::audio::REPHASEEntity>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id **std::unique_ptr<re::audio::REPHASEEntity>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    re::audio::REPHASEEntity::~REPHASEEntity(v2);
    MEMORY[0x1E6906520]();
  }

  return a1;
}

void std::__shared_ptr_pointer<re::audio::REPHASEEntity *,std::shared_ptr<re::audio::REPHASEEntity>::__shared_ptr_default_delete<re::audio::REPHASEEntity,re::audio::REPHASEEntity>,std::allocator<re::audio::REPHASEEntity>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

id *std::__shared_ptr_pointer<re::audio::REPHASEEntity *,std::shared_ptr<re::audio::REPHASEEntity>::__shared_ptr_default_delete<re::audio::REPHASEEntity,re::audio::REPHASEEntity>,std::allocator<re::audio::REPHASEEntity>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    re::audio::REPHASEEntity::~REPHASEEntity(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<re::audio::REPHASEEntity *,std::shared_ptr<re::audio::REPHASEEntity>::__shared_ptr_default_delete<re::audio::REPHASEEntity,re::audio::REPHASEEntity>,std::allocator<re::audio::REPHASEEntity>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void re::audio::REPHASEEntity::~REPHASEEntity(id *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 28) <= 0)
  {
    v4 = [this[2] parent];
    [v4 removeChild:this[2]];

    v5 = [this[3] parent];
    [v5 removeChild:this[3]];
  }

  else
  {
    v2 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 28);
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "REPHASEEntity: Cannot destroy source and occluder from the engine. soundCount(%d) is greater than 0", v7, 8u);
    }
  }

  v6 = this[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1E21602B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t re::AudioManager_PHASE_State_Ready::handleStateChangeEvent(re *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 9)
  {
    if (!a2)
    {
      return 0x100000000;
    }
  }

  else
  {
    v4 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 8))(v12, a1);
      v5 = v13;
      v6 = v12[0];
      re::nameForAudioManagerStateMachineEvent(a2, __p);
      v7 = v12;
      if (v5 < 0)
      {
        v7 = v6;
      }

      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315394;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] [EngineStateChange] Invalid state change event. Current state : %s, event '%s'.", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  return 0;
}

void sub_1E2160428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E2160668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1E216086C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = REAudioManagerNotificationListener;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1E2160D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 80) = &a17;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));

  _Unwind_Resume(a1);
}

void sub_1E2161370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 80) = &a17;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));

  _Unwind_Resume(a1);
}

void sub_1E21619D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 80) = &a17;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v18 - 80));

  _Unwind_Resume(a1);
}

void *re::audio::allocInfo_AudioSourceDirectivityConfiguration(re::audio *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_121, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_121))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D158, "AudioSourceDirectivityConfiguration");
    __cxa_guard_release(&_MergedGlobals_121);
  }

  return &unk_1EE19D158;
}

void re::audio::initInfo_AudioSourceDirectivityConfiguration(re::audio *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xE5B34C3C52C3FC9ELL;
  v24[1] = "AudioSourceDirectivityConfiguration";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE19D130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D130))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "directivityFocus";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x400000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19D138 = v10;
    v11 = re::introspectionAllocator();
    v13 = introspect_REAudioSourceDirectivityMode(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "sourceDirectivityMode";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 2;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19D140 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "sphericalCapDiameter";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19D148 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "sphericalCapOpeningAngle";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19D150 = v22;
    __cxa_guard_release(&qword_1EE19D130);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE19D138;
  *(this + 9) = re::internal::defaultConstruct<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 13) = re::internal::defaultConstructV2<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 14) = re::internal::defaultDestructV2<re::audio::AudioSourceDirectivityConfiguration>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

double re::internal::defaultConstruct<re::audio::AudioSourceDirectivityConfiguration>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  result = 6.14672757e-10;
  *(a3 + 4) = 0x3E051EB800000000;
  *(a3 + 12) = 1106247680;
  return result;
}

double re::internal::defaultConstructV2<re::audio::AudioSourceDirectivityConfiguration>(uint64_t a1)
{
  *a1 = 1;
  result = 6.14672757e-10;
  *(a1 + 4) = 0x3E051EB800000000;
  *(a1 + 12) = 1106247680;
  return result;
}

void ___ZN2re29AudioManagerTelemetryReporterC2Ev_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (NSClassFromString(&cfstr_Xctest.isa) || (LODWORD(v34) = 0, v32 = 0u, v33 = 0u, __s2 = 0u, v35 = xmmword_1E30645F0, v36 = xmmword_1E3064600, v37 = xmmword_1E3064610, !memcmp((v1 + 88), &__s2, 0x68uLL)))
  {
    v2 = 0;
  }

  else
  {
    if (*(v1 + 132))
    {
      v4 = *(v1 + 144);
      v3 = *(v1 + 152);
      v5 = *(v1 + 160);
    }

    else
    {
      v5 = -100.0;
      v3 = -100.0;
      v4 = -100.0;
    }

    if (*(v1 + 136))
    {
      v6 = *(v1 + 168);
      v7 = *(v1 + 152);
      v8 = *(v1 + 184);
    }

    else
    {
      v8 = -100.0;
      v7 = -100.0;
      v6 = -100.0;
    }

    v30[0] = @"play";
    *&__s2 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 88)];
    v30[1] = @"maxConcurrentPlayCount";
    v29 = __s2;
    *(&__s2 + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 92)];
    v30[2] = @"prepare";
    v28 = *(&__s2 + 1);
    *&v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 100)];
    v30[3] = @"maxConcurrentPrepareCount";
    v27 = v32;
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 96)];
    *(&v32 + 1) = v26;
    v30[4] = @"channelComponent";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 104)];
    *&v33 = v25;
    v30[5] = @"ambientComponent";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 112)];
    *(&v33 + 1) = v24;
    v30[6] = @"spatialComponent";
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 108)];
    v34 = v23;
    v30[7] = @"spatialComponentOmniCount";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 116)];
    *&v35 = v22;
    v30[8] = @"spatialComponentBeamDirectivityCount";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 120)];
    *(&v35 + 1) = v21;
    v30[9] = @"spatialComponentSphericalApproximationDirectivityCount";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 124)];
    *&v36 = v20;
    v30[10] = @"calibrationModeNoneCount";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 128)];
    *(&v36 + 1) = v19;
    v30[11] = @"calibrationModeRelativeSplCount";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 132)];
    *&v37 = v18;
    v30[12] = @"calibrationModeAbsoluteSplCount";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(v1 + 136)];
    *(&v37 + 1) = v17;
    v30[13] = @"calibrationModeRelativeSplMinValue";
    v16 = [MEMORY[0x1E696AB90] numberWithDouble:v4];
    v38 = v16;
    v30[14] = @"calibrationModeRelativeSplAverage";
    v9 = [MEMORY[0x1E696AB90] numberWithDouble:v3];
    v39 = v9;
    v30[15] = @"calibrationModeRelativeSplMaxValue";
    v10 = [MEMORY[0x1E696AB90] numberWithDouble:v5];
    v40 = v10;
    v30[16] = @"calibrationModeAbsoluteSplMinValue";
    v11 = [MEMORY[0x1E696AB90] numberWithDouble:v6];
    v41 = v11;
    v30[17] = @"calibrationModeAbsoluteSplAverage";
    v12 = [MEMORY[0x1E696AB90] numberWithDouble:v7];
    v42 = v12;
    v30[18] = @"calibrationModeAbsoluteSplMaxValue";
    v13 = [MEMORY[0x1E696AB90] numberWithDouble:v8];
    v43 = v13;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&__s2 forKeys:v30 count:19];
  }

  *(v1 + 136) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 144) = xmmword_1E30645F0;
  *(v1 + 160) = xmmword_1E3064600;
  *(v1 + 176) = xmmword_1E3064610;
  v14 = v2;
  v15 = v14;
  if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    re::AudioTelemetryReporter::sendTelemetryReport(*(re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 32), @"system_usage", v14);
  }
}

void re::AudioManagerTelemetryReporter::initializeTimerWith(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  block[3] = &unk_1E871BAC8;
  v10 = a1;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  os_unfair_lock_lock((v2 + 80));
  v3 = *(v2 + 32);
  v4 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v6[3] = &unk_1E871BAC8;
  v5 = *(a1 + 48);
  v6[5] = v2;
  v6[6] = v5;
  v6[4] = *(a1 + 32);
  re::AudioTelemetryReporter::initializeTimerWith(v3, v4, v6, 600.0);
  objc_claimAutoreleasedReturnValue();
  memset(v7, 0, 24);
  v7[7] = v7;
  v8 = 0;
  operator new();
}

void sub_1E2162DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v21 - 80) = v20;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  operator delete(v17);
  *(v21 - 80) = v19;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));
  *(v21 - 80) = &a16;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100]((v21 - 80));

  os_unfair_lock_unlock(v18 + 20);
  _Unwind_Resume(a1);
}

void ___ZN2re29AudioManagerTelemetryReporter19initializeTimerWithEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x4012000000;
  v5[3] = __Block_byref_object_copy__8;
  v5[4] = __Block_byref_object_dispose__8;
  v5[5] = 512;
  v6 = 0;
  v7 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = -1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
  block[3] = &unk_1E871BC18;
  block[5] = v5;
  block[6] = v1;
  block[4] = v4;
  dispatch_async(v2, block);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v5, 8);
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a2[3] = 0uLL;
  a1[3] = result;
  return result;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
    os_unfair_lock_lock((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 80));
    if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter && std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 40), v2))
    {
      os_unfair_lock_unlock(v3 + 20);
      *(*(*(a1 + 32) + 8) + 24) = re::AudioManager_PHASE_Async::getReverbPreset(*(*(a1 + 48) + 648));
    }

    else
    {
      os_unfair_lock_unlock(v3 + 20);
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2;
  v4[3] = &unk_1E871BBF0;
  v5 = *(a1 + 32);
  dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, v4);
}

void ___ZN2re29AudioManagerTelemetryReporter22collectImmersionReportEPKNS_18AudioManager_PHASEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(re *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 4) + 8) + 24);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[AudioManagerTelemetryReporter::immersion] - Report: reverbPreset: %lld", &v8, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 4) + 8) + 24)];
  [v4 setObject:v5 forKey:@"reverbPreset"];

  objc_storeStrong((*(*(a1 + 5) + 8) + 56), v4);
  v6 = *(*(a1 + 5) + 8);
  v7 = *(v6 + 48);
  *(v6 + 48) = @"immersion";

  if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    re::AudioTelemetryReporter::sendTelemetryReport(*(re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 32), *(*(*(a1 + 5) + 8) + 48), *(*(*(a1 + 5) + 8) + 56));
  }
}

void ___ZN2re29AudioManagerTelemetryReporter23mediaServicesResetEventEv_block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = mach_absolute_time();
  v3 = *(v1 + 16);
  v4 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&v13))
    {
      v7 = NAN;
      goto LABEL_6;
    }

    LODWORD(v5) = v13.numer;
    LODWORD(v6) = v13.denom;
    v4 = v5 / v6;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v4;
  }

  v7 = v4 * (v2 - v3);
LABEL_6:
  v8 = mach_absolute_time();
  v9 = v7 / 1000000.0;
  *&v9 = v7 / 1000000.0;
  *v1 = v8;
  v14[0] = @"timeSinceLastReset";
  v10 = [MEMORY[0x1E696AB90] numberWithFloat:v9];
  v14[1] = @"resetType";
  v15[0] = v10;
  if (*(v1 + 8))
  {
    v11 = @"mediaServicesReset";
  }

  else
  {
    v11 = @"deviceReboot";
  }

  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  *(v1 + 8) = 1;
  re::AudioTelemetryReporter::sendTelemetryReport(*(v1 + 32), @"media_service_reset", v12);
}

void ___ZN2re29AudioManagerTelemetryReporter32spatialSceneChangeTelemetryEventENS_30SpatialSceneClassificationTypeES1__block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  v4 = *(v2 + 16);
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&info))
    {
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = info.numer;
    LODWORD(v7) = info.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v3 - v4);
LABEL_6:
  *(v2 + 16) = v3;
  v22[0] = @"oldSpatialScene";
  v9 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(&info, off_1E871BD88[*(a1 + 40)]);
  if (v21 >= 0)
  {
    p_info = &info;
  }

  else
  {
    p_info = info;
  }

  v11 = [v9 stringWithUTF8String:p_info];
  v23[0] = v11;
  v22[1] = @"newSpatialScene";
  v12 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(__p, off_1E871BD88[*(a1 + 41)]);
  if (v19 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = [v12 stringWithUTF8String:v13];
  v15 = v8 / 1000000.0;
  *&v15 = v8 / 1000000.0;
  v23[1] = v14;
  v22[2] = @"sinceLastChange";
  v16 = [MEMORY[0x1E696AB90] numberWithFloat:v15];
  v23[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(*&info);
  }

  re::AudioTelemetryReporter::sendTelemetryReport(*(v2 + 32), @"location", v17);
}

void sub_1E216359C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void re::AudioManagerTelemetryReporter::roomChangeTelemetryEvent(re::AudioManagerTelemetryReporter *this, NSUUID *a2, NSUUID *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(NSUUID *)v5 copy];
  v8 = [(NSUUID *)v6 copy];
  v9 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter24roomChangeTelemetryEventEP6NSUUIDS2__block_invoke;
  block[3] = &unk_1E871BD20;
  v14 = v8;
  v15 = this;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void ___ZN2re29AudioManagerTelemetryReporter24roomChangeTelemetryEventEP6NSUUIDS2__block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = mach_absolute_time();
  v4 = *(v2 + 24);
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    if (mach_timebase_info(&v18))
    {
      v8 = NAN;
      goto LABEL_6;
    }

    LODWORD(v6) = v18.numer;
    LODWORD(v7) = v18.denom;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v3 - v4);
LABEL_6:
  *(v2 + 24) = v3;
  v19[0] = @"oldRoomIdentifier";
  v9 = [*(a1 + 32) UUIDString];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"null";
  }

  v20[0] = v11;
  v19[1] = @"newRoomIdentifier";
  v12 = [*(a1 + 40) UUIDString];
  v13 = v12;
  v14 = v8 / 1000000.0;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = @"null";
  }

  v20[1] = v15;
  v19[2] = @"sinceLastChange";
  *&v14 = v8 / 1000000.0;
  v16 = [MEMORY[0x1E696AB90] numberWithFloat:v14];
  v20[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  re::AudioTelemetryReporter::sendTelemetryReport(*(v2 + 32), @"location", v17);
}

uint64_t re::AudioManagerTelemetryReporter::getInstance(re::AudioManagerTelemetryReporter *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    re::AudioManagerTelemetryReporter::getInstance(void)::onceQueue = dispatch_queue_create("AudioTelemetry", v4);

    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  }

  objc_storeStrong(&re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, *(v1 + 63));
  result = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  if (!re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    dispatch_sync(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, &__block_literal_global_9);
    return re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  }

  return result;
}

re *___ZN2re29AudioManagerTelemetryReporter11getInstanceEv_block_invoke(re *result)
{
  if (!re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    v1 = re::globalAllocators(result);
    v2 = (*(*v1[2] + 32))(v1[2], 192, 8);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 72) = 1065353216;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0;
    *(v2 + 144) = xmmword_1E30645F0;
    *(v2 + 160) = xmmword_1E3064600;
    *(v2 + 176) = xmmword_1E3064610;
    v3 = re::globalAllocators(v2);
    v4 = (*(*v3[2] + 32))(v3[2], 56, 8);
    v5 = re::AudioTelemetryReporter::AudioTelemetryReporter(v4);
    *(v2 + 32) = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZN2re29AudioManagerTelemetryReporterC2Ev_block_invoke;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = v2;
    v6 = re::AudioTelemetryReporter::initializeTimerWith(v5, re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, v7, 300.0);
    result = mach_absolute_time();
    *v2 = result;
    re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter = v2;
  }

  return result;
}

void re::AudioManagerTelemetryReporter::stopAndCleanupReporter(re::AudioManagerTelemetryReporter *this, const re::AudioManager_PHASE *a2)
{
  if (re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re29AudioManagerTelemetryReporter22stopAndCleanupReporterEPKNS_18AudioManager_PHASEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, block);
  }
}

void ___ZN2re29AudioManagerTelemetryReporter22stopAndCleanupReporterEPKNS_18AudioManager_PHASEE_block_invoke(uint64_t a1)
{
  v1 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  if (!re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
  {
    return;
  }

  os_unfair_lock_lock((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 80));
  v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
  v4 = std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>((re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 40), *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v7 = v4[3];
    v8 = v4[4];
    v6 = (v4 + 3);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        re::AudioTelemetryReporter::stopTimer(*(re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter + 32), v9);

        ++v7;
      }

      while (v7 != v8);
      v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
    }

    v10 = v3[6];
    v11 = *v5;
    v12 = v5[1];
    v13 = vcnt_s8(v10);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v10)
      {
        v12 %= *&v10;
      }
    }

    else
    {
      v12 &= *&v10 - 1;
    }

    v14 = v3[5];
    v15 = *(v14 + 8 * v12);
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15 != v5);
    if (v16 == v3 + 7)
    {
      goto LABEL_23;
    }

    v17 = v16[1];
    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v10)
      {
        v17 %= *&v10;
      }
    }

    else
    {
      v17 &= *&v10 - 1;
    }

    if (v17 != v12)
    {
LABEL_23:
      if (v11)
      {
        v18 = *(v11 + 8);
        if (v13.u32[0] > 1uLL)
        {
          v19 = *(v11 + 8);
          if (v18 >= *&v10)
          {
            v19 = v18 % *&v10;
          }
        }

        else
        {
          v19 = v18 & (*&v10 - 1);
        }

        if (v19 == v12)
        {
          goto LABEL_27;
        }
      }

      *(v14 + 8 * v12) = 0;
      v11 = *v5;
    }

    if (!v11)
    {
LABEL_33:
      *v16 = v11;
      *v5 = 0;
      --v3[8];
      v24 = v6;
      std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v24);
      operator delete(v5);
      v3 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
      goto LABEL_34;
    }

    v18 = *(v11 + 8);
LABEL_27:
    if (v13.u32[0] > 1uLL)
    {
      if (v18 >= *&v10)
      {
        v18 %= *&v10;
      }
    }

    else
    {
      v18 &= *&v10 - 1;
    }

    if (v18 != v12)
    {
      *(v3[5] + 8 * v18) = v16;
      v11 = *v5;
    }

    goto LABEL_33;
  }

LABEL_34:
  v20 = v3[8];
  os_unfair_lock_unlock(v1 + 20);
  if (!v20)
  {
    v22 = re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter;
    if (re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter)
    {
      v23 = re::globalAllocators(v21)[2];
      re::internal::destroyPersistent<re::AudioTelemetryReporter>("~AudioManagerTelemetryReporter", 37, *(v22 + 32));
      *(v22 + 32) = 0;
      std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::~__hash_table(v22 + 40);
      (*(*v23 + 40))(v23, v22);
    }

    re::AudioManagerTelemetryReporter::sharedAudioManagerTelemetryReporter = 0;
  }
}

void re::AudioManagerTelemetryReporter::addPreparedSourceState(uint64_t a1, uint64_t *a2)
{
  v3 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter22addPreparedSourceStateENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEE_block_invoke;
  block[3] = &__block_descriptor_56_ea8_40c64_ZTSKNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE_e5_v8__0l;
  v5 = *a2;
  v4 = a2[1];
  block[4] = a1;
  block[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, block);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter22addPreparedSourceStateENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  ++v1[25];
  v3 = *(v2 + 100);
  if (v3 == 2)
  {
    ++v1[28];
  }

  else if (v3 == 1)
  {
    ++v1[26];
  }

  else if (!*(v2 + 100))
  {
    ++v1[27];
    v4 = *(v2 + 304);
    switch(v4)
    {
      case 3:
        ++v1[31];
        break;
      case 1:
        ++v1[30];
        break;
      case 0:
        ++v1[29];
        break;
    }
  }

  return result;
}

uint64_t __copy_helper_block_ea8_40c64_ZTSKNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c64_ZTSKNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter31updateCalibrationModeStatisticsE22REAudioCalibrationModed_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  switch(v2)
  {
    case 2:
      v7 = *(v1 + 168);
      v8 = *(v1 + 136) + 1;
      *(v1 + 176) = *(v1 + 176) + (*(result + 40) - *(v1 + 176)) / v8;
      *(v1 + 136) = v8;
      v9 = *(result + 40);
      if (v9 >= v7)
      {
        v9 = v7;
      }

      *(v1 + 168) = v9;
      v10 = *(result + 40);
      if (v10 <= *(v1 + 184))
      {
        v10 = *(v1 + 184);
      }

      *(v1 + 184) = v10;
      break;
    case 1:
      v3 = *(v1 + 144);
      v4 = *(v1 + 132) + 1;
      *(v1 + 152) = *(v1 + 152) + (*(result + 40) - *(v1 + 152)) / v4;
      *(v1 + 132) = v4;
      v5 = *(result + 40);
      if (v5 >= v3)
      {
        v5 = v3;
      }

      *(v1 + 144) = v5;
      v6 = *(result + 40);
      if (v6 <= *(v1 + 160))
      {
        v6 = *(v1 + 160);
      }

      *(v1 + 160) = v6;
      break;
    case 0:
      ++*(v1 + 128);
      break;
  }

  return result;
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter25updateConcurrentPlayCountEj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v2 <= *(v1 + 92))
  {
    v2 = *(v1 + 92);
  }

  *(v1 + 92) = v2;
  return result;
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter28updateConcurrentPrepareCountEj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v2 <= *(v1 + 96))
  {
    v2 = *(v1 + 96);
  }

  *(v1 + 96) = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
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

void *std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void REAudioServicesNotificationCallbackRegistry::registerCallback(float *a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v6 = _Block_copy(v5);
  v9 = a2;
  v7 = std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<REAudioServicesNotificationCallbackConfiguration,std::piecewise_construct_t const&,std::tuple<REAudioServicesNotificationCallbackConfiguration const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v9);
  v8 = v7[4];
  v7[4] = v6;
}

uint64_t ***REAudioServicesNotificationCallbackRegistry::unregisterCallback(REAudioServicesNotificationCallbackRegistry *this, const REAudioServicesNotificationCallbackConfiguration *a2)
{
  result = std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::find<REAudioServicesNotificationCallbackConfiguration>(this, &a2->var0);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(this, result, v4);
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:ne200100](v4);
  }

  return result;
}

void REAudioServicesNotificationCallbackRegistry::getCallbacksForType(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    v6 = *(i + 17);
    v7 = _Block_copy(i[4]);
    v8 = v7;
    if (v6 == a2)
    {
      v9 = [v7 copy];
      v11 = a3[1];
      v10 = a3[2];
      if (v11 >= v10)
      {
        v13 = (v11 - *a3) >> 3;
        if ((v13 + 1) >> 61)
        {
          std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v10 - *a3;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        v21 = a3;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PHASESource * {__strong}>>(a3, v16);
        }

        v17 = 0;
        v18 = (8 * v13);
        v20 = 0;
        *v18 = v9;
        v19 = 8 * v13 + 8;
        std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__swap_out_circular_buffer(a3, &v17);
        v12 = a3[1];
        std::__split_buffer<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)> &>::~__split_buffer(&v17);
      }

      else
      {
        *v11 = v9;
        v12 = v11 + 1;
      }

      a3[1] = v12;
    }
  }
}

void std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<REAudioServicesNotificationCallbackConfiguration,std::piecewise_construct_t const&,std::tuple<REAudioServicesNotificationCallbackConfiguration const&>,std::tuple<>>(float *a1, unsigned __int8 *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = (4 * a2[1]) | (2 * v4) | (8 * v5);
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (4 * a2[1]) | (2 * v4) | (8 * v5);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v11 + 17), *(v11 + 16)) != __PAIR64__(a2[1], v4) || v11[3] != v5)
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_1E21648D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ***std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::find<REAudioServicesNotificationCallbackConfiguration>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = (4 * a2[1]) | (2 * v3) | (8 * v4);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (4 * a2[1]) | (2 * v3) | (8 * v4);
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (__PAIR64__(*(result + 17), *(result + 16)) == __PAIR64__(a2[1], v3) && result[3] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *re::allocInfo_AudioSourceSyncState(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_122, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_122))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D208, "AudioSourceSyncState");
    __cxa_guard_release(&_MergedGlobals_122);
  }

  return &unk_1EE19D208;
}

void re::initInfo_AudioSourceSyncState(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v100[0] = 0x66DEFDF30BAE648ALL;
  v100[1] = "AudioSourceSyncState";
  if (v100[0])
  {
    if (v100[0])
    {
    }
  }

  *(this + 2) = v101;
  if ((atomic_load_explicit(&qword_1EE19D1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D1F0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_AssetHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "asset";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x1800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19D298 = v10;
    v11 = re::introspectionAllocator();
    v13 = introspect_REAudioPlaybackState(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "playbackState";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3000000003;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19D2A0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "playbackSpeed";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19D2A8 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "reverbSendLevel";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4800000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19D2B0 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "currentGain";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x6000000006;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE19D2B8 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "targetGain";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x6400000007;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE19D2C0 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_double(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "fadeDuration";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x7000000008;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE19D2C8 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_uint64_t(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "version";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x100000000BLL;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE19D2D0 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_uint64_t(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "timebaseID";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x400000000CLL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE19D2D8 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_uint64_t(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "firstHalfExternalStreamUUID";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0xE00000000FLL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE19D2E0 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::introspect_uint64_t(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "secondHalfExternalStreamUUID";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0xE800000010;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE19D2E8 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_float(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "directSendLevel";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x5800000012;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE19D2F0 = v54;
    v55 = re::introspectionAllocator();
    v57 = re::IntrospectionInfo<re::DynamicString>::get(1, v56);
    v58 = (*(*v55 + 32))(v55, 72, 8);
    *v58 = 1;
    *(v58 + 8) = "stsLabel";
    *(v58 + 16) = v57;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0xF000000013;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    qword_1EE19D2F8 = v58;
    v59 = re::introspectionAllocator();
    v61 = re::introspect_BOOL(1, v60);
    v62 = (*(*v59 + 32))(v59, 72, 8);
    *v62 = 1;
    *(v62 + 8) = "deferToSystemAcousticTuning";
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0x11000000016;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    *(v62 + 64) = 0;
    qword_1EE19D300 = v62;
    v63 = re::introspectionAllocator();
    v65 = re::introspect_uint32_t(1, v64);
    v66 = (*(*v63 + 32))(v63, 72, 8);
    *v66 = 1;
    *(v66 + 8) = "gainActivationCounter";
    *(v66 + 16) = v65;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0x6800000017;
    *(v66 + 40) = 0;
    *(v66 + 48) = 0;
    *(v66 + 56) = 0;
    *(v66 + 64) = 0;
    qword_1EE19D308 = v66;
    v67 = re::introspectionAllocator();
    v69 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v68);
    v70 = (*(*v67 + 32))(v67, 72, 8);
    *v70 = 1;
    *(v70 + 8) = "mixGroupName";
    *(v70 + 16) = v69;
    *(v70 + 24) = 0;
    *(v70 + 32) = 0x8000000018;
    *(v70 + 40) = 0;
    *(v70 + 48) = 0;
    *(v70 + 56) = 0;
    *(v70 + 64) = 0;
    qword_1EE19D310 = v70;
    v71 = re::introspectionAllocator();
    v73 = re::introspect_BOOL(1, v72);
    v74 = (*(*v71 + 32))(v71, 72, 8);
    *v74 = 1;
    *(v74 + 8) = "oneShotSound";
    *(v74 + 16) = v73;
    *(v74 + 24) = 0;
    *(v74 + 32) = 0x5C00000019;
    *(v74 + 40) = 0;
    *(v74 + 48) = 0;
    *(v74 + 56) = 0;
    *(v74 + 64) = 0;
    qword_1EE19D318 = v74;
    v75 = re::introspectionAllocator();
    v81 = re::audio::introspect_AudioSourceDirectivityConfiguration(1, v76, v77, v78, v79, v80);
    v82 = (*(*v75 + 32))(v75, 72, 8);
    *v82 = 1;
    *(v82 + 8) = "directivityConfig";
    *(v82 + 16) = v81;
    *(v82 + 24) = 0;
    *(v82 + 32) = 0xD00000001CLL;
    *(v82 + 40) = 0;
    *(v82 + 48) = 0;
    *(v82 + 56) = 0;
    *(v82 + 64) = 0;
    qword_1EE19D320 = v82;
    v83 = re::introspectionAllocator();
    v85 = re::introspect_BOOL(1, v84);
    v86 = (*(*v83 + 32))(v83, 72, 8);
    *v86 = 1;
    *(v86 + 8) = "shouldRedactSensitiveInfoFromLogs";
    *(v86 + 16) = v85;
    *(v86 + 24) = 0;
    *(v86 + 32) = 0x1110000001DLL;
    *(v86 + 40) = 0;
    *(v86 + 48) = 0;
    *(v86 + 56) = 0;
    *(v86 + 64) = 0;
    qword_1EE19D328 = v86;
    v87 = re::introspectionAllocator();
    v89 = re::introspect_float(1, v88);
    v90 = (*(*v87 + 32))(v87, 72, 8);
    *v90 = 1;
    *(v90 + 8) = "rolloffFactor";
    *(v90 + 16) = v89;
    *(v90 + 24) = 0;
    *(v90 + 32) = 0x540000001ELL;
    *(v90 + 40) = 0;
    *(v90 + 48) = 0;
    *(v90 + 56) = 0;
    *(v90 + 64) = 0;
    qword_1EE19D330 = v90;
    v91 = re::introspectionAllocator();
    v93 = re::introspect_uint64_t(1, v92);
    v94 = (*(*v91 + 32))(v91, 72, 8);
    *v94 = 1;
    *(v94 + 8) = "groupToken";
    *(v94 + 16) = v93;
    *(v94 + 24) = 0;
    *(v94 + 32) = 0x80000001FLL;
    *(v94 + 40) = 0;
    *(v94 + 48) = 0;
    *(v94 + 56) = 0;
    *(v94 + 64) = 0;
    qword_1EE19D338 = v94;
    v95 = re::introspectionAllocator();
    v97 = re::introspect_BOOL(1, v96);
    v98 = (*(*v95 + 32))(v95, 72, 8);
    *v98 = 1;
    *(v98 + 8) = "isGroupPlaybackSound";
    *(v98 + 16) = v97;
    *(v98 + 24) = 0;
    *(v98 + 32) = 32;
    *(v98 + 40) = 0;
    *(v98 + 48) = 0;
    *(v98 + 56) = 0;
    *(v98 + 64) = 0;
    qword_1EE19D340 = v98;
    __cxa_guard_release(&qword_1EE19D1F0);
  }

  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 22;
  *(this + 8) = &qword_1EE19D298;
  *(this + 9) = re::internal::defaultConstruct<re::AudioSourceSyncState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioSourceSyncState>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioSourceSyncState>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioSourceSyncState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v99 = v101;
}

void *re::internal::defaultConstruct<re::AudioSourceSyncState>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 48) = 9;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 1065353216;
  *(a3 + 92) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 96) = _D0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1065353216;
  *(a3 + 128) = 0;
  *(a3 + 168) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 176) = 0u;
  v9 = (a3 + 176);
  v10 = re::DynamicString::setCapacity(v9, 0);
  *(v3 + 240) = 0u;
  v3 += 240;
  *(v3 - 32) = 1;
  *(v3 - 28) = 0x3E051EB800000000;
  *(v3 - 20) = 1106247680;
  *(v3 - 16) = 0u;
  *(v3 + 16) = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AudioSourceSyncState>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  re::DynamicString::deinit((a3 + 240));
  re::DynamicString::deinit((a3 + 176));
  if (a3[128] == 1)
  {
    re::DynamicString::deinit((a3 + 136));
  }

  re::AssetHandle::~AssetHandle((a3 + 24));
}

void *re::internal::defaultConstructV2<re::AudioSourceSyncState>(uint64_t a1)
{
  v1 = a1;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 9;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1065353216;
  *(a1 + 92) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 96) = _D0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  v7 = (a1 + 176);
  v8 = re::DynamicString::setCapacity(v7, 0);
  *(v1 + 240) = 0u;
  v1 += 240;
  *(v1 - 32) = 1;
  *(v1 - 28) = 0x3E051EB800000000;
  *(v1 - 20) = 1106247680;
  *(v1 - 16) = 0u;
  *(v1 + 16) = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AudioSourceSyncState>(_BYTE *a1)
{
  re::DynamicString::deinit((a1 + 240));
  re::DynamicString::deinit((a1 + 176));
  if (a1[128] == 1)
  {
    re::DynamicString::deinit((a1 + 136));
  }

  re::AssetHandle::~AssetHandle((a1 + 24));
}

re::AudioSourceState *re::AudioSourceState::AudioSourceState(re::AudioSourceState *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CCCC38;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 9;
  *(this + 24) = 1065353216;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 124) = 1065353216;
  *(this + 132) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 17) = _D0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 40) = 1065353216;
  *(this + 168) = 0;
  *(this + 208) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  v8 = re::DynamicString::setCapacity(this + 27, 0);
  *(this + 62) = 1;
  *(this + 252) = 0x3E051EB800000000;
  *(this + 65) = 1106247680;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  re::DynamicString::setCapacity(this + 35, 0);
  *(this + 156) = 0;
  *(this + 80) = 0;
  *(this + 324) = 0;
  *(this + 41) = 1065353216;
  *(this + 42) = 0;
  *(this + 86) = 1065353216;
  v9 = MEMORY[0x1E69E9B18];
  v10 = *MEMORY[0x1E69E9B18];
  v11 = *(MEMORY[0x1E69E9B18] + 16);
  *(this + 22) = *MEMORY[0x1E69E9B18];
  *(this + 23) = v11;
  v12 = *(v9 + 32);
  v13 = *(v9 + 48);
  *(this + 24) = v12;
  *(this + 25) = v13;
  *(this + 26) = v10;
  *(this + 27) = v11;
  *(this + 28) = v12;
  *(this + 29) = v13;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = -1;
  *(this + 126) = 6553601;
  *(this + 508) = 0;
  *(this + 513) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 556) = 0u;
  *(this + 572) = 0x7FFFFFFFLL;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 0;
  *(this + 620) = 0x7FFFFFFFLL;
  *(this + 632) = 0;
  *(this + 656) = 0;
  *(this + 660) = 0;
  *(this + 684) = 0;
  *(this + 688) = 0;
  *(this + 696) = 0;
  *(this + 704) = 0;
  *(this + 189) = 0;
  *(this + 760) = 0;
  *(this + 768) = 0;
  *(this + 97) = 0;
  *(this + 196) = 0;
  *(this + 737) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 412) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  return this;
}

void re::AudioSourceState::~AudioSourceState(re::AudioSourceState *this)
{
  *this = &unk_1F5CCCC38;
  v2 = *(this + 61);
  *(this + 61) = 0;

  *(this + 64) = 0;
  *(this + 90) = 0;
  v3 = *(this + 102);
  if (v3)
  {
    CFRelease(v3);
  }

  re::AudioSourceState::setTimebase(this, 0, 0, 0);
  re::AudioSourceState::setTimebaseDispatchSource(this, 0);
  v4 = *(this + 92);
  *(this + 92) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = __Block_byref_object_copy__9;
    v8[4] = __Block_byref_object_dispose__9;
    v8[5] = 256;
    v9 = v5;
    if (qword_1EE19D200 != -1)
    {
      dispatch_once(&qword_1EE19D200, &__block_literal_global_10);
    }

    v6 = qword_1EE19D1F8;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZNK2re16AudioSourceState24releaseAudioSessionAsyncEv_block_invoke;
    v7[3] = &unk_1E871BDA8;
    v7[4] = v8;
    dispatch_async(v6, v7);

    _Block_object_dispose(v8, 8);
  }

  v8[0] = (this + 792);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](v8);

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 73);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 67);

  re::DynamicString::deinit((this + 280));
  re::DynamicString::deinit((this + 216));
  if (*(this + 168) == 1)
  {
    re::DynamicString::deinit((this + 176));
  }

  re::AssetHandle::~AssetHandle((this + 64));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AudioSourceState::~AudioSourceState(this);

  JUMPOUT(0x1E6906520);
}

void re::AudioSourceState::setTimebase(re::AudioSourceState *this, CFTypeRef cf, char a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v6 = *(this + 91);
  *(this + 91) = cf;
  v7 = MEMORY[0x1E6960CE8];
  v8 = MEMORY[0x1E6960CD0];
  if (cf)
  {
    CFRetain(cf);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, this, a4, *v7, *(this + 91), CFNotificationSuspensionBehaviorDrop);
    v11 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v11, this, a4, *v8, *(this + 91), CFNotificationSuspensionBehaviorDrop);
    v12 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v12, this, a4, *MEMORY[0x1E6960CE0], *(this + 91), CFNotificationSuspensionBehaviorDrop);
    v13 = *(this + 93);
    if (v13)
    {
      CMTimebaseAddTimerDispatchSource(*(this + 91), v13);
    }
  }

  if (v6)
  {
    v14 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v14, this, *v7, v6);
    v15 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v15, this, *v8, v6);
    v16 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v16, this, *MEMORY[0x1E6960CD8], v6);
    v17 = *(this + 93);
    if (v17)
    {
      CMTimebaseRemoveTimerDispatchSource(v6, v17);
    }

    CFRelease(v6);
  }

  *(this + 752) = a3;
}

void re::AudioSourceState::setTimebaseDispatchSource(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = (a1 + 744);
  v5 = *(a1 + 744);
  if (v5)
  {
    v6 = *(a1 + 728);
    if (v6)
    {
      CMTimebaseRemoveTimerDispatchSource(v6, v5);
      v5 = *v4;
    }

    dispatch_source_cancel(v5);
  }

  objc_storeStrong((a1 + 744), a2);
  if (*v4)
  {
    dispatch_resume(*v4);
    v7 = *(a1 + 728);
    if (v7)
    {
      CMTimebaseAddTimerDispatchSource(v7, *v4);
    }
  }
}

void ___ZN2re13getAsyncQueueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.re.AudioSourceState_SessionRelease", attr);
  v2 = qword_1EE19D1F8;
  qword_1EE19D1F8 = v1;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void **___ZNK2re16AudioSourceState24releaseAudioSessionAsyncEv_block_invoke(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(*(a1 + 4) + 8) + 48);
    v6 = 138412290;
    v7 = v4;
    v5 = v2;
    _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "AudioSourceState::releaseAudioSessionAsync: releasing %@", &v6, 0xCu);
  }

  return re::ObjCObject::operator=((*(*(a1 + 4) + 8) + 48), 0);
}

void re::AudioSourceState::enqueuePendingCallback(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 784));
  v4 = *(a1 + 800);
  if (v4 >= *(a1 + 808))
  {
    v5 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)> const&>((a1 + 792), a2);
  }

  else
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](*(a1 + 800), a2);
    v5 = v4 + 32;
    *(a1 + 800) = v4 + 32;
  }

  *(a1 + 800) = v5;

  os_unfair_lock_unlock((a1 + 784));
}

void re::AudioSourceState::callPendingCallbacks(os_unfair_lock_s *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  os_unfair_lock_lock(this + 196);
  if (&v6 != &this[198])
  {
    std::vector<std::function<void ()(void)>>::__assign_with_size[abi:ne200100]<std::function<void ()(void)>*,std::function<void ()(void)>*>(&v6, *&this[198]._os_unfair_lock_opaque, *&this[200]._os_unfair_lock_opaque, (*&this[200]._os_unfair_lock_opaque - *&this[198]._os_unfair_lock_opaque) >> 5);
  }

  v2 = *&this[200]._os_unfair_lock_opaque;
  v3 = *&this[198]._os_unfair_lock_opaque;
  while (v2 != v3)
  {
    v2 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 - 32);
  }

  *&this[200]._os_unfair_lock_opaque = v3;
  os_unfair_lock_unlock(this + 196);
  v4 = v6;
  v5 = v7;
  while (v4 != v5)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v9, v4);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
    v4 += 32;
  }

  v9[0] = &v6;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](v9);
}

void sub_1E2166444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  os_unfair_lock_unlock(v12 + 196);
  a12 = &a9;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t re::AudioSourceState::playbackHostConnectionIdentifier(re::AudioSourceState *this)
{
  v1 = *(this + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(v6);
  }

  v16 = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](32 * v2, a2);
  v7 = 32 * v2;
  v8 = *a1;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v17 + *a1 - v9;
    do
    {
      v13 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v12, v11);
      v11 += 32;
      v12 = v13 + 32;
    }

    while (v11 != v9);
    do
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v8);
      v8 += 32;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7 + 32;
  v14 = a1[2];
  a1[2] = v19;
  v18 = v8;
  v19 = v14;
  v16 = v8;
  v17 = v8;
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&v16);
  return v7 + 32;
}

void sub_1E216667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::vector<std::function<void ()(void)>>::__assign_with_size[abi:ne200100]<std::function<void ()(void)>*,std::function<void ()(void)>*>(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 5)
  {
    if (v9)
    {
      v10 = result[1];
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          v10 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10 - 32);
        }

        while (v10 != v9);
        v11 = *v7;
      }

      v7[1] = v9;
      operator delete(v11);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v12 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v12 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 59))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(v13);
      }
    }

    std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v14 = result[1];
  v15 = &v14[-v9];
  if (a4 <= &v14[-v9] >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        result = std::function<void ()(void)>::operator=(v9, v6);
        v6 += 32;
        v9 += 32;
      }

      while (v6 != a3);
      v14 = v7[1];
    }

    while (v14 != v9)
    {
      v14 -= 32;
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
    }

    v7[1] = v9;
  }

  else
  {
    if (v14 != v9)
    {
      v16 = &v14[-v9];
      v17 = a2;
      do
      {
        std::function<void ()(void)>::operator=(v9, v17);
        v17 += 32;
        v9 += 32;
        v16 -= 32;
      }

      while (v16);
      v14 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*,std::function<void ()(void)>*,std::function<void ()(void)>*>(&v15[v6], a3, v14);
    v7[1] = result;
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*,std::function<void ()(void)>*,std::function<void ()(void)>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a3, v5);
      v5 += 32;
      a3 += 32;
      v6 -= 32;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1E2166924(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v6, a2);
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

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
  return a1;
}

void sub_1E2166BC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL re::internal::BindNodeImplBase::readBindingKey(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 16) = 0;
  }

  v6 = 0uLL;
  result = re::internal::parseNextBindingKey(a2, &v6, a3);
  if (result)
  {
    *a4 = v6;
    if (*(a4 + 16) == 1)
    {
      *(a4 + 16) = 0;
    }
  }

  return result;
}

double re::BindNode::deinit(re::BindNode *this)
{
  if (*this)
  {
    (**this)(this);
  }

  else
  {
    v2 = *(this + 2);
    if (!v2)
    {
      return result;
    }

    v3 = *(this + 1);
    (**v2)(*(this + 2));
    (*(*v3 + 40))(v3, v2);
  }

  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t re::BindNode::copy(re::BindNode *this, const re::BindNode *a2)
{
  v4.n128_f64[0] = re::BindNode::deinit(this);
  v5 = *a2;
  if (*a2)
  {
    v6 = this;
  }

  else
  {
    result = *(a2 + 2);
    if (!result)
    {
      return result;
    }

    v9 = *(a2 + 1);
    v10 = (*(*result + 16))(result, v4.n128_f64[0]);
    v6 = (*(*v9 + 32))(v9, *v10, v10[1]);
    *this = 0;
    *(this + 1) = v9;
    *(this + 2) = v6;
    v5 = *a2;
    if (!*a2)
    {
      a2 = *(a2 + 2);
      v5 = *a2;
    }
  }

  v7 = *(v5 + 24);

  return v7(a2, v6, v4);
}

uint64_t re::BindNode::move(re::BindNode *this, re::BindNode *a2)
{
  v4.n128_f64[0] = re::BindNode::deinit(this);
  v5 = *a2;
  if (*a2)
  {
    v6 = this;
  }

  else
  {
    result = *(a2 + 2);
    if (!result)
    {
      return result;
    }

    v9 = *(a2 + 1);
    v10 = (*(*result + 16))(result, v4.n128_f64[0]);
    v6 = (*(*v9 + 32))(v9, *v10, v10[1]);
    *this = 0;
    *(this + 1) = v9;
    *(this + 2) = v6;
    v5 = *a2;
    if (!*a2)
    {
      a2 = *(a2 + 2);
      v5 = *a2;
    }
  }

  v7 = *(v5 + 32);

  return v7(a2, v6, v4);
}

uint64_t re::BindNode::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2;
    v4 = a2[2];
    if (!*a2)
    {
      a2 = a2[2];
    }

    if (a2 != a1)
    {
      v5 = v3 | v4;
      if (!v5)
      {
        return v5;
      }

      return (*(v2 + 40))();
    }
  }

  else
  {
    v6 = a1[2];
    v7 = *a2;
    v8 = a2[2];
    if (!*a2)
    {
      a2 = a2[2];
    }

    if (v6 != a2)
    {
      v5 = 0;
      v9 = (v7 | v8) == 0;
      if (!v6 || v9)
      {
        return v5;
      }

      v2 = *v6;
      return (*(v2 + 40))();
    }
  }

  return 1;
}

double re::BindNode::relativeNode@<D0>(re::BindNode *a1@<X0>, __int128 *a2@<X1>, re::BindNode *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 || *(a1 + 2)) && *(a2 + 1))
  {
    v11 = 0u;
    v12 = 0u;
    re::BindNode::copy(&v11, a1);
    v9 = *a2;
    while (1)
    {
      v5 = v11;
      if (v11)
      {
        if (!*(&v9 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12)
        {
          v6 = *(&v9 + 1) == 0;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
LABEL_19:
          *a3 = 0u;
          *(a3 + 1) = 0u;
          re::BindNode::move(a3, &v11);
          return re::BindNode::deinit(&v11);
        }

        v5 = *v12;
      }

      if (((*(v5 + 64))() & 1) == 0)
      {
        break;
      }

      if (v11)
      {
        v7 = &v11;
      }

      else
      {
        v7 = v12;
      }

      (*(*v7 + 56))(v10);
      re::BindNode::move(&v11, v10);
      re::BindNode::deinit(v10);
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    return re::BindNode::deinit(&v11);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

double re::BindNode::bindPoint@<D0>(uint64_t *__return_ptr a1@<X8>, re::BindNode **a2@<X0>, uint64_t a3@<X1>, __int128 *a4@<X2>)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (re::BindNode::processBindingPath(a2, a4, &v10, v8))
  {
    if (v10)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v11;
    }

    (*(*v6 + 72))(v6, a3, v8);
  }

  else
  {
    a1[5] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return re::BindNode::deinit(&v10);
}

uint64_t re::BindNode::processBindingPath(re::BindNode **a1, __int128 *a2, re::BindNode **this, uint64_t a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (!*a1 && !a1[2])
  {
    return 0;
  }

  if (this != a1)
  {
    re::BindNode::copy(this, a1);
  }

  *v12 = *a2;
  v11[0] = 0;
  v11[1] = 0;
  if (re::internal::parseBindingURI(a2, v11, v12))
  {
    if (*this)
    {
      v7 = this;
    }

    else
    {
      v7 = this[2];
    }

    (*(*v7 + 48))(v13);
    if (v13 != this)
    {
      re::BindNode::move(this, v13);
    }

    re::BindNode::deinit(v13);
    if (!(*this | this[2]))
    {
      return 0;
    }
  }

  if (!v12[1])
  {
    return 0;
  }

  while (1)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    if (*(a4 + 16) == 1)
    {
      *(a4 + 16) = 0;
    }

    v8 = *this;
    if (!*this)
    {
      v8 = *this[2];
    }

    result = (*(v8 + 64))();
    if (!result)
    {
      break;
    }

    if (!v12[1])
    {
      return 1;
    }

    if (*this)
    {
      v10 = this;
    }

    else
    {
      v10 = this[2];
    }

    (*(*v10 + 56))(v13);
    if (v13 != this)
    {
      re::BindNode::move(this, v13);
    }

    re::BindNode::deinit(v13);
    if (!(*this | this[2]))
    {
      return 0;
    }
  }

  return result;
}

double re::BindNode::bindPointWithOverride@<D0>(uint64_t *__return_ptr a1@<X8>, re::BindNode **a2@<X0>, uint64_t a3@<X1>, __int128 *a4@<X2>)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (re::BindNode::processBindingPath(a2, a4, &v10, v8))
  {
    if (v10)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v11;
    }

    (*(*v6 + 80))(v6, a3, v8);
  }

  else
  {
    a1[5] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return re::BindNode::deinit(&v10);
}

uint64_t re::DynamicArray<re::BindPoint::BindPointData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 32 * v4;
        do
        {
          re::BindPoint::BindPointData::deinit(v3);
          v3 = (v3 + 32);
          v5 -= 32;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::BindPoint::addToBindPointStack(void *this, const re::BindPoint *a2)
{
  v4 = *(a2 + 3);
  v5 = v4 + this[3];
  if (this[2] < v5)
  {
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(this + 1, v5);
    v4 = *(a2 + 3);
  }

  if (v4)
  {
    v6 = *(a2 + 5);
    v7 = 32 * v4;
    do
    {
      re::DynamicArray<re::BindPoint::BindPointData>::add((this + 1), v6);
      v6 = (v6 + 32);
      v7 -= 32;
    }

    while (v7);
  }
}

void re::DynamicArray<re::BindPoint::BindPointData>::add(_anonymous_namespace_ *this, re::BindPoint::BindPointData *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BindPoint::BindPointData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  re::BindPoint::BindPointData::copy(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
}

void re::BindPoint::addToBindPointStack(void *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = v4 + result[3];
  if (result[2] < v5)
  {
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(result + 1, v5);
    v4 = *(a2 + 24);
  }

  if (v4)
  {
    v6 = *(a2 + 40);
    v7 = 32 * v4;
    do
    {
      re::DynamicArray<re::BindPoint::BindPointData>::add((result + 1), v6);
      v6 += 2;
      v7 -= 32;
    }

    while (v7);
  }
}

BOOL re::BindPoint::operator==(re::BindPoint *a1, re::BindPoint *a2)
{
  v4 = re::BindPoint::baseValueUntyped(a1);
  if (v4 == re::BindPoint::baseValueUntyped(a2) && (v5 = re::BindPoint::overrideValueUntyped(a1), v5 == re::BindPoint::overrideValueUntyped(a2)))
  {
    return *a1 == *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BindPoint::baseValueUntyped(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 88))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::overrideValueUntyped(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 120))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::isWeak(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 56))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::isAlive(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 64))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::makeAlive(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    MEMORY[0x1EEE9AC00](this);
    v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + 24);
    do
    {
      if (v8 == v7)
      {
        v14 = 0;
        memset(v23, 0, sizeof(v23));
        v10 = MEMORY[0x1E69E9C10];
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        if (v11)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v18 = 797;
        v19 = 2048;
        v20 = v8;
        v21 = 2048;
        v22 = v8;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(v2 + 40) + v6);
      if (!*v9)
      {
        v9 = v9[2];
      }

      v4[v7++] = v9;
      v6 += 32;
    }

    while (v1 != v7);
    return (*(**v4 + 72))(*v4, 0, v4 + 1, v1 - 1);
  }

  return this;
}

uint64_t re::BindPoint::targetIdentifier(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 80))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::boundOwner(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 136))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::supportsOverrideValue(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 96))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::isOverridden(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 797;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v8;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 104))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::valueUntyped(re::BindPoint *this)
{
  if (re::BindPoint::isOverridden(this))
  {

    return re::BindPoint::overrideValueUntyped(this);
  }

  else
  {

    return re::BindPoint::baseValueUntyped(this);
  }
}

uint64_t re::BindPoint::setIsOverridden(uint64_t this, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (v2)
  {
    v4 = this;
    MEMORY[0x1EEE9AC00](this);
    v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v5 >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = v5;
    }

    bzero(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v8 = 0;
    v9 = 0;
    v10 = *(v4 + 24);
    do
    {
      if (v10 == v9)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v10;
        v23 = 2048;
        v24 = v10;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v11 = (*(v4 + 40) + v8);
      if (!*v11)
      {
        v11 = v11[2];
      }

      v6[v9++] = v11;
      v8 += 32;
    }

    while (v2 != v9);
    return (*(**v6 + 112))(*v6, 0, v6 + 1, v2 - 1, a2);
  }

  return this;
}

uint64_t re::BindPoint::willSet(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    MEMORY[0x1EEE9AC00](this);
    v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + 24);
    do
    {
      if (v8 == v7)
      {
        v14 = 0;
        memset(v23, 0, sizeof(v23));
        v10 = MEMORY[0x1E69E9C10];
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        if (v11)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v18 = 797;
        v19 = 2048;
        v20 = v8;
        v21 = 2048;
        v22 = v8;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(v2 + 40) + v6);
      if (!*v9)
      {
        v9 = v9[2];
      }

      v4[v7++] = v9;
      v6 += 32;
    }

    while (v1 != v7);
    return (*(**v4 + 144))(*v4, 0, v4 + 1, v1 - 1);
  }

  return this;
}

uint64_t re::BindPoint::markAsWritten(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    MEMORY[0x1EEE9AC00](this);
    v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + 24);
    do
    {
      if (v8 == v7)
      {
        v14 = 0;
        memset(v23, 0, sizeof(v23));
        v10 = MEMORY[0x1E69E9C10];
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        if (v11)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v18 = 797;
        v19 = 2048;
        v20 = v8;
        v21 = 2048;
        v22 = v8;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(v2 + 40) + v6);
      if (!*v9)
      {
        v9 = v9[2];
      }

      v4[v7++] = v9;
      v6 += 32;
    }

    while (v1 != v7);
    return (*(**v4 + 128))(*v4, 0, v4 + 1, v1 - 1);
  }

  return this;
}

void re::BindPoint::BindPointData::copy(re::BindPoint::BindPointData *this, const re::BindPoint::BindPointData *a2)
{
  v3 = this;
  v4.n128_f64[0] = re::BindPoint::BindPointData::deinit(this);
  v5 = *a2;
  if (!*a2)
  {
    v6 = *(a2 + 2);
    if (!v6)
    {
      return;
    }

    v7 = *(a2 + 1);
    v8 = (*(*v6 + 16))(v6, v4.n128_f64[0]);
    v9 = (*(*v7 + 32))(v7, *v8, v8[1]);
    *v3 = 0;
    *(v3 + 1) = v7;
    *(v3 + 2) = v9;
    v5 = *v6;
    a2 = v6;
    v3 = v9;
  }

  v10 = *(v5 + 24);

  v10(a2, v3, v4);
}

double re::BindPoint::BindPointData::move(re::BindPoint::BindPointData *a1, _OWORD *a2)
{
  v4.n128_f64[0] = re::BindPoint::BindPointData::deinit(a1);
  if (*a2)
  {
    v5 = *(*a2 + 32);

    v5(a2, a1, v4);
  }

  else if (*(a2 + 2))
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v6;
    v4.n128_u64[0] = 0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return v4.n128_f64[0];
}

uint64_t *re::makeBindNode@<X0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>, const re::IntrospectionBase *a3@<X1>)
{
  v8[0] = this;
  v8[1] = 0;
  v8[2] = a3;
  v9 = 0;
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 + 8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 + 8);
}

double anonymous namespace::makeBindNodeInternal@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 || (*(a1 + 24) & 1) != 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v6 = &unk_1F5CCCCB0;
    v7 = *(a1 + 16);
    *(v6 + 8) = *a1;
    *(v6 + 24) = v7;
    re::BindPoint::BindPoint(v6 + 40, a2);
    *(a3 + 16) = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double re::makeRelativeBindNode@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  re::DynamicArray<re::BindPoint::BindPointData>::add((a2 + 1), &v8);
  re::BindPoint::BindPointData::deinit(&v8);
  v6 = a2[5] + 32 * a2[3];
  *(v6 - 32) = &unk_1F5CCDAF0;
  *(v6 - 24) = a1;
  *&v9 = 0;
  v8 = a1;
  BYTE8(v9) = 0;
}

void re::makeBindPoint(_anonymous_namespace_ **__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>, const re::IntrospectionBase *a3@<X1>)
{
  if (this && a3)
  {
    if (*(this + 4) == 8 && (v6 = *(this + 14), v6))
    {
      v7 = *(this + 8);
      while (**v7 != 7)
      {
        v7 += 8;
        if (!--v6)
        {
          goto LABEL_8;
        }
      }

      v8 = *(*v7 + 8);

      v8(a3, this);
    }

    else
    {
LABEL_8:
      a1[5] = 0;
      *a1 = this;
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
      *(a1 + 8) = 0;
      v9[0] = this;
      v9[1] = 0;
      v9[2] = a3;
      v10 = 0;
    }
  }

  else
  {
    a1[5] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }
}

double re::makeBindPoint@<D0>(re *this@<X0>, const re::IntrospectionBase *a2@<X1>, BOOL *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  if (this && a2 && a3 && a4)
  {
    *a5 = this;
    *(a5 + 40) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    *(a5 + 8) = 0;
    memset(v11, 0, sizeof(v11));
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 8), v11);
    result = re::BindPoint::BindPointData::deinit(v11);
    v10 = *(a5 + 40) + 32 * *(a5 + 24);
    *(v10 - 32) = &unk_1F5CCDBC8;
    *(v10 - 24) = a3;
    *(v10 - 16) = a4;
    *(v10 - 8) = a2;
  }

  else
  {
    *(a5 + 40) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return result;
}

void re::makeBindPoint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    *(result + 40) = 0;
    *result = a2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    re::BindPoint::addToBindPointStack(result, a4);
    if (*(a2 + 16) == 8 && (v8 = *(a2 + 56), v8))
    {
      v9 = *(a2 + 64);
      while (**v9 != 7)
      {
        v9 += 8;
        if (!--v8)
        {
          goto LABEL_7;
        }
      }

      (*(*v9 + 8))(&v10, a3, a2);
      re::BindPoint::addToBindPointStack(result, &v10);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
    }

    else
    {
LABEL_7:
      v10 = a2;
      v11[0] = 0;
      v11[1] = a3;
      v12 = 0;
    }
  }

  else
  {
    *(result + 40) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0;
  }
}

uint64_t re::BindPoint::BindPoint(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 40) = 0;
  *result = v2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v3 = a2[2];
  *(result + 8) = a2[1];
  *(result + 16) = v3;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(result + 24);
  *(result + 24) = a2[3];
  a2[3] = v4;
  v5 = *(result + 40);
  *(result + 40) = a2[5];
  a2[5] = v5;
  ++*(a2 + 8);
  ++*(result + 32);
  return result;
}

void anonymous namespace::IntrospectionBindNodeImpl::~IntrospectionBindNodeImpl(_anonymous_namespace_::IntrospectionBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::IntrospectionBindNodeImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCCB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 40) = *(a1 + 40);
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(a2 + 48, (a1 + 48));
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::IntrospectionBindNodeImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCCB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return re::BindPoint::BindPoint(a2 + 40, (a1 + 40));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::IntrospectionBindNodeImpl>::equals(void *a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != "X" || a1[3] != a2[3] || a1[2] != a2[2])
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 5), (a2 + 5));
}

double anonymous namespace::IntrospectionBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t anonymous namespace::IntrospectionBindNodeImpl::relativeNodeForKey@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a2;
  v7 = a1[5];
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v8, a1 + 6);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
}

void anonymous namespace::IntrospectionBindNodeImpl::bindPointForKey(uint64_t result@<X0>, unint64_t a2@<X1>, const re::IntrospectionBase *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = (result + 8);
  v7 = *(result + 8);
  if (!v7 && (*(result + 32) & 1) == 0)
  {
    goto LABEL_18;
  }

  v20 = *a3;
  if (*(&v20 + 1))
  {
    v24 = 0;
    v21 = a2;
    v22 = 0uLL;
    v23 = 0;
    re::BindPoint::addToBindPointStack(&v21, (result + 40));
    if (v17[0] || (v19 & 1) != 0)
    {
      if (!v17[1])
      {
        if (v18)
        {
          if (a2)
          {
            v14 = a2;
          }

          else
          {
            v14 = v17[0];
          }

          re::makeBindPoint(buf, v14, v18, &v21);
          *&v21 = *buf;
          re::DynamicArray<re::RigDataValue>::operator=(&v21 + 8, &buf[8]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
        }

        v15 = v22;
        *a4 = v21;
        *(a4 + 16) = v15;
        *(&v21 + 1) = 0;
        v22 = 0uLL;
        *(a4 + 40) = v24;
        v24 = 0;
        ++v23;
        *(a4 + 32) = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *re::foundationBindingLogObjects(v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Invalid binding key: %s.", buf, 0xCu);
      }
    }

    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
LABEL_25:
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v21 + 8);
LABEL_26:
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v21 + 8);
    return;
  }

  {
LABEL_18:
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    return;
  }

  v10 = *(result + 24);
  if (v10)
  {
    if (a2 || (a2 = *v8) != 0)
    {
      *(a4 + 40) = 0;
      *a4 = a2;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      re::BindPoint::addToBindPointStack(a4, (result + 40));
      if (*(a2 + 16) != 8 || (v12 = *(a2 + 56), !v12))
      {
LABEL_17:
        v21 = a2;
        *&v22 = v10;
        BYTE8(v22) = 0;
        return;
      }

      v13 = *(a2 + 64);
      while (**v13 != 7)
      {
        v13 += 8;
        if (!--v12)
        {
          goto LABEL_17;
        }
      }

      (*(*v13 + 8))(&v21, v10, a2);
      re::BindPoint::addToBindPointStack(a4, &v21);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v21 + 8);
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    a2 = *v8;
  }

  *(a4 + 40) = 0;
  *a4 = a2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;

  re::BindPoint::addToBindPointStack(a4, (result + 40));
}

void anonymous namespace::walk(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, uint64_t a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24) == 1)
  {
    *buf = 0u;
    v33 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
    v9 = re::BindPoint::BindPointData::deinit(buf);
    v10 = a5[5] + 32 * a5[3];
    *(v10 - 32) = 0;
    *v11 = &unk_1F5CCCD48;
    *(v11 + 8) = a3;
    v12 = *a4;
    v13 = *(a4 + 8);
    *(v11 + 16) = 0;
    *(v11 + 24) = &str_67;
    *(v11 + 57) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 120) = 0;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0;
    *(v10 - 16) = v11;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = 1;
    return;
  }

  if (a2[1])
  {
    v31 = 0;
    v15 = *a4;
    if (**a4 == 45 || (v15 = sscanf(v15, "%zu", &v31), v15 != 1))
    {
      v25 = *re::foundationBindingLogObjects(v15);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Invalid binding key: Array index expected.";
LABEL_12:
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      }
    }

    else
    {
      v17 = *(a2[1] + 16);
      if (isCompatibleType)
      {
        if (a2[2])
        {
          *buf = *a2;
          *&buf[8] = 0;
          *&v33 = a2[2];
          BYTE8(v33) = 0;
          v20 = a2[1];
          *buf = 0u;
          v33 = 0u;
          re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
          re::BindPoint::BindPointData::deinit(buf);
          v21 = a5[5] + 32 * a5[3];
          *(v21 - 32) = &unk_1F5CCCE20;
          *(v21 - 24) = v20;
        }

        v22 = v31;
        *buf = 0u;
        v33 = 0u;
        re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
        re::BindPoint::BindPointData::deinit(buf);
        v23 = a5[5] + 32 * a5[3];
        *(v23 - 32) = &unk_1F5CCCEF8;
        *(v23 - 24) = v22;
        v24 = *(v17 + 48);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = v24;
        *(a1 + 24) = 0;
        return;
      }

      v25 = *re::foundationBindingLogObjects(isCompatibleType);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Invalid binding key: Array type does not match expected type.";
        goto LABEL_12;
      }
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v27 = *(*a2 + 16);
  if (v27 <= 5)
  {
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v30 = *a4;
      }

      else
      {
        if (v27 != 4)
        {
          goto LABEL_37;
        }

        v29 = *a4;
      }
    }

    else
    {
      switch(v27)
      {
        case 0:
          goto LABEL_37;
        case 1:

          break;
        case 2:
          v28 = *a4;

          break;
        default:
          goto LABEL_50;
      }
    }
  }

  else
  {
    if (v27 > 8)
    {
      if ((v27 - 9) < 3)
      {
        goto LABEL_37;
      }

      if (v27 == 13)
      {

        return;
      }

LABEL_50:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected introspection type.", "!Unreachable code", "walk", 919);
      _os_crash("assertion failure: (!Unreachable code) Unexpected introspection type.");
      __break(1u);
      return;
    }

    if (v27 == 6)
    {
      goto LABEL_37;
    }

    if (v27 == 7)
    {
    }

    else
    {
    }
  }
}

void anonymous namespace::walkCStyleArray(re *a1, void *a2, uint64_t a3, char *a4, void *a5)
{
  v5 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (*a4 == 45 || (a1 = sscanf(a4, "%zu", &v19), a1 != 1))
  {
    v10 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Invalid binding key: Array index expected.";
      goto LABEL_10;
    }

LABEL_11:
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 24) = 0;
    *(v5 + 2) = 0;
    return;
  }

  v9 = *a2;
  if (v19 >= *(*a2 + 64))
  {
    v10 = *re::foundationBindingLogObjects(a1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v11 = "Invalid binding key: Array index out of range.";
    goto LABEL_10;
  }

  if (a3 && *(v9 + 48) != a3)
  {
    v10 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Invalid binding key: Array type does not match expected type.";
LABEL_10:
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(v9 + 48);
    v14 = v12 + v19 * *(v13 + 20);
    *v5 = v13;
    *(v5 + 1) = 0;
    *(v5 + 2) = v14;
  }

  else
  {
    v15 = *(v9 + 48);
    v16 = v19 * *(v15 + 20);
    *buf = 0u;
    v21 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
    re::BindPoint::BindPointData::deinit(buf);
    v17 = a5[5] + 32 * a5[3];
    *(v17 - 32) = &unk_1F5CCCFD0;
    *(v17 - 24) = v15;
    *(v17 - 16) = v16;
    v18 = *(v9 + 48);
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = v18;
  }

  *(v5 + 24) = 0;
}

void anonymous namespace::walkDynamicArray(re *a1, uint64_t *a2, _anonymous_namespace_ *a3, char *a4, void *a5)
{
  v5 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (*a4 == 45 || (a1 = sscanf(a4, "%zu", &v17), a1 != 1))
  {
    v15 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Array index expected.";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else
  {
    if (a2[2])
    {
    }

    v10 = *a2;
    if (isCompatibleType)
    {
      v12 = v17;
      *buf = 0u;
      v19 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
      re::BindPoint::BindPointData::deinit(buf);
      v13 = a5[5] + 32 * a5[3];
      *(v13 - 32) = &unk_1F5CCD180;
      *(v13 - 24) = v10;
      *(v13 - 16) = v12;
      v14 = *(v10 + 48);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = v14;
      *(v5 + 24) = 0;
      return;
    }

    v15 = *re::foundationBindingLogObjects(isCompatibleType);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Dynamic Array type does not match expected type.";
      goto LABEL_9;
    }
  }

  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 24) = 0;
  *(v5 + 2) = 0;
}

void anonymous namespace::walkFixedArray(re *a1, uint64_t *a2, _anonymous_namespace_ *a3, char *a4, void *a5)
{
  v5 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (*a4 == 45 || (a1 = sscanf(a4, "%zu", &v17), a1 != 1))
  {
    v15 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Array index expected.";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else
  {
    if (a2[2])
    {
    }

    v10 = *a2;
    if (isCompatibleType)
    {
      v12 = v17;
      *buf = 0u;
      v19 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
      re::BindPoint::BindPointData::deinit(buf);
      v13 = a5[5] + 32 * a5[3];
      *(v13 - 32) = &unk_1F5CCD258;
      *(v13 - 24) = v10;
      *(v13 - 16) = v12;
      v14 = *(v10 + 48);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = v14;
      *(v5 + 24) = 0;
      return;
    }

    v15 = *re::foundationBindingLogObjects(isCompatibleType);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Fixed Array type does not match expected type.";
      goto LABEL_9;
    }
  }

  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 24) = 0;
  *(v5 + 2) = 0;
}

void anonymous namespace::walkPointer(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, const char **a4, void *a5)
{
  v9 = a1;
  v38 = *MEMORY[0x1E69E9840];
  if (a2[2])
  {
  }

  v10 = *a2;
  v11 = *(*a2 + 48);
  if ((atomic_load_explicit(&qword_1EE19D350, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19D350);
    if (a1)
    {
      _MergedGlobals_123 = re::introspect_KeyValueStoreInterface(0, v29, v30, v31, v32, v33);
      __cxa_guard_release(&qword_1EE19D350);
    }
  }

  if (v11 == _MergedGlobals_123)
  {
    v23 = *a4;
    v24 = a4[1];
    *&v34.var0 = 0;
    v34.var1 = &str_67;
    v35 = a3;
    v36 = 0u;
    v37 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v36);
    re::BindPoint::BindPointData::deinit(&v36);
    v26 = a5[5] + 32 * a5[3];
    *(v26 - 32) = &unk_1F5CCD330;
    v27 = re::StringID::StringID((v26 - 24), &v34);
    *(v26 - 8) = v35;
    if (*&v34.var0)
    {
      if (*&v34.var0)
      {
      }
    }

    v28 = *(v10 + 48);
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = v28;
    *(v9 + 24) = 0;
  }

  else
  {
    v12 = *(v10 + 48);
    v13 = *(v12 + 56);
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = *(v12 + 64);
    v15 = v14;
    v16 = v13;
    do
    {
      v17 = *v15;
      if (**v15 == 2)
      {
        goto LABEL_10;
      }

      ++v15;
      --v16;
    }

    while (v16);
    v17 = 0;
LABEL_10:
    while (1)
    {
      v18 = *v14;
      if (**v14 == 3)
      {
        break;
      }

      ++v14;
      if (!--v13)
      {
        v18 = 0;
        break;
      }
    }

    if (v17 && (v18 ? (v19 = *(v17 + 1) == 0) : (v19 = 1), !v19 && *(v18 + 1)))
    {
      v36 = 0u;
      v37 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v36);
      re::BindPoint::BindPointData::deinit(&v36);
      v20 = a5[5] + 32 * a5[3];
      *(v20 - 32) = &unk_1F5CCD408;
      *(v20 - 24) = v10;
      v36 = 0uLL;
      *&v37 = 0;
      BYTE8(v37) = 1;
    }

    else
    {
LABEL_20:
      v36 = 0u;
      v37 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v36);
      re::BindPoint::BindPointData::deinit(&v36);
      v21 = a5[5] + 32 * a5[3];
      *(v21 - 32) = &unk_1F5CCD4E0;
      *(v21 - 24) = v10;
      v22 = *(v10 + 48);
      *&v37 = 0;
      v36 = v22;
      BYTE8(v37) = 0;
    }
  }
}

void anonymous namespace::walkHashTable(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*(*a2 + 48) + 16);
  if (v7 != 6 && v7 != 10)
  {
    v21 = *re::foundationBindingLogObjects(a1);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v23) = 0;
    v20 = "Failed to create binding. Hash table keys need to be of type DynamicString or StringID.";
    goto LABEL_20;
  }

  if (!isCompatibleType)
  {
    v21 = *re::foundationBindingLogObjects(isCompatibleType);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      return;
    }

    LOWORD(v23) = 0;
    v20 = "Invalid binding key: Hash Table Value type does not match expected type.";
LABEL_20:
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, v20, &v23, 2u);
    goto LABEL_21;
  }

  if (a2[2])
  {
  }

  v23 = v6;
  v26 = 0;
  v27 = 0;
  v14 = *(a4 + 8);
  if (v14)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 0;
  }

  v25 = 0;
  re::DynamicString::setCapacity(&v24, v15);
  re::DynamicString::operator=(&v24, a4);
  memset(v28, 0, sizeof(v28));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), v28);
  v16 = re::BindPoint::BindPointData::deinit(v28);
  v17 = a5[5] + 32 * a5[3];
  *(v17 - 32) = 0;
  *v18 = &unk_1F5CCD5B8;
  v18[1] = v23;
  re::DynamicString::DynamicString((v18 + 2), &v24);
  *(v17 - 16) = v18;
  if (v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  v19 = *(v6 + 64);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v19;
  *(a1 + 24) = 0;
}

void anonymous namespace::walkStructure(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, const char **a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*(*a2 + 56))
  {
LABEL_15:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v46 = a1;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(*(v5 + 64) + 8 * v9);
    if (*v11 != 1)
    {
      goto LABEL_9;
    }

    if (*(v11 + 40) != 3)
    {
      a1 = re::introspectionPrettyNameCompare(*(v11 + 8), *a4, a4[1]);
      if (!a1)
      {
        goto LABEL_9;
      }

      v21 = a2[2];
      if (v21)
      {
        if (!*(v11 + 40))
        {
          v41 = *(v11 + 36);
          if (isCompatibleType)
          {
            *v46 = *(v11 + 16);
            *(v46 + 8) = 0;
            *(v46 + 16) = v21 + v41;
            *(v46 + 24) = 0;
            return;
          }

          v43 = *re::foundationBindingLogObjects(isCompatibleType);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          *buf = 0;
          v44 = "Invalid binding key: Absolute struct member type does not match expected type.";
          goto LABEL_48;
        }
      }

      v22 = *(v11 + 40);
      if (v22 == 2)
      {
        *buf = 0u;
        v50 = 0u;
        re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
        re::BindPoint::BindPointData::deinit(buf);
        v40 = a5[5] + 32 * a5[3];
        *(v40 - 32) = &unk_1F5CCD940;
        *(v40 - 24) = v11;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        if (v38)
        {
          *buf = 0u;
          v50 = 0u;
          re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
          re::BindPoint::BindPointData::deinit(buf);
          v39 = a5[5] + 32 * a5[3];
          *(v39 - 32) = &unk_1F5CCCE20;
          *(v39 - 24) = v11;
          v28 = v46;
          *v46 = *a2;
          *(v46 + 8) = v11;
          *(v46 + 16) = 0;
          goto LABEL_37;
        }

        v43 = *re::foundationBindingLogObjects(v38);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v44 = "Invalid binding key: Struct array member type does not match expected type.";
LABEL_48:
          _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
        }
      }

      else
      {
        if (v22)
        {
          re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Invalid structure member type.", "!Unreachable code", "walkStructure", 838);
          _os_crash("assertion failure: (!Unreachable code) Invalid structure member type.");
          __break(1u);
          return;
        }

        if (v23)
        {
          v24 = *(v11 + 36);
          v25 = *(v11 + 16);
          *buf = 0u;
          v50 = 0u;
          re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
          re::BindPoint::BindPointData::deinit(buf);
          v26 = a5[5] + 32 * a5[3];
          *(v26 - 32) = &unk_1F5CCCFD0;
          *(v26 - 24) = v25;
          *(v26 - 16) = v24;
          v27 = *(v11 + 16);
          v28 = v46;
          *(v46 + 8) = 0;
          *(v46 + 16) = 0;
          *v46 = v27;
LABEL_37:
          *(v28 + 24) = 0;
          return;
        }

        v43 = *re::foundationBindingLogObjects(v23);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v44 = "Invalid binding key: Struct member type does not match expected type.";
          goto LABEL_48;
        }
      }

LABEL_49:
      *v46 = 0;
      *(v46 + 8) = 0;
      *(v46 + 24) = 0;
      *(v46 + 16) = 0;
      return;
    }

    v12 = *(v11 + 16);
    if ((atomic_load_explicit(&qword_1EE19D350, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE19D350);
      if (a1)
      {
        _MergedGlobals_123 = re::introspect_KeyValueStoreInterface(0, v15, v16, v17, v18, v19);
        __cxa_guard_release(&qword_1EE19D350);
      }
    }

    v10 = v11;
    if (v12 == _MergedGlobals_123)
    {
      if (a2[2])
      {
      }

      if (a3)
      {
        v31 = *a4;
        v30 = a4[1];
        *&v47.var0 = a3;
        v47.var1 = 0;
        v48 = &str_67;
        *buf = 0u;
        v50 = 0u;
        re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
        re::BindPoint::BindPointData::deinit(buf);
        v32 = a5[5] + 32 * a5[3];
        *(v32 - 32) = &unk_1F5CCD790;
        *(v32 - 24) = *&v47.var0;
        v33 = re::StringID::StringID((v32 - 16), &v47.var1);
        if (v47.var1)
        {
          if (v47.var1)
          {
          }
        }

        *(v46 + 8) = 0;
        *(v46 + 16) = 0;
        *v46 = a3;
        *(v46 + 24) = 0;
        return;
      }

      v34 = *a4;
      v35 = a4[1];
      *&v47.var0 = 0;
      v47.var1 = &str_67;
      *buf = 0u;
      v50 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
      re::BindPoint::BindPointData::deinit(buf);
      v36 = a5[5] + 32 * a5[3];
      *(v36 - 32) = &unk_1F5CCD868;
      v37 = re::StringID::StringID((v36 - 24), &v47);
      if (*&v47.var0)
      {
        if (*&v47.var0)
        {
        }
      }

LABEL_39:
      *v46 = 0u;
      *(v46 + 16) = 0u;
      *(v46 + 24) = 1;
      return;
    }

LABEL_9:
    ++v9;
  }

  while (v9 < *(v5 + 56));
  a1 = v46;
  if (!v10)
  {
    goto LABEL_15;
  }

  v20 = a2[2] + *(v10 + 36);
  *buf = *(v10 + 16);
  *&buf[8] = 0;
  *&v50 = v20;
  BYTE8(v50) = 0;
}

void anonymous namespace::walkOptional(_anonymous_namespace_ *a1, uint64_t *a2, _anonymous_namespace_ *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (a2[2])
  {
  }

  v13 = 0u;
  v14 = 0u;
  re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v13);
  re::BindPoint::BindPointData::deinit(&v13);
  v11 = a5[5] + 32 * a5[3];
  *(v11 - 32) = &unk_1F5CCDA18;
  *(v11 - 24) = v9;
  v12 = *(v9 + 48);
  *&v14 = 0;
  v13 = v12;
  BYTE8(v14) = 0;
}

void anonymous namespace::PolymorphicMemberBindPointImpl::~PolymorphicMemberBindPointImpl(_anonymous_namespace_::PolymorphicMemberBindPointImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::StringID::destroyString((this + 16));
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::StringID::destroyString((this + 16));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PolymorphicMemberBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CCCD48;
  *(a2 + 8) = v4;
  re::StringID::StringID((a2 + 16), (a1 + 16));
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v5;
  *(a2 + 80) = *(a1 + 80);

  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(a2 + 88, (a1 + 88));
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PolymorphicMemberBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCD48;
  *(a2 + 8) = *(a1 + 8);
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  *(a2 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 16) & 1;
  *(a2 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = &str_67;
  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a2 + 32) = v6;
  v7 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v7;
  re::BindPoint::BindPoint(a2 + 80, (a1 + 80));
  *&v10[0] = 0;
  *(&v10[0] + 1) = &str_67;
  v8 = re::StringID::operator=(v4, v10);
  if (v10[0])
  {
  }

  *(v5 + 25) = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  *(a1 + 80) = 0;
  re::DynamicArray<re::RigDataValue>::operator=(a1 + 88, v10 + 1);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + 8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + 8);
}

BOOL re::internal::BindPointImpl<anonymous namespace::PolymorphicMemberBindPointImpl>::equals(uint64_t a1, void *a2)
{
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 16), a2 + 2);
}

unint64_t anonymous namespace::PolymorphicMemberBindPointImpl::hash(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v7 = re::BindPoint::baseValueUntyped((a1 + 5));
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  if (v7 && a4)
  {
    v10 = a1[4];
    v15 = a1[3];
    v17 = *(&v10 + 1);
    v16 = v7;
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v18, 1uLL, a4);
    v9 ^= (v9 << 6) + (v9 >> 2) + (*(*v11 + 48))(v11, &v15, v12, v13) - 0x61C8864680B583E9;
  }

  return v9;
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::isAlive(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  result = re::BindPoint::baseValueUntyped((a1 + 5));
  if (result)
  {
    v8 = a1[4];
    v12 = a1[3];
    v14 = *(&v8 + 1);
    v13 = result;
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v9 + 64))(v9, &v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::baseValueUntyped(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  result = re::BindPoint::baseValueUntyped((a1 + 5));
  if (result)
  {
    v8 = a1[4];
    v12 = a1[3];
    v14 = *(&v8 + 1);
    v13 = result;
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v9 + 88))(v9, &v12, v10, v11);
    }
  }

  return result;
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::supportsOverrideValue(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 96))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::supportsOverrideValue((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::isOverridden(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 104))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::isOverridden((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::setIsOverridden(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v18[0] = a3;
  v18[1] = a4;
  if (a4)
  {
    v9 = re::BindPoint::baseValueUntyped((a1 + 5));
    if (v9)
    {
      v10 = a1[4];
      v15 = a1[3];
      v17 = *(&v10 + 1);
      v16 = v9;
      v11 = *a3;
      v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v18, 1uLL, a4);
      (*(*v11 + 112))(v11, &v15, v12, v13, a5);
    }
  }

  return re::BindPoint::setIsOverridden((a1 + 5), a5);
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::overrideValueUntyped(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 120))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::overrideValueUntyped((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::markAsWritten(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 128))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::markAsWritten((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::willSet(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 144))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::willSet((a1 + 5));
  }
}

void anonymous namespace::PolymorphicMemberBindPointImpl::updateCachedBinding(_anonymous_namespace_::PolymorphicMemberBindPointImpl *this, uint64_t *a2)
{
  v4 = a2[2];
  if (*a2 != *(this + 5) || v4 != *(this + 4))
  {
    *(this + 4) = v4;
    v5 = *(this + 1);
    v14 = 0;
    *v12 = v5;
    *&v12[16] = 0;
    *&v12[24] = 0;
    v13 = 0;
    *(this + 10) = v5;
    v6 = (this + 80);
    re::DynamicArray<re::RigDataValue>::operator=(this + 88, &v12[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
    *(this + 5) = 0;
    v7 = *(this + 1);
    v8 = strlen(*(this + 3));
    v11[0] = *(this + 3);
    v11[1] = v8;
    *(this + 3) = *v12;
    *(this + 57) = *&v12[9];
    v9 = *(this + 6);
    if (v9 || *(this + 72) == 1)
    {
      *(this + 5) = *a2;
      v10 = *(this + 8);
      if (v10)
      {
        re::makeBindPoint(v12, v9, v10, v6);
        *v6 = *v12;
        re::DynamicArray<re::RigDataValue>::operator=((v6 + 1), &v12[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
      }
    }
  }
}

unint64_t re::Slice<re::internal::BindPointImplBase const*>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

BOOL anonymous namespace::isCompatibleType(_anonymous_namespace_ *this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3)
{
  if (!this)
  {
    return 1;
  }

  v3 = &unk_1EE187000;
  {
    v33 = this;
    v29 = a2;
    v3 = &unk_1EE187000;
    a2 = v29;
    v19 = v18;
    this = v33;
    if (v19)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v29);
      v3 = &unk_1EE187000;
      this = v33;
      a2 = v29;
    }
  }

  v4 = *(v3 + 40);
  {
    v34 = this;
    v26 = v4;
    v30 = a2;
    v4 = v26;
    a2 = v30;
    v3 = &unk_1EE187000;
    v21 = v20;
    this = v34;
    if (v21)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v30);
      v4 = v26;
      a2 = v30;
      v3 = &unk_1EE187000;
      this = v34;
    }
  }

  v6 = v4 != this && *(v3 + 40) != a2;
  v7 = &unk_1EE187000;
  {
    v35 = this;
    v31 = a2;
    v27 = v6;
    v6 = v27;
    v7 = &unk_1EE187000;
    a2 = v31;
    v23 = v22;
    this = v35;
    if (v23)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v31);
      v6 = v27;
      v7 = &unk_1EE187000;
      this = v35;
      a2 = v31;
    }
  }

  if (v7[41] == this)
  {
    v6 = 0;
  }

  {
    v36 = this;
    v32 = a2;
    v28 = v6;
    v6 = v28;
    v7 = &unk_1EE187000;
    a2 = v32;
    v25 = v24;
    this = v36;
    if (v25)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v32);
      v6 = v28;
      v7 = &unk_1EE187000;
      this = v36;
      a2 = v32;
    }
  }

  v8 = v7[41];
  v9 = *(this + 4);
  if (v9)
  {
    v10 = v9 == 9;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = *(a2 + 4);
  if (v12)
  {
    v13 = v12 == 9;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  v15 = !v6;
  if (v8 == a2)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0 && v11 && v14)
  {
    return *(this + 5) == *(a2 + 5);
  }

  else
  {
    return this == a2;
  }
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCE20;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCE20;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::hash(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = a2[2];
  v5 = *(a1 + 8);
  v6 = *(v4 + *(v5 + 36));
  if (v6)
  {
    v6 = *a2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v13[0] = v6;
  v13[1] = v5;
  v13[2] = v4;
  v14 = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (a4 && v4)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    v8 ^= (v8 << 6) + (v8 >> 2) + (*(*v9 + 48))(v9, v13, v10, v11) - 0x61C8864680B583E9;
  }

  return v8;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::isAlive(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::baseValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = a2[2];
  v6 = *(a1 + 8);
  if (!*(result + *(v6 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = result;
  v11 = 0;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v7 + 88))(v7, v10, v8, v9);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::supportsOverrideValue(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::isOverridden(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::setIsOverridden(uint64_t result, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v5 = a2[2];
    v6 = *(result + 8);
    if (*(v5 + *(v6 + 36)))
    {
      v11[0] = *a2;
      v11[1] = v6;
      v11[2] = v5;
      v12 = 0;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::overrideValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::markAsWritten(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = a2[2];
    v5 = *(result + 8);
    if (*(v4 + *(v5 + 36)))
    {
      v9[0] = *a2;
      v9[1] = v5;
      v9[2] = v4;
      v10 = 0;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::willSet(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = a2[2];
    v5 = *(result + 8);
    if (*(v4 + *(v5 + 36)))
    {
      v9[0] = *a2;
      v9[1] = v5;
      v9[2] = v4;
      v10 = 0;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCEF8;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCEF8;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::setIsOverridden(void *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::markAsWritten(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::willSet(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::ArrayMemberWithSizeIndexPointerInfo::pointerReference(void *result, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(a3 + 40) == 1 && (v6 = *(a3 + 48)) != 0 && (v9 = *(a3 + 64), __dst = 0, result = memcpy(&__dst, (a4 + v9), *(v6 + 20)), v10 = *a2, *a2 < __dst) && (v11 = *(a4 + *(a3 + 36))) != 0)
  {
    v12 = *(*(a3 + 16) + 48);
    *v4 = v12;
    v4[1] = 0;
    v4[2] = v11 + v10 * *(v12 + 20);
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    *(v4 + 24) = 0;
    v4[2] = 0;
  }

  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCFD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCFD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = *(a1 + 16);
  v12[0] = *(a1 + 8);
  v12[1] = 0;
  v5 = v4 + *(a2 + 16);
  v12[2] = v5;
  v13 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v5)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  result = v4 + v5;
  v10[2] = v4 + v5;
  if (v4 + v5)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v5 = *(result + 16);
    v11[0] = *(result + 8);
    v11[1] = 0;
    v6 = *(a2 + 16);
    v12 = 0;
    v11[2] = v5 + v6;
    if (v5 + v6)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v9[0] = *(result + 8);
    v9[1] = 0;
    v5 = *(a2 + 16);
    v10 = 0;
    v9[2] = v4 + v5;
    if (v4 + v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v9[0] = *(result + 8);
    v9[1] = 0;
    v5 = *(a2 + 16);
    v10 = 0;
    v9[2] = v4 + v5;
    if (v4 + v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void re::BindPoint::addToBindPointStack<anonymous namespace::IntrospectionBindPointImpl,anonymous namespace::IntrospectedObject const&>(void *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v7);
  re::BindPoint::BindPointData::deinit(v7);
  v4 = a1[5] + 32 * a1[3];
  v5 = *a2;
  v6 = a2[2];
  *(v4 - 32) = &unk_1F5CCD0A8;
  *(v4 - 24) = v5;
  *(v4 - 16) = v6;
}

__n128 re::internal::BindPointImpl<anonymous namespace::IntrospectionBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD0A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::IntrospectionBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD0A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 56))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 64))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v5 = *(a1 + 8);
  result = *(a1 + 16);
  v9[0] = v5;
  v9[1] = 0;
  v9[2] = result;
  v10 = 0;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v6 + 88))(v6, v9, v7, v8);
  }

  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 96))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 104))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = *(result + 16);
    v10[0] = *(result + 8);
    v10[1] = 0;
    v10[2] = v6;
    v11 = 0;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v7 + 112))(v7, v10, v8, v9, a5);
  }

  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 120))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v8[0] = *(result + 8);
    v8[1] = 0;
    v8[2] = v4;
    v9 = 0;
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v5 + 128))(v5, v8, v6, v7);
  }

  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v8[0] = *(result + 8);
    v8[1] = 0;
    v8[2] = v4;
    v9 = 0;
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v5 + 144))(v5, v8, v6, v7);
  }

  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>::pointerReference(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  if (v6 >= (*(**a2 + 88))(*a2, *(a3 + 16)))
  {
    v7 = 0;
    result = 0;
  }

  else
  {
    v7 = (*(**a2 + 40))(*a2, 0);
    result = (*(**a2 + 96))(*a2, *(a3 + 16), a2[1]);
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>::pointerReference(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  if (v6 >= (*(**a2 + 80))(*a2, *(a3 + 16)))
  {
    v7 = 0;
    result = 0;
  }

  else
  {
    v7 = (*(**a2 + 40))(*a2, 0);
    result = (*(**a2 + 96))(*a2, *(a3 + 16), a2[1]);
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>>::copyInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CCD330;
  result = re::StringID::StringID((a2 + 1), (a1 + 8));
  a2[3] = *(a1 + 24);
  return result;
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CCD330;
  result = re::StringID::StringID((a2 + 1), (a1 + 8));
  a2[3] = *(a1 + 24);
  return result;
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != " ")
  {
    return 0;
  }

  result = re::StringID::operator==((a1 + 8), a2 + 1);
  if (result)
  {
    return *(a1 + 24) == a2[3];
  }

  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  v6 = **(a2 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = (*(*v6 + 8))(**(a2 + 16), v7, a1 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v15[0] = v7;
  v15[1] = 0;
  v15[2] = v8;
  v16 = 0;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (a4 && v8)
  {
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v17, 1uLL, a4);
    v10 ^= (v10 << 6) + (v10 >> 2) + (*(*v11 + 48))(v11, v15, v12, v13) - 0x61C8864680B583E9;
  }

  return v10;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  result = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v12[0] = v7;
  v12[1] = 0;
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 64))(v9, v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  result = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v12[0] = v7;
  v12[1] = 0;
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 88))(v9, v12, v10, v11);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v13[0] = v7;
  v13[1] = 0;
  v13[2] = v8;
  v14 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v9 + 96))(v9, v13, v10, v11);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v13[0] = v7;
  v13[1] = 0;
  v13[2] = v8;
  v14 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v9 + 104))(v9, v13, v10, v11);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v15[1] = a4;
  if (a4)
  {
    v5 = **(a2 + 16);
    if (v5)
    {
      v9 = *(result + 24);
      result = (*(*v5 + 8))(**(a2 + 16), v9, result + 8);
      v13[0] = v9;
      v13[1] = 0;
      v13[2] = result;
      v14 = 0;
      if (result)
      {
        v10 = *a3;
        v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
        return (*(*v10 + 112))(v10, v13, v11, v12, a5);
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v13[0] = v7;
  v13[1] = 0;
  v13[2] = v8;
  v14 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v9 + 120))(v9, v13, v10, v11);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v7 = *(result + 24);
      result = (*(*v4 + 8))(**(a2 + 16), v7, result + 8);
      v11[0] = v7;
      v11[1] = 0;
      v11[2] = result;
      v12 = 0;
      if (result)
      {
        v8 = *a3;
        v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
        return (*(*v8 + 128))(v8, v11, v9, v10);
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v7 = *(result + 24);
      result = (*(*v4 + 8))(**(a2 + 16), v7, result + 8);
      v11[0] = v7;
      v11[1] = 0;
      v11[2] = result;
      v12 = 0;
      if (result)
      {
        v8 = *a3;
        v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
        return (*(*v8 + 144))(v8, v11, v9, v10);
      }
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD408;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD408;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::setIsOverridden(void *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::markAsWritten(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::willSet(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PolymorphicPointerInfo::pointerReference(void *result, uint64_t a2, re::IntrospectionBase *a3)
{
  v3 = result;
  if (a3)
  {
    re::PolymorphicData::makeWithPointer(v5, *(*a2 + 48), a3);
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 24) = 0;
    result[2] = 0;
  }

  return result;
}

void *anonymous namespace::makePolymorphicPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  __dst = 0;
  result = memcpy(&__dst, v6, *(v7 + 20));
  v9 = *(a2 + 16);
  v10 = *v9;
  if (v10)
  {
    v11 = (*(v9 + 1) + 32);
    while (*(v11 - 1) != __dst)
    {
      v11 += 10;
      if (!--v10)
      {
        v12 = 0;
        goto LABEL_8;
      }
    }

    v10 = a3 + *v11;
    v12 = *(v11 - 3);
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

LABEL_8:
  *a1 = v12;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD4E0;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD4E0;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = **(a2 + 16);
  if (v4)
  {
    v5 = *(*(a1 + 8) + 48);
  }

  else
  {
    v5 = 0;
  }

  v12[0] = v5;
  v12[1] = 0;
  v12[2] = v4;
  v13 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v4)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 64))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = **(a2 + 16);
  if (result)
  {
    v9[0] = *(*(a1 + 8) + 48);
    v9[1] = 0;
    v9[2] = result;
    v10 = 0;
    if (a4)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 88))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 96))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 104))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v5 = **(a2 + 16);
    if (v5)
    {
      v10[0] = *(*(result + 8) + 48);
      v10[1] = 0;
      v10[2] = v5;
      v11 = 0;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 112))(v7, v10, v8, v9, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 120))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v8[0] = *(*(result + 8) + 48);
      v8[1] = 0;
      v8[2] = v4;
      v9 = 0;
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v5 + 128))(v5, v8, v6, v7);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v8[0] = *(*(result + 8) + 48);
      v8[1] = 0;
      v8[2] = v4;
      v9 = 0;
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v5 + 144))(v5, v8, v6, v7);
    }
  }

  return result;
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 16));

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CCD5B8;
  a2[1] = v2;
  return re::DynamicString::DynamicString((a2 + 2), (a1 + 16));
}

re::DynamicString *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CCD5B8;
  a2[1] = v2;
  return re::DynamicString::DynamicString((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != "0" || *(a1 + 8) != a2[1])
  {
    return 0;
  }

  return re::DynamicString::operator==(a1 + 16, (a2 + 2));
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }
}

void anonymous namespace::HashTableKeyPointerInfo::pointerReference(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *(*a2 + 64);
  *(a1 + 8) = 0;
  v5 = *(v4 + 48);
  v6 = &unk_1EE187000;
  {
    v13 = v5;
    v6 = &unk_1EE187000;
    v5 = v13;
    if (v9)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v10);
      v6 = &unk_1EE187000;
      v5 = v13;
    }
  }

  if (v5 == v6[231])
  {
    operator new();
  }

  v7 = *(v4 + 48);
  v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v14 = v7;
    v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v7 = v14;
    if (v11)
    {
      re::introspect<re::StringID>(BOOL)::info = re::IntrospectionInfo<re::StringID>::get(0, v12);
      v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      v7 = v14;
    }
  }

  if (v7 == *(v8 + 407))
  {
    operator new();
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

__n128 std::__function::__func<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD690;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = *(*a2 + 8);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (*(v5 + 8) != v7)
  {
    return 1;
  }

  v9 = *a3;
  v10 = v4 + 9;
  v11 = *(v4 + 16);
  v12 = ((v6 & 1) != 0 ? v11 : v10);
  result = memcmp(*v5, v12, v7);
  if (result)
  {
    return 1;
  }

  **(a1 + 24) = v9;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void const*,void *)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD710;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a1 + 16);
  v6 = *(*a2 + 8);
  v7 = strlen(v6);
  if (*(v5 + 8) != v7)
  {
    return 1;
  }

  result = memcmp(*v5, v6, v7);
  if (result)
  {
    return 1;
  }

  **(a1 + 24) = v4;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  JUMPOUT(0x1E6906520);
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>>::copyInto(const StringID *a1, void *a2)
{
  var1 = a1->var1;
  *a2 = &unk_1F5CCD790;
  a2[1] = var1;
  return re::StringID::StringID((a2 + 2), a1 + 1);
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>>::moveInto(const StringID *a1, void *a2)
{
  var1 = a1->var1;
  *a2 = &unk_1F5CCD790;
  a2[1] = var1;
  return re::StringID::StringID((a2 + 2), a1 + 1);
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != " " || *(a1 + 8) != a2[1])
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 16), a2 + 2);
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  v6 = *(a2 + 16);
  v14[0] = *(a1 + 8);
  v14[1] = 0;
  v7 = (*(*v6 + 8))(v6);
  v14[2] = v7;
  v15 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  if (a4 && v7)
  {
    v10 = *a3;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    v9 ^= (v9 << 6) + (v9 >> 2) + (*(*v10 + 48))(v10, v14, v11, v12) - 0x61C8864680B583E9;
  }

  return v9;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    if (a4)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 64))(v8, v11, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    if (a4)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 88))(v8, v11, v9, v10);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v8 + 96))(v8, v11, v9, v10);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v8 + 104))(v8, v11, v9, v10);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v8 = *(a2 + 16);
    v12[0] = *(result + 8);
    v12[1] = 0;
    result = (*(*v8 + 8))(v8);
    v12[2] = result;
    v13 = 0;
    if (result)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 112))(v9, v12, v10, v11, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v8 + 120))(v8, v11, v9, v10);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = *(a2 + 16);
    v10[0] = *(result + 8);
    v10[1] = 0;
    result = (*(*v6 + 8))(v6);
    v10[2] = result;
    v11 = 0;
    if (result)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 128))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = *(a2 + 16);
    v10[0] = *(result + 8);
    v10[1] = 0;
    result = (*(*v6 + 8))(v6);
    v10[2] = result;
    v11 = 0;
    if (result)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 144))(v7, v10, v8, v9);
    }
  }

  return result;
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>>::equals(uint64_t a1, void *a2)
{
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  v7 = *(a2 + 16);
  v15[0] = (*(*v7 + 24))(v7, a1 + 8);
  v15[1] = 0;
  v8 = (*(*v7 + 8))(v7, 0, a1 + 8);
  v15[2] = v8;
  v16 = 0;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (a4 && v8)
  {
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v17, 1uLL, a4);
    v10 ^= (v10 << 6) + (v10 >> 2) + (*(*v11 + 48))(v11, v15, v12, v13) - 0x61C8864680B583E9;
  }

  return v10;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 64))(v9, v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 88))(v9, v12, v10, v11);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    return (*(*v9 + 96))(v9, v12, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    return (*(*v9 + 104))(v9, v12, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v15[1] = a4;
  if (a4)
  {
    v8 = result;
    v9 = *(a2 + 16);
    v13[0] = (*(*v9 + 24))(v9, result + 8);
    v13[1] = 0;
    result = (*(*v9 + 8))(v9, 0, v8 + 8);
    v13[2] = result;
    v14 = 0;
    if (result)
    {
      v10 = *a3;
      v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v10 + 112))(v10, v13, v11, v12, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    return (*(*v9 + 120))(v9, v12, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v6 = result;
    v7 = *(a2 + 16);
    v11[0] = (*(*v7 + 24))(v7, result + 8);
    v11[1] = 0;
    result = (*(*v7 + 8))(v7, 0, v6 + 8);
    v11[2] = result;
    v12 = 0;
    if (result)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 128))(v8, v11, v9, v10);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v6 = result;
    v7 = *(a2 + 16);
    v11[0] = (*(*v7 + 24))(v7, result + 8);
    v11[1] = 0;
    result = (*(*v7 + 8))(v7, 0, v6 + 8);
    v11[2] = result;
    v12 = 0;
    if (result)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 144))(v8, v11, v9, v10);
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD940;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD940;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::setIsOverridden(void *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::markAsWritten(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::willSet(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PolymorphicMemberPointerInfo::pointerReference(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(a2 + 36));
  if (v4)
  {
    v5 = *(*(*(a2 + 16) + 48) + 64);
    v6 = *v5;
    if (**v5 != 2)
    {
      v7 = (v5 + 1);
      do
      {
        v8 = *v7++;
        v6 = v8;
      }

      while (*v8 != 2);
    }

    v9 = *(a2 + 48);
    v10[0] = a3 + *(a2 + 64);
    v10[1] = v9;
    v10[2] = *(v6 + 1);
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 24) = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDA18;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDA18;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::OptionalValuePointerInfo::pointerReference(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(**a2 + 56))(*a2, *(a3 + 16)))
  {
    v6 = *a2;
    v7 = *(*a2 + 48);
    result = (*(*v6 + 72))(v6, *(a3 + 16));
  }

  else
  {
    v7 = 0;
    result = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::RelativeBindPointImpl>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDAF0;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::RelativeBindPointImpl>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDAF0;
  a2[1] = v2;
  return result;
}

uint64_t anonymous namespace::RelativeBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 56))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 1;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 64))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (a4)
  {
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v4 + 88))(v4, v8, v5, v6);
  }

  return a2;
}

uint64_t anonymous namespace::RelativeBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 96))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 104))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v9[0] = *(result + 8);
    v9[1] = 0;
    v9[2] = a2;
    v10 = 0;
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v6 + 112))(v6, v9, v7, v8, a5);
  }

  return result;
}

uint64_t anonymous namespace::RelativeBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (a4)
  {
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v4 + 120))(v4, v8, v5, v6);
  }

  return a2;
}

uint64_t anonymous namespace::RelativeBindPointImpl::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v7[0] = *(result + 8);
    v7[1] = 0;
    v7[2] = a2;
    v8 = 0;
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 128))(v4, v7, v5, v6);
  }

  return result;
}

uint64_t anonymous namespace::RelativeBindPointImpl::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v7[0] = *(result + 8);
    v7[1] = 0;
    v7[2] = a2;
    v8 = 0;
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 144))(v4, v7, v5, v6);
  }

  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::OverridableBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCDBC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::OverridableBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCDBC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

void *re::allocInfo_KeyValueStoreInterface(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_124, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_124))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D360, "KeyValueStoreInterface");
    __cxa_guard_release(&_MergedGlobals_124);
  }

  return &unk_1EE19D360;
}

void re::initInfo_KeyValueStoreInterface(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x8BFD87A3D5E850D4;
  v8[1] = "KeyValueStoreInterface";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_KeyValueStoreInterface(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t *re::foundationBindingLogObjects(re *this)
{
  {
    re::foundationBindingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Binding");
  }

  return &re::foundationBindingLogObjects(void)::logObjects;
}

BOOL re::internal::doesBindingKeyNeedUnescaping(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 1;
    while (1)
    {
      if (v2 >= v1 - 1 || *(v3 + v2) != 92)
      {
        goto LABEL_20;
      }

      v5 = *(v3 + v2 + 1);
      if (v5 == 46)
      {
        v7 = 0;
      }

      else if (v5 == 93)
      {
        v7 = 2u;
      }

      else
      {
        v6 = 0;
        if (v5 != 91)
        {
          goto LABEL_12;
        }

        v7 = 1u;
      }

      v6 = &str_1_38[v7];
LABEL_12:
      if (v6)
      {
        v8 = v6 == "";
      }

      else
      {
        v8 = 1;
      }

      v9 = !v8;
      if (v5 == 92 || (v9 & 1) != 0)
      {
        return v4;
      }

LABEL_20:
      v4 = ++v2 < v1;
      if (v1 == v2)
      {
        return v4;
      }
    }
  }

  return 0;
}

void *re::internal::escapeBindingKey(void *a1, re::DynamicString *this)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v4 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v4 = this + 9;
  }

  *v4 = 0;
  result = re::DynamicString::setCapacity(this, a1[1] + 10);
  v7 = a1[1];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(*a1 + i);
      if (v9 == 46)
      {
        v11 = 0;
      }

      else if (v9 == 93)
      {
        v11 = 2u;
      }

      else
      {
        v10 = 0;
        if (v9 != 91)
        {
          goto LABEL_13;
        }

        v11 = 1u;
      }

      v10 = &str_1_38[v11];
LABEL_13:
      if (v10)
      {
        v12 = v10 == "";
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      if (v9 == 92 || v13 != 0)
      {
        __src = 92;
        re::DynamicString::append(this, &__src, 1uLL);
        v7 = a1[1];
      }

      if (v7 <= i)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v7);
        result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v16);
        __break(1u);
        return result;
      }

      v18 = *(*a1 + i);
      result = re::DynamicString::append(this, &v18, 1uLL);
      v7 = a1[1];
    }
  }

  return result;
}

void *re::internal::unescapeBindingKey(uint64_t *a1, re::DynamicString *this)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v4 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v4 = this + 9;
  }

  *v4 = 0;
  result = re::DynamicString::setCapacity(this, a1[1]);
  v7 = a1[1];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *a1;
      if (*(*a1 + v8) != 92)
      {
        goto LABEL_23;
      }

      if (v8 >= v7 - 1)
      {
        return result;
      }

      v10 = *(v9 + v8 + 1);
      if (v10 == 46)
      {
        v12 = 0;
        goto LABEL_14;
      }

      if (v10 == 93)
      {
        break;
      }

      v11 = 0;
      if (v10 == 91)
      {
        v12 = 1u;
LABEL_14:
        v11 = &str_1_38[v12];
      }

      if (v11 != "" && v11 != 0 || v10 == 92)
      {
        ++v8;
      }

LABEL_23:
      if (v7 <= v8)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v7);
        result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v16);
        __break(1u);
        return result;
      }

      __src = *(v9 + v8);
      result = re::DynamicString::append(this, &__src, 1uLL);
      ++v8;
      v7 = a1[1];
      if (v8 >= v7)
      {
        return result;
      }
    }

    v12 = 2u;
    goto LABEL_14;
  }

  return result;
}

uint64_t re::internal::parseBindingURI(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[1];
  if (v3 < 3)
  {
    v14 = 0;
    return v14 & v3;
  }

  v7 = *a1;
  v8 = 1;
  while (1)
  {
    if (v8 - v3 == 1)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1[1], v3);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v7 + v8 - 1);
    if (v9 == 46)
    {
      v11 = 0;
    }

    else if (v9 == 93)
    {
      v11 = 2u;
    }

    else
    {
      v10 = 0;
      if (v9 != 91)
      {
        goto LABEL_11;
      }

      v11 = 1u;
    }

    v10 = &str_1_38[v11];
LABEL_11:
    if (v10)
    {
      v12 = v10 == "";
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12 || v9 == 92;
    v14 = v13;
    if (v13)
    {
LABEL_23:
      LODWORD(v3) = 0;
      return v14 & v3;
    }

    if (v9 == 58)
    {
      break;
    }

    if (++v8 - v3 == -1)
    {
      goto LABEL_23;
    }
  }

  if (v3 <= v8)
  {
LABEL_33:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_34;
  }

  if (*(v7 + v8) != 47)
  {
LABEL_31:
    LODWORD(v3) = 0;
    v14 = 1;
    return v14 & v3;
  }

  v16 = v8 + 1;
  if (v3 > v8 + 1)
  {
    if (*(v7 + v8 + 1) == 47)
    {
      *a2 = re::Slice<char>::range(a1, 0, v8 - 1);
      a2[1] = v17;
      *a3 = re::Slice<char>::range(a1, v8 + 2, a1[1]);
      a3[1] = v18;
      v14 = 1;
      LODWORD(v3) = 1;
      return v14 & v3;
    }

    goto LABEL_31;
  }

LABEL_34:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
  __break(1u);
  return result;
}