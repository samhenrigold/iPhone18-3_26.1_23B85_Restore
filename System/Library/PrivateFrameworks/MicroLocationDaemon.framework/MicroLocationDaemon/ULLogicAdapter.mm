@interface ULLogicAdapter
+ (id)_newULServiceDescriptorFromInternalDescriptor:(const void *)descriptor;
- (BOOL)isDataAvailable;
- (BOOL)purgeMicroLocationData;
- (ULLogicAdapter)init;
- (id)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types clientId:(id)id;
- (id)deleteServiceWithIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier;
- (id)diagnosticInfo;
- (id)exportDatabase;
- (id)getMicroLocationInternalVersion;
- (id)imageFeaturesDebugWithTask:(unint64_t)task additionalInformation:(id)information;
- (id)polarisDebugWithTask:(unint64_t)task;
- (id)purgeDatabase;
- (id)queryServicesForClient:(id)client;
- (uint64_t)_analyticsExecute:;
- (uint64_t)_exportiCloudBackupExecute:;
- (uint64_t)_maintenanceExecute:;
- (uint64_t)_routineStateAnalyzerExecute:;
- (uint64_t)_wifiAnalyticsExecute:;
- (void)_analyticsExecute:(id)execute;
- (void)_exportiCloudBackupExecute:(id)execute;
- (void)_handleULAirplaneModeMonitorEventAirplaneMode:(id)mode;
- (void)_handleULBatteryModeMonitorEventLowPowerMode:(id)mode;
- (void)_handleULBatteryModeMonitorEventUnlimitedPower:(id)power;
- (void)_handleULBluetoothMonitorEventPowerOn:(id)on;
- (void)_handleULBuddyMonitorEventBuddyComplete:(id)complete;
- (void)_handleULDataProtectionMonitorEventDataAvailable:(id)available;
- (void)_handleULDisplayMonitorEventDisplayState:(id)state;
- (void)_handleULDisplayMonitorEventDisplayState_OSX:(id)x;
- (void)_handleULInternalNotifyMonitorEventLocalize:(id)localize;
- (void)_handleULInternalNotifyMonitorEventPurge:(id)purge;
- (void)_handleULInternalNotifyMonitorEventRecord:(id)record;
- (void)_handleULInternalNotifyMonitorEventSettingsRefrsh:(id)refrsh;
- (void)_handleULPrivacyMonitorEventLocationServices:(id)services;
- (void)_handleULRapportMonitorEventDeviceFound:(id)found;
- (void)_handleULSleepWakeMonitorEvent:(id)event;
- (void)_learnExecute:(id)execute;
- (void)_maintenanceExecute:(id)execute;
- (void)_registerOnDatabaseValidNotification;
- (void)_registerOrUnregisterForActivities:(BOOL)activities;
- (void)_registerOrUnregisterForBackgroundTaskWithRequest:(id)request withSelector:(SEL)selector isRegister:(BOOL)register;
- (void)_routineStateAnalyzerExecute:(id)execute;
- (void)_start;
- (void)_startMonitoringEvents;
- (void)_stop;
- (void)_stopMonitoringEvents;
- (void)_wifiAnalyticsExecute:(id)execute;
- (void)addLabelForConnectionToken:(id)token label:(id)label;
- (void)addLabelForConnectionToken:(id)token label:(id)label betweenStartDate:(id)date andEndDate:(id)endDate;
- (void)createCustomLoiAtCurrentLocationForConnectionToken:(id)token withConfiguration:(id)configuration;
- (void)dealloc;
- (void)disconnectWithConnectionToken:(id)token clientIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
- (void)removeCustomLoiWithIdentifier:(id)identifier forConnectionToken:(id)token;
- (void)removePendingConnectionRequestsByConnectionToken:(id)token;
- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information clientId:(id)id;
- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information clientId:(id)id;
- (void)requestModelLearningForConnectionToken:(id)token requestIdentifier:(id)identifier;
- (void)requestObservationForConnectionToken:(id)token clientIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
- (void)requestPredictionForConnectionToken:(id)token clientIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier;
- (void)runWithConfiguration:(id)configuration serviceIdentifier:(id)identifier legacyServiceIdentifier:(id)serviceIdentifier clientIdentifier:(id)clientIdentifier connectionToken:(id)token requestIdentifier:(id)requestIdentifier;
- (void)setDependencies:()unique_ptr<ULLogicAdapterImpl peripheralControl:(std:(id)control :(id)a5 default_delete<ULLogicAdapterImpl>>)a3 environment:;
- (void)start;
- (void)startRapportSession;
- (void)stopRapportSession;
@end

@implementation ULLogicAdapter

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULDisplayMonitorEventDisplayState:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULDataProtectionMonitorEventDataAvailable:v5];
  }
}

- (BOOL)isDataAvailable
{
  environment = [(ULLogicAdapter *)self environment];
  dataProtectionMonitor = [environment dataProtectionMonitor];
  isDataAvailable = [dataProtectionMonitor isDataAvailable];

  return isDataAvailable;
}

- (ULLogicAdapter)init
{
  v3.receiver = self;
  v3.super_class = ULLogicAdapter;
  return [(ULLogicAdapter *)&v3 init];
}

- (void)setDependencies:()unique_ptr<ULLogicAdapterImpl peripheralControl:(std:(id)control :(id)a5 default_delete<ULLogicAdapterImpl>>)a3 environment:
{
  controlCopy = control;
  v8 = a5;
  queue = [v8 queue];
  dispatch_assert_queue_V2(queue);

  if (self->logicAdapterImpl.__ptr_)
  {
    [ULLogicAdapter setDependencies:peripheralControl:environment:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 118, "[ULLogicAdapter setDependencies:peripheralControl:environment:]");
    __break(1u);
  }

  else
  {
    v10 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    ptr = self->logicAdapterImpl.__ptr_;
    self->logicAdapterImpl.__ptr_ = v10;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    [(ULLogicAdapter *)self setPeripheralControl:controlCopy];
    [(ULLogicAdapter *)self setEnvironment:v8];
  }
}

- (void)start
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = _CLLogObjectForCategory_MicroLocation_Default(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v1, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Method start can only be called after setDependencies, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v3 = _CLLogObjectForCategory_MicroLocation_Default(v2);
  if (os_signpost_enabled(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Method start can only be called after setDependencies", "{msg%{public}.0s:Method start can only be called after setDependencies, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Method start can only be called after setDependencies, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 128, "[ULLogicAdapter start]");
  __break(1u);
}

void __23__ULLogicAdapter_start__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "databaseValid - log daemon started", v4, 2u);
  }

  v3 = +[ULHomeSlamAnalytics shared];
  [v3 logEventDaemonStartedAtTimestamp:*(a1 + 32)];
}

- (void)dealloc
{
  [(ULLogicAdapter *)self _stop];
  v3.receiver = self;
  v3.super_class = ULLogicAdapter;
  [(ULLogicAdapter *)&v3 dealloc];
}

- (BOOL)purgeMicroLocationData
{
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  v5 = CLMicroLocationLogic::onResetLocationData(*(self->logicAdapterImpl.__ptr_ + 13));
  if (([MEMORY[0x277D28868] isMac] & 1) == 0)
  {
    +[ULCoreDuetPublisher clearMicroLocationVisitStream];
  }

  return v5;
}

