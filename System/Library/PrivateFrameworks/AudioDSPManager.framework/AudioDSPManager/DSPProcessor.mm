@interface DSPProcessor
- (BOOL)hasHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address;
- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withData:(id)data withQualifier:(id)qualifier error:(id *)error;
- (BOOL)validateAdaptConfigurationChangeRequest:(const void *)request;
- (DSPProcessor)initWithHostDescription:(id)description hostCallback:(id)callback systemConfiguration:(SystemConfiguration *)configuration;
- (id).cxx_construct;
- (id)adaptToConfigurationChange:(id)change withCallbacks:(void *)callbacks error:(id *)error;
- (id)doNegotiateConfigurationChange:(id)change simulate:(BOOL)simulate error:(id *)error;
- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withQualifierData:(id)data;
- (id)getHostedDSPPropertyInfoArray;
- (id)initWithHostDescription:hostCallback:systemConfiguration:;
- (id)negotiateConfigurationChange:(id)change error:(id *)error;
- (id)simulateConfigurationChange:(id)change error:(id *)error;
- (uint64_t)initWithHostDescription:hostCallback:systemConfiguration:;
- (void)connectRemoteProcessingBlockServer:(id)server host:(id)host;
- (void)dealloc;
- (void)disconnectRemoteProcessingBlockServer:(id)server host:(id)host;
- (void)dumpDiagnosticsWithNSObject:(id)object name:(id)name;
- (void)initWithHostDescription:hostCallback:systemConfiguration:;
- (void)registerExternalNotifications:(const NotificationSubscriptions *)notifications;
- (void)unregisterExternalNotifications;
@end

@implementation DSPProcessor

- (id).cxx_construct
{
  *self->_systemConfiguration.mContext.mResourcePath.__pn_.__rep_.__s.__data_ = 0uLL;
  *(&self->_systemConfiguration.mContext.mResourcePath.__pn_.__rep_.__l + 2) = 0;
  *self->_hostDescription.mBundleID.__rep_.__s.__data_ = 0u;
  *(&self->_hostDescription.mBundleID.__rep_.__l + 1) = 0u;
  *self->_anon_30 = 0u;
  self->_systemConfiguration.mContext.mOS = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<char [24],void>(&self->_systemConfiguration.mContext.mResourcePath.var0, "/Library/Audio/Tunings/");
  self->_anon_70[8] = 0;
  self->_anon_70[12] = 0;
  self->_anon_70[16] = 0;
  self->_anon_70[40] = 0;
  self->_anon_70[48] = 0;
  self->_anon_70[72] = 0;
  self->_anon_70[80] = 0;
  self->_anon_70[88] = 0;
  self->_anon_70[92] = 0;
  *&self->_anon_70[96] = 0u;
  *&self->_anon_70[112] = 0u;
  *&self->_anon_70[128] = 0u;
  *&self->_anon_70[144] = 0u;
  *&self->_anon_70[160] = 0u;
  *&self->_anon_70[176] = 1065353216;
  *&self->_anon_70[192] = 0;
  *&self->_anon_70[200] = 0;
  *&self->_anon_70[184] = 0;
  *&self->_anon_70[205] = 0;
  self->_graphBuilder.var0.__null_state_ = 0;
  self->_anon_178[264] = 0;
  self->_nodeManager.var0.__null_state_ = 0;
  self->_nodeManager.__engaged_ = 0;
  self->_customPropertyManager.var0.__null_state_ = 0;
  self->_customPropertyManager.__engaged_ = 0;
  self->_pendingDeviceConfigChanges.var0.__null_state_ = 0;
  self->_pendingDeviceConfigChanges.__engaged_ = 0;
  self->_activeDeviceConfigChanges.var0.__null_state_ = 0;
  self->_activeDeviceConfigChanges.__engaged_ = 0;
  self->_pendingChangeRequest.var0.__null_state_ = 0;
  self->_pendingChangeRequest.__engaged_ = 0;
  self->_activeChangeRequest.var0.__null_state_ = 0;
  self->_activeChangeRequest.__engaged_ = 0;
  return self;
}

- (void)dumpDiagnosticsWithNSObject:(id)object name:(id)name
{
  objectCopy = object;
  nameCopy = name;
  {
    if (v14)
    {
      [DSPProcessor dumpDiagnosticsWithNSObject:name:]::isDebugDumpEnabled = adm::utility::readDefaultsDebugDumpEnablement(v14);
    }
  }

  if ([DSPProcessor dumpDiagnosticsWithNSObject:name:]::isDebugDumpEnabled == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    p_hostDescription = &self->_hostDescription;
    if (*(&self->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
    {
      p_hostDescription = p_hostDescription->mBundleID.__rep_.__l.__data_;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_hostDescription];
    p_var0 = &self->_hostDescription.var0;
    if (self->_anon_30[15] < 0)
    {
      p_var0 = *p_var0;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_var0];
    v12 = [v7 stringWithFormat:@"%@(%@_%@)", nameCopy, v9, v11];

    adm::utility::writeNSObjectToDisk(objectCopy, v12, v13);
  }
}

- (void)unregisterExternalNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_hasRegisteredUIOrientation)
  {
    v3 = CAUnregisterUIOrientation();
    if (v3)
    {
      v4 = v3;
      v5 = get_adm_log_object();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v10[0] = 67109120;
        v10[1] = v4;
        _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "Failed to unregister UIOrientation with error %d", v10, 8u);
      }
    }

    else
    {
      self->_hasRegisteredUIOrientation = 0;
      v5 = get_adm_log_object();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEFAULT, "Succeeded in unregistering UIOrientation notification", v10, 2u);
      }
    }
  }

  if (self->_notificationVendor)
  {
    coexNotificationRegistrationResults = self->_coexNotificationRegistrationResults;
    if (coexNotificationRegistrationResults)
    {
      if ([(ADMListenerRegistrationResults *)coexNotificationRegistrationResults successful])
      {
        v7 = [(ADMNotificationVendor *)self->_notificationVendor deregisterListenerWithRegistrationResults:self->_coexNotificationRegistrationResults];
        v8 = get_adm_log_object();
        v9 = v8;
        if (v7)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v10[0]) = 0;
            _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, "Succeeded in unregistering inference coex notification", v10, 2u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v10[0]) = 0;
          _os_log_error_impl(&dword_223B4A000, v9, OS_LOG_TYPE_ERROR, "Failed to unregister inference coex notifications", v10, 2u);
        }
      }
    }
  }
}

