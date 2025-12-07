void CLMicroLocationStateMachine::EventHandlerWrapper<CLMicroLocationLoiManager,CLMiLoLoiManagerEnteringCustomLoiTimeout,&CLMicroLocationLoiManager::EnteringCustomLoiTimeoutHandler>::~EventHandlerWrapper(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::exitFunctionEnteringCustomLoiState>::stateFunction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  [*(v2 + 528) invalidate];
  v3 = *(v2 + 528);
  *(v2 + 528) = 0;
}

void CLMicroLocationStateMachine::EventHandlerWrapperWithNoData<CLMicroLocationLoiManager,&CLMicroLocationLoiManager::exitFunctionEnteringCustomLoiState>::~EventHandlerWrapperWithNoData(ULHomeSlamModel *a1)
{
  ULHomeSlamModel::getTrajectoryPointCloud(a1);

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_129()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void CLMicroLocationStateMachine::EventBase::~EventBase(void **this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerRefreshLocationOnEvent::CLMiLoLoiManagerRefreshLocationOnEvent(CLMiLoLoiManagerRefreshLocationOnEvent *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E210;
  std::string::__assign_external((this + 8), "Refresh Location on regular interval", 0x24uLL);
}

void sub_2591AC6DC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<std::__wrap_iter<boost::uuids::uuid const*>,std::__wrap_iter<boost::uuids::uuid const*>>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591AC7C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerLoiVisitEntryEvent::~CLMiLoLoiManagerLoiVisitEntryEvent(id *this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerFailedToFetchPlaceInference::CLMiLoLoiManagerFailedToFetchPlaceInference(CLMiLoLoiManagerFailedToFetchPlaceInference *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E270;
  std::string::__assign_external((this + 8), "Failed To Fetched Place Inference", 0x21uLL);
}

void sub_2591AC958(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMiLoLoiManagerFetchedPlaceInference::CLMiLoLoiManagerFetchedPlaceInference(uint64_t a1, void *a2)
{
  v4 = a2;
  *a1 = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), "No Name Given");
  *a1 = &unk_286A5E290;
  *(a1 + 32) = 0;
  objc_storeStrong((a1 + 32), a2);
  std::string::__assign_external((a1 + 8), "Fetched Place Inference For Current Location", 0x2CuLL);

  return a1;
}

void sub_2591ACAA0(_Unwind_Exception *a1)
{
  *v2 = v4;
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void CLMiLoLoiManagerFetchedPlaceInference::~CLMiLoLoiManagerFetchedPlaceInference(id *this)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerFailedToFetchLoiForLocationEvent::CLMiLoLoiManagerFailedToFetchLoiForLocationEvent(CLMiLoLoiManagerFailedToFetchLoiForLocationEvent *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E2B0;
  std::string::__assign_external((this + 8), "Failed to Get LOI Event", 0x17uLL);
}

void sub_2591ACB94(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerReceivedLoiForLocationEvent::~CLMiLoLoiManagerReceivedLoiForLocationEvent(id *this)
{
  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(CLMiLoLoiManagerReceivedRelatedLoisEvent *this)
{
  CLMiLoLoiManagerReceivedRelatedLoisEvent::~CLMiLoLoiManagerReceivedRelatedLoisEvent(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5E2F0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_286A5E1B0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void CLMiLoLoiManagerFailedToGetLocationUpdateEvent::CLMiLoLoiManagerFailedToGetLocationUpdateEvent(CLMiLoLoiManagerFailedToGetLocationUpdateEvent *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E310;
  std::string::__assign_external((this + 8), "Failed To Get Location Update", 0x1DuLL);
}

void sub_2591ACDD8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void CLMiLoLoiManagerGotLocationUpdateEvent::CLMiLoLoiManagerGotLocationUpdateEvent(CLMiLoLoiManagerGotLocationUpdateEvent *this, CLLocation *a2)
{
  v3 = a2;
  *this = &unk_286A5E1B0;
  v4 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E330;
  *(this + 4) = v3;
  v5 = v3;
  if (*(this + 31) < 0)
  {
    *(this + 2) = 19;
    v4 = *(this + 1);
  }

  else
  {
    *(this + 31) = 19;
  }

  strcpy(v4, "Got Location Update");
}

void CLMiLoLoiManagerGotLocationUpdateEvent::~CLMiLoLoiManagerGotLocationUpdateEvent(id *this)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerLeechedLocationEvent::~CLMiLoLoiManagerLeechedLocationEvent(id *this)
{
  CLMiLoLoiManagerLoiVisitExitEvent::~CLMiLoLoiManagerLoiVisitExitEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMiLoLoiManagerFailedToSetGeofenceEvent::CLMiLoLoiManagerFailedToSetGeofenceEvent(CLMiLoLoiManagerFailedToSetGeofenceEvent *this)
{
  *this = &unk_286A5E1B0;
  v2 = std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E370;
  if (*(this + 31) < 0)
  {
    *(this + 2) = 22;
    v2 = *(this + 1);
  }

  else
  {
    *(this + 31) = 22;
  }

  strcpy(v2, "Failed To Set Geofence");
}

void CLMiLoLoiManagerEnteringCustomLoiTimeout::CLMiLoLoiManagerEnteringCustomLoiTimeout(CLMiLoLoiManagerEnteringCustomLoiTimeout *this)
{
  *this = &unk_286A5E1B0;
  std::string::basic_string[abi:ne200100]<0>(this + 1, "No Name Given");
  *this = &unk_286A5E3F0;
  std::string::__assign_external((this + 8), "Entering Custom LOI Timeout", 0x1BuLL);
}

void sub_2591AD2A4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,CLMicroLocationStateMachine::EventHandlerWrapperBase *>,std::__map_value_compare<std::string,std::__value_type<std::string,CLMicroLocationStateMachine::EventHandlerWrapperBase *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLMicroLocationStateMachine::EventHandlerWrapperBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void CLMicroLocationMaintenance::CLMicroLocationMaintenance(CLMicroLocationMaintenance *this, ULDatabaseStoreInterface *a2, ULDatabaseManagementInterface *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = a3;
  v5[0] = &unk_286A5E460;
  v5[1] = this;
  v5[3] = v5;
  v6[0] = &unk_286A5E4E0;
  v6[1] = this;
  v6[3] = v6;
  v7[0] = &unk_286A5E560;
  v7[1] = this;
  v7[3] = v7;
  v8[0] = &unk_286A5E5E0;
  v8[1] = this;
  v8[3] = v8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(this + 2, v5, &v9, 4uLL);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v5[i]);
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
}

void sub_2591AD508(_Unwind_Exception *a1)
{
  for (i = 96; i != -32; i -= 32)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationMaintenance::collectMetricsPreMaintenance(CFAbsoluteTime *this)
{
  this[9] = cl::chrono::CFAbsoluteTimeClock::now();
  v2 = (*(**this + 80))();
  *(this + 10) = [v2 count];

  v3 = (*(**this + 144))();
  *(this + 11) = [v3 count];

  v4 = (*(**this + 176))();
  v5 = [v4 count];
  v6 = (*(**this + 184))();
  v7 = [v6 count];
  v8 = (*(**this + 192))();
  *(this + 12) = v7 + v5 + [v8 count];

  v9 = (*(**this + 160))();
  LODWORD(v6) = [v9 count];
  v10 = (*(**this + 168))();
  *(this + 13) = [v10 count] + v6;

  v11 = (*(**this + 88))();
  *(this + 14) = [v11 count];

  v12 = (*(**this + 144))();
  v13 = [v12 getOldestScanTimestamp];
  LOBYTE(v10) = v14;

  if (v10)
  {
    v15 = *&v13;
  }

  else
  {
    v15 = cl::chrono::CFAbsoluteTimeClock::now();
  }

  this[8] = v15;
}

void CLMicroLocationMaintenance::collectMetricsPostMaintenance(CLMicroLocationMaintenance *this)
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v7 = v6;

  if (v7)
  {
    cl::chrono::CFAbsoluteTimeClock::now();
    v8 = (*(**this + 80))();
    v9 = [v8 count];

    v10 = (*(**this + 144))();
    v11 = [v10 count];

    v12 = (*(**this + 176))();
    v13 = [v12 count];
    v14 = (*(**this + 184))();
    v15 = [v14 count];
    v16 = (*(**this + 192))();
    v17 = [v16 count];

    v18 = (*(**this + 160))();
    v19 = [v18 count];
    v20 = (*(**this + 168))();
    v21 = [v20 count];

    v22 = (*(**this + 88))();
    v23 = [v22 count];

    v24 = (*(**this + 112))();
    v25 = v24;
    if (v24)
    {
      objc_msgSend_getAllDistinctCustomLoiIds(v24);
    }

    else
    {
      *buf = 0;
      v36 = 0;
      v37 = 0;
    }

    cl::chrono::CFAbsoluteTimeClock::now();
    v30 = v9;
    v31 = v11;
    v32 = v15 + v13 + v17;
    v33 = v21 + v19;
    v34 = v23;
    v28 = 0;
    v29 = 0;
    __p = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&__p, *buf, v36, (v36 - *buf) >> 4);
    AnalyticsSendEventLazy();
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      v36 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationMaintenance::collectMetricsPostMaintenance();
    }

    v26 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "CLMicroLocationMaintenance, collectMetricsPostMaintenance, not sending event because sending to CoreAnalytics is disabled", buf, 2u);
    }
  }
}

id ___ZN26CLMicroLocationMaintenance29collectMetricsPostMaintenanceEv_block_invoke(uint64_t a1)
{
  v19[13] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v18[0] = @"ageOfOldestRecordingDays";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v19[0] = v17;
  v18[1] = @"numModels";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 80)];
  v19[1] = v16;
  v18[2] = @"numModelsDeleted";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[10] - *(a1 + 80))];
  v19[2] = v15;
  v18[3] = @"numRecordingEvents";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 84)];
  v19[3] = v14;
  v18[4] = @"numRecordingEventsDeleted";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[11] - *(a1 + 84))];
  v19[4] = v3;
  v18[5] = @"numMeasurements";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 88)];
  v19[5] = v4;
  v18[6] = @"numMeasurementsDeleted";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[12] - *(a1 + 88))];
  v19[6] = v5;
  v18[7] = @"numConfigurations";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 92)];
  v19[7] = v6;
  v18[8] = @"numConfiguationsDeleted";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[13] - *(a1 + 92))];
  v19[8] = v7;
  v18[9] = @"numRapportEntries";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 96)];
  v19[9] = v8;
  v18[10] = @"numRapportEntriesDeleted";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v2[14] - *(a1 + 96))];
  v19[10] = v9;
  v18[11] = @"maintenanceRunTime";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v19[11] = v10;
  v18[12] = @"numCustomLoiIds";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(*(a1 + 64) - *(a1 + 56)) >> 4];
  v19[12] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:13];

  return v12;
}

uint64_t *__copy_helper_block_ea8_56c59_ZTSNSt3__16vectorIN5boost5uuids4uuidENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
}

void __destroy_helper_block_ea8_56c59_ZTSNSt3__16vectorIN5boost5uuids4uuidENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void CLMicroLocationMaintenance::deleteOldEntries(CLMicroLocationMaintenance *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingPurgeAge"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [&unk_286A727B0 intValue];
  }

  v7 = v6;

  v8 = (*(*v1 + 24))(v1, 1440 * v7, 0, 0);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMaintenance::collectMetricsPostMaintenance();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v10 = "NOT ";
    if (v8)
    {
      v10 = "";
    }

    v11 = 136446210;
    v12 = v10;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "Did %{public}s delete old data", &v11, 0xCu);
  }
}

void CLMicroLocationMaintenance::freeDatabaseSpace(CLMicroLocationMaintenance *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = (*(**(this + 1) + 48))(*(this + 1));
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationMaintenance::collectMetricsPostMaintenance();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v3 = "NOT";
    if (v1)
    {
      v3 = "";
    }

    v4 = 136446210;
    v5 = v3;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "Did %{public}s free database space", &v4, 0xCu);
  }
}

uint64_t CLMicroLocationMaintenance::executeWorkItems(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  for (i = *(result + 24); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v6);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_130()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E460;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v4, a2);
  CLMicroLocationMaintenance::collectMetricsPreMaintenance(*(a1 + 8));
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2591AE624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E4E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v4, a2);
  CLMicroLocationMaintenance::deleteOldEntries(*(a1 + 8));
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2591AE78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E560;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v4, a2);
  CLMicroLocationMaintenance::freeDatabaseSpace(*(a1 + 8));
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2591AE8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E5E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v4, a2);
  CLMicroLocationMaintenance::collectMetricsPostMaintenance(*(a1 + 8));
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2591AEA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationMaintenance::CLMicroLocationMaintenance(ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL CLMicroLocationsMeasurementFilters::isAnchorModelValid(uint64_t **a1, uint64_t ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  do
  {
    MEMORY[0x259CA1E90](&v9);
    v5 = boost::algorithm::ifind_first<std::string const,std::string>(a1, v2, &v9);
    v7 = v6;
    std::locale::~locale(&v9);
    result = v5 != v7;
    if (v5 != v7)
    {
      break;
    }

    v2 += 3;
  }

  while (v2 != v3);
  return result;
}

uint64_t boost::algorithm::ifind_first<std::string const,std::string>(uint64_t **a1, uint64_t **a2, std::locale *a3)
{
  std::locale::locale(&v12, a3);
  v5 = *(a2 + 23);
  v6 = a2[1];
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v5 < 0)
  {
    v5 = v6;
  }

  v7 = (a2 + v5);
  std::locale::locale(&v15, &v12);
  v13[0].__locale_ = a2;
  v13[1].__locale_ = v7;
  std::locale::locale(&v14, &v15);
  std::locale::~locale(&v15);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 < 0)
  {
    v8 = a1[1];
  }

  v10 = boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_iequal>::operator()<std::__wrap_iter<char const*>>(v13, v9, v9 + v8);
  std::locale::~locale(&v14);
  std::locale::~locale(&v12);
  return v10;
}

void sub_2591AEC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v10 + 2);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_iequal>::operator()<std::__wrap_iter<char const*>>(const std::locale *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2 != a3)
  {
    v4 = a2;
    locale = a1[1].__locale_;
    do
    {
      v7 = a1->__locale_;
      if (a1->__locale_ == locale)
      {
        break;
      }

      if (v4 != v3)
      {
        v8 = v4;
        do
        {
          if (v7 == a1[1].__locale_)
          {
            break;
          }

          if (!boost::algorithm::is_iequal::operator()<char,char>(a1 + 2, v8, v7))
          {
            break;
          }

          ++v8;
          ++v7;
        }

        while (v8 != v3);
        locale = a1[1].__locale_;
      }

      if (v7 == locale)
      {
        return v4;
      }

      ++v4;
    }

    while (v4 != v3);
    return v3;
  }

  return v3;
}

BOOL boost::algorithm::is_iequal::operator()<char,char>(const std::locale *a1, char *a2, char *a3)
{
  v5 = *a2;
  v6 = MEMORY[0x277D82680];
  v7 = std::locale::use_facet(a1, MEMORY[0x277D82680]);
  LODWORD(v5) = (v7->__vftable[1].~facet)(v7, v5);
  v8 = *a3;
  v9 = std::locale::use_facet(a1, v6);
  return v5 == (v9->__vftable[1].~facet)(v9, v8);
}

void CLMicroLocationModel::CLMicroLocationModel(CLMicroLocationModel *this)
{
  v10 = *MEMORY[0x277D85DE8];
  *(this + 3) = 0;
  *this = 0;
  *(this + 8) = 0;
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap((this + 16));
  *(this + 11) = 0u;
  *(this + 72) = 0;
  *(this + 136) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 58) = 1065353216;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v5, v8);
    *(this + 17) = *v8;
    *(this + 36) = *&v8[16];
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v8);
    *&v9[7] = *&v8[15];
    *v9 = *&v8[8];
    v6 = v8[23];
    v7 = *&v8[8];
    *(this + 34) = *v8;
    *(this + 35) = v7;
    *(this + 287) = *&v9[7];
    *(this + 295) = v6;
  }

  *(this + 296) = 0;
}

void sub_2591AEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v15 = *(v9 + 248);
  if (v15)
  {
    *(v9 + 256) = v15;
    operator delete(v15);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v13 + 3);
  a9 = v13;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 136) == 1)
  {
    v16 = *(v9 + 72);
    if (v16)
    {
      *(v9 + 80) = v16;
      operator delete(v16);
    }
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v9 + 16);
  _Unwind_Resume(a1);
}