- (id)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types clientId:(id)id
{
  v64 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  idCopy = id;
  selfCopy = self;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  std::vector<ULLocationTypeEnum>::vector[abi:ne200100](&__src, [typesCopy count]);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = typesCopy;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v10);
        }

        locationType = [*(*(&v51 + 1) + 8 * i) locationType];
        v15 = v56;
        if (v56 >= v57)
        {
          v17 = __src;
          v18 = v56 - __src;
          v19 = (v56 - __src) >> 3;
          v20 = v19 + 1;
          if ((v19 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v21 = v57 - __src;
          if ((v57 - __src) >> 2 > v20)
          {
            v20 = v21 >> 2;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v22);
          }

          *(8 * v19) = locationType;
          v16 = (8 * v19 + 8);
          memcpy(0, v17, v18);
          v23 = __src;
          __src = 0;
          v56 = v16;
          v57 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v56 = locationType;
          v16 = v15 + 1;
        }

        v56 = v16;
      }

      v11 = [v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v11);
  }

  std::string::basic_string[abi:ne200100]<0>(v49, "");
  v24 = +[ULEventLog shared];
  v25 = MEMORY[0x277CCACA8];
  v26 = ULServiceTypeToString();
  v27 = idCopy;
  v28 = [v25 stringWithFormat:@"Service Created Event type: %@, ClientId: %s", v26, objc_msgSend(idCopy, "UTF8String")];
  [v24 log:v28];

  v29 = *(selfCopy->logicAdapterImpl.__ptr_ + 15);
  v30 = idCopy;
  std::string::basic_string[abi:ne200100]<0>(v47, [idCopy UTF8String]);
  v46 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v46);
  v31 = boost::uuids::random_generator_pure::operator()(&v46);
  v33 = v32;
  __p = 0;
  v44 = 0;
  v45 = 0;
  std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum*,ULLocationTypeEnum*>(&__p, __src, v56, (v56 - __src) >> 3);
  (*(*v29 + 16))(v60, v29, v47, v31, v33, type, &__p, v49);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  boost::uuids::detail::random_provider_base::destroy(&v46);
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v34 = objc_opt_new();
  if (v61 == 1)
  {
    v35 = [ULLogicAdapter _newULServiceDescriptorFromInternalDescriptor:v60];
    [v34 setServiceDescriptor:v35];
  }

  if (v62 != -1)
  {
    v58 = *MEMORY[0x277CCA450];
    v59 = @"createServiceWithServiceType failed internally";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v37 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = [v37 initWithDomain:@"ULLogicDomain" code:v62 userInfo:v36];
    [v34 setError:v38];
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (__src)
  {
    v56 = __src;
    operator delete(__src);
  }

  return v34;
}

- (id)deleteServiceWithIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  std::string::basic_string[abi:ne200100]<0>(v28, "");
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v35, identifierCopy);
  if ((v36 & 1) == 0)
  {
    [ULLogicAdapter deleteServiceWithIdentifier:clientIdentifier:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 189, "[ULLogicAdapter deleteServiceWithIdentifier:clientIdentifier:]");
    __break(1u);
  }

  v10 = +[ULEventLog shared];
  if ((v36 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v11 = MEMORY[0x277CCACA8];
  boost::lexical_cast<std::string,boost::uuids::uuid>(v35, &__p);
  v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v13 = __p.__r_.__value_.__r.__words[0];
  v14 = clientIdentifierCopy;
  uTF8String = [clientIdentifierCopy UTF8String];
  p_p = &__p;
  if (v12 < 0)
  {
    p_p = v13;
  }

  v17 = [v11 stringWithFormat:@"Service Deleted Event serviceId: %s, clientId: %s", p_p, uTF8String];
  [v10 log:v17];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *(self->logicAdapterImpl.__ptr_ + 15);
  v19 = clientIdentifierCopy;
  std::string::basic_string[abi:ne200100]<0>(v26, [clientIdentifierCopy UTF8String]);
  if ((v36 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  (*(*v18 + 24))(&__p, v18, v26, v35[0], v35[1], v28);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v20 = objc_opt_new();
  if (v33 == 1)
  {
    v21 = [ULLogicAdapter _newULServiceDescriptorFromInternalDescriptor:&__p];
    [v20 setServiceDescriptor:v21];
  }

  if (v34 != -1)
  {
    v30 = *MEMORY[0x277CCA450];
    v31 = @"deleteServiceWithIdentifier failed internally";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v23 initWithDomain:@"ULLogicDomain" code:v34 userInfo:v22];
    [v20 setError:v24];
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

- (id)queryServicesForClient:(id)client
{
  clientCopy = client;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  std::string::basic_string[abi:ne200100]<0>(v18, "");
  v7 = *(self->logicAdapterImpl.__ptr_ + 15);
  std::string::basic_string[abi:ne200100]<0>(__p, [clientCopy UTF8String]);
  (*(*v7 + 32))(&v16, v7, __p, v18);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = objc_opt_new();
  v9 = v16;
  v10 = v17;
  if (v16 != v17)
  {
    do
    {
      v11 = [ULLogicAdapter _newULServiceDescriptorFromInternalDescriptor:v9];
      [v8 addObject:v11];

      v9 += 32;
    }

    while (v9 != v10);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v8];

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return v12;
}

- (void)runWithConfiguration:(id)configuration serviceIdentifier:(id)identifier legacyServiceIdentifier:(id)serviceIdentifier clientIdentifier:(id)clientIdentifier connectionToken:(id)token requestIdentifier:(id)requestIdentifier
{
  v69 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  serviceIdentifierCopy = serviceIdentifier;
  clientIdentifierCopy = clientIdentifier;
  tokenCopy = token;
  requestIdentifierCopy = requestIdentifier;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v67, identifierCopy);
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v65, tokenCopy);
  if ((v68 & 1) == 0)
  {
    v37 = _CLLogObjectForCategory_MicroLocation_Default(v19);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "serviceId.has_value()";
      _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:runWithConfiguration without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v39 = _CLLogObjectForCategory_MicroLocation_Default(v38);
    if (os_signpost_enabled(v39))
    {
      __p = 68289539;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "serviceId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "runWithConfiguration without identifier", "{msg%{public}.0s:runWithConfiguration without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v41 = _CLLogObjectForCategory_MicroLocation_Default(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "serviceId.has_value()";
      _os_log_impl(&dword_258FE9000, v41, OS_LOG_TYPE_INFO, "{msg%{public}.0s:runWithConfiguration without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v42 = 228;
LABEL_39:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", v42, "[ULLogicAdapter runWithConfiguration:serviceIdentifier:legacyServiceIdentifier:clientIdentifier:connectionToken:requestIdentifier:]");
    __break(1u);
  }

  if ((v66 & 1) == 0)
  {
    v43 = _CLLogObjectForCategory_MicroLocation_Default(v19);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:runWithConfiguration without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v45 = _CLLogObjectForCategory_MicroLocation_Default(v44);
    if (os_signpost_enabled(v45))
    {
      __p = 68289539;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "connectionId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "runWithConfiguration without connectionToken", "{msg%{public}.0s:runWithConfiguration without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v41 = _CLLogObjectForCategory_MicroLocation_Default(v46);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      v59 = 2082;
      v60 = "";
      v61 = 2082;
      v62 = "assert";
      v63 = 2081;
      v64 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v41, OS_LOG_TYPE_INFO, "{msg%{public}.0s:runWithConfiguration without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v42 = 229;
    goto LABEL_39;
  }

  v20 = +[ULEventLog shared];
  if ((v68 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v21 = MEMORY[0x277CCACA8];
  boost::lexical_cast<std::string,boost::uuids::uuid>(v67, &__p);
  v22 = SBYTE3(v62);
  v23 = __p;
  v24 = clientIdentifierCopy;
  uTF8String = [clientIdentifierCopy UTF8String];
  p_p = &__p;
  if (v22 < 0)
  {
    p_p = v23;
  }

  configurationCopy = [v21 stringWithFormat:@"Service runWithConfiguration Event serviceId: %s, clientId: %s, configuration: %@", p_p, uTF8String, configurationCopy];
  [v20 log:configurationCopy];

  if (SBYTE3(v62) < 0)
  {
    operator delete(__p);
  }

  if ((v66 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v28 = (*(**(self->logicAdapterImpl.__ptr_ + 15) + 104))(*(self->logicAdapterImpl.__ptr_ + 15), v65);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (serviceIdentifierCopy)
  {
    CLMicroLocationProtobufHelper::boostUuidFromNSUUID(&v56, serviceIdentifierCopy);
  }

  else
  {
    LOBYTE(v56) = 0;
    v57 = 0;
  }

  v29 = *(self->logicAdapterImpl.__ptr_ + 15);
  v30 = clientIdentifierCopy;
  std::string::basic_string[abi:ne200100]<0>(v50, [clientIdentifierCopy UTF8String]);
  if (v68 != 1 || (v54 = v56, v55 = v57, (v66 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v31 = (*(*v29 + 40))(v29, v50, v67[0], v67[1], &v54, v65[0], v65[1], configurationCopy, &__p);
  v33 = v32;
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v31 == -1)
  {
    v36 = 0;
  }

  else
  {
    v34 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    v53 = @"runWithConfiguration failed internally";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v36 = [v34 errorWithDomain:@"ULLogicDomain" code:v31 userInfo:v35];

    if ((v28 & 1) == 0)
    {
      [*(self->logicAdapterImpl.__ptr_ + 8) didFailWithError:v36 toConnection:tokenCopy];
      goto LABEL_22;
    }
  }

  if ((v33 & 1) == 0)
  {
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:requestIdentifierCopy withError:v36 toConnection:tokenCopy];
  }

LABEL_22:

  if (SBYTE3(v62) < 0)
  {
    operator delete(__p);
  }
}

- (void)disconnectWithConnectionToken:(id)token clientIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  v26 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v24, tokenCopy);
  if ((v25 & 1) == 0)
  {
    [ULLogicAdapter disconnectWithConnectionToken:clientIdentifier:requestIdentifier:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 265, "[ULLogicAdapter disconnectWithConnectionToken:clientIdentifier:requestIdentifier:]");
    __break(1u);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "");
  v13 = *(self->logicAdapterImpl.__ptr_ + 15);
  v14 = identifierCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [identifierCopy UTF8String]);
  if ((v25 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v15 = (*(*v13 + 48))(v13, __p, v24[0], v24[1], v20);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 != -1)
  {
    v22 = *MEMORY[0x277CCA450];
    v23 = @"disconnect service failed internally";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:v15 userInfo:v16];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:requestIdentifierCopy withError:v17 toConnection:tokenCopy];
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

- (void)requestObservationForConnectionToken:(id)token clientIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  v42 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v40, tokenCopy);
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v38, requestIdentifierCopy);
  if ((v41 & 1) == 0)
  {
    v17 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request observation without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default(v18);
    if (os_signpost_enabled(v19))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "connectionId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request observation without connectionToken", "{msg%{public}.0s:request observation without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = _CLLogObjectForCategory_MicroLocation_Default(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request observation without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v22 = 285;
LABEL_22:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", v22, "[ULLogicAdapter requestObservationForConnectionToken:clientIdentifier:requestIdentifier:]");
    __break(1u);
  }

  if ((v39 & 1) == 0)
  {
    v23 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request observation without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v25 = _CLLogObjectForCategory_MicroLocation_Default(v24);
    if (os_signpost_enabled(v25))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "requestId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request observation without requestIdentifier", "{msg%{public}.0s:request observation without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = _CLLogObjectForCategory_MicroLocation_Default(v26);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request observation without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v22 = 286;
    goto LABEL_22;
  }

  v27 = cl::chrono::CFAbsoluteTimeClock::now();
  if (v41 != 1 || (v39 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = *(self->logicAdapterImpl.__ptr_ + 15);
  buf[0] = 0;
  BYTE6(v33) = 0;
  if (((*(*v14 + 64))(v14, v40[0], v40[1], v38[0], v38[1], buf, &v27) & 1) == 0)
  {
    v28 = *MEMORY[0x277CCA450];
    v29 = @"request observation failed internally";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:12 userInfo:v15];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:requestIdentifierCopy withError:v16 toConnection:tokenCopy];
  }
}

- (void)requestPredictionForConnectionToken:(id)token clientIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier
{
  v39 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v37, tokenCopy);
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v35, requestIdentifierCopy);
  if ((v38 & 1) == 0)
  {
    v16 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request prediction without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default(v17);
    if (os_signpost_enabled(v18))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "connectionId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request prediction without connectionToken", "{msg%{public}.0s:request prediction without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request prediction without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = 307;
LABEL_22:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", v21, "[ULLogicAdapter requestPredictionForConnectionToken:clientIdentifier:requestIdentifier:]");
    __break(1u);
  }

  if ((v36 & 1) == 0)
  {
    v22 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request prediction without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default(v23);
    if (os_signpost_enabled(v24))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "requestId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request prediction without requestIdentifier", "{msg%{public}.0s:request prediction without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default(v25);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request prediction without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = 308;
    goto LABEL_22;
  }

  *buf = cl::chrono::CFAbsoluteTimeClock::now();
  if (v38 != 1 || (v36 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (((*(**(self->logicAdapterImpl.__ptr_ + 15) + 56))(*(self->logicAdapterImpl.__ptr_ + 15), v37[0], v37[1], v35, buf, 1) & 1) == 0)
  {
    v26 = *MEMORY[0x277CCA450];
    v27 = @"request prediction failed internally";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:29 userInfo:v14];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:requestIdentifierCopy withError:v15 toConnection:tokenCopy];
  }
}

- (void)addLabelForConnectionToken:(id)token label:(id)label
{
  v13 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  labelCopy = label;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v11, tokenCopy);
  if ((v12 & 1) == 0)
  {
    [ULLogicAdapter addLabelForConnectionToken:label:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 328, "[ULLogicAdapter addLabelForConnectionToken:label:]");
    __break(1u);
  }

  (*(**(self->logicAdapterImpl.__ptr_ + 15) + 72))(*(self->logicAdapterImpl.__ptr_ + 15), v11, labelCopy);
}

- (void)addLabelForConnectionToken:(id)token label:(id)label betweenStartDate:(id)date andEndDate:(id)endDate
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  labelCopy = label;
  dateCopy = date;
  endDateCopy = endDate;
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v17, tokenCopy);
  if ((v18 & 1) == 0)
  {
    [ULLogicAdapter addLabelForConnectionToken:label:betweenStartDate:andEndDate:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 344, "[ULLogicAdapter addLabelForConnectionToken:label:betweenStartDate:andEndDate:]");
    __break(1u);
  }

  (*(**(self->logicAdapterImpl.__ptr_ + 15) + 80))(*(self->logicAdapterImpl.__ptr_ + 15), v17, labelCopy, dateCopy, endDateCopy);
}

- (void)createCustomLoiAtCurrentLocationForConnectionToken:(id)token withConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  configurationCopy = configuration;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = tokenCopy;
    v18 = 2112;
    v19 = configurationCopy;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "createCustomLoiAtCurrentLocationForConnectionToken: %@ withConfiguration: %@", buf, 0x16u);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(buf, tokenCopy);
  if ((BYTE2(v19) & 1) == 0)
  {
    [ULLogicAdapter createCustomLoiAtCurrentLocationForConnectionToken:withConfiguration:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 359, "[ULLogicAdapter createCustomLoiAtCurrentLocationForConnectionToken:withConfiguration:]");
    __break(1u);
  }

  if ((CLMicroLocationLogic::createCustomLoiAtCurrentLocation(*(self->logicAdapterImpl.__ptr_ + 13), buf, configurationCopy) & 1) == 0)
  {
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Enable MicroLocation at current location failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:34 userInfo:v11];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCreateCustomLoiAtCurrentLocationWithError:v12 forConnection:tokenCopy];
  }
}