- (void)registerExternalNotifications:(const NotificationSubscriptions *)notifications
{
  v27 = *MEMORY[0x277D85DE8];
  if (notifications->var0)
  {
    objc_initWeak(location, self);
    v23[1] = MEMORY[0x277D85DD0];
    v23[2] = 3221225472;
    v23[3] = __46__DSPProcessor_registerExternalNotifications___block_invoke;
    v23[4] = &unk_2784F0660;
    objc_copyWeak(&v24, location);
    v5 = CARegisterUIOrientation();
    if (v5)
    {
      v6 = get_adm_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v5;
        _os_log_error_impl(&dword_223B4A000, v6, OS_LOG_TYPE_ERROR, "Failed to register UIOrientation with error %d", &buf, 8u);
      }
    }

    else
    {
      self->_hasRegisteredUIOrientation = 1;
      v6 = get_adm_log_object();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_223B4A000, v6, OS_LOG_TYPE_DEFAULT, "Succeeded in registering UIOrientation notification", &buf, 2u);
      }
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  if (notifications->var1)
  {
    if (self->_notificationVendor || (+[ADMNotificationVendor canonical], v7 = objc_claimAutoreleasedReturnValue(), v8 = self->_notificationVendor, self->_notificationVendor = v7, v8, self->_notificationVendor))
    {
      objc_initWeak(&buf, self);
      notificationVendor = self->_notificationVendor;
      v10 = +[ADMNotificationStreamKeys inferenceSlowFalse];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __46__DSPProcessor_registerExternalNotifications___block_invoke_50;
      v22 = &unk_2784F0688;
      objc_copyWeak(v23, &buf);
      v11 = [(ADMNotificationVendor *)notificationVendor registerBoolListenerWithNotificationKey:v10 listenerCallback:&v19];
      coexNotificationRegistrationResults = self->_coexNotificationRegistrationResults;
      self->_coexNotificationRegistrationResults = v11;

      LODWORD(notificationVendor) = [(ADMListenerRegistrationResults *)self->_coexNotificationRegistrationResults successful:v19];
      v13 = get_adm_log_object();
      v14 = v13;
      if (notificationVendor)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_223B4A000, v14, OS_LOG_TYPE_DEFAULT, "Succeeded in registering inference coex notification", location, 2u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        error = [(ADMListenerRegistrationResults *)self->_coexNotificationRegistrationResults error];
        v17 = error;
        uTF8String = [error UTF8String];
        LODWORD(location[0]) = 136315138;
        *(location + 4) = uTF8String;
        _os_log_error_impl(&dword_223B4A000, v14, OS_LOG_TYPE_ERROR, "Failed to register inference coex. Cause: %s", location, 0xCu);
      }

      objc_destroyWeak(v23);
      objc_destroyWeak(&buf);
    }

    else
    {
      v15 = get_adm_log_object();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_error_impl(&dword_223B4A000, v15, OS_LOG_TYPE_ERROR, "Failed to create a notification vendor", location, 2u);
      }
    }
  }
}

void __46__DSPProcessor_registerExternalNotifications___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = get_adm_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v9 = a2;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "UIOrientation notification received, orientation = %d", buf, 8u);
    }

    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v7 length:4];
    v6 = 0;
    [WeakRetained setHostedDSPPropertyAtAddress:0x676C6F6255494F52 withData:0 withQualifier:v5 error:{0, &v6}];
  }
}

void __46__DSPProcessor_registerExternalNotifications___block_invoke_50(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v4 = get_adm_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "Inference coex notification received, status = %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:1];
    v7 = 0;
    [WeakRetained setHostedDSPPropertyAtAddress:0x676C6F624946434FLL withData:0 withQualifier:v6 error:{0, &v7}];
  }
}