void CLMicroLocationModel::toProtobuf(void *__return_ptr a1@<X8>, CLMicroLocationModel *this@<X0>)
{
  v55 = *MEMORY[0x277D85DE8];
  CLMicroLocationProto::Model::Model(a1);
  v4 = *(this + 22);
  for (i = *(this + 23); v4 != i; v4 += 32)
  {
    v6 = *(a1 + 5);
    v7 = *(a1 + 4);
    if (v7 >= v6)
    {
      if (v6 == *(a1 + 6))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 1));
        v6 = *(a1 + 5);
      }

      *(a1 + 5) = v6 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::Fingerprint>::New();
    }

    v8 = a1[1];
    *(a1 + 4) = v7 + 1;
    v9 = *(v8 + 8 * v7);
    v10 = *v4;
    v52 = *(v4 + 16);
    v53 = 1;
    CLMicroLocationFingerprint::toProtobuf(v10, &v52, &__str);
    CLMicroLocationProto::Fingerprint::CopyFrom(v9, &__str);
    CLMicroLocationProto::Fingerprint::~Fingerprint(&__str);
  }

  v11 = *(this + 27);
  for (j = MEMORY[0x277D82C30]; v11; v11 = *v11)
  {
    v13 = *(a1 + 17);
    v14 = *(a1 + 16);
    if (v14 >= v13)
    {
      if (v13 == *(a1 + 18))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 7));
        v13 = *(a1 + 17);
      }

      *(a1 + 17) = v13 + 1;
      wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ClusterRecordings>::New();
    }

    v15 = a1[7];
    *(a1 + 16) = v14 + 1;
    v16 = *(v15 + 8 * v14);
    v17 = 0;
    *(&__str.__r_.__value_.__s + 23) = 16;
    do
    {
      __str.__r_.__value_.__s.__data_[v17] = *(v11 + v17 + 16);
      ++v17;
    }

    while (v17 != 16);
    __str.__r_.__value_.__s.__data_[16] = 0;
    *(v16 + 44) |= 1u;
    v18 = *(v16 + 8);
    if (v18 == j)
    {
      operator new();
    }

    v19 = std::string::operator=(v18, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v20 = v11[4];
    v21 = v11[5];
    while (v20 != v21)
    {
      v22 = 0;
      *(&__str.__r_.__value_.__s + 23) = 16;
      do
      {
        __str.__r_.__value_.__s.__data_[v22] = *(v20 + v22);
        ++v22;
      }

      while (v22 != 16);
      __str.__r_.__value_.__s.__data_[16] = 0;
      v23 = *(v16 + 28);
      v24 = *(v16 + 24);
      if (v24 >= v23)
      {
        if (v23 == *(v16 + 32))
        {
          v19 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v16 + 16));
          v23 = *(v16 + 28);
        }

        *(v16 + 28) = v23 + 1;
        v26 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v19);
        v27 = *(v16 + 16);
        v28 = *(v16 + 24);
        *(v16 + 24) = v28 + 1;
        *(v27 + 8 * v28) = v26;
      }

      else
      {
        v25 = *(v16 + 16);
        *(v16 + 24) = v24 + 1;
        v26 = *(v25 + 8 * v24);
      }

      v19 = std::string::operator=(v26, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 += 16;
    }
  }

  v29 = *(this + 28);
  *(a1 + 50) |= 2u;
  a1[4] = v29;
  v30 = *this;
  if (!CLMicroLocationProto::ModelType_IsValid(*this))
  {
    v47 = "::CLMicroLocationProto::Model_GenerationAlgorithm_IsValid(value)";
    v48 = 13962;
    v49 = "set_generationalgorithm";
    goto LABEL_59;
  }

  *(a1 + 50) |= 8u;
  *(a1 + 12) = v30;
  v31 = *(this + 1);
  if (!CLMicroLocationProto::ModelType_IsValid(v31))
  {
    v47 = "::CLMicroLocationProto::ModelType_IsValid(value)";
    v48 = 13985;
    v49 = "set_modeltype";
LABEL_59:
    __assert_rtn(v49, "microlocation.pb.h", v48, v47);
  }

  *(a1 + 50) |= 0x10u;
  *(a1 + 13) = v31;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationModel::toProtobuf();
  }

  v32 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    isStable = CLMicroLocationModel::isStable(this);
    __str.__r_.__value_.__r.__words[0] = 68289282;
    LOWORD(__str.__r_.__value_.__r.__words[1]) = 2082;
    *(&__str.__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(__str.__r_.__value_.__r.__words[2]) = 1026;
    HIDWORD(__str.__r_.__value_.__r.__words[2]) = isStable;
    _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, toProtobuf, isStableflag:%{public}hhd}", &__str, 0x18u);
  }

  v34 = CLMicroLocationModel::isStable(this);
  v35 = *(a1 + 50);
  *(a1 + 104) = v34;
  *(a1 + 27) = *(this + 3);
  *(a1 + 50) = v35 | 0x380;
  v36 = a1[14];
  if (!v36)
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::toProtobuf((this + 16), &__str);
  CLMicroLocationProto::anchorAppearancesVector::CopyFrom(v36, &__str);
  CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(&__str);
  v37 = *(this + 60);
  if (!CLMicroLocationProto::Model_ModelQualityLevel_IsValid(v37))
  {
    v50 = 14186;
    v51 = "set_qualityindicator";
    goto LABEL_62;
  }

  *(a1 + 50) |= 0x800u;
  *(a1 + 32) = v37;
  v38 = *(this + 61);
  if (!CLMicroLocationProto::Model_ModelQualityLevel_IsValid(v38))
  {
    v50 = 14209;
    v51 = "set_candidatequalityindicator";
LABEL_62:
    __assert_rtn(v51, "microlocation.pb.h", v50, "::CLMicroLocationProto::Model_ModelQualityLevel_IsValid(value)");
  }

  v39 = *(a1 + 50) | 0x1000;
  *(a1 + 50) = v39;
  *(a1 + 33) = v38;
  v40 = *(this + 31);
  v41 = *(this + 32);
  if (v40 != v41)
  {
    do
    {
      v42 = *v40;
      if (!CLMicroLocationProto::ServiceQualityReasonEnum_IsValid(*v40))
      {
        __assert_rtn("add_candidatequalityreasons", "microlocation.pb.h", 14229, "::CLMicroLocationProto::ServiceQualityReasonEnum_IsValid(value)");
      }

      v43 = *(a1 + 36);
      if (v43 == *(a1 + 37))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a1 + 34, v43 + 1);
        v43 = *(a1 + 36);
      }

      v44 = a1[17];
      *(a1 + 36) = v43 + 1;
      *(v44 + 4 * v43) = v42;
      ++v40;
    }

    while (v40 != v41);
    v39 = *(a1 + 50);
  }

  *(a1 + 19) = *(this + 9);
  a1[21] = *(this + 20);
  *(a1 + 48) = *(this + 42);
  *(a1 + 50) = v39 | 0x3FC000;
  v45 = a1[22];
  if (v45 == j)
  {
    operator new();
  }

  std::string::operator=(v45, (this + 272));
  if (*(this + 1) == 3 && *(this + 136) == 1)
  {
    *(a1 + 50) |= 0x400000u;
    v46 = a1[23];
    if (!v46)
    {
      operator new();
    }

    CLMicroLocationModel::BlueAtlasData::toProtobuf(this + 9, &__str);
    CLMicroLocationProto::BlueAtlasData::CopyFrom(v46, &__str);
    CLMicroLocationProto::BlueAtlasData::~BlueAtlasData(&__str);
  }
}

void sub_2591AF5FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  MEMORY[0x259CA1F90](v19, 0x10B1C400E3A2C2ELL, a3, a4, a5, a6, a7, a8);
  CLMicroLocationProto::Model::~Model(v18);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationModel::isStable(CLMicroLocationModel *this)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 1) == 2)
  {
    v2 = *(this + 8);
  }

  else
  {
    v3 = *(this + 27);
    if (v3)
    {
      v4 = 0;
      do
      {
        v4 += (v3[5] - v3[4]) >> 4;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(this + 3);
      v7 = *(this + 8);
      v22[0] = 68289794;
      v22[1] = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      v26 = v4;
      v27 = 2050;
      v28 = v6;
      v29 = 1026;
      v30 = v7;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, getter, numRecordingsBeforePruning:%{public}llu, numDaysWithRecordings:%{public}ld, fIsStable:%{public}hhd}", v22, 0x2Cu);
    }

    if ((*(this + 8) & 1) != 0 || ((+[ULDefaultsSingleton shared](ULDefaultsSingleton, "shared"), v8 = objc_claimAutoreleasedReturnValue(), [v8 defaultsDictionary], v9 = objc_claimAutoreleasedReturnValue(), v8, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "ULMinimumNumberOfRecordingsInStableModel"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v10), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v12 = objc_msgSend(&unk_286A72828, "unsignedLongValue")) : (v12 = objc_msgSend(v11, "unsignedLongValue")), v13 = v12, v11, v10, v9, v4 >= v13))
    {
      v2 = 1;
    }

    else
    {
      v14 = *(this + 3);
      v15 = +[ULDefaultsSingleton shared];
      v16 = [v15 defaultsDictionary];

      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfDaysWithRecordingsInStableModel"];
      v18 = [v16 objectForKey:v17];
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = [v18 unsignedLongValue];
      }

      else
      {
        v19 = [&unk_286A72810 unsignedLongValue];
      }

      v20 = v19;

      v2 = v20 <= v14;
    }
  }

  return v2 & 1;
}

float CLMicroLocationModel::BlueAtlasData::toProtobuf@<S0>(CLMacAddress *this@<X0>, uint64_t a2@<X8>)
{
  v4 = CLMicroLocationProto::BlueAtlasData::BlueAtlasData(a2);
  var0 = this->var0;
  v6 = this[1].var0;
  while (var0 != v6)
  {
    v7 = CLMacAddress::toUint64(var0);
    v8 = *(a2 + 40);
    if (v8 == *(a2 + 44))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((a2 + 32), v8 + 1);
      v8 = *(a2 + 40);
    }

    v9 = *(a2 + 32);
    *(a2 + 40) = v8 + 1;
    *(v9 + 8 * v8) = v7;
    ++var0;
  }

  if (this[6].var0)
  {
    *(a2 + 60) |= 4u;
    v10 = *(a2 + 48);
    if (!v10)
    {
      operator new();
    }

    v11 = CLMacAddress::toUint64(this + 5);
    *(v10 + 24) |= 1u;
    *(v10 + 8) = v11;
    *(a2 + 60) |= 4u;
    v12 = *(a2 + 48);
    if (!v12)
    {
      operator new();
    }

    LODWORD(v4) = this[7].var0;
    *(v12 + 24) |= 2u;
    *(v12 + 16) = LODWORD(v4);
  }

  return *&v4;
}

void sub_2591AFB84(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F90](v2, 0x1081C40DCAC275BLL);
  CLMicroLocationProto::BlueAtlasData::~BlueAtlasData(v1);
  _Unwind_Resume(a1);
}

void CLMicroLocationModel::fromProtobuf(void *__return_ptr a1@<X8>, const CLMicroLocationProto::Fingerprint ***this@<X0>, const CLMicroLocationProto::Model *a3@<X1>)
{
  v79 = *MEMORY[0x277D85DE8];
  CLMicroLocationModel::CLMicroLocationModel(a1);
  *v78.data = 0;
  *&v78.data[8] = 0;
  *v77.data = 0;
  *&v77.data[8] = 0;
  v67 = this;
  v6 = *(this + 4);
  if (v6)
  {
    v7 = this[1];
    v8 = 8 * v6;
    while (1)
    {
      v9 = *v7;
      v10 = *(*v7 + 32);
      if ((v10 & 0x20) != 0)
      {
        break;
      }

      if ((v10 & 2) != 0)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationModel::toProtobuf();
        }

        v16 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf fingerprint is using a deprecated uint64 cluster label", buf, 2u);
        }

        *v78.data = *(v9 + 4);
        goto LABEL_20;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationModel::toProtobuf();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = v11;
        v13 = "#Warning The protobuf fingerprint does not have a cluster identifer";
LABEL_27:
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      }

LABEL_28:
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    v14 = *(v9 + 8);
    v15 = *(v14 + 23);
    if (v15 < 0)
    {
      if (v14[1] == 16)
      {
        v14 = *v14;
LABEL_19:
        v78 = *v14;
LABEL_20:
        CLMicroLocationFingerprint::CLMicroLocationFingerprint(buf, v9);
        CLMicroLocationModel::addFingerprint(a1, buf, &v78, a3);
        __src = &v76;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__src);
        if (__p)
        {
          v75 = __p;
          operator delete(__p);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v73);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v72);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
        goto LABEL_28;
      }
    }

    else if (v15 == 16)
    {
      goto LABEL_19;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationModel::toProtobuf();
    }

    v17 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v12 = v17;
    v13 = "#Warning The protobuf fingerprint does not have a valid cluster label uuid";
    goto LABEL_27;
  }

LABEL_29:
  v18 = *(this + 16);
  if (v18)
  {
    v19 = this[7];
    v20 = &v19[v18];
    while (1)
    {
      v21 = *v19;
      v22 = *(*v19 + 1);
      v23 = *(v22 + 23);
      if (v23 < 0)
      {
        if (v22[1] != 16)
        {
LABEL_50:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationModel::toProtobuf();
          }

          v30 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf cluster recording does not have a valid cluster label uuid", buf, 2u);
          }

          goto LABEL_54;
        }

        v22 = *v22;
      }

      else if (v23 != 16)
      {
        goto LABEL_50;
      }

      v78 = *v22;
      v24 = *(v21 + 6);
      if (v24)
      {
        break;
      }

LABEL_54:
      if (++v19 == v20)
      {
        goto LABEL_55;
      }
    }

    v25 = *(v21 + 2);
    v26 = 8 * v24;
    while (1)
    {
      v27 = *v25;
      v28 = *(*v25 + 23);
      if (v28 < 0)
      {
        if (v27[1] != 16)
        {
LABEL_44:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationModel::toProtobuf();
          }

          v29 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf cluster recording does not have a valid recording uuid", buf, 2u);
          }

          goto LABEL_48;
        }

        v27 = *v27;
      }

      else if (v28 != 16)
      {
        goto LABEL_44;
      }

      v77 = *v27;
      CLMicroLocationModel::addRecording(a1, &v78, &v77);
LABEL_48:
      ++v25;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_55:
  v31 = *(v67 + 13) & ((*(v67 + 50) << 27) >> 31);
  *a1 = *(v67 + 12);
  *(a1 + 1) = v31;
  v66 = v31;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationModel::toProtobuf();
  }

  v32 = logObject_MicroLocation_Default;
  v33 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG);
  if (v33)
  {
    v34 = *(v67 + 104);
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v34;
    _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:isStable, fromProtobuf, isStableFlag:%{public}hhd}", buf, 0x18u);
  }

  v35 = v67;
  *(a1 + 8) = *(v67 + 104);
  *(a1 + 3) = *(v67 + 27);
  if (*(v67 + 201))
  {
    v36 = v67[14];
    if (!v36)
    {
      v36 = *(CLMicroLocationProto::Model::default_instance(v33) + 112);
    }

    CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(buf, v36);
    if (a1 + 2 != buf)
    {
      *(a1 + 12) = *&buf[32];
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>(a1 + 2, *&buf[16], 0);
    }

    *(a1 + 7) = *&buf[40];
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(buf);
    v35 = v67;
  }

  v37 = *(v35 + 32);
  *(a1 + 60) = v37;
  if (!v37)
  {
    v38 = a1[27];
    if (v38)
    {
      v39 = 0;
      do
      {
        v39 += (v38[5] - v38[4]) >> 4;
        v38 = *v38;
      }

      while (v38);
    }

    else
    {
      v39 = 0;
    }

    v40 = +[ULDefaultsSingleton shared];
    v41 = [v40 defaultsDictionary];

    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsWiFiOnlyThreshold"];
    v43 = [v41 objectForKey:v42];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v44 = [v43 unsignedIntValue];
    }

    else
    {
      v44 = [&unk_286A72828 unsignedIntValue];
    }

    v45 = v44;

    if (v39 <= v45)
    {
      v46 = 1;
    }

    else
    {
      v46 = 3;
    }

    *(a1 + 60) = v46;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationModel::toProtobuf();
    }

    v47 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 60);
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v48;
      _os_log_impl(&dword_258FE9000, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Loaded model doesn't have model quality, calculate on the fly, QualityIndicator:%{public}d}", buf, 0x18u);
    }
  }

  *(a1 + 61) = *(v67 + 33);
  __src = 0;
  v69 = 0;
  v70 = 0;
  v49 = *(v67 + 36);
  if (v49)
  {
    v50 = 0;
    v51 = v67[17];
    v52 = 4 * v49;
    do
    {
      v53 = *v51;
      if (v50 >= v70)
      {
        v54 = __src;
        v55 = v50 - __src;
        v56 = (v50 - __src) >> 2;
        v57 = v56 + 1;
        if ((v56 + 1) >> 62)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v58 = v70 - __src;
        if ((v70 - __src) >> 1 > v57)
        {
          v57 = v58 >> 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v59);
        }

        v60 = v56;
        v61 = (4 * v56);
        v62 = &v61[-v60];
        *v61 = v53;
        v50 = (v61 + 1);
        memcpy(v62, v54, v55);
        v63 = __src;
        __src = v62;
        v69 = v50;
        v70 = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        *v50 = v53;
        v50 += 4;
      }

      v69 = v50;
      v51 = (v51 + 4);
      v52 -= 4;
    }

    while (v52);
  }

  else
  {
    v50 = 0;
  }

  if (a1 + 31 != &__src)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1 + 31, __src, v50, (v50 - __src) >> 2);
  }

  *(a1 + 9) = *(v67 + 19);
  a1[20] = v67[21];
  *(a1 + 42) = *(v67 + 48);
  std::string::operator=((a1 + 34), v67[22]);
  if ((*(v67 + 202) & 0x40) != 0)
  {
    v65 = v67[23];
    if (!v65)
    {
      v65 = *(CLMicroLocationProto::Model::default_instance(0) + 184);
    }

    CLMicroLocationModel::BlueAtlasData::fromProtobuf(buf, v65);
    std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>((a1 + 9), buf);
  }

  else
  {
    if (v66 != 3)
    {
      goto LABEL_113;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationModel::toProtobuf();
    }

    v64 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v64, OS_LOG_TYPE_ERROR, "Loaded Blue Atlas model doesn't have Blue Atlas data structure, create empty", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    *&buf[56] = -8388609;
    std::optional<CLMicroLocationModel::BlueAtlasData>::operator=[abi:ne200100]<CLMicroLocationModel::BlueAtlasData,void>((a1 + 9), buf);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_113:
  if (__src)
  {
    v69 = __src;
    operator delete(__src);
  }
}