- (void)removeCustomLoiWithIdentifier:(id)identifier forConnectionToken:(id)token
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = tokenCopy;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "removeCustomLoiWithIdentifier: %@, forConnectionToken: %@", buf, 0x16u);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(buf, tokenCopy);
  if ((buf[16] & 1) == 0)
  {
    [ULLogicAdapter removeCustomLoiWithIdentifier:forConnectionToken:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 378, "[ULLogicAdapter removeCustomLoiWithIdentifier:forConnectionToken:]");
    goto LABEL_17;
  }

  if (!identifierCopy)
  {
    *v16.data = 0;
    *&v16.data[8] = 0;
    v17 = 0;
    goto LABEL_15;
  }

  objc_msgSend_boostUUID(identifierCopy);
  if ((v17 & 1) == 0)
  {
LABEL_15:
    [ULLogicAdapter removeCustomLoiWithIdentifier:forConnectionToken:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 380, "[ULLogicAdapter removeCustomLoiWithIdentifier:forConnectionToken:]");
LABEL_17:
    __break(1u);
  }

  if ((buf[16] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (CLMicroLocationLogic::removeCustomLoiWithIdentifier(*(self->logicAdapterImpl.__ptr_ + 13), &v16, *buf))
  {
    v11 = 0;
  }

  else
  {
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Remove Custom Loi failed";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:0 userInfo:v12];
  }

  [*(self->logicAdapterImpl.__ptr_ + 8) didRemoveCustomLoiWithIdentifier:identifierCopy forConnection:tokenCopy withError:v11];
}

- (void)removePendingConnectionRequestsByConnectionToken:(id)token
{
  v11 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf.data = 138412290;
    *&buf.data[4] = tokenCopy;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "remove pending connection requests by ConnectionToken: %@", buf.data, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(&buf, tokenCopy);
  if ((v10 & 1) == 0)
  {
    [ULLogicAdapter removePendingConnectionRequestsByConnectionToken:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 400, "[ULLogicAdapter removePendingConnectionRequestsByConnectionToken:]");
    __break(1u);
  }

  CLMicroLocationLogic::removePendingConnectionRequestsByConnectionToken(*(self->logicAdapterImpl.__ptr_ + 13), buf);
}

- (id)exportDatabase
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = (*(**(self->logicAdapterImpl.__ptr_ + 12) + 80))(*(self->logicAdapterImpl.__ptr_ + 12));
  [v3 setExportedURLs:v4];

  exportedURLs = [v3 exportedURLs];
  v6 = [exportedURLs count];

  if (!v6)
  {
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"export database failed internally";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:36 userInfo:v7];
    [v3 setError:v8];
  }

  return v3;
}