- (id)getHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withQualifierData:(id)data
{
  addressCopy = address;
  dataCopy = data;
  applesauce::CF::DataRef::from_ns(&cf, dataCopy);
  adm::CustomPropertyManager::getCustomProperty(&v10, &self->_customPropertyManager, &addressCopy, &cf);
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (BOOL)setHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address withData:(id)data withQualifier:(id)qualifier error:(id *)error
{
  addressCopy = address;
  dataCopy = data;
  qualifierCopy = qualifier;
  applesauce::CF::DataRef::from_ns(&v13, dataCopy);
  applesauce::CF::DataRef::from_ns(&cf, qualifierCopy);
  v10 = adm::CustomPropertyManager::setCustomProperty(&self->_customPropertyManager, &addressCopy, &v13, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

- (BOOL)hasHostedDSPPropertyAtAddress:(AudioObjectPropertyAddress)address
{
  v3 = "";
  v4 = 224;
  result = 1;
  while (1)
  {
    if (address.mSelector == 707406378 || ((v6 = *(v3 - 2), v6 != 707406378) ? (v7 = v6 == address.mSelector) : (v7 = 1), v7))
    {
      if (address.mScope == 707406378 || ((v8 = *(v3 - 1), v8 != 707406378) ? (v9 = v8 == address.mScope) : (v9 = 1), v9))
      {
        if (address.mElement == -1)
        {
          break;
        }

        if (*v3 == -1 || *v3 == address.mElement)
        {
          break;
        }
      }
    }

    v3 += 56;
    v4 -= 56;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

- (id)getHostedDSPPropertyInfoArray
{
  adm::CustomPropertyManager::getCustomPropertyList(&v5);
  v2 = v5;
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (id)adaptToConfigurationChange:(id)change withCallbacks:(void *)callbacks error:(id *)error
{
  v106 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  changeCopy = change;
  v79 = 1;
  v80 = 0;
  v81 = 0;
  v8 = get_adm_log_object();
  if (os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ADM::Adapt", &unk_223C17543, &buf, 2u);
  }

  if (*(&selfCopy->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&mBundleID, selfCopy->_hostDescription.mBundleID.__rep_.__l.__data_, selfCopy->_hostDescription.mBundleID.__rep_.__l.__size_);
  }

  else
  {
    mBundleID = selfCopy->_hostDescription.mBundleID;
  }

  v9 = get_adm_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    p_mBundleID = &mBundleID;
    if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_mBundleID = mBundleID.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = p_mBundleID;
    _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, ">>> ADAPT [%s]", &buf, 0xCu);
  }

  LOBYTE(v76) = 0;
  v77 = 0;
  v11 = selfCopy;
  if (selfCopy->_remoteProcessingBlockHost)
  {
    [(RPBHost *)selfCopy->_remoteProcessingBlockHost setUserInfo:changeCopy error:0];
    v11 = selfCopy;
  }

  [(DSPProcessor *)v11 dumpDiagnosticsWithNSObject:changeCopy name:@"AdaptConfigChange"];
  LOBYTE(v58.super.isa) = 0;
  v60[0] = 0;
  v60[1] = 0;
  v59 = v60;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  LOBYTE(__p) = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v74 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  memset(v75, 0, sizeof(v75));
  if ((adm::utility::convertFromDictionary(changeCopy, &v58, v12) & 1) == 0)
  {
    v25 = get_adm_log_object();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_223B4A000, v25, OS_LOG_TYPE_ERROR, "Failed to convert the config change request dictionary", &buf, 2u);
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
    goto LABEL_37;
  }

  logConfigChangeRequestBasicInfo(&v58);
  if (![(DSPProcessor *)selfCopy validateAdaptConfigurationChangeRequest:&v58])
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
LABEL_37:
    v27 = 0;
    *error = v26;
    goto LABEL_38;
  }

  if (LOBYTE(v58.super.isa) != 1)
  {
    v30 = get_adm_log_object();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_223B4A000, v30, OS_LOG_TYPE_DEFAULT, "Adapt to de-activation config change request", &buf, 2u);
    }

    *&v87.__r_.__value_.__l.__data_ = 0uLL;
    v102 = 0;
    *(&buf + 1) = 0;
    *&buf = &buf + 8;
    adm::CustomPropertyManager::attachToNode(&selfCopy->_customPropertyManager, &v87, &buf);
    std::__tree<std::string>::destroy(*(&buf + 1));
    [(DSPProcessor *)selfCopy unregisterExternalNotifications];
    goto LABEL_55;
  }

  adm::graph::GraphBuilder::buildGraph(&buf, &selfCopy->_graphBuilder, &v58);
  if ((v105 & 1) == 0)
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = buf;
    v99 = *MEMORY[0x277CCA450];
    v100 = @"ADM failed to build graph";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    *error = [v39 errorWithDomain:@"AudioDSPManagerErrorDomain" code:v40 userInfo:v41];

    v42 = get_adm_log_object();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v87.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v42, OS_LOG_TYPE_ERROR, "ADM failed to build graph", &v87, 2u);
    }

    goto LABEL_66;
  }

  v87.__r_.__value_.__r.__words[0] = &selfCopy;
  v87.__r_.__value_.__l.__size_ = &buf;
  if (v104 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v55.__val_ = &v87;
  (*(&off_28371AB90 + v104))(&v56, &v55, &v103);
  if (v57 != 1)
  {
    cat = 0;
    v55 = 0;
LABEL_70:
    v43 = get_adm_log_object();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      std::error_code::message(&v87, &v56);
      v49 = (v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v87 : v87.__r_.__value_.__r.__words[0];
      *v85 = 136315138;
      v86 = v49;
      _os_log_error_impl(&dword_223B4A000, v43, OS_LOG_TYPE_ERROR, "failed to create DSP node with error %s", v85, 0xCu);
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }
    }

    if (error)
    {
      v44 = MEMORY[0x277CCA9B8];
      v83 = *MEMORY[0x277CCA450];
      v84 = @"ADM failed to create DSP node";
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      *error = [v44 errorWithDomain:@"AudioDSPManagerErrorDomain" code:1970170734 userInfo:v45];
    }

    v24 = 1;
    goto LABEL_74;
  }

  v14 = *&v56.__val_;
  cat = v56.__cat_;
  v55 = v56;
  if (v56.__cat_)
  {
    atomic_fetch_add_explicit(&v56.__cat_[1], 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
    goto LABEL_70;
  }

  adm::CustomPropertyManager::attachToNode(&selfCopy->_customPropertyManager, &v55, &v59);
  if (selfCopy->_remoteProcessingBlockHost)
  {
    v15 = objc_alloc(MEMORY[0x277D46118]);
    v16 = [v15 initWithName:@"DSP" inputs:*MEMORY[0x277CBEBE8] outputs:*MEMORY[0x277CBEBE8]];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = v16;
    items = [(RPBHost *)selfCopy->_remoteProcessingBlockHost items];
    v18 = [items copy];

    v19 = [v18 countByEnumeratingWithState:&v51 objects:v98 count:16];
    if (v19)
    {
      v20 = *v52;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [(RPBHost *)selfCopy->_remoteProcessingBlockHost removeItem:*(*(&v51 + 1) + 8 * i)];
        }

        v19 = [v18 countByEnumeratingWithState:&v51 objects:v98 count:16];
      }

      while (v19);
    }

    [(RPBHost *)selfCopy->_remoteProcessingBlockHost addItem:v50];
    (*(*v14 + 16))(v14, v50);
  }

  adm::graph::Node::createHandlers(&v87, v14);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](callbacks + 96, v88);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](callbacks + 32, v90);
  std::__function::__value_func<void ()>::operator=[abi:ne200100](callbacks + 128, v92);
  if (v95)
  {
    v22 = (*(*v95 + 48))(v95);
    v77 = 1;
    v76 = v22;
  }

  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](&v97);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](&v96);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](&v94);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v93);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v92);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](&v91);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v90);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](&v89);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v88);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v87);
  v24 = 0;