void CLMicroLocationModel::addFingerprint(CLMicroLocationModel *this, const CLMicroLocationFingerprint *a2, const uuid *a3, CLMicroLocationFingerprintPool *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  CLMicroLocationFingerprintPool::add(a4, (a2 + 40), &v22);
  v7 = v22;
  v6 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *a3;
  v8 = *(this + 23);
  v9 = *(this + 24);
  if (v8 >= v9)
  {
    v11 = *(this + 22);
    v12 = (v8 - v11) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v11;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v24[4] = this + 176;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>>(this + 176, v15);
    }

    v16 = 32 * v12;
    *v16 = v7;
    *(v16 + 8) = v6;
    *(v16 + 16) = v25;
    v10 = 32 * v12 + 32;
    v17 = *(this + 22);
    v18 = *(this + 23) - v17;
    v19 = v16 - v18;
    memcpy((v16 - v18), v17, v18);
    v20 = *(this + 22);
    *(this + 22) = v19;
    *(this + 23) = v10;
    v21 = *(this + 24);
    *(this + 24) = 0;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::~__split_buffer(v24);
  }

  else
  {
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = v25;
    v10 = v8 + 32;
  }

  *(this + 23) = v10;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_2591B062C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void CLMicroLocationModel::addRecording(CLMicroLocationModel *this, uuid *a2, const uuid *a3)
{
  v19 = a2;
  v4 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(this + 25, a2, &std::piecewise_construct, &v19);
  v5 = v4;
  v7 = v4[5];
  v6 = v4[6];
  if (v7 >= v6)
  {
    v9 = v4[4];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>((v4 + 4), v13);
    }

    v14 = (16 * v10);
    *v14 = *a3;
    v8 = 16 * v10 + 16;
    v15 = v4[4];
    v16 = v4[5] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[4];
    v5[4] = v17;
    v5[5] = v8;
    v5[6] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *a3;
    v8 = &v7[1];
  }

  v5[5] = v8;
}

uint64_t CLMicroLocationModel::numRecordingsBeforePruning(CLMicroLocationModel *this)
{
  v1 = *(this + 27);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += (v1[5] - v1[4]) >> 4;
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t *CLMicroLocationModel::setCandidateQualityReasons(uint64_t a1, char **a2)
{
  result = (a1 + 248);
  if (result != a2)
  {
    return std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

float CLMicroLocationModel::BlueAtlasData::fromProtobuf@<S0>(CLMicroLocationModel::BlueAtlasData ***__return_ptr a1@<X8>, ULHomeSlamModel ***this@<X0>)
{
  v2 = this;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 14) = -8388609;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = this[4];
    v6 = 8 * v4;
    do
    {
      ULHomeSlamModel::getTrajectoryPointCloud(*v5);
      v9 = a1[1];
      v8 = a1[2];
      if (v9 >= v8)
      {
        v11 = *a1;
        v12 = v9 - *a1;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v16);
        }

        *(8 * v13) = this;
        v10 = (8 * v13 + 8);
        memcpy(0, v11, v12);
        this = *a1;
        *a1 = 0;
        a1[1] = v10;
        a1[2] = 0;
        if (this)
        {
          operator delete(this);
        }
      }

      else
      {
        *v9 = this;
        v10 = v9 + 1;
      }

      a1[1] = v10;
      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  if ((*(v2 + 60) & 4) != 0)
  {
    v17 = v2[6];
    if (!v17)
    {
      v17 = *(CLMicroLocationProto::BlueAtlasData::default_instance(this) + 48);
    }

    ULHomeSlamModel::getTrajectoryPointCloud(v17[1]);
    if ((a1[6] & 1) == 0)
    {
      *(a1 + 48) = 1;
    }

    a1[5] = v18;
    v19 = v2[6];
    if (!v19)
    {
      v19 = *(CLMicroLocationProto::BlueAtlasData::default_instance(v18) + 48);
    }

    result = *(v19 + 4);
    *(a1 + 14) = result;
  }

  return result;
}

void sub_2591B093C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CLMicroLocationModel::getIdentifiers@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  v3 = this[22];
  v4 = this[23];
  while (v3 != v4)
  {
    this = std::__tree<boost::uuids::uuid>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(a1, (v3 + 16), (v3 + 16));
    v3 += 32;
  }

  return this;
}

uint64_t CLMicroLocationModel::isValid(CLMicroLocationModel *this)
{
  if (*(this + 296) == 1)
  {
    v1 = [MEMORY[0x277D28868] isRunningInXCTestEnvironment];
    if ((v1 & 1) == 0)
    {
      CLMicroLocationModel::isValid(v1);
    }

    return 1;
  }

  else
  {
    v4 = *(this + 22);
    v5 = *(this + 23);
    v2 = v4 == v5 && *(this + 1) == 3;
    if (v4 != v5)
    {
      if (*(this + 28))
      {
        CLMicroLocationModel::getIdentifiers(&v11, this);
        if (v12[1] == *(this + 28))
        {
          v6 = v11;
          v2 = 1;
          if (v11 != v12)
          {
            do
            {
              v2 = v2 && std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(this + 25, (v6 + 25)) != 0;
              v7 = v6[1];
              if (v7)
              {
                do
                {
                  v8 = v7;
                  v7 = *v7;
                }

                while (v7);
              }

              else
              {
                do
                {
                  v8 = v6[2];
                  v9 = *v8 == v6;
                  v6 = v8;
                }

                while (!v9);
              }

              v6 = v8;
            }

            while (v8 != v12);
          }
        }

        else
        {
          v2 = 0;
        }

        std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v11, v12[0]);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

__int128 *CLMicroLocationModel::mapIdentifiers(__int128 *result, void *a2)
{
  v3 = result;
  for (i = a2[2]; i; i = *i)
  {
    if (i[2] != i[4] || i[3] != i[5])
    {
      result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v3 + 25, i + 2);
      if (result)
      {
        v6 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,std::vector<boost::uuids::uuid>>(v3 + 25, i + 4, i + 2, result + 2);
        if ((v7 & 1) == 0)
        {
          CLMicroLocationModel::mapIdentifiers(v6);
        }

        result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__erase_unique<boost::uuids::uuid>(v3 + 25, i + 2);
      }
    }
  }

  v8 = *(v3 + 22);
  v9 = *(v3 + 23);
  if (v8 != v9)
  {
    v10 = v8 + 2;
    do
    {
      result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, v10);
      if (result)
      {
        *v10 = result[2];
      }

      v11 = v10 + 2;
      v10 += 4;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t CLMicroLocationModel::generateRandomIdentifiers@<X0>(unint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v19 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v19);
  if (this)
  {
    do
    {
      v4 = boost::uuids::random_generator_pure::operator()(&v19);
      v6 = v5;
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *a2) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - *a2;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(a2, v13);
        }

        v14 = (16 * v10);
        *v14 = v4;
        v14[1] = v6;
        v9 = 16 * v10 + 16;
        v15 = *(a2 + 8) - *a2;
        v16 = (16 * v10 - v15);
        memcpy(v16, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v9;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = v4;
        v8[1] = v5;
        v9 = (v8 + 2);
      }

      *(a2 + 8) = v9;
    }

    while (this > (v9 - *a2) >> 4);
  }

  return boost::uuids::detail::random_provider_base::destroy(&v19);
}

void sub_2591B0D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  boost::uuids::detail::random_provider_base::destroy(&a11);
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationModel::mapIdentifiersFromOldModel(CLMicroLocationModel *this, const CLMicroLocationModel *a2, NSMutableDictionary *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v58 = a3;
  CLMicroLocationModel::getIdentifiers(&v67, this);
  CLMicroLocationModel::getIdentifiers(&v65, a2);
  if (v69 == *(this + 28) && v66[1] == *(a2 + 28))
  {
    v5 = v65;
    if (v65 != v66)
    {
      v6 = 0;
      while (1)
      {
        while (1)
        {
          v7 = std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v67, (v5 + 25));
          if (&v68 == v7)
          {
            break;
          }

LABEL_6:
          CLMicroLocationModel::generateRandomIdentifiers(v69, __p);
          v73 = 0u;
          v74 = 0u;
          v75 = 1065353216;
          v8 = v67;
          if (v67 != &v68)
          {
            v9 = __p[0];
            do
            {
              v78 = *(v8 + 25);
              v79 = *v9;
              std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>(&v73, &v78, &v78);
              v10 = v8[1];
              if (v10)
              {
                do
                {
                  v11 = v10;
                  v10 = *v10;
                }

                while (v10);
              }

              else
              {
                do
                {
                  v11 = v8[2];
                  v37 = *v11 == v8;
                  v8 = v11;
                }

                while (!v37);
              }

              ++v9;
              v8 = v11;
            }

            while (v11 != &v68);
          }

          CLMicroLocationModel::mapIdentifiers(this, &v73);
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v67, v68);
          v68 = 0;
          v69 = 0;
          v67 = &v68;
          v12 = __p[0];
          v13 = __p[1];
          while (v12 != v13)
          {
            std::__tree<boost::uuids::uuid>::__emplace_hint_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(&v67, &v68, v12, v12);
            v12 += 2;
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v73);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          v6 = 0;
          v5 = v65;
          if (v65 == v66)
          {
            goto LABEL_28;
          }
        }

        v14 = v5[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v5[2];
            v37 = *v15 == v5;
            v5 = v15;
          }

          while (!v37);
        }

        v6 |= &v68 != v7;
        v5 = v15;
        if (v15 == v66)
        {
          if ((v6 & 1) == 0)
          {
            break;
          }

          goto LABEL_6;
        }
      }
    }

LABEL_28:
    v63 = 0;
    v64 = 0;
    v62 = &v63;
    v16 = +[ULDefaultsSingleton shared];
    v17 = [v16 defaultsDictionary];

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLearning"];
    v19 = [v17 objectForKey:v18];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = [v19 unsignedIntValue];
    }

    else
    {
      v20 = [&unk_286A727C8 unsignedIntValue];
    }

    v21 = v20;

    v57 = ULSettings::getFingerprintDistanceFunctionParamsForType(v21);
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&v73, this + 16);
    v76 = *(this + 56);
    v77 = 1;
    ULAlgorithms::createLearnFingerprintDistanceFunction(v21, v57, &v73, &v78);
    if (v77 == 1)
    {
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v73);
    }

    v22 = +[ULDefaultsSingleton shared];
    v23 = [v22 defaultsDictionary];

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterPersistenceDistanceThreshold"];
    v25 = [v23 objectForKey:v24];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v25 doubleValue];
    }

    else
    {
      [&unk_286A72FE0 doubleValue];
    }

    v27 = v26;

    v28 = v67;
    if (v67 != &v68)
    {
      v29 = 1.79769313e308;
      do
      {
        v30 = v65;
        if (v65 != v66)
        {
          do
          {
            v32 = *(this + 22);
            v31 = *(this + 23);
            if (v32 != v31)
            {
              v33 = 0;
              v34 = 0.0;
              do
              {
                v35 = *(a2 + 22);
                v36 = *(a2 + 23);
                while (v35 != v36)
                {
                  v37 = v32[2] == *(v28 + 25) && v32[3] == *(v28 + 33);
                  if (v37 && v35[2] == *(v30 + 25) && v35[3] == *(v30 + 33))
                  {
                    if (!*(&v79 + 1))
                    {
                      std::__throw_bad_function_call[abi:ne200100]();
                    }

                    ++v33;
                    v34 = v34 + (*(**(&v79 + 1) + 48))(*(&v79 + 1), *v32, *v35);
                  }

                  v35 += 4;
                }

                v32 += 4;
              }

              while (v32 != v31);
              v39 = v34 / v33;
              __p[0] = *&v39;
              if (v39 < v27)
              {
                v73 = *(v28 + 25);
                v74 = *(v30 + 25);
                std::__tree<std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>,std::__map_value_compare<double,std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>>>::__emplace_multi<double &,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>(&v62, __p, &v73);
              }

              if (v39 < v29)
              {
                v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
                [(NSMutableDictionary *)v58 setObject:v40 forKeyedSubscript:@"minDistanceAbovePersistenceThreshold"];

                v29 = v39;
              }
            }

            v41 = v30[1];
            if (v41)
            {
              do
              {
                v42 = v41;
                v41 = *v41;
              }

              while (v41);
            }

            else
            {
              do
              {
                v42 = v30[2];
                v37 = *v42 == v30;
                v30 = v42;
              }

              while (!v37);
            }

            v30 = v42;
          }

          while (v42 != v66);
        }

        v43 = v28[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v28[2];
            v37 = *v44 == v28;
            v28 = v44;
          }

          while (!v37);
        }

        v28 = v44;
      }

      while (v44 != &v68);
    }

    v73 = 0u;
    v74 = 0u;
    v75 = 1065353216;
    while (v64)
    {
      v45 = *(v62 + 7);
      *__p = *(v62 + 5);
      v72 = v45;
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid> const&>(&v73, __p, __p);
      v60 = 0;
      v61 = 0;
      v59 = &v60;
      v46 = v62;
      v70[0] = &v59;
      v70[1] = &v60;
      if (v62 == v56)
      {
        v51 = 0;
        v52 = 0;
      }

      else
      {
        do
        {
          if ((v46[5] != __p[0] || v46[6] != __p[1]) && (v46[7] != v72 || v46[8] != *(&v72 + 1)))
          {
            std::insert_iterator<std::multimap<double,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>>::operator=[abi:ne200100](v70, (v46 + 4));
          }

          v49 = v46[1];
          if (v49)
          {
            do
            {
              v50 = v49;
              v49 = *v49;
            }

            while (v49);
          }

          else
          {
            do
            {
              v50 = v46[2];
              v37 = *v50 == v46;
              v46 = v50;
            }

            while (!v37);
          }

          v46 = v50;
        }

        while (v50 != v56);
        v51 = v61;
        v46 = v62;
        v52 = v60;
      }

      v53 = v63;
      v54 = v64;
      v63 = v52;
      v59 = v46;
      v60 = v53;
      v64 = v51;
      v61 = v54;
      v62 = v56;
      v55 = v53 + 2;
      if (!v54)
      {
        v55 = &v59;
      }

      *v55 = &v60;
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v59, v53);
    }

    CLMicroLocationModel::mapIdentifiers(this, &v73);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v73);
    std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&v78);

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v62, v63);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v65, v66[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v67, v68);
}

void sub_2591B14A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v41 - 160);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a16, a17);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a22, a23);

  _Unwind_Resume(a1);
}

void CLMicroLocationModel::pruneSmallClusters(void *a1, void *a2, unint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a1[23];
  v5 = (a1 + 22);
  v7 = a2 + 1;
  v8 = *a2;
  v22 = v6;
  v23 = a1[22];
  if (*a2 == a2 + 1)
  {
    v11 = a1[23];
    v19 = v11;
  }

  else
  {
    do
    {
      v9 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1 + 25, (v8 + 25));
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationModel::toProtobuf();
      }

      v10 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        operator new();
      }

      if (a3 <= (v9[5] - v9[4]) >> 4 || (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::erase(a1 + 25, v9), v11 = *v5, *v5 == v6))
      {
LABEL_13:
        v11 = v6;
      }

      else
      {
        while (1)
        {
          v12 = *(v11 + 2) == *(v8 + 25) && *(v11 + 3) == *(v8 + 33);
          if (v12)
          {
            break;
          }

          v11 += 2;
          if (v11 == v6)
          {
            goto LABEL_13;
          }
        }

        if (v11 != v6)
        {
          for (i = v11 + 2; i != v6; i += 2)
          {
            if (*(i + 2) != *(v8 + 25) || *(i + 3) != *(v8 + 33))
            {
              v17 = *i;
              *i = 0;
              *(i + 1) = 0;
              v18 = *(v11 + 1);
              *v11 = v17;
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }

              v11[1] = i[1];
              v11 += 2;
            }
          }
        }
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v12 = *v14 == v8;
          v8 = v14;
        }

        while (!v12);
      }

      v6 = v11;
      v8 = v14;
    }

    while (v14 != v7);
    v19 = a1[23];
  }

  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::erase(v5, v11, v19);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationModel::toProtobuf();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = (a1[23] - a1[22]) >> 5;
    *buf = 68289794;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2050;
    v29 = a3;
    v30 = 2050;
    v31 = (v22 - v23) >> 5;
    v32 = 2050;
    v33 = v21;
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pruneSmallClusters, clusterSizeThreshold:%{public}lu, numFingerprintsPrePruning:%{public}lu, numFingerprintsPostPruning:%{public}lu}", buf, 0x30u);
  }
}

__int128 *std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 24);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 32;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void CLMicroLocationModel::pruneSmallClusters(CLMicroLocationModel *this)
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterSizeThreshold"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedLongValue];
  }

  else
  {
    v6 = [&unk_286A727E0 unsignedLongValue];
  }

  v7 = v6;

  CLMicroLocationModel::getIdentifiers(v8, this);
  CLMicroLocationModel::pruneSmallClusters(this, v8, v7);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v8, v8[1]);
}

void CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(CLMicroLocationModel *a1, uint64_t a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (CLMicroLocationModel::isValid(a1))
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterSizeRatio"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 doubleValue];
    }

    else
    {
      [&unk_286A72FF0 doubleValue];
    }

    v13 = v12;

    v14 = *(a1 + 27);
    v15 = *v14;
    if (*v14)
    {
      do
      {
        if (v14[5] - v14[4] < v15[5] - v15[4])
        {
          v14 = v15;
        }

        v15 = *v15;
      }

      while (v15);
    }

    v16 = (v13 * ((v14[5] - v14[4]) >> 4));
    if (v16 > ULSettings::get<ULSettings::ClusterMaximalSizeForRelativePruning>())
    {
      v16 = ULSettings::get<ULSettings::ClusterMaximalSizeForRelativePruning>();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v28 = 2082;
      *&v28[2] = "";
      v29 = 2050;
      v30 = v16;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Using relative cluster size threshold : , size:%{public}.5f}", buf, 0x1Cu);
    }

    CLMicroLocationModel::pruneSmallClusters(a1);
    if (CLMicroLocationModel::isValid(a1))
    {
      CLMicroLocationModel::getIdentifiers(buf, a1);
      if (a3)
      {
        CLMicroLocationModel::pruneSmallClusters(a1, buf, v16);
      }

      if (*(a2 + 8) == 1)
      {
        v18 = *a2;
        if (CLMicroLocationModel::isValid(v18))
        {
          CLMicroLocationModel::mapIdentifiersFromOldModel(a1, v18, v7);
          CLMicroLocationModel::getIdentifiers(&v25, a1);
          v19 = *buf;
          if (*buf != v28)
          {
            do
            {
              v20 = v19[1];
              v21 = v19;
              if (v20)
              {
                do
                {
                  v22 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v22 = v21[2];
                  v23 = *v22 == v21;
                  v21 = v22;
                }

                while (!v23);
              }

              if (&v26 == std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v25, (v19 + 25)))
              {
                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(buf, v19);
                operator delete(v19);
              }

              v19 = v22;
            }

            while (v22 != v28);
          }

          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v25, v26);
        }
      }

      if ((a3 & 1) == 0)
      {
        CLMicroLocationModel::pruneSmallClusters(a1, buf, v16);
      }

      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, *v28);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationModel::toProtobuf();
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "Model has become invalid after pruning clusters with absolute size threshold", buf, 2u);
      }
    }
  }
}

void sub_2591B1F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a13, a14);

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::ClusterMaximalSizeForRelativePruning>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClusterMaximalSizeForRelativePruning"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = [&unk_286A727F8 intValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationModel::getClusterPairwiseDistances(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a1[28];
  CLMicroLocationModel::getIdentifiers(&v40, a1);
  v39[0] = 0;
  v39[1] = 0;
  v37 = 0;
  v38 = v39;
  v7 = v40;
  if (v40 != v41)
  {
    do
    {
      *__p = *(v7 + 25);
      std::__tree<std::__value_type<boost::uuids::uuid,unsigned long>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,unsigned long>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,unsigned long>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid&,unsigned long &>(&v38, __p, __p, &v37);
      ++v37;
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != v41);
  }

  a3[1] = 0;
  v11 = a3 + 1;
  a3[2] = 0;
  a3[3] = 0;
  __p[1] = 0;
  v44 = 0;
  v45 = 0;
  *a3 = v6;
  *__x = 0;
  std::vector<double>::resize(a3 + 1, (v6 + v6 * v6) >> 1, __x);
  __p[0] = v6;
  __x[0] = 0;
  std::vector<int>::resize(&__p[1], (v6 + v6 * v6) >> 1, __x);
  v13 = a1[22];
  v12 = a1[23];
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if (v15 >= (v12 - v13) >> 5)
      {
        v25 = (v12 - v13) >> 5;
      }

      else
      {
        v36 = v14;
        v16 = v15;
        do
        {
          v17 = *(a2 + 24);
          if (!v17)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v18 = (v13 + 32 * v15);
          v19 = (*(*v17 + 48))(v17, *v18, *(v13 + v14));
          *__x = v18 + 2;
          v20 = *(std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v38, v18 + 2, &std::piecewise_construct, __x) + 48);
          *__x = v13 + v14 + 16;
          v21 = std::__tree<std::__value_type<boost::uuids::uuid,double>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,double>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,double>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(&v38, *__x, &std::piecewise_construct, __x);
          v22 = *(v21 + 48);
          if (v20 <= v22)
          {
            v23 = *(v21 + 48);
          }

          else
          {
            v23 = v20;
          }

          if (v20 < v22)
          {
            v22 = v20;
          }

          v24 = (v23 + v23 * v23) >> 1;
          *(*v11 + 8 * v24 + 8 * v22) = *(*v11 + 8 * v24 + 8 * v22) + v19;
          ++*(__p[1] + v24 + v22);
          ++v16;
          v13 = a1[22];
          v12 = a1[23];
          v14 += 32;
        }

        while (v16 < (v12 - v13) >> 5);
        v25 = (v12 - v13) >> 5;
        v14 = v36;
      }

      ++v15;
      v14 += 32;
    }

    while (v15 < v25);
  }

  v26 = __p[1];
  if (v6)
  {
    v27 = 0;
    v28 = *v11;
    do
    {
      v29 = *v11;
      v30 = v27;
      do
      {
        if (v27 <= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v27;
        }

        if (v27 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v27;
        }

        v33 = (v31 + v31 * v31) >> 1;
        v34 = v26[v33 + v32];
        if (v34)
        {
          v35 = *(v29 + 8 * v33 + 8 * v32) / v34;
        }

        else
        {
          v35 = 0.0;
        }

        *(v28 + 8 * v33 + 8 * v32) = v35;
        ++v30;
      }

      while (v6 != v30);
      ++v27;
    }

    while (v27 != v6);
    goto LABEL_38;
  }

  if (__p[1])
  {
LABEL_38:
    v44 = v26;
    operator delete(v26);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v38, v39[0]);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v40, v41[0]);
}

double CLMicroLocationModel::representativeFPsRatio(CLMicroLocationModel *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 27);
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 += (v2[5] - v2[4]) >> 4;
      v2 = *v2;
    }

    while (v2);
    if (v3)
    {
      return ((*(this + 23) - *(this + 22)) >> 5) / v3;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    isValid = CLMicroLocationModel::isValid(this);
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:representativeFPsRatio, called with empty model, isValid:%{public}hhd}", v6, 0x18u);
  }

  return 1.0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_131()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid>>(void *a1, void *a2, _OWORD *a3)
{
  v3 = 0;
  for (i = 0; i != 16; ++i)
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + *(a2 + i);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= *&v5)
    {
      v7 = v3 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v3)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_24;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v9;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *,std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      *(a4 + 16) = v5[1];
      v5 += 2;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

uint64_t std::__tree<boost::uuids::uuid>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(uint64_t **a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3);
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = bswap64(*(v4 + 25));
        if (v6 == v8)
        {
          break;
        }

        v9 = v6;
LABEL_9:
        if (v9 < v8)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_22;
        }
      }

      v9 = bswap64(a3[1]);
      v8 = bswap64(*(v7 + 33));
      if (v9 != v8)
      {
        goto LABEL_9;
      }

LABEL_13:
      v11 = bswap64(*(v7 + 25));
      v12 = bswap64(*a3);
      if (v11 != v12 || (v11 = bswap64(*(v7 + 33)), v12 = bswap64(a3[1]), v11 != v12))
      {
        v13 = v11 < v12 ? -1 : 1;
        if (v13 < 0)
        {
          result = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }
      }

      goto LABEL_22;
    }
  }

  v7 = result;
LABEL_22:
  *a2 = v7;
  return result;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,std::vector<boost::uuids::uuid>>(void *a1, void *a2, _OWORD *a3, __int128 *a4)
{
  v4 = 0;
  for (i = 0; i != 16; ++i)
  {
    v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + *(a2 + i);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v10;
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__erase_unique<boost::uuids::uuid>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t std::__tree<boost::uuids::uuid>::__emplace_hint_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v4 = *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  if (a1 + 1 == a2 || ((v5 = bswap64(*a5), v6 = bswap64(*(a2 + 25)), v5 != v6) || (v5 = bswap64(a5[1]), v6 = bswap64(*(a2 + 33)), v5 != v6)) && (v5 < v6 ? (v10 = -1) : (v10 = 1), v10 < 0))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
    }

    else
    {
      if (v7)
      {
        v8 = *a2;
        do
        {
          v9 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        v16 = a2;
        do
        {
          v9 = v16[2];
          v17 = *v9 == v16;
          v16 = v9;
        }

        while (v17);
      }

      v18 = bswap64(*(v9 + 25));
      v19 = bswap64(*a5);
      if (v18 == v19)
      {
        v18 = bswap64(*(v9 + 33));
        v19 = bswap64(a5[1]);
        if (v18 == v19)
        {
          return std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a3, a5);
        }
      }

      v20 = v18 < v19 ? -1 : 1;
      if ((v20 & 0x80000000) == 0)
      {
        return std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a3, a5);
      }
    }

    if (v7)
    {
      *a3 = v9;
      return v9 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = bswap64(*(a2 + 25));
  v12 = bswap64(*a5);
  if (v11 != v12 || (v11 = bswap64(*(a2 + 33)), v12 = bswap64(a5[1]), v11 != v12))
  {
    v15 = v11 < v12 ? -1 : 1;
    if (v15 < 0)
    {
      v13 = a2[1];
      if (v13)
      {
        v14 = a2[1];
        do
        {
          a4 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v21 = a2;
        do
        {
          a4 = v21[2];
          v17 = *a4 == v21;
          v21 = a4;
        }

        while (!v17);
      }

      if (a4 == a1 + 1 || ((v22 = bswap64(*a5), v23 = bswap64(*(a4 + 25)), v22 != v23) || (v22 = bswap64(a5[1]), v23 = bswap64(*(a4 + 33)), v22 != v23) ? (v22 < v23 ? (v24 = -1) : (v24 = 1)) : (v24 = 0), v24 < 0))
      {
        if (v13)
        {
          *a3 = a4;
        }

        else
        {
          *a3 = a2;
          return a2 + 1;
        }

        return a4;
      }

      return std::__tree<boost::uuids::uuid>::__find_equal<boost::uuids::uuid>(a1, a3, a5);
    }
  }

  *a3 = a2;
  *a4 = a2;
  return a4;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,boost::uuids::uuid>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,boost::uuids::uuid> const&>(void *a1, void *a2, _OWORD *a3)
{
  v3 = 0;
  for (i = 0; i != 16; ++i)
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + *(a2 + i);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3;
    if (v3 >= *&v5)
    {
      v7 = v3 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v3;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v3)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_24;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t std::__tree<std::__value_type<boost::uuids::uuid,unsigned long>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,unsigned long>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,unsigned long>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid&,unsigned long &>(uint64_t **a1, unint64_t *a2, _OWORD *a3, void *a4)
{
  v4 = *std::__tree<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::__map_value_compare<boost::uuids::uuid,std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>,std::less<boost::uuids::uuid>,true>,std::allocator<std::__value_type<boost::uuids::uuid,std::vector<ULEndpointPlacementGenerator::EndpointConstraint>>>>::__find_equal<boost::uuids::uuid>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void std::vector<double>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(result, a2 - v3, a3);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25921A970)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_25921A970)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25921A970)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25921A960)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25921A970)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25921A960)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = 0;
  for (i = 0; i != 16; ++i)
  {
    v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + *(a2 + i);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v10;
}

uint64_t CLMicroLocationProtobufHelper::uuidFromStdString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  result = boost::uuids::string_generator::operator()<std::__wrap_iter<char const*>>(&v7, v4, &v4[v3]);
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t ***CLMicroLocationProtobufHelper::uuidFromProtobuf@<X0>(uint64_t ***result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 23);
  if (v2 < 0)
  {
    if (result[1] != 16)
    {
LABEL_7:
      v3 = 0;
      *a2 = 0;
      goto LABEL_8;
    }

    result = *result;
  }

  else if (v2 != 16)
  {
    goto LABEL_7;
  }

  *a2 = *result;
  v3 = 1;
LABEL_8:
  a2[16] = v3;
  return result;
}

void CLMicroLocationProtobufHelper::boostUuidFromNSUUID(uint64_t *__return_ptr a1@<X8>, CLMicroLocationProtobufHelper *this@<X0>)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = this;
  v4 = v3;
  if (v3)
  {
    v5 = 0uLL;
    [(CLMicroLocationProtobufHelper *)v3 getUUIDBytes:&v5];
    *a1 = v5;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }
}

double CLMicroLocationProtobufHelper::getMeasurementValue(CLMicroLocationProtobufHelper *this, const CLMicroLocationProto::Measurement *a2)
{
  v2 = *(this + 16);
  result = 0.0;
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4:
        v4 = *(this + 5);
        if (v4)
        {
          return *(v4 + 20);
        }

        v5 = 40;
        break;
      case 5:
        v4 = *(this + 6);
        if (!v4)
        {
          v5 = 48;
          break;
        }

        return *(v4 + 20);
      case 6:
        v4 = *(this + 7);
        if (v4)
        {
          return *(v4 + 20);
        }

        v5 = 56;
        break;
      default:
        return result;
    }

LABEL_20:
    v4 = *(CLMicroLocationProto::Measurement::default_instance(this) + v5);
    return *(v4 + 20);
  }

  if (v2 == 1)
  {
    v4 = *(this + 2);
    if (v4)
    {
      return *(v4 + 20);
    }

    v5 = 16;
    goto LABEL_20;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      return result;
    }

    v4 = *(this + 4);
    if (v4)
    {
      return *(v4 + 20);
    }

    v5 = 32;
    goto LABEL_20;
  }

  v4 = *(this + 3);
  if (!v4)
  {
    v5 = 24;
    goto LABEL_20;
  }

  return *(v4 + 20);
}

id CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v41 = [MEMORY[0x277CBEB18] array];
    v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*a1];
    std::string::basic_string[abi:ne200100]<0>(&v51, "com.apple.magicalmoments");
    v43 = 0;
    v44 = 0;
    v45 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v43, &v51, &v54, 1uLL);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v51);
    }

    v2 = *(a1 + 8);
    v42 = (a1 + 16);
    if (v2 != (a1 + 16))
    {
      do
      {
        v3 = v2 + 4;
        v4 = v43;
        v5 = v44;
        if (v43 != v44)
        {
          v6 = *(v2 + 55);
          if (v6 >= 0)
          {
            v7 = *(v2 + 55);
          }

          else
          {
            v7 = v2[5];
          }

          if (v6 >= 0)
          {
            v8 = v2 + 4;
          }

          else
          {
            v8 = v2[4];
          }

          while (1)
          {
            v9 = *(v4 + 23);
            v10 = v9;
            if ((v9 & 0x80u) != 0)
            {
              v9 = *(v4 + 8);
            }

            if (v9 == v7)
            {
              v11 = v10 >= 0 ? v4 : *v4;
              if (!memcmp(v11, v8, v7))
              {
                break;
              }
            }

            v4 += 24;
            if (v4 == v5)
            {
              goto LABEL_35;
            }
          }
        }

        if (v4 != v5)
        {
          if (*(v2 + 80) != 1)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
LABEL_47:
            CLMicroLocationPublishHelper::duetEventsFromLocalizationResultMeasurement(&v46);

            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationPublishHelper.mm", 42, "duetEventsFromLocalizationResultMeasurement");
            __break(1u);
          }

          v51 = 0;
          v52 = 0;
          v53 = 0;
          std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&v51, v2[7], v2[8], 0xCCCCCCCCCCCCCCCDLL * ((v2[8] - v2[7]) >> 2));
          if (v52 == v51)
          {
            goto LABEL_47;
          }

          v12 = [MEMORY[0x277CBEB38] dictionary];
          v13 = v51;
          v14 = v52;
          if (v51 == v52)
          {
            v15 = 0;
            v16 = 0.0;
          }

          else
          {
            v15 = 0;
            v16 = 0.0;
            do
            {
              v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v13];
              LODWORD(v18) = *(v13 + 4);
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
              [v12 setObject:v19 forKey:v17];

              v20 = *(v13 + 4);
              if (v16 < v20)
              {
                v21 = v17;

                v16 = v20;
                v15 = v21;
              }

              v13 = (v13 + 20);
            }

            while (v13 != v14);
          }

          v49[0] = @"numberOfWifiDevices";
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
          v50[0] = v22;
          v49[1] = @"numberOfBleDevices";
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
          v50[1] = v23;
          v49[2] = @"numberOfUwbDevices";
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
          v50[2] = v24;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];

          v26 = [MEMORY[0x277CFE230] domain];
          v47[0] = v26;
          if (*(v2 + 55) < 0)
          {
            v3 = *v3;
          }

          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
          v48[0] = v27;
          v28 = [MEMORY[0x277CFE230] probabilityVector];
          v47[1] = v28;
          v47[2] = @"_DKMicroLocationNumberOfDevices";
          v48[1] = v12;
          v48[2] = v25;
          v29 = [MEMORY[0x277CFE230] microLocationIsStable];
          v47[3] = v29;
          v30 = [MEMORY[0x277CCABB0] numberWithBool:0];
          v48[3] = v30;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];

          v32 = MEMORY[0x277CFE1D8];
          v33 = [MEMORY[0x277CFE298] microLocationVisitStream];
          v34 = [MEMORY[0x277CFE2B8] withUUID:v15];
          v35 = [v32 eventWithStream:v33 startDate:v40 endDate:v40 value:v34 confidence:v31 metadata:v16];

          [v41 addObject:v35];
          if (v51)
          {
            v52 = v51;
            operator delete(v51);
          }
        }