- (id)purgeDatabase
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([(ULLogicAdapter *)self purgeMicroLocationData])
  {
    v2 = 0;
  }

  else
  {
    v5 = *MEMORY[0x277CCA450];
    v6[0] = @"purge database failed internally";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:37 userInfo:v3];
  }

  return v2;
}

- (id)imageFeaturesDebugWithTask:(unint64_t)task additionalInformation:(id)information
{
  informationCopy = information;
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    if (task > 1)
    {
      if (task == 2)
      {
        peripheralControl = [(ULLogicAdapter *)self peripheralControl];
        [peripheralControl saveWithIdentifiers:informationCopy];
        goto LABEL_16;
      }

      if (task == 3)
      {
        peripheralControl = [(ULLogicAdapter *)self peripheralControl];
        [peripheralControl dropWithIdentifiers:informationCopy];
        goto LABEL_16;
      }
    }

    else
    {
      if (!task)
      {
        peripheralControl2 = [(ULLogicAdapter *)self peripheralControl];
        getPoseEstimation = [peripheralControl2 getPoseEstimation];

        if (getPoseEstimation)
        {
          v9 = [getPoseEstimation debugDescription];
LABEL_18:

          goto LABEL_19;
        }

LABEL_17:
        v9 = 0;
        goto LABEL_18;
      }

      if (task == 1)
      {
        peripheralControl = [(ULLogicAdapter *)self peripheralControl];
        [peripheralControl load];
LABEL_16:

        getPoseEstimation = 0;
        goto LABEL_17;
      }
    }

    [ULLogicAdapter imageFeaturesDebugWithTask:additionalInformation:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 459, "[ULLogicAdapter imageFeaturesDebugWithTask:additionalInformation:]");
    __break(1u);
    goto LABEL_23;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
LABEL_23:
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_FAULT, "imageFeaturesDebugWithTask called on non-internal platform. ignored", buf, 2u);
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (id)polarisDebugWithTask:(unint64_t)task
{
  v20[2] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  if (task == 2)
  {
    peripheralControl = [(ULLogicAdapter *)self peripheralControl];
    v4 = (v13 + 5);
    obj = v13[5];
    [peripheralControl teardownPolarisGraphsAndReturnError:&obj];
    objc_storeStrong(v4, obj);
  }

  else
  {
    if (task != 1)
    {
      [ULLogicAdapter polarisDebugWithTask:];

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 483, "[ULLogicAdapter polarisDebugWithTask:]");
      __break(1u);
      return result;
    }

    peripheralControl = [(ULLogicAdapter *)self peripheralControl];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__ULLogicAdapter_polarisDebugWithTask___block_invoke;
    v11[3] = &unk_2798D4438;
    v11[4] = &v12;
    [peripheralControl setupPolarisGraphsWithCompletionHandler:v11];
  }

  v5 = v13[5];
  if (v5)
  {
    v19[0] = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"polarisDebugWithTask failed with error: %@", v5];
    v19[1] = @"internalError";
    v20[0] = v6;
    v20[1] = v13[5];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:0 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __39__ULLogicAdapter_polarisDebugWithTask___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "polarisDebugWithTask failed with error: %@", &v7, 0xCu);
    }
  }
}

- (void)requestModelLearningForConnectionToken:(id)token requestIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  identifierCopy = identifier;
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v13, tokenCopy);
  if ((v14 & 1) == 0)
  {
    [ULLogicAdapter requestModelLearningForConnectionToken:requestIdentifier:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 501, "[ULLogicAdapter requestModelLearningForConnectionToken:requestIdentifier:]");
    goto LABEL_10;
  }

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v11, identifierCopy);
  if ((v12 & 1) == 0)
  {
    [ULLogicAdapter requestModelLearningForConnectionToken:requestIdentifier:];

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 503, "[ULLogicAdapter requestModelLearningForConnectionToken:requestIdentifier:]");
LABEL_10:
    __break(1u);
  }

  v8 = *(self->logicAdapterImpl.__ptr_ + 15);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if ((v14 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  (*(*v8 + 88))(v8, __p, v13[0], v13[1], v11);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information clientId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  idCopy = id;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138412290;
    *&__p[4] = idCopy;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Client request Current microlocation, clientIdentifier: %@", __p, 0xCu);
  }

  v9 = idCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [idCopy UTF8String]);
  if (CLMicroLocationLegacyClient::isHomeKitRequest(*(self->logicAdapterImpl.__ptr_ + 14), informationCopy))
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:informationCopy copyItems:1];
    [(NSDictionary *)v10 setObject:&unk_286A71718 forKeyedSubscript:@"shouldTriggerLocalizationScan"];
    CLMicroLocationLegacyClient::onHomeKit(*(self->logicAdapterImpl.__ptr_ + 14), v10);
  }

  else
  {
    CLMicroLocationLegacyClient::onLocalizationRequest(*(self->logicAdapterImpl.__ptr_ + 14), __p);
  }

  if (v12 < 0)
  {
    operator delete(*__p);
  }
}

- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information clientId:(id)id
{
  informationCopy = information;
  idCopy = id;
  std::string::basic_string[abi:ne200100]<0>(&__p, [idCopy UTF8String]);
  if (CLMicroLocationLegacyClient::isHomeKitRequest(*(self->logicAdapterImpl.__ptr_ + 14), informationCopy))
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:informationCopy copyItems:1];
    [(NSDictionary *)v8 setObject:&unk_286A71718 forKeyedSubscript:@"shouldTriggerRecordingScan"];
    CLMicroLocationLegacyClient::onHomeKit(*(self->logicAdapterImpl.__ptr_ + 14), v8);
  }

  else
  {
    CLMicroLocationLegacyClient::onRecordingRequest(*(self->logicAdapterImpl.__ptr_ + 14), informationCopy);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

- (id)getMicroLocationInternalVersion
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v6 = [defaultsDictionary objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v6, v13);
    *&__p[16] = *&v13[16];
    *__p = *v13;
    v7 = HIBYTE(*&v13[16]);
    v8 = *v13;
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v13);
    v8 = *v13;
    *__p = *v13;
    *&__p[15] = *&v13[15];
    LOBYTE(v7) = v13[23];
    __p[23] = v13[23];
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v2 stringWithUTF8String:{v9, *__p, *&__p[8], *&__p[16]}];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v10;
}

- (void)startRapportSession
{
  objc_initWeak(&location, self);
  environment = [(ULLogicAdapter *)self environment];
  rapportMonitor = [environment rapportMonitor];
  v5 = +[(ULEvent *)ULRapportMonitorEventDeviceFound];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ULLogicAdapter_startRapportSession__block_invoke;
  v6[3] = &unk_2798D4460;
  objc_copyWeak(&v7, &location);
  [rapportMonitor addObserver:self eventName:v5 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __37__ULLogicAdapter_startRapportSession__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULRapportMonitorEventDeviceFound:v5];
  }
}

- (void)stopRapportSession
{
  environment = [(ULLogicAdapter *)self environment];
  rapportMonitor = [environment rapportMonitor];
  [rapportMonitor removeObserver:self];
}

- (void)_start
{
  [(ULLogicAdapter *)self _registerOnDatabaseValidNotification];
  [(ULLogicAdapter *)self _startMonitoringEvents];
  environment = [(ULLogicAdapter *)self environment];
  diagnostics = [environment diagnostics];
  [diagnostics addProvider:self];

  [(ULLogicAdapter *)self _registerOrUnregisterForActivities:1];
}

- (void)_registerOnDatabaseValidNotification
{
  v2 = *(self->logicAdapterImpl.__ptr_ + 12);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke;
  v3[3] = &unk_2798D4160;
  v3[4] = self;
  (*(*v2 + 136))(v2, v3);
}