LABEL_74:
  if (cat)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cat);
  }

  if (v24)
  {
    if (v57 == 1 && v56.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56.__cat_);
    }

LABEL_66:
    std::expected<adm::graph::GraphDescription,std::error_code>::~expected[abi:ne200100](&buf);
    v27 = 0;
    goto LABEL_38;
  }

  LOWORD(v87.__r_.__value_.__l.__data_) = adm::config_policy::getRequiredNotificationSubscriptions(&v58, v23);
  [(DSPProcessor *)selfCopy registerExternalNotifications:&v87];
  if (v57 == 1 && v56.__cat_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56.__cat_);
  }

  std::expected<adm::graph::GraphDescription,std::error_code>::~expected[abi:ne200100](&buf);
LABEL_55:
  if (LOBYTE(v58.super.isa) == 1)
  {
    v31 = [(adm::utility *)changeCopy copy];
    activeConfiguration = selfCopy->_activeConfiguration;
    selfCopy->_activeConfiguration = v31;

    std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100]<adm::ConfigurationChangeRequest,void>(&selfCopy->_activeChangeRequest, &v58);
    v33 = selfCopy;
    p_pendingDeviceConfigChanges = &selfCopy->_pendingDeviceConfigChanges;
    if (selfCopy->_activeDeviceConfigChanges.__engaged_ == selfCopy->_pendingDeviceConfigChanges.__engaged_)
    {
      if (selfCopy->_activeDeviceConfigChanges.__engaged_)
      {
        std::vector<adm::DeviceConfiguration>::__vdeallocate(&selfCopy->_activeDeviceConfigChanges);
        *&v33->_activeDeviceConfigChanges.var0.__null_state_ = *&v33->_pendingDeviceConfigChanges.var0.__null_state_;
        v33->_activeDeviceConfigChanges.var0.__val_.__cap_ = v33->_pendingDeviceConfigChanges.var0.__val_.__cap_;
        p_pendingDeviceConfigChanges->__end_ = 0;
        p_pendingDeviceConfigChanges->__cap_ = 0;
        p_pendingDeviceConfigChanges->__begin_ = 0;
      }
    }

    else if (selfCopy->_activeDeviceConfigChanges.__engaged_)
    {
      *&buf = &selfCopy->_activeDeviceConfigChanges;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&buf);
      v33->_activeDeviceConfigChanges.__engaged_ = 0;
    }

    else
    {
      *&selfCopy->_activeDeviceConfigChanges.var0.__null_state_ = *&selfCopy->_pendingDeviceConfigChanges.var0.__null_state_;
      v33->_activeDeviceConfigChanges.var0.__val_.__cap_ = v33->_pendingDeviceConfigChanges.var0.__val_.__cap_;
      p_pendingDeviceConfigChanges->__end_ = 0;
      p_pendingDeviceConfigChanges->__cap_ = 0;
      p_pendingDeviceConfigChanges->__begin_ = 0;
      v33->_activeDeviceConfigChanges.__engaged_ = 1;
    }

    v36 = selfCopy;
    remoteProcessingBlockHost = selfCopy->_remoteProcessingBlockHost;
    if (!remoteProcessingBlockHost)
    {
      goto LABEL_88;
    }

    p_activeConfiguration = &selfCopy->_activeConfiguration;
  }

  else
  {
    v35 = selfCopy->_activeConfiguration;
    selfCopy->_activeConfiguration = 0;

    std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100](&selfCopy->_activeChangeRequest);
    v36 = selfCopy;
    if (selfCopy->_activeDeviceConfigChanges.__engaged_)
    {
      *&buf = &selfCopy->_activeDeviceConfigChanges;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&buf);
      v36->_activeDeviceConfigChanges.__engaged_ = 0;
      v36 = selfCopy;
    }

    remoteProcessingBlockHost = v36->_remoteProcessingBlockHost;
    if (!remoteProcessingBlockHost)
    {
      goto LABEL_88;
    }

    p_activeConfiguration = MEMORY[0x277CBEC00];
  }

  [(RPBHost *)remoteProcessingBlockHost setUserInfo:*p_activeConfiguration error:0];
  v36 = selfCopy;