LABEL_35:
        v36 = v2[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v2[2];
            v38 = *v37 == v2;
            v2 = v37;
          }

          while (!v38);
        }

        v2 = v37;
      }

      while (v37 != v42);
    }

    v51 = &v43;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

void sub_2591B4498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  if (*(v14 - 113) < 0)
  {
    operator delete(*(v14 - 136));
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationPublishHelper::biomePublicEventsFromLocalizationResultMeasurement(uint64_t a1)
{
  if (!objc_opt_class())
  {
    v3 = 0;
    goto LABEL_37;
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  if (v4 == (a1 + 16))
  {
LABEL_37:

    v45 = v3;
    return;
  }

  v6 = 0x277CCA000uLL;
  v46 = v2;
  while (1)
  {
    if ((*(v4 + 55) & 0x80000000) == 0 || v4[5] != 24)
    {
      goto LABEL_29;
    }

    v7 = v4[4];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v8 == 0x6C7070612E6D6F63 && v9 == 0x61636967616D2E65;
    if (!v11 || v10 != 0x73746E656D6F6D6CLL)
    {
      goto LABEL_29;
    }

    if (*(v4 + 80) != 1)
    {
      break;
    }

    __p = 0;
    v51 = 0;
    v52 = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&__p, v4[7], v4[8], 0xCCCCCCCCCCCCCCCDLL * ((v4[8] - v4[7]) >> 2));
    if (v51 == __p)
    {
      goto LABEL_41;
    }

    v13 = [MEMORY[0x277CBEB18] array];
    v14 = __p;
    v15 = v51;
    if (__p == v51)
    {
      v16 = 0;
      v22 = 0.0;
    }

    else
    {
      v16 = 0;
      v17 = 0.0;
      do
      {
        v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v14];
        v19 = v14[4];
        v20 = objc_alloc(MEMORY[0x277CF12B8]);
        v21 = [v18 UUIDString];
        v22 = v19;
        v23 = [*(v6 + 2992) numberWithDouble:v22];
        v24 = [v20 initWithMicroLocationIdentifier:v21 probability:v23];

        [v13 addObject:v24];
        v6 = 0x277CCA000;
        if (v17 >= v22)
        {
          v22 = v17;
        }

        else
        {
          v25 = v18;

          v16 = v25;
          v17 = v22;
        }

        v14 += 5;
      }

      while (v14 != v15);
    }

    v26 = objc_alloc(MEMORY[0x277CF12B0]);
    v27 = [*(v6 + 2992) numberWithUnsignedLong:0];
    v28 = [v26 initWithTechnology:@"numberOfWifiDevices" numDevices:v27];

    v49 = v28;
    v29 = objc_alloc(MEMORY[0x277CF12B0]);
    v30 = [*(v6 + 2992) numberWithUnsignedLong:0];
    v31 = [v29 initWithTechnology:@"numberOfBleDevices" numDevices:v30];

    v48 = v31;
    v32 = objc_alloc(MEMORY[0x277CF12B0]);
    v33 = [*(v6 + 2992) numberWithUnsignedLong:0];
    v34 = [v32 initWithTechnology:@"numberOfUwbDevices" numDevices:v33];

    v47 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:{v28, v31, v34, 0}];
    v36 = objc_alloc(MEMORY[0x277CF12A8]);
    v37 = v4 + 4;
    if (*(v4 + 55) < 0)
    {
      v37 = v4[4];
    }

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
    v39 = [v16 UUIDString];
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
    v41 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v42 = [v36 initWithDomain:v38 maxProbabilityMicroLocationIdentifier:v39 maxProbability:v40 probabilityVector:v13 isStable:v41 numDevicesVector:v35];

    v3 = v46;
    [v46 addObject:v42];

    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    v6 = 0x277CCA000;
LABEL_29:
    v43 = v4[1];
    if (v43)
    {
      do
      {
        v44 = v43;
        v43 = *v43;
      }

      while (v43);
    }

    else
    {
      do
      {
        v44 = v4[2];
        v11 = *v44 == v4;
        v4 = v44;
      }

      while (!v11);
    }

    v4 = v44;
    if (v44 == v5)
    {
      goto LABEL_37;
    }
  }

  __p = 0;
  v51 = 0;
  v52 = 0;
LABEL_41:
  CLMicroLocationPublishHelper::biomePublicEventsFromLocalizationResultMeasurement(&v53);

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationPublishHelper.mm", 93, "biomePublicEventsFromLocalizationResultMeasurement");
  __break(1u);
}

{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0(&dword_258FE9000, v2, v3, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_258FE9000, v10, v11, v12, "localization results vector cannot be empty", "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (OUTLINED_FUNCTION_4_0(v16))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_1(&dword_258FE9000, v17, v18, "{msg%{public}.0s:localization results vector cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22);
  }
}

void sub_2591B4ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement(double *a1)
{
  if (!objc_opt_class())
  {
    v3 = 0;
    goto LABEL_32;
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  v4 = *(a1 + 1);
  v5 = a1 + 2;
  if (v4 == a1 + 2)
  {
LABEL_32:

    v40 = v3;
    return;
  }

  v6 = *a1;
  v41 = a1 + 2;
  v42 = v2;
  while (1)
  {
    if ((*(v4 + 55) & 0x80000000) == 0 || *(v4 + 5) != 38 || memcmp(*(v4 + 4), "com.apple.microlocation.semisupervised", 0x26uLL))
    {
      goto LABEL_24;
    }

    std::string::basic_string[abi:ne200100]<0>(v48, "");
    if (*(v4 + 80) != 1)
    {
      break;
    }

    __p = 0;
    v46 = 0;
    v47 = 0;
    std::vector<ULLocalizationResultInternal>::__init_with_size[abi:ne200100]<ULLocalizationResultInternal*,ULLocalizationResultInternal*>(&__p, *(v4 + 7), *(v4 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 8) - *(v4 + 7)) >> 2));
    if (v46 == __p)
    {
      goto LABEL_36;
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v8 = __p;
    v9 = v46;
    if (__p == v46)
    {
      v10 = 0;
      v16 = 0.0;
    }

    else
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v8];
        v13 = v8[4];
        v14 = objc_alloc(MEMORY[0x277CF1360]);
        v15 = [v12 UUIDString];
        v16 = v13;
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        v18 = [v14 initWithLabel:v15 probability:v17];

        [v7 addObject:v18];
        if (v11 >= v16)
        {
          v16 = v11;
        }

        else
        {
          v19 = v12;

          v10 = v19;
          v11 = v16;
        }

        v8 += 5;
      }

      while (v8 != v9);
    }

    v20 = objc_alloc(MEMORY[0x277CF1358]);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v22 = [v20 initWithTechnologyString:@"numberOfWifiDevices" number:v21];

    v44 = v22;
    v23 = objc_alloc(MEMORY[0x277CF1358]);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v25 = [v23 initWithTechnologyString:@"numberOfBleDevices" number:v24];

    v43 = v25;
    v26 = objc_alloc(MEMORY[0x277CF1358]);
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v28 = [v26 initWithTechnologyString:@"numberOfUwbDevices" number:v27];

    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:{v22, v25, v28, 0}];
    v30 = objc_alloc(MEMORY[0x277CF1350]);
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    if (v49 >= 0)
    {
      v32 = v48;
    }

    else
    {
      v32 = v48[0];
    }

    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:v32];
    v34 = [v10 UUIDString];
    v35 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v36 = [v30 initWithAbsoluteTimeStamp:v31 clientBundleID:v33 maxProbabilityLabel:v34 maxProbability:v35 probabilityVector:v7 numDevicesVector:v29];

    v3 = v42;
    [v42 addObject:v36];

    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    v5 = v41;
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

LABEL_24:
    v37 = *(v4 + 1);
    if (v37)
    {
      do
      {
        v38 = v37;
        v37 = *v37;
      }

      while (v37);
    }

    else
    {
      do
      {
        v38 = *(v4 + 2);
        v39 = *v38 == v4;
        v4 = v38;
      }

      while (!v39);
    }

    v4 = v38;
    if (v38 == v5)
    {
      goto LABEL_32;
    }
  }

  __p = 0;
  v46 = 0;
  v47 = 0;
LABEL_36:
  CLMicroLocationPublishHelper::biomeRestrictedEventsFromLocalizationResultMeasurement(&v50);

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationPublishHelper.mm", 142, "biomeRestrictedEventsFromLocalizationResultMeasurement");
  __break(1u);
}

void sub_2591B5084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591B5214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_132()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints(uint64_t *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    v7 = 0;
LABEL_17:
    v15 = +[ULDefaultsSingleton shared];
    v10 = [v15 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsWiFiOnlyThreshold"];
    v13 = [v10 objectForKey:v11];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = [&unk_286A728D0 unsignedIntValue];
      goto LABEL_20;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 5);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = 1;
LABEL_6:
    v8 = *a1 + 224 * v4 + 16;
    do
    {
      v8 = *v8;
      if (!v8)
      {
        v7 = ++v4 < v5;
        if (v4 != v6)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    while (*(v8 + 24) != 5);
    v9 = +[ULDefaultsSingleton shared];
    v10 = [v9 defaultsDictionary];

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsWiFiBleThreshold"];
    v12 = [v10 objectForKey:v11];
    v13 = v12;
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = [&unk_286A728E8 unsignedIntValue];
      goto LABEL_20;
    }
  }

  v14 = [v13 unsignedIntValue];
LABEL_20:
  v16 = v14;

  *v45 = 0;
  *&v45[8] = 0;
  *buf = v45;
  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualitySecondsPerDay"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = [v20 intValue];
  }

  else
  {
    v21 = [&unk_286A72840 intValue];
  }

  v22 = v21;

  v23 = *a1;
  if (a1[1] != *a1)
  {
    v24 = 0;
    v25 = 144;
    do
    {
      v43 = vcvtmd_u64_f64(*(v23 + v25) / v22);
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(buf, &v43, &v43);
      ++v24;
      v23 = *a1;
      v25 += 224;
    }

    while (v24 < 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
  }

  v26 = *&v45[8];
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(buf, *v45);
  v27 = +[ULDefaultsSingleton shared];
  v28 = [v27 defaultsDictionary];

  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityDaysInLOIForRelaxation"];
  v30 = [v28 objectForKey:v29];
  if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = [v30 unsignedIntValue];
  }

  else
  {
    v31 = [&unk_286A72870 unsignedIntValue];
  }

  v32 = v31;

  v33 = v16;
  if (v26 >= v32)
  {
    v34 = +[ULDefaultsSingleton shared];
    v35 = [v34 defaultsDictionary];

    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelQualityNumFingerprintsRelaxationAfterTimeInLOI"];
    v37 = [v35 objectForKey:v36];
    if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = [v37 unsignedIntValue];
    }

    else
    {
      v38 = [&unk_286A72888 unsignedIntValue];
    }

    v39 = v38;

    v33 -= v39;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints();
  }

  v40 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
    *buf = 68290050;
    *v45 = 2082;
    *&buf[4] = 0;
    *&v45[2] = "";
    *&v45[10] = 2050;
    *&v45[12] = v41;
    v46 = 2050;
    v47 = v26;
    v48 = 1026;
    v49 = v7;
    v50 = 2050;
    v51 = v33;
    _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:evaluateQualityWithNumFingerprints, Num fingerprints (unpruned):%{public}lu, Number of days with recordings:%{public}lu, Has BLE:%{public}hhd, Threshold:%{public}lu}", buf, 0x36u);
  }

  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5) < v33)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

void CLMicroLocationQualityEstimationAlgorithms::evaluateQualityTreeBased(void **__return_ptr a1@<X8>, CLMicroLocationQualityEstimationAlgorithms *this@<X0>)
{
  v120 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v88 = (a1 + 1);
  std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__assign_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(a1 + 1, 0, 0, 0);
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v8 = v7;

  v102[0] = &stru_286A60C80;
  v102[1] = CLMicroLocationUtils::createEnabledTechnologies(1, 1, 1, 1);
  v103 = v8;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  CLMicroLocationClusterRFDistance::evaluateRFClusterDistances(v102, this, &v99);
  if (CLMicroLocationModel::numClusters(this) == 1)
  {
    HIDWORD(v100) = 0;
    LODWORD(v101) = 0;
  }

  v96 = 0u;
  v97 = 0u;
  v98 = 1065353216;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = &v94;
  v90 = &v91;
  v91 = 0;
  v10 = *(this + 22);
  v9 = *(this + 23);
  v11 = (v9 - v10) >> 5;
  if (v9 == v10)
  {
    v22 = 0;
    *(a1 + 8) = 0;
    v19 = (a1 + 4);
    *(a1 + 9) = 0;
    v20 = a1 + 36;
    *(a1 + 10) = 0;
    v21 = (a1 + 5);
  }

  else
  {
    do
    {
      for (i = *(*v10 + 16); i; i = *i)
      {
        v13 = *(i + 6);
        if (v13 == 6)
        {
          v15 = &v90;
        }

        else
        {
          if (v13 != 5)
          {
            if (v13 == 1)
            {
              *buf = i + 4;
              v14 = std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(&v96, (i + 4), &std::piecewise_construct, buf, &v104);
              ++*(v14 + 12);
            }

            continue;
          }

          v15 = &v93;
        }

        std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>(v15, (i + 4), (i + 4));
      }

      v10 += 32;
    }

    while (v10 != v9);
    v16 = v95;
    v17 = v92;
    v18 = v97;
    *(a1 + 8) = DWORD2(v97);
    v19 = (a1 + 4);
    *(a1 + 9) = v16;
    v20 = a1 + 36;
    *(a1 + 10) = v17;
    v21 = (a1 + 5);
    if (v18)
    {
      v86 = (a1 + 5);
      v87 = a1 + 36;
      v22 = 0;
      do
      {
        v23 = *(v18 + 12);
        v24 = [ULDefaultsSingleton shared:v86];
        v25 = [v24 defaultsDictionary];

        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRobustWiFiMinARDecisionTreeFeatureThreshold"];
        v27 = [v25 objectForKey:v26];
        if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v27 doubleValue];
        }

        else
        {
          [&unk_286A73000 doubleValue];
        }

        v29 = v28;

        if (v29 < (v23 / v11))
        {
          ++v22;
        }

        v18 = *v18;
      }

      while (v18);
      v21 = v86;
      v20 = v87;
    }

    else
    {
      v22 = 0;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints();
  }

  v30 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *v19;
    v32 = *v20;
    v33 = *v21;
    *buf = 68290562;
    *&buf[4] = 0;
    v106 = 2082;
    v107 = "";
    v108 = 2050;
    v109 = v11;
    v110 = 2050;
    v111 = v22;
    v112 = 1026;
    v113 = v31;
    v114 = 1026;
    v115 = v32;
    v116 = 1026;
    v117 = v33;
    v118 = 2050;
    v119 = *&v101;
    _os_log_impl(&dword_258FE9000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:evaluateQualityTreeBased, Num fingerprints (post-pruning):%{public}lu, NumRobustWifiSources:%{public}lu, NumWiFiSources:%{public}u, NumBLESources:%{public}u, NumUWBSources:%{public}u, maxClusterRfDistance:%{public}f}", buf, 0x42u);
  }

  v34 = +[ULDefaultsSingleton shared];
  v35 = [v34 defaultsDictionary];

  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumMinFingerprintsPostPruningTreeBasedThreshold"];
  v37 = [v35 objectForKey:v36];
  if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v38 = [v37 unsignedIntValue];
  }

  else
  {
    v38 = [&unk_286A728A0 unsignedIntValue];
  }

  v39 = v38;

  if (v11 < v39)
  {
    v40 = a1;
    v42 = a1[2];
    v41 = a1[3];
    if (v42 < v41)
    {
      v43 = 5;
LABEL_58:
      *v42 = v43;
      v63 = v42 + 1;
LABEL_80:
      v40[2] = v63;
      v80 = 1;
      goto LABEL_81;
    }

    v56 = *v88;
    v57 = v42 - *v88;
    v58 = (v57 >> 2) + 1;
    if (v58 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v59 = v41 - v56;
    if (v59 >> 1 > v58)
    {
      v58 = v59 >> 1;
    }

    v60 = v59 >= 0x7FFFFFFFFFFFFFFCLL;
    v61 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v60)
    {
      v61 = v58;
    }

    if (v61)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(v88, v61);
    }

    v74 = v57 >> 2;
    v75 = a1;
    v76 = (4 * (v57 >> 2));
    v77 = 5;
    goto LABEL_78;
  }

  v44 = *&v101;
  v45 = +[ULDefaultsSingleton shared];
  v46 = [v45 defaultsDictionary];

  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxClusterRFDistanceDecisionTreeNodeThreshold"];
  v48 = [v46 objectForKey:v47];
  if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v48 doubleValue];
  }

  else
  {
    [&unk_286A73010 doubleValue];
  }

  v50 = v49;

  if (v50 >= v44)
  {
    v40 = a1;
    v42 = a1[2];
    v62 = a1[3];
    if (v42 < v62)
    {
      v43 = 6;
      goto LABEL_58;
    }

    v56 = *v88;
    v57 = v42 - *v88;
    v71 = (v57 >> 2) + 1;
    if (v71 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v72 = v62 - v56;
    if (v72 >> 1 > v71)
    {
      v71 = v72 >> 1;
    }

    v60 = v72 >= 0x7FFFFFFFFFFFFFFCLL;
    v73 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v60)
    {
      v73 = v71;
    }

    if (v73)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(v88, v73);
    }

    v74 = v57 >> 2;
    v75 = a1;
    v76 = (4 * (v57 >> 2));
    v77 = 6;