void __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v3 = [v2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke_2;
  block[3] = &unk_2798D4160;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke_2(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "handling database valid notification", v4, 2u);
  }

  CLMicroLocationLogic::onDatabaseBecameValid(*(*(*(a1 + 32) + 8) + 104));
  CLMicroLocationLegacyClient::databaseAvailable(*(*(*(a1 + 32) + 8) + 112));
  return notify_post([*MEMORY[0x277D28828] UTF8String]);
}

- (void)_stop
{
  [(ULLogicAdapter *)self _stopMonitoringEvents];
  [(ULLogicAdapter *)self _registerOrUnregisterForActivities:0];
  environment = [(ULLogicAdapter *)self environment];
  diagnostics = [environment diagnostics];
  [diagnostics removeProvider:self];
}

- (void)_startMonitoringEvents
{
  objc_initWeak(location, self);
  environment = [(ULLogicAdapter *)self environment];
  dataProtectionMonitor = [environment dataProtectionMonitor];
  v5 = +[(ULEvent *)ULDataProtectionMonitorEventDataAvailable];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke;
  v77[3] = &unk_2798D4460;
  objc_copyWeak(&v78, location);
  [dataProtectionMonitor addObserver:self eventName:v5 handler:v77];

  environment2 = [(ULLogicAdapter *)self environment];
  airplaneModeMonitor = [environment2 airplaneModeMonitor];
  v8 = +[(ULEvent *)ULAirplaneModeMonitorEventAirplaneMode];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_2;
  v75[3] = &unk_2798D4460;
  objc_copyWeak(&v76, location);
  [airplaneModeMonitor addObserver:self eventName:v8 handler:v75];

  environment3 = [(ULLogicAdapter *)self environment];
  batteryModeMonitor = [environment3 batteryModeMonitor];
  v11 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_3;
  v73[3] = &unk_2798D4460;
  objc_copyWeak(&v74, location);
  [batteryModeMonitor addObserver:self eventName:v11 handler:v73];

  environment4 = [(ULLogicAdapter *)self environment];
  batteryModeMonitor2 = [environment4 batteryModeMonitor];
  v14 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_4;
  v71[3] = &unk_2798D4460;
  objc_copyWeak(&v72, location);
  [batteryModeMonitor2 addObserver:self eventName:v14 handler:v71];

  environment5 = [(ULLogicAdapter *)self environment];
  bluetoothMonitor = [environment5 bluetoothMonitor];
  v17 = +[(ULEvent *)ULBluetoothMonitorEventPowerOn];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_5;
  v69[3] = &unk_2798D4460;
  objc_copyWeak(&v70, location);
  [bluetoothMonitor addObserver:self eventName:v17 handler:v69];

  environment6 = [(ULLogicAdapter *)self environment];
  displayMonitor = [environment6 displayMonitor];
  v20 = +[(ULEvent *)ULDisplayMonitorEventDisplayState];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_6;
  v67[3] = &unk_2798D4460;
  objc_copyWeak(&v68, location);
  [displayMonitor addObserver:self eventName:v20 handler:v67];

  environment7 = [(ULLogicAdapter *)self environment];
  displayMonitor_OSX = [environment7 displayMonitor_OSX];
  v23 = +[(ULEvent *)ULDisplayMonitorEventDisplayState_OSX];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_7;
  v65[3] = &unk_2798D4460;
  objc_copyWeak(&v66, location);
  [displayMonitor_OSX addObserver:self eventName:v23 handler:v65];

  environment8 = [(ULLogicAdapter *)self environment];
  internalNotifyMonitor = [environment8 internalNotifyMonitor];
  v26 = +[(ULEvent *)ULInternalNotifyMonitorEventLocalize];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_8;
  v63[3] = &unk_2798D4460;
  objc_copyWeak(&v64, location);
  [internalNotifyMonitor addObserver:self eventName:v26 handler:v63];

  environment9 = [(ULLogicAdapter *)self environment];
  internalNotifyMonitor2 = [environment9 internalNotifyMonitor];
  v29 = +[(ULEvent *)ULInternalNotifyMonitorEventRecord];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_9;
  v61[3] = &unk_2798D4460;
  objc_copyWeak(&v62, location);
  [internalNotifyMonitor2 addObserver:self eventName:v29 handler:v61];

  environment10 = [(ULLogicAdapter *)self environment];
  internalNotifyMonitor3 = [environment10 internalNotifyMonitor];
  v32 = +[(ULEvent *)ULInternalNotifyMonitorEventPurge];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_10;
  v59[3] = &unk_2798D4460;
  objc_copyWeak(&v60, location);
  [internalNotifyMonitor3 addObserver:self eventName:v32 handler:v59];

  environment11 = [(ULLogicAdapter *)self environment];
  internalNotifyMonitor4 = [environment11 internalNotifyMonitor];
  v35 = +[(ULEvent *)ULInternalNotifyMonitorEventSettingsRefresh];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_11;
  v57[3] = &unk_2798D4460;
  objc_copyWeak(&v58, location);
  [internalNotifyMonitor4 addObserver:self eventName:v35 handler:v57];

  environment12 = [(ULLogicAdapter *)self environment];
  privacyMonitor = [environment12 privacyMonitor];
  v38 = +[(ULEvent *)ULPrivacyMonitorEventLocationServices];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_12;
  v55[3] = &unk_2798D4460;
  objc_copyWeak(&v56, location);
  [privacyMonitor addObserver:self eventName:v38 handler:v55];

  environment13 = [(ULLogicAdapter *)self environment];
  buddyMonitor = [environment13 buddyMonitor];
  v41 = +[(ULEvent *)ULBuddyMonitorEventBuddyComplete];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_13;
  v53[3] = &unk_2798D4460;
  objc_copyWeak(&v54, location);
  [buddyMonitor addObserver:self eventName:v41 handler:v53];

  v42 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v42 defaultsDictionary];

  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOffScreenScanEnabled"];
  v45 = [defaultsDictionary objectForKey:v44];
  if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v45 BOOLValue];
  }

  else
  {
    bOOLValue = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v47 = bOOLValue;

  if (v47)
  {
    environment14 = [(ULLogicAdapter *)self environment];
    sleepWakeMonitor = [environment14 sleepWakeMonitor];
    v50 = +[(ULEvent *)ULSleepWakeEvent];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_14;
    v51[3] = &unk_2798D4460;
    objc_copyWeak(&v52, location);
    [sleepWakeMonitor addObserver:self eventName:v50 handler:v51];

    objc_destroyWeak(&v52);
  }

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v78);
  objc_destroyWeak(location);
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULAirplaneModeMonitorEventAirplaneMode:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBatteryModeMonitorEventUnlimitedPower:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBatteryModeMonitorEventLowPowerMode:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBluetoothMonitorEventPowerOn:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULDisplayMonitorEventDisplayState_OSX:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventLocalize:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_9(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventRecord:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_10(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventPurge:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_11(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventSettingsRefrsh:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_12(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULPrivacyMonitorEventLocationServices:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_13(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBuddyMonitorEventBuddyComplete:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULSleepWakeMonitorEvent:v5];
  }
}

- (void)_stopMonitoringEvents
{
  environment = [(ULLogicAdapter *)self environment];
  dataProtectionMonitor = [environment dataProtectionMonitor];
  [dataProtectionMonitor removeObserver:self];

  environment2 = [(ULLogicAdapter *)self environment];
  airplaneModeMonitor = [environment2 airplaneModeMonitor];
  [airplaneModeMonitor removeObserver:self];

  environment3 = [(ULLogicAdapter *)self environment];
  batteryModeMonitor = [environment3 batteryModeMonitor];
  [batteryModeMonitor removeObserver:self];

  environment4 = [(ULLogicAdapter *)self environment];
  bluetoothMonitor = [environment4 bluetoothMonitor];
  [bluetoothMonitor removeObserver:self];

  environment5 = [(ULLogicAdapter *)self environment];
  displayMonitor = [environment5 displayMonitor];
  [displayMonitor removeObserver:self];

  environment6 = [(ULLogicAdapter *)self environment];
  displayMonitor_OSX = [environment6 displayMonitor_OSX];
  [displayMonitor_OSX removeObserver:self];

  environment7 = [(ULLogicAdapter *)self environment];
  internalNotifyMonitor = [environment7 internalNotifyMonitor];
  [internalNotifyMonitor removeObserver:self];

  environment8 = [(ULLogicAdapter *)self environment];
  privacyMonitor = [environment8 privacyMonitor];
  [privacyMonitor removeObserver:self];

  environment9 = [(ULLogicAdapter *)self environment];
  buddyMonitor = [environment9 buddyMonitor];
  [buddyMonitor removeObserver:self];

  environment10 = [(ULLogicAdapter *)self environment];
  sleepWakeMonitor = [environment10 sleepWakeMonitor];
  [sleepWakeMonitor removeObserver:self];
}

- (void)_registerOrUnregisterForActivities:(BOOL)activities
{
  v4 = +[ULBGRepeatingSystemTaskRequest learningULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v5 = +[ULBGRepeatingSystemTaskRequest maintenanceULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v6 = +[ULBGRepeatingSystemTaskRequest routineStateAnalyzerULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v7 = +[ULBGRepeatingSystemTaskRequest analyticsULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v8 = +[ULBGRepeatingSystemTaskRequest wifiAnalyzerULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v9 = +[ULBGRepeatingSystemTaskRequest exportBackupULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];
}

- (void)_registerOrUnregisterForBackgroundTaskWithRequest:(id)request withSelector:(SEL)selector isRegister:(BOOL)register
{
  registerCopy = register;
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = objc_opt_respondsToSelector();
  if ((v9 & 1) == 0)
  {
    v17 = _CLLogObjectForCategory_MicroLocation_Default(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = NSStringFromSelector(selector);
      location = 68289795;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      uTF8String = [v18 UTF8String];
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "[self respondsToSelector:selector]";
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ULLogicAdapter does not respond to selector, selector:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &location, 0x30u);
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default(v19);
    if (os_signpost_enabled(v20))
    {
      v21 = NSStringFromSelector(selector);
      v22 = v21;
      uTF8String2 = [v21 UTF8String];
      location = 68289795;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      uTF8String = uTF8String2;
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "[self respondsToSelector:selector]";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ULLogicAdapter does not respond to selector", "{msg%{public}.0s:ULLogicAdapter does not respond to selector, selector:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &location, 0x30u);
    }

    v25 = _CLLogObjectForCategory_MicroLocation_Default(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(selector);
      v27 = v26;
      -[ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:].cold.1([v26 UTF8String], &location, v25, v26);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/LogicAdapter/ULLogicAdapter.mm", 800, "[ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:]");
    __break(1u);
  }

  if (registerCopy)
  {
    objc_initWeak(&location, self);
    environment = [(ULLogicAdapter *)self environment];
    backgroundSystemTaskManager = [environment backgroundSystemTaskManager];
    environment2 = [(ULLogicAdapter *)self environment];
    queue = [environment2 queue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __92__ULLogicAdapter__registerOrUnregisterForBackgroundTaskWithRequest_withSelector_isRegister___block_invoke;
    v28[3] = &unk_2798D4488;
    objc_copyWeak(v29, &location);
    v29[1] = selector;
    [backgroundSystemTaskManager registerAndSubmitTaskWithRequest:requestCopy usingQueue:queue launchHandler:v28];

    objc_destroyWeak(v29);
    objc_destroyWeak(&location);
  }

  else
  {
    environment3 = [(ULLogicAdapter *)self environment];
    backgroundSystemTaskManager2 = [environment3 backgroundSystemTaskManager];
    identifier = [requestCopy identifier];
    [backgroundSystemTaskManager2 deregisterAndCancelTaskWithIdentifier:identifier];
  }
}

void __92__ULLogicAdapter__registerOrUnregisterForBackgroundTaskWithRequest_withSelector_isRegister___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained environment];
    v7 = [v6 queue];
    dispatch_assert_queue_V2(v7);

    v8 = +[ULTransactionManager shared];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __92__ULLogicAdapter__registerOrUnregisterForBackgroundTaskWithRequest_withSelector_isRegister___block_invoke_2;
    v10[3] = &unk_2798D4188;
    v9 = *(a1 + 40);
    v10[4] = v5;
    v12 = v9;
    v11 = v3;
    [v8 performUnderTransaction:@"com.apple.milod.backgroundTasks" block:v10];
  }
}

- (void)_learnExecute:(id)execute
{
  executeCopy = execute;
  v5 = +[ULTransactionManager shared];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ULLogicAdapter__learnExecute___block_invoke;
  v7[3] = &unk_2798D44B0;
  v7[4] = self;
  v6 = executeCopy;
  v8 = v6;
  [v5 performUnderTransaction:@"com.apple.milod.learning" block:v7];
}

void __32__ULLogicAdapter__learnExecute___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) environment];
  [ULMapItemGenerator generateMapItemsWithEnvironment:v3 dbStore:*(*(*v2 + 8) + 88) task:*(a1 + 40)];

  CLMicroLocationLearner::CLMicroLocationLearner(v4, *(*(a1 + 32) + 8) + 8, *(*(*(a1 + 32) + 8) + 88), *(*(*(a1 + 32) + 8) + 96));
  v9[0] = &unk_286A55080;
  v9[1] = a1 + 40;
  v9[3] = v9;
  CLMicroLocationLearner::executeWorkItems(v4, v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v9);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(&v7);
  v8 = &v6;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

- (void)_maintenanceExecute:(id)execute
{
  v8[4] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  CLMicroLocationMaintenance::CLMicroLocationMaintenance(v4, *(self->logicAdapterImpl.__ptr_ + 11), *(self->logicAdapterImpl.__ptr_ + 12));
  v8[0] = &unk_286A55110;
  v8[1] = &executeCopy;
  v8[3] = v8;
  CLMicroLocationMaintenance::executeWorkItems(v4, v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = &v5;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

- (void)_routineStateAnalyzerExecute:(id)execute
{
  v8[4] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(&v4, self->logicAdapterImpl.__ptr_ + 16);
  v8[0] = &unk_286A55190;
  v8[1] = &executeCopy;
  v8[3] = v8;
  CLMicroLocationRoutineStateAnalyzer::executeWorkItems(&v4, v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = &v5;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

- (void)_analyticsExecute:(id)execute
{
  v8[4] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  CLMicroLocationAnalytics::CLMicroLocationAnalytics(v4, self->logicAdapterImpl.__ptr_ + 24, *(self->logicAdapterImpl.__ptr_ + 11));
  v8[0] = &unk_286A55210;
  v8[1] = &executeCopy;
  v8[3] = v8;
  CLMicroLocationAnalytics::executeWorkItems(v4, v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = &v5;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

- (void)_wifiAnalyticsExecute:(id)execute
{
  v7[4] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(v6, self->logicAdapterImpl.__ptr_ + 32, *(self->logicAdapterImpl.__ptr_ + 11));
  v5[0] = &unk_286A55290;
  v5[1] = &executeCopy;
  v5[3] = v5;
  ULWiFiHistogramAnalyzer::executeWiFiItem(v6, v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v7);
}

- (void)_exportiCloudBackupExecute:(id)execute
{
  v6[4] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  v4 = [[ULBackupAndRestore alloc] initWithDbStore:*(self->logicAdapterImpl.__ptr_ + 11) andDbManagement:*(self->logicAdapterImpl.__ptr_ + 12)];
  v6[0] = &unk_286A55310;
  v6[1] = &executeCopy;
  v6[3] = v6;
  [(ULBackupAndRestore *)v4 exportiCloudBackupWithCancelFunc:v6];
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
}

- (void)_handleULDataProtectionMonitorEventDataAvailable:(id)available
{
  v16 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  objc_opt_class();
  v5 = availableCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    dataAvailable = [v7 dataAvailable];
    v10 = @"NO";
    if (dataAvailable)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULDataProtectionMonitorEventDataAvailable: dataAvailable: %@", buf, 0xCu);
  }

  if ([v7 dataAvailable])
  {
    environment = [(ULLogicAdapter *)self environment];
    queue = [environment queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ULLogicAdapter__handleULDataProtectionMonitorEventDataAvailable___block_invoke;
    block[3] = &unk_2798D4160;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_handleULAirplaneModeMonitorEventAirplaneMode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  objc_opt_class();
  v5 = modeCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    airplaneMode = [v7 airplaneMode];
    v10 = @"NO";
    if (airplaneMode)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULAirplaneModeMonitorEventAirplaneMode: airplaneMode: %@", buf, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__ULLogicAdapter__handleULAirplaneModeMonitorEventAirplaneMode___block_invoke;
  v14[3] = &unk_2798D44B0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  dispatch_async(queue, v14);
}

uint64_t __64__ULLogicAdapter__handleULAirplaneModeMonitorEventAirplaneMode___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 104);
  v2 = [*(a1 + 40) airplaneMode];
  v3 = *(*v1 + 192);

  return v3(v1, v2);
}

- (void)_handleULBatteryModeMonitorEventUnlimitedPower:(id)power
{
  v18 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  objc_opt_class();
  v5 = powerCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    unlimitedPower = [v7 unlimitedPower];
    v10 = @"NO";
    if (unlimitedPower)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBatteryModeMonitorEventUnlimitedPower: unlimitedPower: %@", buf, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__ULLogicAdapter__handleULBatteryModeMonitorEventUnlimitedPower___block_invoke;
  v14[3] = &unk_2798D44B0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  dispatch_async(queue, v14);
}

CLMicroLocationLegacyClient *__65__ULLogicAdapter__handleULBatteryModeMonitorEventUnlimitedPower___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 112);
  v2 = [*(a1 + 40) unlimitedPower];

  return CLMicroLocationLegacyClient::onBatteryState(v1, v2);
}

- (void)_handleULBatteryModeMonitorEventLowPowerMode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  objc_opt_class();
  v5 = modeCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    lowPowerMode = [v7 lowPowerMode];
    v10 = @"NO";
    if (lowPowerMode)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBatteryModeMonitorEventLowPowerMode: lowPowerMode: %@", buf, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ULLogicAdapter__handleULBatteryModeMonitorEventLowPowerMode___block_invoke;
  v14[3] = &unk_2798D44B0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  dispatch_async(queue, v14);
}

uint64_t __63__ULLogicAdapter__handleULBatteryModeMonitorEventLowPowerMode___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 104);
  v2 = [*(a1 + 40) lowPowerMode];
  v3 = *(*v1 + 136);

  return v3(v1, v2);
}

- (void)_handleULBluetoothMonitorEventPowerOn:(id)on
{
  v15 = *MEMORY[0x277D85DE8];
  onCopy = on;
  objc_opt_class();
  v5 = onCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    powerOn = [v7 powerOn];
    v10 = @"NO";
    if (powerOn)
    {
      v10 = @"YES";
    }

    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBluetoothMonitorEventPowerOn: powerOn: %@", &v13, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_async(queue, &__block_literal_global_30);
}

- (void)_handleULRapportMonitorEventDeviceFound:(id)found
{
  v18 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  objc_opt_class();
  v5 = foundCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    device = [v7 device];
    *buf = 138412290;
    v17 = device;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULRapportMonitorEventDeviceFound: new device: %@", buf, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__ULLogicAdapter__handleULRapportMonitorEventDeviceFound___block_invoke;
  v13[3] = &unk_2798D44B0;
  v14 = v7;
  selfCopy = self;
  v12 = v7;
  dispatch_async(queue, v13);
}

void __58__ULLogicAdapter__handleULRapportMonitorEventDeviceFound___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) device];
  v2 = [v14 idsDeviceIdentifier];
  if (v2)
  {
    v3 = [*(a1 + 32) device];
    v4 = [v3 model];
    if (v4)
    {
      v5 = [*(a1 + 32) device];
      v6 = [v5 name];

      if (v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 104);
        v8 = [*(a1 + 32) device];
        v9 = [v8 idsDeviceIdentifier];
        std::string::basic_string[abi:ne200100]<0>(v19, [v9 UTF8String]);
        v10 = [*(a1 + 32) device];
        v11 = [v10 model];
        std::string::basic_string[abi:ne200100]<0>(v17, [v11 UTF8String]);
        v12 = [*(a1 + 32) device];
        v13 = [v12 name];
        std::string::basic_string[abi:ne200100]<0>(&__p, [v13 UTF8String]);
        CLMicroLocationLogic::onRapportCompanionDeviceFound(v7, v19, v17);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

      return;
    }
  }
}

- (void)_handleULDisplayMonitorEventDisplayState:(id)state
{
  stateCopy = state;
  objc_opt_class();
  v5 = stateCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke;
  v11[3] = &unk_2798D44B0;
  v12 = v7;
  selfCopy = self;
  v10 = v7;
  dispatch_async(queue, v11);
}

void __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = cl::chrono::CFAbsoluteTimeClock::now();
  if ([*(a1 + 32) displayOnChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) displayOn];
      v4 = @"Off";
      if (v3)
      {
        v4 = @"On";
      }

      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState: display: %@", buf, 0xCu);
    }

    CLMicroLocationLogic::setDisplayState(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) displayOn], &v16);
    CLMicroLocationLegacyClient::onDisplayState(*(*(*(a1 + 40) + 8) + 112), [*(a1 + 32) displayOn]);
  }

  if ([*(a1 + 32) screenLockedChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke_cold_2();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) screenLocked];
      v7 = @"Unlocked";
      if (v6)
      {
        v7 = @"Locked";
      }

      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState: screen: %@", buf, 0xCu);
    }

    CLMicroLocationLogic::setLockScreenState(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) screenLocked]);
    if (([*(a1 + 32) screenLocked] & 1) == 0)
    {
      v8 = *(*(*(a1 + 40) + 8) + 136);
      (*(*v8 + 40))(v8);
    }
  }

  if ([*(a1 + 32) appInFocusChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke_cold_2();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) appInFocus];
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState: appInFocus: %@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) appInFocus];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = *(*(*(a1 + 40) + 8) + 136);
      v14 = [*(a1 + 32) appInFocus];
      v15 = v14;
      std::string::basic_string[abi:ne200100]<0>(buf, [v14 UTF8String]);
      (*(*v13 + 16))(v13, buf);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

