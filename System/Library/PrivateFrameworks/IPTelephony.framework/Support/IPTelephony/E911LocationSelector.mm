@interface E911LocationSelector
- (E911LocationSelector)initWithDelegate:(weak_ptr<ImsLocationSelectorDelegate>)delegate sipStack:(shared_ptr<SipStack>)stack updateMode:(int)mode dispatchQueue:(queue)queue;
- (id).cxx_construct;
- (void)dealloc;
- (void)locationSelectorDidSelectLocation:(id)location;
@end

@implementation E911LocationSelector

- (E911LocationSelector)initWithDelegate:(weak_ptr<ImsLocationSelectorDelegate>)delegate sipStack:(shared_ptr<SipStack>)stack updateMode:(int)mode dispatchQueue:(queue)queue
{
  var1 = stack.var1;
  var0 = stack.var0;
  cntrl = delegate.__cntrl_;
  ptr = delegate.__ptr_;
  v34.receiver = self;
  v34.super_class = E911LocationSelector;
  v10 = [(E911LocationSelector *)&v34 init:delegate.__ptr_];
  v11 = v10;
  if (v10)
  {
    v13 = *ptr;
    v12 = *(ptr + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
    }

    v14 = v10->_delegate.__cntrl_;
    v11->_delegate.__ptr_ = v13;
    v11->_delegate.__cntrl_ = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = SipStack::prefs(*cntrl);
    v11->_confidence = ImsPrefs::PIDFConfidence(v15);
    v16 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/LocationBundles/IPTelephonyEmergency.bundle"];
    bundle = v11->_bundle;
    v11->_bundle = v16;

    v18 = [objc_alloc(MEMORY[0x1E695FBC0]) initForFeature:0 withUpdatesEnabled:var0 != 0];
    config = v11->_config;
    v11->_config = v18;

    [(CLEmergencyLocationSelectorConfig *)v11->_config setFirstLocationEarlyReturnEnabled:1];
    v20 = *(cntrl + 1);
    v32 = *cntrl;
    v33 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = BambiEmergencyCallHandler::preferredLocationTimeout(&v32);
    v22 = SipStack::prefs(*cntrl);
    if (ImsPrefs::FastEmergencyLocationEnabled(v22))
    {
      v23 = v21;
    }

    else
    {
      v24 = 0.95;
      if (var0)
      {
        v24 = 0.5;
      }

      v23 = v24 * (v21 - 1);
    }

    [(CLEmergencyLocationSelectorConfig *)v11->_config setFirstLocationTimeout:v23, v32, v33];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    v25 = SipStack::prefs(*cntrl);
    if (var0 == 1)
    {
      updated = ImsPrefs::EmergencyLocationUpdateTimeSeconds(v25);
    }

    else
    {
      updated = ImsPrefs::EmergencyLocationUpdateTimeSMSFixed(v25);
    }

    [(CLEmergencyLocationSelectorConfig *)v11->_config setLocationUpdateTimeout:updated];
    if (var0 == 1)
    {
      v27 = SipStack::prefs(*cntrl);
      v28 = ImsPrefs::EmergencyLocationUpdateTimeMinSeconds(v27);
    }

    else
    {
      v28 = 0;
    }

    [(CLEmergencyLocationSelectorConfig *)v11->_config setLocationUpdateMinDelay:v28];
    v29 = [objc_alloc(MEMORY[0x1E695FBB8]) initWithConfig:v11->_config bundle:v11->_bundle delegate:v11 queue:*var1];
    location = v11->_location;
    v11->_location = v29;
  }

  return v11;
}

- (void)dealloc
{
  bundle = self->_bundle;
  if (bundle)
  {
    self->_bundle = 0;
  }

  config = self->_config;
  if (config)
  {
    self->_config = 0;
  }

  cntrl = self->_delegate.__cntrl_;
  self->_delegate.__ptr_ = 0;
  self->_delegate.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }

  location = self->_location;
  if (location)
  {
    [(CLEmergencyLocationSelector *)location stopSession];
    v7 = self->_location;
    self->_location = 0;
  }

  v8.receiver = self;
  v8.super_class = E911LocationSelector;
  [(E911LocationSelector *)&v8 dealloc];
}

- (void)locationSelectorDidSelectLocation:(id)location
{
  v54 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v44 = 3000.0;
  v51 = 0;
  ims::getStaticLoggerFor(buf, "ims.location");
  v5 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "updated location available", buf, 2u);
  }

  if (locationCopy)
  {
    [locationCopy coordinate];
    *&v42 = v6;
    [locationCopy coordinate];
    *(&v42 + 1) = v7;
    [locationCopy horizontalAccuracy];
    *&v43 = v8;
    timestamp = [locationCopy timestamp];
    [timestamp timeIntervalSince1970];
    *&v45 = v10;

    [locationCopy ellipsoidalAltitude];
    v12 = v11;
    v41 = v11;
    [locationCopy verticalAccuracy];
    v14 = v13;
    v40 = v13;
    memset(buf, 0, sizeof(buf));
    v39 = 0;
    std::string::basic_string[abi:ne200100]<0>(buf, "invalid");
    ims::getStaticLoggerFor(v53, "ims.location");
    v15 = *&v53[8];
    ctu::OsLogContext::~OsLogContext(v53);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 134218240;
      *&v53[4] = v42;
      *&v53[12] = 2048;
      *&v53[14] = *(&v42 + 1);
      _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "selected valid location %lf, %lf", v53, 0x16u);
    }

    if (v14 <= 0.0)
    {
      memset(v53, 0, sizeof(v53));
      ims::detail::to_string_impl<double,std::integral_constant<BOOL,false>>::operator()(v53, &v41);
    }

    *(&v43 + 1) = v12;
    v44 = v14;
    v37.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
    *v52 = 1.0;
    if (CLGetUncertaintyScaleFactors())
    {
      *&v43 = *&v37.__r_.__value_.__l.__data_ * *&v43;
      v44 = *v52 * v44;
    }

    ims::getStaticLoggerFor(v53, "ims.location");
    v17 = *&v53[8];
    ctu::OsLogContext::~OsLogContext(v53);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 134217984;
      *&v53[4] = v45;
      _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "timestamp is : %lf", v53, 0xCu);
    }

    ims::getStaticLoggerFor(v53, "ims.location");
    v18 = *&v53[8];
    ctu::OsLogContext::~OsLogContext(v53);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [locationCopy trustedTimestamp];
      *v53 = 134217984;
      *&v53[4] = v19;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "absolute timestamp is : %lf", v53, 0xCu);
    }

    [locationCopy trustedTimestamp];
    if (v20 > 0.0)
    {
      v21 = MEMORY[0x1E695DF00];
      [locationCopy trustedTimestamp];
      v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
      [v22 timeIntervalSince1970];
      *&v45 = v23;
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
    }
  }

  cntrl = self->_delegate.__cntrl_;
  if (cntrl)
  {
    v25 = std::__shared_weak_count::lock(cntrl);
    if (v25)
    {
      v26 = v25;
      ptr = self->_delegate.__ptr_;
      if (ptr)
      {
        ims::LocationInfo::LocationInfo(v28, &v42);
        (*(*ptr + 16))(ptr, v28);
        if (v36 < 0)
        {
          operator delete(__p);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(*(&v48 + 1));
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(*(&v45 + 1));
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end