LABEL_88:
  std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100](&v36->_pendingChangeRequest);
  v46 = selfCopy;
  if (selfCopy->_pendingDeviceConfigChanges.__engaged_)
  {
    *&buf = &selfCopy->_pendingDeviceConfigChanges;
    std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&buf);
    v46->_pendingDeviceConfigChanges.__engaged_ = 0;
  }

  v27 = adm::utility::convertToDictionary(&v76);
  [(DSPProcessor *)selfCopy dumpDiagnosticsWithNSObject:v27 name:@"AdaptResponse"];
  v47 = get_adm_log_object();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = &mBundleID;
    if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = mBundleID.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v48;
    _os_log_impl(&dword_223B4A000, v47, OS_LOG_TYPE_DEFAULT, "<<< ADAPT [%s]", &buf, 0xCu);
  }

LABEL_38:
  *&buf = v75;
  std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v74 == 1 && v73 == 1 && cf)
  {
    CFRelease(cf);
  }

  *&buf = v70;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v67 == 1 && __p)
  {
    v66 = __p;
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(v60[0]);
  if (SHIBYTE(mBundleID.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(mBundleID.__r_.__value_.__l.__data_);
  }

  v28 = get_adm_log_object();
  if (os_signpost_enabled(v28))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_223B4A000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ADM::Adapt", &unk_223C17543, &buf, 2u);
  }

  return v27;
}

- (BOOL)validateAdaptConfigurationChangeRequest:(const void *)request
{
  v5 = *request;
  if (v5 == 1)
  {
    if (self->_pendingChangeRequest.__engaged_)
    {
      if (self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__size_ != *(request + 3))
      {
LABEL_44:
        v25 = get_adm_log_object();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

        *v31 = 0;
        v26 = "Adapt semantics don't match Negotiated semantics";
        v27 = v31;
LABEL_50:
        _os_log_error_impl(&dword_223B4A000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
        goto LABEL_45;
      }

      begin_node = self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__begin_node_;
      p_end_node = &self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_;
      if (begin_node != &self->_pendingChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_)
      {
        v8 = *(request + 1);
        while (std::equal_to<std::string>::operator()[abi:ne200100](&begin_node[4].__left_, v8 + 4))
        {
          left = begin_node[1].__left_;
          v10 = begin_node;
          if (left)
          {
            do
            {
              begin_node = left;
              left = left->__left_;
            }

            while (left);
          }

          else
          {
            do
            {
              begin_node = v10[2].__left_;
              v11 = begin_node->__left_ == v10;
              v10 = begin_node;
            }

            while (!v11);
          }

          v12 = v8[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v8[2];
              v11 = *v13 == v8;
              v8 = v13;
            }

            while (!v11);
          }

          v8 = v13;
          if (begin_node == p_end_node)
          {
          }
        }

        goto LABEL_44;
      }
    }
  }

  else if (self->_pendingChangeRequest.__engaged_)
  {
  }

  if (self->_activeChangeRequest.__engaged_ && self->_activeChangeRequest.var0.__null_state_ == v5 && self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__size_ == *(request + 3))
  {
    v15 = self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__begin_node_;
    v16 = &self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_;
    if (v15 == &self->_activeChangeRequest.var0.__val_.mIOContextDescription.mSemantics.__tree_.__end_node_)
    {
LABEL_38:
      end = self->_activeChangeRequest.var0.__val_.mIOContextDescription.mStreamIDs.__end_;
      begin = self->_activeChangeRequest.var0.__val_.mIOContextDescription.mStreamIDs.__begin_;
      v24 = *(request + 21);
      if (end - begin == *(request + 22) - v24)
      {
        while (begin != end)
        {
          if (!std::equal_to<std::string>::operator()[abi:ne200100](begin, v24))
          {
            goto LABEL_42;
          }

          begin += 3;
          v24 += 3;
        }

        v28 = get_adm_log_object();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_223B4A000, v28, OS_LOG_TYPE_INFO, "warning: Adapt called without a Negotiate, but request is duplicate so allow for now", buf, 2u);
        }
      }
    }

    else
    {
      v17 = *(request + 1);
      while (std::equal_to<std::string>::operator()[abi:ne200100](&v15[4].__left_, v17 + 4))
      {
        v18 = v15[1].__left_;
        v19 = v15;
        if (v18)
        {
          do
          {
            v15 = v18;
            v18 = v18->__left_;
          }

          while (v18);
        }

        else
        {
          do
          {
            v15 = v19[2].__left_;
            v11 = v15->__left_ == v19;
            v19 = v15;
          }

          while (!v11);
        }

        v20 = v17[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v17[2];
            v11 = *v21 == v17;
            v17 = v21;
          }

          while (!v11);
        }

        v17 = v21;
        if (v15 == v16)
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_42:
  v25 = get_adm_log_object();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = 0;
    v26 = "Adapt called without a Negotiate";
    v27 = &v29;
    goto LABEL_50;
  }

LABEL_45:

  return 0;
}

- (id)doNegotiateConfigurationChange:(id)change simulate:(BOOL)simulate error:(id *)error
{
  simulateCopy = simulate;
  v97[4] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v68 = 0;
  if (*(&self->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&mBundleID, self->_hostDescription.mBundleID.__rep_.__l.__data_, self->_hostDescription.mBundleID.__rep_.__l.__size_);
  }

  else
  {
    mBundleID = self->_hostDescription.mBundleID;
  }

  v9 = get_adm_log_object();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (simulateCopy)
  {
    if (v10)
    {
      p_mBundleID = &mBundleID;
      if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_mBundleID = mBundleID.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *v81 = p_mBundleID;
      _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, ">>> SIMULATE [%s]", buf, 0xCu);
    }

    [(DSPProcessor *)self dumpDiagnosticsWithNSObject:changeCopy name:@"SimulateConfigChange"];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v65);
    v12 = 1;
    v65[0] = 1;
    v66 = 0;
    v67 = 0;
    v13 = get_adm_log_object();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      v14 = "ADM::Simulate";