- (void)_handleULDisplayMonitorEventDisplayState_OSX:(id)x
{
  xCopy = x;
  objc_opt_class();
  v5 = xCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ULLogicAdapter__handleULDisplayMonitorEventDisplayState_OSX___block_invoke;
  v11[3] = &unk_2798D44B0;
  v12 = v7;
  selfCopy = self;
  v10 = v7;
  dispatch_async(queue, v11);
}

void __63__ULLogicAdapter__handleULDisplayMonitorEventDisplayState_OSX___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) screenOnChanged])
  {
    CLMicroLocationLogic::onDisplayStateChange_OSX(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) screenOn]);
    v2 = *(*(*(a1 + 40) + 8) + 136);
    (*(*v2 + 32))(v2, [*(a1 + 32) screenOn]);
  }

  if ([*(a1 + 32) clamshellModeChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) clamshellMode];
      v5 = @"Off";
      if (v4)
      {
        v5 = @"On";
      }

      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState_OSX: clamshellMode: %@", &v9, 0xCu);
    }
  }

  if ([*(a1 + 32) screenLockedChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke_cold_2();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) screenLocked];
      v8 = @"Off";
      if (v7)
      {
        v8 = @"On";
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState_OSX: screenLock: %@", &v9, 0xCu);
    }

    CLMicroLocationLogic::setLockScreenState(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) screenLocked]);
  }
}