LABEL_78:
    v81 = &v76[-v74];
    *v76 = v77;
    v63 = v76 + 1;
    memcpy(v81, v56, v57);
    v82 = v75[1];
    v75[1] = v81;
    v75[2] = v63;
    v75[3] = 0;
    v40 = v75;
    if (v82)
    {
      operator delete(v82);
    }

    goto LABEL_80;
  }

  v51 = +[ULDefaultsSingleton shared];
  v52 = [v51 defaultsDictionary];

  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumRobustWifiSourcesDecisionTreeNodeThreshold"];
  v54 = [v52 objectForKey:v53];
  if (v54 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = [v54 unsignedIntValue];
  }

  else
  {
    v55 = [&unk_286A728B8 unsignedIntValue];
  }

  v64 = v55;

  if (v22 < v64)
  {
    v65 = v95;
    v66 = +[ULDefaultsSingleton shared];
    v67 = [v66 defaultsDictionary];

    v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumBLESourcesDecisionTreeNodeThreshold"];
    v69 = [v67 objectForKey:v68];
    if (v69 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v70 = [v69 unsignedIntValue];
    }

    else
    {
      v70 = [&unk_286A72858 unsignedIntValue];
    }

    v78 = v70;

    if (v65 < v78)
    {
      v40 = a1;
      v42 = a1[2];
      v79 = a1[3];
      if (v42 < v79)
      {
        v43 = 7;
        goto LABEL_58;
      }

      v56 = *v88;
      v57 = v42 - *v88;
      v83 = (v57 >> 2) + 1;
      if (v83 >> 62)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v84 = v79 - v56;
      if (v84 >> 1 > v83)
      {
        v83 = v84 >> 1;
      }

      v60 = v84 >= 0x7FFFFFFFFFFFFFFCLL;
      v85 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v60)
      {
        v85 = v83;
      }

      if (v85)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(v88, v85);
      }

      v74 = v57 >> 2;
      v75 = a1;
      v76 = (4 * (v57 >> 2));
      v77 = 7;
      goto LABEL_78;
    }
  }

  v80 = 3;
  v40 = a1;
LABEL_81:
  *v40 = v80;
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v90, v91);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&v93, v94);
  std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::~__hash_table(&v96);
}

void sub_2591B6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a13, a14);
  std::__tree<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::destroy(&a16, a17);
  std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::~__hash_table(&a19);

  v31 = *a11;
  if (*a11)
  {
    *(a12 + 16) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_133()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void **std::vector<CLMicroLocationProto::ServiceQualityReasonEnum>::__assign_with_size[abi:ne200100]<CLMicroLocationProto::ServiceQualityReasonEnum const*,CLMicroLocationProto::ServiceQualityReasonEnum const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__emplace_unique_key_args<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    std::__hash_table<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::__unordered_map_hasher<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::__unordered_map_equal<std::variant<unsigned long long,boost::uuids::uuid,std::string>,std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,std::equal_to<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>,true>,std::allocator<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::variant<unsigned long long,boost::uuids::uuid,std::string> const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 != v8)
    {
      if (v11 > 1)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= *&v9 - 1;
      }

      if (v15 != v12)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v16 = *(v14 + 10);
    v17 = *(a2 + 24);
    if (v16 == -1 || v17 != v16)
    {
      if (v17 == v16)
      {
        return v14;
      }

      goto LABEL_23;
    }

    v20 = &v21;
    if ((off_286A5E6C8[v16])(&v20, v14 + 2, a2))
    {
      return v14;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }
}

void sub_2591B69D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::variant<unsigned long long,boost::uuids::uuid,std::string>,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::hash<std::variant<unsigned long long,boost::uuids::uuid,std::string>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    v6 = 299792458;
LABEL_5:
    v7 = -1;
    goto LABEL_6;
  }

  v12 = v2;
  v13 = v3;
  v6 = (off_286A5E6B0[v4])(&v11);
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v8 = 0x9DDFEA08EB382D69 * (v6 ^ __ROR8__(v7 + 16, 16));
  v9 = __ROR8__(v7 + 16, 16) ^ (v8 >> 47);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ v8)) >> 47))) ^ v7;
}

unint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNKS_4hashINS_7variantIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEclB8ne200100ERKSH_EUlRKT_E_JRKNS0_6__baseILNS0_6_TraitE1EJySA_SG_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  result = 0;
  for (i = 0; i != 16; ++i)
  {
    result ^= (result << 6) + (result >> 2) + 2654435769u + *(a2 + i);
  }

  return result;
}

void CLMicroLocationRapportMonitor::deviceFound(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) >= *(a1 + 96))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      v8 = *(a1 + 32);
      v24 = 68289539;
      v25 = 2082;
      v26 = "";
      v27 = 2081;
      v28 = v7;
      v29 = 2049;
      v30 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Rapport, rapport monitor exceeded max entries, IDS:%{private, location:escape_only}s, Size:%{private}lu}", &v24, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      v11 = *(a1 + 32);
      v24 = 68289539;
      v25 = 2082;
      v26 = "";
      v27 = 2081;
      v28 = v10;
      v29 = 2049;
      v30 = v11;
      v12 = "Rapport, rapport monitor exceeded max entries";
      v13 = "{msg%{public}.0s:Rapport, rapport monitor exceeded max entries, IDS:%{private, location:escape_only}s, Size:%{private}lu}";
      v14 = v9;
      v15 = 38;
      goto LABEL_32;
    }
  }

  else
  {
    CLMicroLocationProtobufHelper::uuidFromStdString(a2, v33);
    if (v33[16] == 1)
    {
      std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_impl<boost::uuids::uuid const&,std::string const&,std::string&,boost::uuids::uuid&>(a1 + 8);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v24 = 68289283;
      v25 = 2082;
      v26 = "";
      v27 = 2081;
      v28 = v17;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Rapport, rapport monitor buffered bad IDS UUID, IDS:%{private, location:escape_only}s}", &v24, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRapportMonitor::deviceFound();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      v24 = 68289283;
      v25 = 2082;
      v26 = "";
      v27 = 2081;
      v28 = v19;
      v12 = "Rapport, rapport monitor buffered bad IDS UUID";
      v13 = "{msg%{public}.0s:Rapport, rapport monitor buffered bad IDS UUID, IDS:%{private, location:escape_only}s}";
      v14 = v18;
      v15 = 28;
LABEL_32:
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, &v24, v15);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationRapportMonitor::deviceFound();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    v22 = *a3;
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    v23 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v23 = *v23;
    }

    v24 = 68289795;
    v25 = 2082;
    v26 = "";
    v27 = 2081;
    v28 = v21;
    v29 = 2081;
    v30 = v22;
    v31 = 2082;
    v32 = v23;
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Rapport, buffered a found device, Device IDS identifier:%{private, location:escape_only}s, Device name:%{private, location:escape_only}s, CoreRoutine LOI Type:%{public, location:escape_only}s}", &v24, 0x30u);
  }
}

void CLMicroLocationRapportMonitor::getDevicesSinceLearnEventTimeAtLoi(uint64_t a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1065353216;
  for (i = *(a1 + 24); i; i = *i)
  {
    if (i[10] == a4->n128_u64[0] && i[11] == a4->n128_u64[1])
    {
      std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_key_args<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem const&>(a5, (i + 2), (i + 2));
    }
  }

  v11 = *a2;
  v12 = (*(**(a1 + 48) + 88))(*(a1 + 48));
  v13 = v12;
  buf[0] = *a4;
  buf[1].n128_u8[0] = 1;
  if (v12)
  {
    objc_msgSend_fetchRapportEntriesAtLoiFromTime_toTime_loiGroupId_(v12, v11, 1.79769313e308);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  if (*a4 != 0)
  {
    v14 = (*(**(a1 + 48) + 88))(*(a1 + 48));
    v15 = v14;
    *v34 = 0;
    *v35 = 0;
    v35[8] = 1;
    if (v14)
    {
      objc_msgSend_fetchRapportEntriesAtLoiFromTime_toTime_loiGroupId_(v14, v11, 1.79769313e308);
    }

    else
    {
      memset(buf, 0, 24);
    }

    std::vector<ULRapportDO>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>>(&v31, v32, buf[0].n128_i64[0], buf[0].n128_i64[1], 0xCCCCCCCCCCCCCCCDLL * ((buf[0].n128_u64[1] - buf[0].n128_u64[0]) >> 4));
    *v34 = buf;
    std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](v34);
  }

  v16 = v32;
  if (v31 != v32)
  {
    v17 = v31 + 64;
    do
    {
      CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v17 - 24), v34);
      if (v35[8] == 1)
      {
        std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_impl<boost::uuids::uuid &,std::string const&,std::string const&,boost::uuids::uuid const&>(a5);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRapportMonitor::deviceFound();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        buf[0].n128_u64[0] = 68289026;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Rapport, rapport monitor read bad IDS UUID from DB}", buf, 0x12u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRapportMonitor::deviceFound();
      }

      v19 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        buf[0].n128_u64[0] = 68289026;
        buf[0].n128_u16[4] = 2082;
        *(&buf[0].n128_u64[1] + 2) = "";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Rapport, rapport monitor read bad IDS UUID from DB", "{msg%{public}.0s:Rapport, rapport monitor read bad IDS UUID from DB}", buf, 0x12u);
      }

      v20 = v17 + 16;
      v17 += 80;
    }

    while (v20 != v16);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationRapportMonitor::deviceFound();
  }

  v21 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v31;
    v22 = v32;
    if (*(a3 + 23) >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    memset(&v30, 0, sizeof(v30));
    boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::lexical_istream_limited_src(buf);
    boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::shl_input_streamable<boost::uuids::uuid const>(buf, a4);
    v26 = v25;
    if (v25)
    {
      std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v30, v49, v50, v50 - v49);
    }

    std::ostream::~ostream();
    buf[0].n128_u64[0] = MEMORY[0x277D82878] + 16;
    if (v48 < 0)
    {
      operator delete(__p);
    }

    buf[0].n128_u64[0] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&buf[0].n128_i8[8]);
    if ((v26 & 1) == 0)
    {
      std::bad_cast::bad_cast(buf);
      buf[0].n128_u64[0] = &unk_286A55058;
      boost::throw_exception<boost::bad_lexical_cast>(buf);
    }

    v27 = &v30;
    v28 = *(a5 + 24);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v30.__r_.__value_.__r.__words[0];
    }

    *v34 = 68290306;
    *&v34[4] = 0;
    *v35 = 2082;
    *&v35[2] = "";
    v36 = 2050;
    v37 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 4);
    v38 = 1026;
    v39 = v11;
    v40 = 2082;
    v41 = v24;
    v42 = 2082;
    v43 = v27;
    v44 = 2050;
    v45 = v28;
    _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:RapportMonitor getDevicesSinceLearnEventTimeAtLoi, Backup Entries:%{public}lu, From time:%{public}d, LOI type:%{public, location:escape_only}s, LOI id:%{public, location:escape_only}s, Total number of devices:%{public}lu}", v34, 0x40u);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  buf[0].n128_u64[0] = &v31;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_2591B74DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::exception a32)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,2ul>::~lexical_istream_limited_src(&a32);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  a32.__vftable = &a19;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a32);
  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table(v32);
  _Unwind_Resume(a1);
}

void CLMicroLocationRapportMonitor::backup(CLMicroLocationRapportMonitor *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v1 = *(this + 3);
  if (v1)
  {
    v3 = MEMORY[0x277D82C30];
    do
    {
      CLMicroLocationProto::RapportDevice::RapportDevice(buf);
      *&buf[28] |= 1u;
      v4 = *&buf[8];
      if (*&buf[8] == v3)
      {
        operator new();
      }

      if (*(*&buf[8] + 23) < 0)
      {
        *(*&buf[8] + 8) = 16;
        v4 = *v4;
      }

      else
      {
        *(*&buf[8] + 23) = 16;
      }

      *v4 = *(v1 + 1);
      *(v4 + 16) = 0;
      *&buf[28] |= 2u;
      if (*&buf[16] == v3)
      {
        operator new();
      }

      std::string::operator=(*&buf[16], (v1 + 4));
      v16[0] = cl::chrono::CFAbsoluteTimeClock::now();
      v5 = v18;
      if (v18 >= v19)
      {
        v6 = std::vector<ULRapportDO>::__emplace_back_slow_path<std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>(&v17, (v1 + 7), buf, v1 + 5, v16);
      }

      else
      {
        std::construct_at[abi:ne200100]<ULRapportDO,std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,ULRapportDO*>(v18, (v1 + 7), buf, v1 + 5, v16);
        v6 = v5 + 80;
      }

      v18 = v6;
      CLMicroLocationProto::RapportDevice::~RapportDevice(buf);
      v1 = *v1;
    }

    while (v1);
    if (v18 != v17)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRapportMonitor::deviceFound();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v17) >> 4);
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Rapport, back up rapport monitor data to DB, Num Entries:%{public}lu}", buf, 0x1Cu);
      }

      v8 = v18;
      v23 = *(v17 + 64);
      *buf = v23;
      if (v17 == v18)
      {
LABEL_27:
        v11 = (*(**(this + 6) + 88))(*(this + 6));
        [v11 insertDataObjects:&v17 atLoiUUID:&v23];
      }

      else
      {
        v9 = v17;
        while (*(v9 + 64) == *buf && *(v9 + 72) == *&buf[8])
        {
          v9 += 80;
          if (v9 == v18)
          {
            goto LABEL_27;
          }
        }

        v12 = (v17 + 32);
        do
        {
          v13 = (*(**(this + 6) + 88))(*(this + 6));
          *buf = *(v12 - 4);
          if (*(v12 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&buf[8], *(v12 - 3), *(v12 - 2));
          }

          else
          {
            v14 = *(v12 - 24);
            *&buf[24] = *(v12 - 1);
            *&buf[8] = v14;
          }

          CLMicroLocationProto::RapportDevice::RapportDevice(v22, v12);
          v22[2] = v12[2];
          memset(v16, 0, sizeof(v16));
          std::vector<ULRapportDO>::__init_with_size[abi:ne200100]<ULRapportDO const*,ULRapportDO const*>(v16, buf, &v23, 1uLL);
          v15 = v12 + 2;
          [v13 insertDataObjects:v16 atLoiUUID:v12 + 2];
          v20 = v16;
          std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&v20);
          CLMicroLocationProto::RapportDevice::~RapportDevice(v22);
          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v12 += 5;
        }

        while (v15 + 1 != v8);
      }
    }
  }

  *buf = &v17;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_2591B7944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  a17 = &a13;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

__n128 CLMicroLocationRapportMonitor::setCurrentLoiUUID(uuid *this, __n128 *a2)
{
  result = *a2;
  this[5] = *a2;
  return result;
}

unint64_t CLMicroLocationRapportMonitorItem::HashItem::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + 2654435769u + (v2 >> 2) + *(a2 + i);
  }

  v4 = 0;
  for (j = 0; j != 16; ++j)
  {
    v4 ^= (v4 << 6) + 2654435769u + (v4 >> 2) + *(a2 + 64 + j);
  }

  return 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v2) + 3864292196u;
}

BOOL CLMicroLocationRapportMonitorItem::PredicateItem::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3 || *(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v7 = *(a2 + 39);
  if (v7 >= 0)
  {
    v8 = *(a2 + 39);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  v9 = *(a3 + 39);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 24);
  }

  if (v8 != v9)
  {
    return 0;
  }

  v11 = v7 >= 0 ? (a2 + 16) : *(a2 + 16);
  v12 = v10 >= 0 ? (a3 + 16) : *(a3 + 16);
  if (memcmp(v11, v12, v8))
  {
    return 0;
  }

  return *(a2 + 64) == *(a3 + 64) && *(a2 + 72) == *(a3 + 72);
}

void CLMicroLocationRapportMonitor::~CLMicroLocationRapportMonitor(void **this)
{
  *this = &unk_286A5E6F0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table((this + 1));
}