LABEL_17:
      _os_signpost_emit_with_name_impl(&dword_223B4A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v14, &unk_223C17543, buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      v15 = &mBundleID;
      if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = mBundleID.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *v81 = v15;
      _os_log_impl(&dword_223B4A000, v9, OS_LOG_TYPE_DEFAULT, ">>> NEGOTIATE [%s]", buf, 0xCu);
    }

    [(DSPProcessor *)self dumpDiagnosticsWithNSObject:changeCopy name:@"NegotiateConfigChange"];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v65);
    v65[0] = 1;
    v66 = 0;
    v67 = 0;
    v13 = get_adm_log_object();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      v14 = "ADM::Negotiate";
      v12 = 2;
      goto LABEL_17;
    }

    v12 = 2;
  }

  v68 = v12;
  buf[0] = 0;
  v82[0] = 0;
  v82[1] = 0;
  *&v81[4] = v82;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  LOBYTE(__p) = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v96 = 0;
  memset(v92, 0, sizeof(v92));
  v93 = 0;
  memset(v97, 0, 24);
  if ((adm::utility::convertFromDictionary(changeCopy, buf, v16) & 1) == 0)
  {
    v30 = get_adm_log_object();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v70 = 0;
      _os_log_error_impl(&dword_223B4A000, v30, OS_LOG_TYPE_ERROR, "Failed to convert the config change request dictionary", v70, 2u);
    }

    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
    goto LABEL_49;
  }

  logConfigChangeRequestBasicInfo(buf);
  {
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioDSPManagerErrorDomain" code:1969448551 userInfo:0];
LABEL_49:
    v32 = 0;
    *error = v31;
    goto LABEL_56;
  }

  adm::config_policy::getDeviceConfigurations(&v61, buf, &self->_activeDeviceConfigChanges);
  if (v63)
  {
    adm::config_policy::getIOContextConfiguration(v57, buf);
    v56 = v60;
    if (v60)
    {
      if (!simulateCopy)
      {
        v18 = *(&v61 + 1);
        v17 = v61;
        if (v61 != *(&v61 + 1))
        {
          v55 = 136315394;
          do
          {
            if (*(v17 + 41) == 1)
            {
              v19 = get_adm_log_object();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v20 = v17;
                if (*(v17 + 23) < 0)
                {
                  v20 = *v17;
                }

                if ((*(v17 + 41) & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v21 = *(v17 + 40);
                *v70 = 136315394;
                *&v70[4] = v20;
                *&v70[12] = 1024;
                *&v70[14] = v21;
                _os_log_debug_impl(&dword_223B4A000, v19, OS_LOG_TYPE_DEBUG, "- ref request for device %s => %d", v70, 0x12u);
              }
            }

            v17 += 9;
          }

          while (v17 != v18);
        }

        if (buf[0])
        {
          p_pendingDeviceConfigChanges = &self->_pendingDeviceConfigChanges;
          if (self->_pendingDeviceConfigChanges.__engaged_)
          {
            if (p_pendingDeviceConfigChanges != &v61)
            {
              v23 = *(&v61 + 1);
              v24 = v61;
              v25 = *(&v61 + 1) - v61;
              begin = self->_pendingDeviceConfigChanges.var0.__val_.__begin_;
              if (self->_pendingDeviceConfigChanges.var0.__val_.__cap_ - begin < *(&v61 + 1) - v61)
              {
                v27 = 0x8E38E38E38E38E39 * (v25 >> 3);
                std::vector<adm::DeviceConfiguration>::__vdeallocate(&self->_pendingDeviceConfigChanges);
                if (v27 <= 0x38E38E38E38E38ELL)
                {
                  v28 = 0x1C71C71C71C71C72 * ((self->_pendingDeviceConfigChanges.var0.__val_.__cap_ - self->_pendingDeviceConfigChanges.var0.__val_.__begin_) >> 3);
                  if (v28 <= v27)
                  {
                    v28 = v27;
                  }

                  if (0x8E38E38E38E38E39 * ((self->_pendingDeviceConfigChanges.var0.__val_.__cap_ - self->_pendingDeviceConfigChanges.var0.__val_.__begin_) >> 3) >= 0x1C71C71C71C71C7)
                  {
                    v29 = 0x38E38E38E38E38ELL;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  std::vector<adm::DeviceConfiguration>::__vallocate[abi:ne200100](&self->_pendingDeviceConfigChanges.var0.__val_, v29);
                }

                std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
              }

              end = self->_pendingDeviceConfigChanges.var0.__val_.__end_;
              if (end - begin >= v25)
              {
                if (v61 != *(&v61 + 1))
                {
                  do
                  {
                    std::string::operator=(begin, v24);
                    v44 = *(v24 + 24);
                    v45 = *(v24 + 40);
                    *(begin + 53) = *(v24 + 53);
                    *(begin + 40) = v45;
                    *(begin + 24) = v44;
                    v24 += 72;
                    begin = (begin + 72);
                  }

                  while (v24 != v23);
                  end = self->_pendingDeviceConfigChanges.var0.__val_.__end_;
                }

                while (end != begin)
                {
                  v46 = SHIBYTE(end[-3].__r_.__value_.__r.__words[2]);
                  end -= 3;
                  if (v46 < 0)
                  {
                    operator delete(end->__r_.__value_.__l.__data_);
                  }
                }

                self->_pendingDeviceConfigChanges.var0.__val_.__end_ = begin;
              }

              else
              {
                v55 = *(&v61 + 1);
                if (end == begin)
                {
                  v41 = v61;
                }

                else
                {
                  v41 = (v61 + end - begin);
                  do
                  {
                    std::string::operator=(begin, v24);
                    v42 = *(v24 + 24);
                    v43 = *(v24 + 40);
                    *(begin + 53) = *(v24 + 53);
                    *(begin + 40) = v43;
                    *(begin + 24) = v42;
                    v24 += 72;
                    begin = (begin + 72);
                  }

                  while (v24 != v41);
                  end = self->_pendingDeviceConfigChanges.var0.__val_.__end_;
                }

                self->_pendingDeviceConfigChanges.var0.__val_.__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<adm::DeviceConfiguration>,adm::DeviceConfiguration*,adm::DeviceConfiguration*,adm::DeviceConfiguration*>(&self->_pendingDeviceConfigChanges, v41, v55, end);
              }
            }
          }

          else
          {
            p_pendingDeviceConfigChanges->var0.__val_.__begin_ = 0;
            self->_pendingDeviceConfigChanges.var0.__val_.__end_ = 0;
            self->_pendingDeviceConfigChanges.var0.__val_.__cap_ = 0;
            *v70 = &self->_pendingDeviceConfigChanges;
            v70[8] = 0;
            if (*(&v61 + 1) != v61)
            {
              std::vector<adm::DeviceConfiguration>::__vallocate[abi:ne200100](&self->_pendingDeviceConfigChanges.var0.__val_, 0x8E38E38E38E38E39 * ((*(&v61 + 1) - v61) >> 3));
            }

            self->_pendingDeviceConfigChanges.__engaged_ = 1;
          }
        }

        v47 = [(adm::utility *)changeCopy copy];
        pendingConfiguration = self->_pendingConfiguration;
        self->_pendingConfiguration = v47;

        remoteProcessingBlockHost = self->_remoteProcessingBlockHost;
        if (remoteProcessingBlockHost)
        {
          [(RPBHost *)remoteProcessingBlockHost setUserInfo:self->_pendingConfiguration error:0];
        }

        std::optional<adm::ConfigurationChangeRequest>::operator=[abi:ne200100]<adm::ConfigurationChangeRequest,void>(&self->_pendingChangeRequest, buf);
      }

      memset(v70, 0, sizeof(v70));
      std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(v70, *v57, *&v57[2], 0xCCCCCCCCCCCCCCCDLL * ((*&v57[2] - *v57) >> 3));
      v71 = 0;
      v72 = 0;
      v73 = 0;
      std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(&v71, v58, v59, 0xCCCCCCCCCCCCCCCDLL * ((v59 - v58) >> 3));
      v74 = v61;
      v75 = v62;
      v62 = 0;
      v61 = 0uLL;
      v32 = adm::utility::convertToDictionary(v70, v50);
      v69 = &v74;
      std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&v69);
      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      if (*v70)
      {
        *&v70[8] = *v70;
        operator delete(*v70);
      }

      if (simulateCopy)
      {
        [(DSPProcessor *)self dumpDiagnosticsWithNSObject:v32 name:@"SimulateResponse"];
        v51 = get_adm_log_object();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v52 = &mBundleID;
        if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v52 = mBundleID.__r_.__value_.__r.__words[0];
        }

        *v70 = 136315138;
        *&v70[4] = v52;
        v53 = "<<< SIMULATE [%s]";
      }

      else
      {
        [(DSPProcessor *)self dumpDiagnosticsWithNSObject:v32 name:@"NegotiateResponse"];
        v51 = get_adm_log_object();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v54 = &mBundleID;
        if ((mBundleID.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = mBundleID.__r_.__value_.__r.__words[0];
        }

        *v70 = 136315138;
        *&v70[4] = v54;
        v53 = "<<< NEGOTIATE [%s]";
      }

      _os_log_impl(&dword_223B4A000, v51, OS_LOG_TYPE_DEFAULT, v53, v70, 0xCu);
LABEL_102:

      if (v56)
      {
        std::__destroy_at[abi:ne200100]<adm::IOContextConfiguration,0>(v57);
      }

      goto LABEL_54;
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = v57[0];
    v76 = *MEMORY[0x277CCA450];
    v77 = @"ADM failed to determine IOContext configuration";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    *error = [v36 errorWithDomain:@"AudioDSPManagerErrorDomain" code:v37 userInfo:v38];
  }

  else
  {
    v33 = MEMORY[0x277CCA9B8];
    v34 = v61;
    v78 = *MEMORY[0x277CCA450];
    v79 = @"ADM failed to determine device configuration";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    *error = [v33 errorWithDomain:@"AudioDSPManagerErrorDomain" code:v34 userInfo:v35];
  }

  v32 = 0;
LABEL_54:
  if (v63 == 1)
  {
    *v70 = &v61;
    std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](v70);
  }

LABEL_56:
  *v70 = v97;
  std::vector<adm::DeviceDescription>::__destroy_vector::operator()[abi:ne200100](v70);
  if (v96 == 1 && v95 == 1 && cf)
  {
    CFRelease(cf);
  }

  *v70 = v92;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](v70);
  if (v89 == 1 && __p)
  {
    v88 = __p;
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(v82[0]);
  if (SHIBYTE(mBundleID.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(mBundleID.__r_.__value_.__l.__data_);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,adm::ScopedSignpostSimulate,adm::ScopedSignpostNegotiate>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v65);

  return v32;
}

- (id)negotiateConfigurationChange:(id)change error:(id *)error
{
  v4 = [(DSPProcessor *)self doNegotiateConfigurationChange:change simulate:0 error:error];

  return v4;
}

- (id)simulateConfigurationChange:(id)change error:(id *)error
{
  v4 = [(DSPProcessor *)self doNegotiateConfigurationChange:change simulate:1 error:error];

  return v4;
}

- (void)dealloc
{
  [(DSPProcessor *)self unregisterExternalNotifications];
  remoteProcessingBlockItem = self->_remoteProcessingBlockItem;
  if (remoteProcessingBlockItem)
  {
    superHost = [(RPBItem *)remoteProcessingBlockItem superHost];
    [superHost removeItem:self->_remoteProcessingBlockItem];
  }

  if (self->_remoteProcessingBlockHost)
  {
    mEMORY[0x277D46130] = [MEMORY[0x277D46130] sharedInstance];
    [mEMORY[0x277D46130] removeHost:self->_remoteProcessingBlockHost];
  }

  v6 = get_adm_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223B4A000, v6, OS_LOG_TYPE_DEFAULT, "DSPProcessor destroyed", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = DSPProcessor;
  [(DSPProcessor *)&v7 dealloc];
}

- (DSPProcessor)initWithHostDescription:(id)description hostCallback:(id)callback systemConfiguration:(SystemConfiguration *)configuration
{
  v19 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  callbackCopy = callback;
  v17.receiver = self;
  v17.super_class = DSPProcessor;
  v11 = [(DSPProcessor *)&v17 init];
  if (v11)
  {
    v12 = [descriptionCopy copy];
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    if ((adm::utility::convertFromDictionary(descriptionCopy, v11 + 2, v14) & 1) == 0)
    {
      v15 = get_adm_log_object();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_223B4A000, v15, OS_LOG_TYPE_ERROR, "Failed to convert the host description dictionary. Proceeding without it", buf, 2u);
      }
    }

    adm::SystemConfiguration::operator=((v11 + 64), configuration);
    std::optional<adm::graph::GraphBuilder>::emplace[abi:ne200100]<adm::SystemConfiguration &,adm::HostDescription &,void>((v11 + 328), (v11 + 64), v11 + 1);
    std::optional<adm::graph::NodeManager>::emplace[abi:ne200100]<adm::SystemConfiguration &,void>(v11 + 81, (v11 + 64));
  }

  [0 dumpDiagnosticsWithNSObject:descriptionCopy name:@"HostDescription"];

  return 0;
}