- (void)_handleULInternalNotifyMonitorEventLocalize:(id)localize
{
  localizeCopy = localize;
  objc_opt_class();
  v5 = localizeCopy;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventLocalize: localize", buf, 2u);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ULLogicAdapter__handleULInternalNotifyMonitorEventLocalize___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__ULLogicAdapter__handleULInternalNotifyMonitorEventLocalize___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 112);
  std::string::basic_string[abi:ne200100]<0>(__p, "NotificationCenter");
  CLMicroLocationLegacyClient::onLocalizationRequest(v1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)_handleULInternalNotifyMonitorEventRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  v5 = recordCopy;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventRecord: record", buf, 2u);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ULLogicAdapter__handleULInternalNotifyMonitorEventRecord___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleULInternalNotifyMonitorEventPurge:(id)purge
{
  purgeCopy = purge;
  objc_opt_class();
  v5 = purgeCopy;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventPurge: purge", buf, 2u);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ULLogicAdapter__handleULInternalNotifyMonitorEventPurge___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleULInternalNotifyMonitorEventSettingsRefrsh:(id)refrsh
{
  refrshCopy = refrsh;
  objc_opt_class();
  v5 = refrshCopy;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventSettingsRefrsh: refresh", buf, 2u);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ULLogicAdapter__handleULInternalNotifyMonitorEventSettingsRefrsh___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __68__ULLogicAdapter__handleULInternalNotifyMonitorEventSettingsRefrsh___block_invoke(ULSettings *a1)
{
  ULSettings::refresh(a1);
  v2 = *(*(*(a1 + 4) + 8) + 104);

  return CLMicroLocationLogic::refreshSettings(v2);
}

- (void)_handleULPrivacyMonitorEventLocationServices:(id)services
{
  v18 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  objc_opt_class();
  v5 = servicesCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    locationServicesEnabled = [v7 locationServicesEnabled];
    v10 = @"NO";
    if (locationServicesEnabled)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULPrivacyMonitorEventLocationServices: locationServicesEnabled: %@", buf, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ULLogicAdapter__handleULPrivacyMonitorEventLocationServices___block_invoke;
  v14[3] = &unk_2798D44B0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  dispatch_async(queue, v14);
}

uint64_t __63__ULLogicAdapter__handleULPrivacyMonitorEventLocationServices___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 104);
  (*(*v2 + 144))(v2, [*(a1 + 40) locationServicesEnabled]);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 104);
  v5 = [v3 locationServicesEnabled];
  v6 = *(*v4 + 152);

  return v6(v4, v5);
}