{
  *this = &unk_286A5E6F0;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::~__hash_table((this + 1));

  JUMPOUT(0x259CA1F90);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_134()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__emplace_unique_key_args<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = CLMicroLocationRapportMonitorItem::HashItem::operator()(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__construct_node_hash<CLMicroLocationRapportMonitorItem const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  LOBYTE(v5) = CLMicroLocationRapportMonitorItem::PredicateItem::operator()(v5, (v12 + 2), a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2591B7E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2591B7F78(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<ULRapportDO>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 5 * a5;
        std::vector<ULRapportDO>::__move_range(a1, a2, a1[1], a2 + 80 * a5);
        v17 = v7 + 16 * v18;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRapportDO>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,ULRapportDO*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ULRapportDO>::__move_range(a1, v5, v10, v5 + 80 * a5);
        v17 = v16 + v7;
      }

      std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO *>>,std::move_iterator<std::__wrap_iter<ULRapportDO *>>,ULRapportDO *>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 4);
    if (v12 > 0x333333333333333)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x199999999999999)
    {
      v15 = 0x333333333333333;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = v19 + 80 * a5;
    v21 = 80 * a5;
    do
    {
      std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(v26, v19, v7);
      v19 += 80;
      v7 += 80;
      v21 -= 80;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<ULRapportDO>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<ULRapportDO>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<ULRapportDO>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(a1, v8, v10);
      v10 += 80;
      v8 += 80;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULRapportDO *,ULRapportDO *,ULRapportDO *>(&v12, a2, v7, v6);
}

uint64_t std::vector<ULRapportDO>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRapportDO>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,std::move_iterator<std::__wrap_iter<ULRapportDO*>>,ULRapportDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(a1, a4, v6);
      v6 += 80;
      a4 += 80;
      v8 -= 80;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_2591B83C0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v4);
      v4 -= 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<ULRapportDO>>::construct[abi:ne200100]<ULRapportDO,ULRapportDO,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  CLMicroLocationProto::RapportDevice::RapportDevice((a2 + 32), (a3 + 32));
  result = *(a3 + 64);
  *(a2 + 64) = result;
  return result;
}

void sub_2591B8440(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULRapportDO *,ULRapportDO *,ULRapportDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      *(a4 + v7 - 80) = *(a3 + v7 - 80);
      v10 = (a4 + v7 - 72);
      if (*(a4 + v7 - 49) < 0)
      {
        operator delete(*v10);
      }

      v11 = *(v8 - 72);
      *(a4 + v7 - 56) = *(v8 - 56);
      *v10 = v11;
      *(v8 - 49) = 0;
      *(v8 - 72) = 0;
      CLMicroLocationProto::RapportDevice::CopyFrom((v9 - 48), (v8 - 48));
      *(v9 - 16) = *(v8 - 16);
      v7 -= 80;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULRapportDO *>>,std::move_iterator<std::__wrap_iter<ULRapportDO *>>,ULRapportDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      CLMicroLocationProto::RapportDevice::CopyFrom((a4 + 32), (v5 + 32));
      *(a4 + 64) = *(v5 + 64);
      a4 += 80;
      v5 += 80;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<ULRapportDO>::__emplace_back_slow_path<std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>(uint64_t *a1, uint64_t a2, CLMicroLocationProto::RapportDevice *a3, _OWORD *a4, void *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::construct_at[abi:ne200100]<ULRapportDO,std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,ULRapportDO*>(80 * v5, a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULRapportDO>::~__split_buffer(&v16);
  return v15;
}

void sub_2591B86E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ULRapportDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ULRapportDO,std::string const&,CLMicroLocationProto::RapportDevice &,boost::uuids::uuid const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,ULRapportDO*>(uint64_t a1, uint64_t a2, CLMicroLocationProto::RapportDevice *a3, _OWORD *a4, void *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  ULRapportDO::ULRapportDO(a1, &__p, a3, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2591B8790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ULRapportDO>::__init_with_size[abi:ne200100]<ULRapportDO const*,ULRapportDO const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULRapportDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591B8814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULRapportDO>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO const*,ULRapportDO const*,ULRapportDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      v9 = (a4 + v7 + 8);
      if (*(a2 + v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      CLMicroLocationProto::RapportDevice::RapportDevice((a4 + v7 + 32), (a2 + v7 + 32));
      *(a4 + v7 + 64) = *(v8 + 64);
      v7 += 80;
    }

    while (v8 + 80 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2591B892C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_2591B89D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = CLMicroLocationRapportMonitorItem::HashItem::operator()(a1, (a2 + 2));
  v2[1] = v4;
  v5 = std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t CLMicroLocationRapportMonitorItem::CLMicroLocationRapportMonitorItem(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, _OWORD *a5)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = *a5;
  return a1;
}

void sub_2591B8B8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            LOBYTE(a1) = CLMicroLocationRapportMonitorItem::PredicateItem::operator()(a1, (v11 + 2), a3);
            if (a1)
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = (*(v3 + 24) + 1);
  v14 = *(v3 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(v3, v18);
  }

  return 0;
}

void sub_2591B8D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationRapportMonitorItem,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<CLMicroLocationRapportMonitorItem,CLMicroLocationRapportMonitorItem::HashItem,CLMicroLocationRapportMonitorItem::PredicateItem,std::allocator<CLMicroLocationRapportMonitorItem>>::__deallocate_node(a1, *(a1 + 16));
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

void *CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v4[0] = &unk_286A5E7A8;
  v4[1] = a1;
  v4[3] = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(a1 + 1, v4, &v5, 1uLL);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void sub_2591B8F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v3 + 48))(v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v5 = "{msg%{public}.0s:Background activity cancelled, will skip refresh routine state at last location}";
LABEL_19:
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, v5, &v13, 0x12u);
    }
  }

  else
  {
    v6 = +[ULDefaultsSingleton shared];
    v7 = [v6 defaultsDictionary];

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableBackgroundRoutineStateRefresh"];
    v9 = [v7 objectForKey:v8];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v11 = v10;

    if (v11)
    {
      v12 = *(**a1 + 16);

      v12();
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation();
      }

      v4 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 68289026;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v5 = "{msg%{public}.0s:#Warning, tried to refresh routine state in background but it's disabled by settings}";
        goto LABEL_19;
      }
    }
  }
}

uint64_t CLMicroLocationRoutineStateAnalyzer::executeWorkItems(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v6);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_135()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__func<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0,std::allocator<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5E7A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0,std::allocator<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, v5);
  CLMicroLocationRoutineStateAnalyzer::refreshRoutineStateAtLastLocation(v3, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  return std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2591B942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0,std::allocator<CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(CLMicroLocationRoutineStateAnalyzer::IRoutineStateAnalyzerDelegate &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void CLMicroLocationStateMachine::EventBase::getEventName(CLMicroLocationStateMachine::EventBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *a2 = *(this + 8);
  }
}

CLMicroLocationStateMachine::StateBase *CLMicroLocationStateMachine::StateBase::StateBase(CLMicroLocationStateMachine::StateBase *this, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 31) = 13;
  *this = &unk_286A5E828;
  strcpy(this + 8, "No Name Given");
  *(this + 7) = 0;
  v4 = this + 56;
  *(this + 6) = this + 56;
  v5 = this + 48;
  *(this + 8) = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:StateBase}", v8, 0x12u);
  }

  *(this + 32) = a2;
  *(this + 5) = 0;
  *(this + 9) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v5, *(this + 7));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v4;
  *(this + 10) = 0;
  return this;
}

void CLMicroLocationStateMachine::StateBase::~StateBase(CLMicroLocationStateMachine::StateBase *this)
{
  v7 = *MEMORY[0x277D85DE8];
  *this = &unk_286A5E828;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:~StateBase}", v4, 0x12u);
  }

  v3 = *(this + 7);
  *(this + 5) = 0;
  *(this + 9) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(this + 48, v3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = this + 56;
  *(this + 10) = 0;
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(this + 48, 0);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  CLMicroLocationStateMachine::StateBase::~StateBase(this);

  JUMPOUT(0x259CA1F90);
}

CLMicroLocationStateMachine::StateMachineBase *CLMicroLocationStateMachine::StateMachineBase::StateMachineBase(CLMicroLocationStateMachine::StateMachineBase *this)
{
  *this = &unk_286A5E848;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v2 = (this + 24);
  *(this + 2) = this + 24;
  v3 = (this + 16);
  std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(this + 16, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *v3 = v2;
  *v2 = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  return this;
}

void CLMicroLocationStateMachine::StateMachineBase::~StateMachineBase(CLMicroLocationStateMachine::StateMachineBase *this)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = &unk_286A5E848;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateBase::StateBase();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:~StateMachineBase}", v8, 0x12u);
  }

  v3 = *(this + 2);
  if (v3 != (this + 24))
  {
    do
    {
      v4 = *(v3 + 7);
      *(v3 + 7) = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 24));
  }

  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(this + 16, *(this + 3));
}

uint64_t CLMicroLocationStateMachine::StateMachineBase::addStateToStateMap(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v8 = a2;
  v4 = std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 16), a2, &std::piecewise_construct, &v8, &v7);
  v5 = *a3;
  *a3 = 0;
  result = v4[7];
  v4[7] = v5;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void CLMicroLocationStateMachine::StateMachineBase::setInitialState(void *a1, const std::string::value_type **a2)
{
  v2 = a2;
  v16 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, a2[1]);
  }

  else
  {
    __p = *a2;
  }

  v4 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>((a1 + 2), &__p);
  if (a1 + 3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[7];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
LABEL_9:
    CLMicroLocationStateMachine::StateMachineBase::enterNewState(a1, v5);
    return;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateMachineBase::setInitialState();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v7 = v2;
    if (*(v2 + 23) < 0)
    {
      v7 = *v2;
    }

    *buf = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:State Machine: Failed to initialize state because requested state doesn't exist in the state table, State:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationStateMachine::StateMachineBase::setInitialState();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    if (*(v2 + 23) < 0)
    {
      v2 = *v2;
    }

    *buf = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v2;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State Machine: Failed to initialize state because requested state doesn't exist in the state table", "{msg%{public}.0s:State Machine: Failed to initialize state because requested state doesn't exist in the state table, State:%{private, location:escape_only}s}", buf, 0x1Cu);
  }
}

void sub_2591B9C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_136()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<CLMicroLocationStateMachine::StateBase>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(CLMicroLocationTimeUtils *this, NSDate *a2)
{
  v2 = a2;
  v3 = this;
  if (v2 >= 1)
  {
    CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(&v7);

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/CLMicroLocationTimeUtils.mm", 31, "getTimeDeltaDaysAgo");
    __break(1u);
  }

  else
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v5 setDay:v2];
    v6 = [v4 dateByAddingComponents:v5 toDate:v3 options:0];
    MEMORY[0x259CA1500]();
  }
}

void sub_2591BA014(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_137()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationUtils::createEnabledTechnologies(CLMicroLocationUtils *this, int a2, int a3, int a4)
{
  v4 = 2;
  if (!this)
  {
    v4 = 0;
  }

  if (a2)
  {
    v4 |= 0x20uLL;
  }

  if (a3)
  {
    v4 |= 0x40uLL;
  }

  if (a4)
  {
    return v4 | 0x80;
  }

  else
  {
    return v4;
  }
}

void CLMicroLocationUtils::getAnchorDeviceModelAllowedMap(uint64_t *__return_ptr a1@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v3, "MacPro");
  v4 = 3;
  std::string::basic_string[abi:ne200100]<0>(v5, "MacMini");
  v6 = 3;
  std::string::basic_string[abi:ne200100]<0>(v7, "iMac");
  v8 = 3;
  std::string::basic_string[abi:ne200100]<0>(v9, "Mac15,4");
  v10 = 3;
  std::string::basic_string[abi:ne200100]<0>(v11, "Mac13");
  v12 = 3;
  std::string::basic_string[abi:ne200100]<0>(v13, "Mac16,3");
  v14 = 3;
  std::string::basic_string[abi:ne200100]<0>(v15, "Mac16,2");
  v16 = 3;
  std::string::basic_string[abi:ne200100]<0>(v17, "AudioAccessory1");
  v18 = 2;
  std::string::basic_string[abi:ne200100]<0>(v19, "AudioAccessory5");
  v20 = 2;
  std::string::basic_string[abi:ne200100]<0>(v21, "AudioAccessory6");
  v22 = 2;
  std::string::basic_string[abi:ne200100]<0>(v23, "AppleTV");
  v24 = 1;
  std::map<std::string,DeviceModel>::map[abi:ne200100](a1, v3, 11);
  v2 = 44;
  do
  {
    if (*(&v3[v2 - 1] - 1) < 0)
    {
      operator delete(v3[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
}

void sub_2591BA2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 343);
  v13 = -352;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t CLMicroLocationUtils::convertModelStringToDeviceModel(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    memset(&v23, 0, sizeof(v23));
    v4 = +[ULDefaultsSingleton shared];
    v5 = [v4 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnchorDeviceModelAllowedList"];
    v7 = [v5 objectForKey:v6];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = v7;
      memset(&v24, 0, sizeof(v24));
      std::vector<std::string>::reserve(&v24, [v8 count]);
      v27 = 0u;
      v28 = 0u;
      memset(v26, 0, sizeof(v26));
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:v26 objects:v29 count:16];
      if (v10)
      {
        v11 = **&v26[16];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (**&v26[16] != v11)
            {
              objc_enumerationMutation(v9);
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v26[8] + 8 * i) UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v24, &__p);
            if (SHIBYTE(__p.__end_cap_.__value_) < 0)
            {
              operator delete(__p.__begin_);
            }
          }

          v10 = [v9 countByEnumeratingWithState:v26 objects:v29 count:16];
        }

        while (v10);
      }

      begin = v24.__begin_;
      v22 = v24;
      end = v24.__end_;
      memset(&v24, 0, sizeof(v24));
      v29[0].__locale_ = &v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
    }

    else
    {
      memset(v26, 0, 24);
      memset(&__p, 0, sizeof(__p));
      std::vector<std::string>::reserve(&__p, 0xDuLL);
      for (j = 0; j != 13; ++j)
      {
        std::string::basic_string[abi:ne200100]<0>(v29, _ZGRN10ULSettings14SettingsTraitsINS_28AnchorDeviceModelAllowedListEE12defaultValueE_[j]);
        std::vector<std::string>::push_back[abi:ne200100](&__p, v29);
        if (v30 < 0)
        {
          operator delete(v29[0].__locale_);
        }
      }

      std::vector<std::string>::__vdeallocate(v26);
      *v26 = __p;
      memset(&__p, 0, sizeof(__p));
      v29[0].__locale_ = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
      end = *&v26[8];
      begin = *v26;
      v22 = *v26;
      memset(v26, 0, 24);
      v29[0].__locale_ = v26;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
    }

    while (begin != end)
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      MEMORY[0x259CA1E90](v29);
      v16 = boost::algorithm::ifind_first<std::string,std::string>(a1, begin, v29);
      v18 = v17;
      std::locale::~locale(v29);
      if (v16 != v18)
      {
        std::string::operator=(&v23, begin);
        break;
      }

      ++begin;
    }

    v19 = std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::find<std::string>(a2, &v23);
    if (a2 + 8 == v19)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v19 + 56);
    }

    v29[0].__locale_ = &v22;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    return 0;
  }

  return v14;
}

void sub_2591BA6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::locale a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  a24 = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::ifind_first<std::string,std::string>(uint64_t a1, uint64_t a2, std::locale *a3)
{
  std::locale::locale(&v12, a3);
  v5 = *(a2 + 23);
  v6 = *(a2 + 8);
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v5 < 0)
  {
    v5 = v6;
  }

  v7 = (a2 + v5);
  std::locale::locale(&v15, &v12);
  v13[0].__locale_ = a2;
  v13[1].__locale_ = v7;
  std::locale::locale(&v14, &v15);
  std::locale::~locale(&v15);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 < 0)
  {
    v8 = *(a1 + 8);
  }

  v10 = boost::algorithm::detail::first_finderF<std::__wrap_iter<char const*>,boost::algorithm::is_iequal>::operator()<std::__wrap_iter<char const*>>(v13, v9, v9 + v8);
  std::locale::~locale(&v14);
  std::locale::~locale(&v12);
  return v10;
}

void sub_2591BA894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v10 + 2);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::map<std::string,DeviceModel>::map[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,DeviceModel> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *ULAlgorithms::createLearner@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >= 2)
  {
    ULAlgorithms::createLearner(a1);
  }

  if (a1 != 1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void *ULAlgorithms::createLocalizerAlgorithm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >= 5)
  {
    ULAlgorithms::createLocalizerAlgorithm(a1);
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void ULAlgorithms::getDendrogramLearningParams(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    v3 = +[ULDefaultsSingleton shared];
    v4 = [v3 defaultsDictionary];

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListClusterDistanceThresholdVector"];
    v6 = [v4 objectForKey:v5];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v6, &v32);
      v31 = v32;
      *a2 = v32;
      v7 = v33;
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_44SimilarityListClusterDistanceThresholdVectorEE12defaultValueE_, 1uLL, &v32);
      v7 = v33;
      v31 = v32;
      *a2 = v32;
    }

    *(a2 + 16) = v7;

    v13 = +[ULDefaultsSingleton shared];
    v14 = [v13 defaultsDictionary];

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListSmallClusterSize"];
    v16 = [v14 objectForKey:v15];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v16 unsignedLongValue];
    }

    else
    {
      v17 = [&unk_286A72918 unsignedLongValue];
    }

    v18 = v17;

    *(a2 + 24) = v18;
    v19 = +[ULDefaultsSingleton shared];
    v20 = [v19 defaultsDictionary];

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListSmallClusterRelativeSize"];
    v22 = [v20 objectForKey:v21];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v22 doubleValue];
    }

    else
    {
      [&unk_286A73020 doubleValue];
    }

    v24 = v23;

    *(a2 + 32) = v24;
    v25 = +[ULDefaultsSingleton shared];
    v26 = [v25 defaultsDictionary];

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSimilarityListSmallClusterDistanceThreshold"];
    v28 = [v26 objectForKey:v27];
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v28 doubleValue];
    }

    else
    {
      [&unk_286A73030 doubleValue];
    }

    v30 = v29;

    *(a2 + 40) = v30;
  }

  else
  {
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMagicalMomentsClusterDistanceThresholdVector"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v11, &v32);
      *a2 = v32;
      v12 = v33;
    }

    else
    {
      ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_44MagicalMomentsClusterDistanceThresholdVectorEE12defaultValueE_, 3uLL, &v32);
      v12 = v33;
      *a2 = v32;
    }

    *(a2 + 16) = v12;

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }
}