- (uint64_t)initWithHostDescription:hostCallback:systemConfiguration:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z73-[DSPProcessor initWithHostDescription:hostCallback:systemConfiguration:]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithHostDescription:hostCallback:systemConfiguration:
{

  JUMPOUT(0x223DF43A0);
}

- (id)initWithHostDescription:hostCallback:systemConfiguration:
{
  *a2 = &unk_28371AAF8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (void)disconnectRemoteProcessingBlockServer:(id)server host:(id)host
{
  serverCopy = server;
  hostCopy = host;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_remoteProcessingBlockItem)
  {
    [hostCopy removeItem:?];
    remoteProcessingBlockItem = selfCopy->_remoteProcessingBlockItem;
    selfCopy->_remoteProcessingBlockItem = 0;
  }

  if (selfCopy->_remoteProcessingBlockHost)
  {
    [serverCopy removeHost:?];
    remoteProcessingBlockHost = selfCopy->_remoteProcessingBlockHost;
    selfCopy->_remoteProcessingBlockHost = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)connectRemoteProcessingBlockServer:(id)server host:(id)host
{
  serverCopy = server;
  hostCopy = host;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_remoteProcessingBlockItem)
  {
    p_hostDescription = &selfCopy->_hostDescription;
    if (*(&selfCopy->_hostDescription.mBundleID.__rep_.__l + 23) < 0)
    {
      p_hostDescription = p_hostDescription->__data_;
    }

    p_var0 = &selfCopy->_hostDescription.var0;
    if (selfCopy->_anon_30[15] < 0)
    {
      p_var0 = *p_var0;
    }

    p_var0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %s", p_hostDescription, p_var0];
    v11 = objc_alloc(MEMORY[0x277D46118]);
    v12 = [v11 initWithName:p_var0 inputs:*MEMORY[0x277CBEBE8] outputs:*MEMORY[0x277CBEBE8]];
    remoteProcessingBlockItem = selfCopy->_remoteProcessingBlockItem;
    selfCopy->_remoteProcessingBlockItem = v12;

    [(RPBItem *)selfCopy->_remoteProcessingBlockItem setUserInfo:selfCopy->_nsDescription error:0];
    [hostCopy addItem:selfCopy->_remoteProcessingBlockItem];
    v14 = [objc_alloc(MEMORY[0x277D46110]) initWithName:p_var0];
    remoteProcessingBlockHost = selfCopy->_remoteProcessingBlockHost;
    selfCopy->_remoteProcessingBlockHost = v14;

    activeConfiguration = selfCopy->_activeConfiguration;
    if (activeConfiguration)
    {
      [(RPBHost *)selfCopy->_remoteProcessingBlockHost setUserInfo:activeConfiguration error:0];
    }

    [serverCopy addHost:selfCopy->_remoteProcessingBlockHost toItem:selfCopy->_remoteProcessingBlockItem];
  }

  objc_sync_exit(selfCopy);
}

@end