- (void)_handleULBuddyMonitorEventBuddyComplete:(id)complete
{
  v18 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  objc_opt_class();
  v5 = completeCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    buddyComplete = [v7 buddyComplete];
    v10 = @"NO";
    if (buddyComplete)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBuddyMonitorEventBuddyComplete: buddyComplete: %@", buf, 0xCu);
  }

  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ULLogicAdapter__handleULBuddyMonitorEventBuddyComplete___block_invoke;
  v14[3] = &unk_2798D44B0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  dispatch_async(queue, v14);
}

void __58__ULLogicAdapter__handleULBuddyMonitorEventBuddyComplete___block_invoke(uint64_t a1)
{
  CLMicroLocationLogic::onBuddyComplete(*(*(*(a1 + 32) + 8) + 104), [*(a1 + 40) buddyComplete]);
  if ([*(a1 + 40) buddyComplete])
  {
    v3 = [*(a1 + 32) environment];
    v2 = [v3 buddyMonitor];
    [v2 removeObserver:*(a1 + 32)];
  }
}

- (void)_handleULSleepWakeMonitorEvent:(id)event
{
  eventCopy = event;
  if ([MEMORY[0x277D28868] isInternalInstall] && ((+[ULDefaultsSingleton shared](ULDefaultsSingleton, "shared"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "defaultsDictionary"), v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "ULLogAPSleepStateEnabled"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = objc_msgSend(MEMORY[0x277CBEC28], "BOOLValue")) : (v9 = objc_msgSend(v8, "BOOLValue")), v10 = v9, v8, v7, v6, (v10 & 1) != 0))
  {
    objc_opt_class();
    v11 = eventCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    environment = [(ULLogicAdapter *)self environment];
    queue = [environment queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ULLogicAdapter__handleULSleepWakeMonitorEvent___block_invoke;
    block[3] = &unk_2798D4160;
    v19 = v13;
    v16 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "_handleULSleepWakeMonitorEvent, ignore on customer build", buf, 2u);
    }
  }
}

void __49__ULLogicAdapter__handleULSleepWakeMonitorEvent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sleepWakeState];
  v2 = +[ULHomeSlamAnalytics shared];
  [v2 handleSleepWakeMonitorEvent:v1];
}

+ (id)_newULServiceDescriptorFromInternalDescriptor:(const void *)descriptor
{
  v4 = objc_opt_new();
  for (i = 0; i != 32; ++i)
  {
    if ((*(descriptor + 3) >> i))
    {
      v6 = [objc_alloc(MEMORY[0x277D287B8]) initWithLocationTypeEnum:i];
      [v4 addObject:v6];
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:descriptor];
  v8 = objc_alloc(MEMORY[0x277D28800]);
  v9 = *(descriptor + 2);
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];
  v11 = [v8 initWithServiceIdentifier:v7 serviceType:v9 locationTypes:v10];

  return v11;
}

- (id)diagnosticInfo
{
  environment = [(ULLogicAdapter *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_not_V2(queue);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  environment2 = [(ULLogicAdapter *)self environment];
  queue2 = [environment2 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ULLogicAdapter_ULDiagnosticsProvider__diagnosticInfo__block_invoke;
  v9[3] = &unk_2798D44D8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue2, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __55__ULLogicAdapter_ULDiagnosticsProvider__diagnosticInfo__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Date";
  v2 = [MEMORY[0x277CBEAA8] date];
  v9[1] = @"Modified ULSettings";
  v10[0] = v2;
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 settingsString];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return CLMicroLocationLogic::logState(*(*(*(a1 + 32) + 8) + 104));
}

- (uint64_t)_maintenanceExecute:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_routineStateAnalyzerExecute:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_analyticsExecute:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_wifiAnalyticsExecute:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_exportiCloudBackupExecute:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)setDependencies:peripheralControl:environment:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Method setDependencies can only be called once, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Method setDependencies can only be called once", "{msg%{public}.0s:Method setDependencies can only be called once, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Method setDependencies can only be called once, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)deleteServiceWithIdentifier:clientIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Delete service without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Delete service without identifier", "{msg%{public}.0s:Delete service without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Delete service without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)disconnectWithConnectionToken:clientIdentifier:requestIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:disconnect to service without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "disconnect to service without connectionToken", "{msg%{public}.0s:disconnect to service without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:disconnect to service without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)addLabelForConnectionToken:label:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:add label without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "add label without connectionToken", "{msg%{public}.0s:add label without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:add label without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)addLabelForConnectionToken:label:betweenStartDate:andEndDate:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:add label without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "add label without connectionToken", "{msg%{public}.0s:add label without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:add label without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)createCustomLoiAtCurrentLocationForConnectionToken:withConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:create custom LOI withconfiguration, but without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "create custom LOI withconfiguration, but without connectionToken", "{msg%{public}.0s:create custom LOI withconfiguration, but without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:create custom LOI withconfiguration, but without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)removeCustomLoiWithIdentifier:forConnectionToken:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:remove custom LOI without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "remove custom LOI without connectionToken", "{msg%{public}.0s:remove custom LOI without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:remove custom LOI without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)removeCustomLoiWithIdentifier:forConnectionToken:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:remove custom loi with invalid LOI ID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "remove custom loi with invalid LOI ID", "{msg%{public}.0s:remove custom loi with invalid LOI ID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:remove custom loi with invalid LOI ID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)removePendingConnectionRequestsByConnectionToken:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:remove pending connection requests without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "remove pending connection requests without connectionToken", "{msg%{public}.0s:remove pending connection requests without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:remove pending connection requests without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)imageFeaturesDebugWithTask:additionalInformation:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid image features task, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Invalid image features task", "{msg%{public}.0s:Invalid image features task, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid image features task, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)polarisDebugWithTask:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:Invalid polaris manager task, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "Invalid polaris manager task", "{msg%{public}.0s:Invalid polaris manager task, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:Invalid polaris manager task, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)requestModelLearningForConnectionToken:requestIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:request learning without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "request learning without connectionToken", "{msg%{public}.0s:request learning without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:request learning without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)requestModelLearningForConnectionToken:requestIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v2 = _CLLogObjectForCategory_MicroLocation_Default(v1);
  if (OUTLINED_FUNCTION_6_0(v2))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v3, v4, "{msg%{public}.0s:request learning without request identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, v6, v7, v8);
  }

  v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
  if (os_signpost_enabled(v10))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v11, v12, v13, "request learning without request identifier", "{msg%{public}.0s:request learning without request identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v14, v15);
  }

  v17 = _CLLogObjectForCategory_MicroLocation_Default(v16);
  if (OUTLINED_FUNCTION_4_0(v17))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v18, v19, "{msg%{public}.0s:request learning without request identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_7_0();
}

- (void)_registerOrUnregisterForBackgroundTaskWithRequest:(os_log_t)log withSelector:(void *)a4 isRegister:.cold.1(uint64_t a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = a1;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "[self respondsToSelector:selector]";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ULLogicAdapter does not respond to selector, selector:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

@end