void sub_2591BAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a9)
  {
    *(v9 + 8) = a9;
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void ULAlgorithms::createKernelFunction(CLGaussianKernelFunction **__return_ptr a1@<X8>, ULAlgorithms *this@<X0>)
{
  v54 = *MEMORY[0x277D85DE8];
  v43 = this;
  v3 = [(ULAlgorithms *)v43 objectForKeyedSubscript:@"type"];
  v4 = v3;
  if (!v3)
  {
    v10 = _CLLogObjectForCategory_MicroLocation_Default(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "primitiveType";
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No type provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v12 = _CLLogObjectForCategory_MicroLocation_Default(v11);
    if (os_signpost_enabled(v12))
    {
      *buf = 68289539;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "primitiveType";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No type provided in dictionary", "{msg%{public}.0s:No type provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "primitiveType";
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No type provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v15 = 300;
    goto LABEL_34;
  }

  v5 = [v3 unsignedLongValue];
  if (v5 >= 4)
  {
    v16 = _CLLogObjectForCategory_MicroLocation_Default(v5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2050;
      v49 = [v4 unsignedLongValue];
      v50 = 2082;
      v51 = "assert";
      v52 = 2081;
      v53 = "primitiveType.unsignedLongValue < static_cast<uint32_t>(KernelFunctionType::kTypeCount)";
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default(v17);
    if (os_signpost_enabled(v18))
    {
      v19 = [v4 unsignedLongValue];
      *buf = 68289795;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2050;
      v49 = v19;
      v50 = 2082;
      v51 = "assert";
      v52 = 2081;
      v53 = "primitiveType.unsignedLongValue < static_cast<uint32_t>(KernelFunctionType::kTypeCount)";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid algorithm chosen", "{msg%{public}.0s:Invalid algorithm chosen, enum value:%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v14 = _CLLogObjectForCategory_MicroLocation_Default(v20);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      ULAlgorithms::createKernelFunction(buf, [v4 unsignedLongValue], v14);
    }

    v15 = 306;
LABEL_34:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", v15, "createKernelFunction");
    goto LABEL_71;
  }

  v6 = [v4 unsignedLongValue];
  v7 = [(ULAlgorithms *)v43 objectForKeyedSubscript:@"sigma"];
  v8 = [(ULAlgorithms *)v43 objectForKeyedSubscript:@"power"];
  v9 = v8;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v7)
      {
        [v7 doubleValue];
        operator new();
      }

      v35 = _CLLogObjectForCategory_MicroLocation_Default(v8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v37 = _CLLogObjectForCategory_MicroLocation_Default(v36);
      if (os_signpost_enabled(v37))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v25 = _CLLogObjectForCategory_MicroLocation_Default(v38);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v26 = 323;
    }

    else
    {
      if (v7)
      {
        [v7 doubleValue];
        operator new();
      }

      v31 = _CLLogObjectForCategory_MicroLocation_Default(v8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v33 = _CLLogObjectForCategory_MicroLocation_Default(v32);
      if (os_signpost_enabled(v33))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v25 = _CLLogObjectForCategory_MicroLocation_Default(v34);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v26 = 317;
    }

    goto LABEL_70;
  }

  if (v6 == 2)
  {
    if (v7)
    {
      if (v8)
      {
        [v7 doubleValue];
        [v9 doubleValue];
        operator new();
      }

      v39 = _CLLogObjectForCategory_MicroLocation_Default(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "power";
        _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No power provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v41 = _CLLogObjectForCategory_MicroLocation_Default(v40);
      if (os_signpost_enabled(v41))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "power";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No power provided in dictionary", "{msg%{public}.0s:No power provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v25 = _CLLogObjectForCategory_MicroLocation_Default(v42);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "power";
        _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No power provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v26 = 332;
    }

    else
    {
      v21 = _CLLogObjectForCategory_MicroLocation_Default(v8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v23 = _CLLogObjectForCategory_MicroLocation_Default(v22);
      if (os_signpost_enabled(v23))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v25 = _CLLogObjectForCategory_MicroLocation_Default(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2082;
        v49 = "assert";
        v50 = 2081;
        v51 = "sigma";
        _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v26 = 329;
    }

    goto LABEL_70;
  }

  if (v6 == 3)
  {
    if (v7)
    {
      [v7 doubleValue];
      operator new();
    }

    v27 = _CLLogObjectForCategory_MicroLocation_Default(v8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "sigma";
      _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v29 = _CLLogObjectForCategory_MicroLocation_Default(v28);
    if (os_signpost_enabled(v29))
    {
      *buf = 68289539;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "sigma";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No sigma provided in dictionary", "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v25 = _CLLogObjectForCategory_MicroLocation_Default(v30);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2082;
      v49 = "assert";
      v50 = 2081;
      v51 = "sigma";
      _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No sigma provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v26 = 338;
LABEL_70:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", v26, "createKernelFunction");
LABEL_71:
    __break(1u);
  }

  *a1 = 0;
}

void sub_2591BBD94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  MEMORY[0x259CA1F90](v15, 0x1081C40468F112ELL, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void ULAlgorithms::details::createFingerprintDistanceFunction(unsigned int a1@<W0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = __PAIR64__(a3, a1);
  v43 = a2;
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v10 = v9;

  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v16 = v15;

  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v22 = v21;

  if (v22)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v23);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v25 = +[ULDefaultsSingleton shared];
  v26 = [v25 defaultsDictionary];

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingPhotoFeaturesEnable"];
  v28 = [v26 objectForKey:v27];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v29 = [v28 BOOLValue];
  }

  else
  {
    v29 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v30 = v29;

  EnabledTechnologies = CLMicroLocationUtils::createEnabledTechnologies(v10, v16, isUwbRangingSupportedOnDevice, v30);
  v31 = +[ULDefaultsSingleton shared];
  v32 = [v31 defaultsDictionary];

  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v34 = [v32 objectForKey:v33];
  if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v35 = [v34 BOOLValue];
  }

  else
  {
    v35 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v36 = v35;

  v45 = v36;
  ULAlgorithms::details::createFingerprintDistanceFunction(*v40, v43, &EnabledTechnologies, v40[4], v42, v38);
}

void ULAlgorithms::details::createFingerprintDistanceFunction(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __src[63] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v16 = a4;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](v13, a5);
        a6[3] = 0;
        operator new();
      }

      ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(v12, a3, &v16, a5, a6);
    }

    v13[8] = *a3;
    v14 = *(a3 + 8);
    std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](&v15, a5);
    a6[3] = 0;
    operator new();
  }

  if (a1 == 3)
  {
    v11 = v12;
    if (![v11 count])
    {

      v11 = &unk_286A73C00;
    }

    memset(__src, 0, 504);
    CLMicroLocationFingerprintDistanceFunction::MaxLikelihoodDistanceFunctionUtils::parseDistributionFunctionSettings(v11, __src);
    memcpy(__dst, __src, 0x1F8uLL);
    __dst[63] = *a3;
    v18 = *(a3 + 8);
    std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](v19, a5);
    v19[64] = 0;
    v19[72] = 0;
    a6[3] = 0;
    operator new();
  }

  if (a1 == 4)
  {
    ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(v12, a3, &v16, a5, __src);
  }

  ULAlgorithms::details::createFingerprintDistanceFunction(__dst);

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", 208, "createFingerprintDistanceFunction");
  __break(1u);
}

void sub_2591BCEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  ULAlgorithms::details::createWeightedEuclideanJaccardIndicativeAPsDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0::~$_0(&a35);

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&STACK[0x330]);
  _Unwind_Resume(a1);
}

void ULAlgorithms::createLinkageFunction(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >= 4)
  {
    ULAlgorithms::createLinkageFunction(a1);
  }

  if (a1 <= 1)
  {
    *a2 = &unk_286A54628;
    if (a1)
    {
      v3 = CLHierarchicalClustering::averageLinkage;
    }

    else
    {
      v3 = CLHierarchicalClustering::singleLinkage;
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    *a2 = &unk_286A54628;
    v3 = CLHierarchicalClustering::completeLinkage;
LABEL_8:
    a2[1] = v3;
    goto LABEL_14;
  }

  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLinkageFunctionInterpolationFactor"];
  v7 = [v5 objectForKey:v6];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
  }

  else
  {
    [&unk_286A73090 floatValue];
  }

  v9 = v8;

  *a2 = &unk_286A5ED78;
  *(a2 + 2) = v9;
LABEL_14:
  a2[3] = a2;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_138()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2591BD3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_2591BD538(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(void *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:@"jaccard_scale_factor"];
  v32 = [v9 objectForKeyedSubscript:@"e2j_kernel_thr"];
  v11 = [v9 objectForKeyedSubscript:@"per_source_params"];
  v12 = v11;
  if (v10)
  {
    if (v32)
    {
      if (v11)
      {
        v10;
        v32;
        ULAlgorithms::details::createPerSourceWeights(@"value_scale_factor", v12, &v33);
        ULAlgorithms::details::createPerSourceWeights(@"euclidean_weight", v12, &v34);
        ULAlgorithms::details::createPerSourceWeights(@"jaccard_pos_weight", v12, &v35);
        ULAlgorithms::details::createPerSourceWeights(@"jaccard_neg_weight", v12, &v36);
        v13 = *a3;
        v14 = v12;
        v15 = v14;
        if (!v13)
        {
          v37 = &unk_286A5E9E8;
          v38 = 0;
LABEL_8:

          v39 = *a2;
          v40 = *(a2 + 8);
          std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](&v41, a4);
          *(a5 + 24) = 0;
          operator new();
        }

        v16 = [(NSString *)v14 objectForKeyedSubscript:@"onesided_jaccard"];
        v17 = v16;
        if (v16)
        {
          CLMicroLocationUtils::PerSourceWeights<BOOL>::fromConfiguration(v16, &v37);

          goto LABEL_8;
        }

        ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(buf);

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", 58, "createOneSidedWeights");
LABEL_32:
        __break(1u);
      }

      v28 = _CLLogObjectForCategory_MicroLocation_Default(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v43 = 2082;
        v44 = "";
        v45 = 2082;
        v46 = "assert";
        v47 = 2081;
        v48 = "perSourceParams";
        _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No per_source_params provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v30 = _CLLogObjectForCategory_MicroLocation_Default(v29);
      if (os_signpost_enabled(v30))
      {
        *buf = 68289539;
        v43 = 2082;
        v44 = "";
        v45 = 2082;
        v46 = "assert";
        v47 = 2081;
        v48 = "perSourceParams";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No per_source_params provided in dictionary", "{msg%{public}.0s:No per_source_params provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v22 = _CLLogObjectForCategory_MicroLocation_Default(v31);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v43 = 2082;
        v44 = "";
        v45 = 2082;
        v46 = "assert";
        v47 = 2081;
        v48 = "perSourceParams";
        _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No per_source_params provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v23 = 80;
    }

    else
    {
      v24 = _CLLogObjectForCategory_MicroLocation_Default(v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v43 = 2082;
        v44 = "";
        v45 = 2082;
        v46 = "assert";
        v47 = 2081;
        v48 = "e2jKernelThr";
        _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No e2j_kernel_thr provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v26 = _CLLogObjectForCategory_MicroLocation_Default(v25);
      if (os_signpost_enabled(v26))
      {
        *buf = 68289539;
        v43 = 2082;
        v44 = "";
        v45 = 2082;
        v46 = "assert";
        v47 = 2081;
        v48 = "e2jKernelThr";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No e2j_kernel_thr provided in dictionary", "{msg%{public}.0s:No e2j_kernel_thr provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v22 = _CLLogObjectForCategory_MicroLocation_Default(v27);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v43 = 2082;
        v44 = "";
        v45 = 2082;
        v46 = "assert";
        v47 = 2081;
        v48 = "e2jKernelThr";
        _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No e2j_kernel_thr provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v23 = 77;
    }
  }

  else
  {
    v18 = _CLLogObjectForCategory_MicroLocation_Default(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v43 = 2082;
      v44 = "";
      v45 = 2082;
      v46 = "assert";
      v47 = 2081;
      v48 = "jaccard_scale_factor";
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No jaccard_scale_factor provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default(v19);
    if (os_signpost_enabled(v20))
    {
      *buf = 68289539;
      v43 = 2082;
      v44 = "";
      v45 = 2082;
      v46 = "assert";
      v47 = 2081;
      v48 = "jaccard_scale_factor";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No jaccard_scale_factor provided in dictionary", "{msg%{public}.0s:No jaccard_scale_factor provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v22 = _CLLogObjectForCategory_MicroLocation_Default(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v43 = 2082;
      v44 = "";
      v45 = 2082;
      v46 = "assert";
      v47 = 2081;
      v48 = "jaccard_scale_factor";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No jaccard_scale_factor provided in dictionary, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v23 = 74;
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", v23, "createWeightedEuclideanJaccardDistanceFunction");
  goto LABEL_32;
}

uint64_t std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_2591BDF0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E8D8;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E8D8;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A5E8D8;
  *(a2 + 8) = *(a1 + 8);
  return std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](a2 + 24, a1 + 24);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(result + 24);
  }

  return result;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(_BYTE *__p)
{
  if (__p[80] == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((__p + 24));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E968;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  return a1;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286A5E968;
  if (*(a1 + 80) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 24);
  }

  JUMPOUT(0x259CA1F90);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286A5E968;
  *(a2 + 8) = *(a1 + 8);
  return std::__optional_copy_base<CLMicroLocationAnchorAppearanceMap,false>::__optional_copy_base[abi:ne200100](a2 + 24, a1 + 24);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(result + 24);
  }

  return result;
}

void std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::destroy_deallocate(_BYTE *__p)
{
  if (__p[80] == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((__p + 24));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1,std::allocator<ULAlgorithms::details::createFingerprintDistanceFunction(ULAlgorithms::FingerprintDistanceFunctionType,NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_1>,float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ULAlgorithms::details::createPerSourceWeights(ULAlgorithms::details *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = this;
  v5 = a2;
  v6 = [(NSString *)v5 objectForKeyedSubscript:v16];
  v7 = v6;
  if (!v6)
  {
    v8 = _CLLogObjectForCategory_MicroLocation_Default(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = [(ULAlgorithms::details *)v16 UTF8String];
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "weightsDict";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't find key: , key:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v10 = _CLLogObjectForCategory_MicroLocation_Default(v9);
    if (os_signpost_enabled(v10))
    {
      v11 = v16;
      v12 = [(ULAlgorithms::details *)v16 UTF8String];
      *buf = 68289795;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v12;
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "weightsDict";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't find key: ", "{msg%{public}.0s:Couldn't find key: , key:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v14 = _CLLogObjectForCategory_MicroLocation_Default(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v16;
      ULAlgorithms::details::createPerSourceWeights([(ULAlgorithms::details *)v16 UTF8String], buf, v14);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/ULAlgorithms.mm", 46, "createPerSourceWeights");
    __break(1u);
  }

  CLMicroLocationUtils::PerSourceWeights<float>::fromConfiguration(v6, a3);
}

uint64_t ULAlgorithms::details::createWeightedEuclideanJaccardDistanceFunction(NSDictionary *,CLMicroLocationFingerprintDistanceFunction::EnabledTechnologiesConfig const&,ULAlgorithms::details::FingerprintDistanceFunctionUsage const&,std::optional<CLMicroLocationAnchorAppearanceMap> const&)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 144);
  }

  return a1;
}

void CLMicroLocationUtils::PerSourceWeights<float>::fromConfiguration(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = [v19 objectForKeyedSubscript:@"wifi"];
  v4 = [v19 objectForKeyedSubscript:@"ble"];
  v5 = [v19 objectForKeyedSubscript:@"uwb"];
  v6 = [v19 objectForKeyedSubscript:@"photoFeatures"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "wifiValue && [wifiValue isKindOfClass:[NSNumber class]]";
    v18 = 100;
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "bleValue && [bleValue isKindOfClass:[NSNumber class]]";
    v18 = 101;
    goto LABEL_16;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "uwbValue && [uwbValue isKindOfClass:[NSNumber class]]";
    v18 = 102;
    goto LABEL_16;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = "photoFeaturesValue && [photoFeaturesValue isKindOfClass:[NSNumber class]]";
    v18 = 103;
LABEL_16:
    __assert_rtn("fromConfiguration", "CLMicroLocationUtils.h", v18, v17);
  }

  [v3 doubleValue];
  v8 = v7;
  [v4 doubleValue];
  v10 = v9;
  [v5 doubleValue];
  v12 = v11;
  [v6 doubleValue];
  v13 = v10;
  v14 = v8;
  v15 = v12;
  *a2 = &unk_286A5CBC8;
  *(a2 + 8) = v14;
  *(a2 + 12) = v13;
  *&v16 = v16;
  *(a2 + 16) = v15;
  *(a2 + 20) = LODWORD(v16);
}