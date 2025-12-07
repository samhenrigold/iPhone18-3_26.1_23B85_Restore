@interface Core_Audio_Driver
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (Core_Audio_Driver)init;
- (id).cxx_construct;
- (id)init_driver_interface:(AudioServerPlugInDriverInterface *)init_driver_interface invalidation_handler:(function<void)(;
- (int)create_and_start_io_receiver:(unsigned int)create_and_start_io_receiver client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(id)work_group_port io_messenger:(id)io_messenger;
- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver;
- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver client_id:(unsigned int)client_id;
- (int)handle_register_buffer:(dict)handle_register_buffer;
- (int)handle_unregister_buffer:(dict)handle_unregister_buffer;
- (shared_ptr<Property_Type_Info>)m_property_type_info;
- (shared_ptr<caulk::mach::unfair_lock>)config_change_info_lock;
- (shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock;
- (shared_ptr<std::map<unsigned)config_change_info_map;
- (shared_ptr<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,)io_receivers;
- (shared_ptr<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,)io_buffer_list;
- (void)abort_device_configuration_change:(unsigned int)abort_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply;
- (void)add_device_client:(unsigned int)add_device_client client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply;
- (void)create_device:(id)create_device client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply;
- (void)dealloc;
- (void)destroy_device:(unsigned int)destroy_device reply:(id)reply;
- (void)get_property_data:(Driver_Property_Identity *)get_property_data qualifier:(id)qualifier data_size:(unsigned int)data_size reply:(id)reply;
- (void)get_property_data_size:(Driver_Property_Identity *)get_property_data_size qualifier:(id)qualifier reply:(id)reply;
- (void)has_property:(Driver_Property_Identity *)has_property reply:(id)reply;
- (void)initialize:(id)initialize reply:(id)reply;
- (void)is_property_settable:(Driver_Property_Identity *)is_property_settable reply:(id)reply;
- (void)object_was_destroyed:(unsigned int)object_was_destroyed reply:(id)reply;
- (void)perform_device_configuration_change:(unsigned int)perform_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply;
- (void)register_io_buffer:(id)register_io_buffer reply:(id)reply;
- (void)release_unpacked_cf_objects:(unsigned int)release_unpacked_cf_objects qualifier_data:(id)qualifier_data data_type:(unsigned int)data_type data:(id)data;
- (void)remove_device_client:(unsigned int)remove_device_client client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply;
- (void)setConfig_change_info_map:(shared_ptr<std:(void *>>)config_change_info_map :map<unsigned long)long;
- (void)setIo_buffer_list:()shared_ptr<std:(applesauce::xpc::dict>>>)std :vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t;
- (void)setIo_receiver_lock:(shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock;
- (void)setIo_receivers:()shared_ptr<std:(std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>)std :unordered_map<AMCP::Portal::IPC::io_messenger_id_t;
- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)m_property_type_info;
- (void)set_property_data:(Driver_Property_Identity *)set_property_data qualifier:(id)qualifier data:(id)data reply:(id)reply;
- (void)start_io:(unsigned int)start_io client_id:(unsigned int)client_id reply:(id)reply;
- (void)start_synchronous_messenger:(unsigned int)start_synchronous_messenger client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(id)work_group_port io_messenger:(id)io_messenger reply:(id)reply;
- (void)stop_io:(unsigned int)stop_io client_id:(unsigned int)client_id reply:(id)reply;
- (void)stop_synchronous_messenger:(unsigned int)stop_synchronous_messenger client_id:(unsigned int)client_id reply:(id)reply;
- (void)store_change_info:(void *)store_change_info for_token:(unint64_t)for_token;
- (void)unregister_io_buffer:(id)unregister_io_buffer reply:(id)reply;
@end

@implementation Core_Audio_Driver

- (id).cxx_construct
{
  *(self + 23) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  return self;
}

- (void)setIo_buffer_list:()shared_ptr<std:(applesauce::xpc::dict>>>)std :vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t
{
  v4 = *std.__ptr_;
  v3 = *(std.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_io_buffer_list.__cntrl_;
  self->_io_buffer_list.__ptr_ = v4;
  self->_io_buffer_list.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,)io_buffer_list
{
  cntrl = self->_io_buffer_list.__cntrl_;
  *v2 = self->_io_buffer_list.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setIo_receivers:()shared_ptr<std:(std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>)std :unordered_map<AMCP::Portal::IPC::io_messenger_id_t
{
  v4 = *std.__ptr_;
  v3 = *(std.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_io_receivers.__cntrl_;
  self->_io_receivers.__ptr_ = v4;
  self->_io_receivers.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,)io_receivers
{
  cntrl = self->_io_receivers.__cntrl_;
  *v2 = self->_io_receivers.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setIo_receiver_lock:(shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock
{
  v4 = *io_receiver_lock.__ptr_;
  v3 = *(io_receiver_lock.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_io_receiver_lock.__cntrl_;
  self->_io_receiver_lock.__ptr_ = v4;
  self->_io_receiver_lock.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<caulk::mach::unfair_lock>)io_receiver_lock
{
  cntrl = self->_io_receiver_lock.__cntrl_;
  *v2 = self->_io_receiver_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)m_property_type_info
{
  v4 = *m_property_type_info.__ptr_;
  v3 = *(m_property_type_info.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  self->_m_custom_property_type_cache.__ptr_ = v4;
  self->_m_custom_property_type_cache.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<Property_Type_Info>)m_property_type_info
{
  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  *v2 = self->_m_custom_property_type_cache.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setConfig_change_info_map:(shared_ptr<std:(void *>>)config_change_info_map :map<unsigned long)long
{
  v4 = *config_change_info_map.__ptr_;
  v3 = *(config_change_info_map.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_config_change_info_map.__cntrl_;
  self->_config_change_info_map.__ptr_ = v4;
  self->_config_change_info_map.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::map<unsigned)config_change_info_map
{
  cntrl = self->_config_change_info_map.__cntrl_;
  *v2 = self->_config_change_info_map.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<caulk::mach::unfair_lock>)config_change_info_lock
{
  cntrl = self->_config_change_info_lock.__cntrl_;
  *v2 = self->_config_change_info_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)set_property_data:(Driver_Property_Identity *)set_property_data qualifier:(id)qualifier data:(id)data reply:(id)reply
{
  v60 = *MEMORY[0x1E69E9840];
  qualifierCopy = qualifier;
  dataCopy = data;
  selfCopy = self;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  objc_msgSend_m_property_type_info(self);
  p_var2 = &set_property_data->var2;
  property_data_and_qualifier_type_code = Property_Type_Info::get_property_data_and_qualifier_type_code(*buf, set_property_data->var0, set_property_data->var2.mSelector);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  unpack_data_from_qualifier(buf, HIDWORD(property_data_and_qualifier_type_code), qualifierCopy);
  v43 = *buf;
  v13 = *&buf[8];
  v38 = *&buf[12];
  v14 = dataCopy;
  if (!v14)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v31;
      AMCP::Log::Scope::get_os_log_t(*v31);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v33 = *v31;
      AMCP::Log::Scope::get_os_log_t(*v31);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 682;
      v55 = 2080;
      v56 = "value == nil";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Value is nil, cannot unpack data", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v47, "Value is nil, cannot unpack data");
    std::runtime_error::runtime_error(&v48, &v47);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v48.__vftable = &unk_1F5992170;
    v49 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
    v57 = "std::tuple<NSData *, UInt32, AMCP::HAL::HAL_Property_Type_Code> unpack_data_from_value(AMCP::HAL::HAL_Property_Type_Code, NSData *__strong)";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    v59 = 682;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  if (property_data_and_qualifier_type_code >= 0x13)
  {
    v18 = 4;
  }

  else
  {
    v15 = property_data_and_qualifier_type_code & 0x1F;
    v16 = qword_1DE796208[v15];
    v17 = qword_1DE7962A0[v15];
    v18 = v17 | v16;
    if (((v17 | v16) & 0x100000000) == 0)
    {
      v18 = [v14 length];
    }
  }

  v45 = v18;
  v19 = [objc_alloc(MEMORY[0x1E695DF80]) initWithLength:{objc_msgSend(v14, "length")}];
  v20 = v19;
  v21 = AMCP::HAL::unpack_property_data(v14, property_data_and_qualifier_type_code, &v45, [v19 mutableBytes]);
  if (v21)
  {
    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
    }

    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *v35;
      AMCP::Log::Scope::get_os_log_t(*v35);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    else
    {
      v37 = *v35;
      AMCP::Log::Scope::get_os_log_t(*v35);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 687;
      v55 = 2080;
      v56 = "data_error != kAudioHardwareNoError";
      _os_log_error_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unpack value", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v47, "Failed to unpack value");
    std::runtime_error::runtime_error(&v48, &v47);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = -1;
    v48.__vftable = &unk_1F5992170;
    v49 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v48);
    v57 = "std::tuple<NSData *, UInt32, AMCP::HAL::HAL_Property_Type_Code> unpack_data_from_value(AMCP::HAL::HAL_Property_Type_Code, NSData *__strong)";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    v59 = 687;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
  }

  v22 = v45;

  SetPropertyData = (*asp_interface)->SetPropertyData;
  var0 = set_property_data->var0;
  var1 = set_property_data->var1;
  v26 = v43;
  bytes = [v43 bytes];
  v28 = v19;
  v29 = (SetPropertyData)(asp_interface, var0, var1, p_var2, v13, bytes, v22, [v19 bytes]);
  replyCopy[2](replyCopy, v29);
  [(Core_Audio_Driver *)selfCopy release_unpacked_cf_objects:v38 qualifier_data:v43 data_type:property_data_and_qualifier_type_code data:v19];
}

- (void)get_property_data:(Driver_Property_Identity *)get_property_data qualifier:(id)qualifier data_size:(unsigned int)data_size reply:(id)reply
{
  v47 = *MEMORY[0x1E69E9840];
  qualifierCopy = qualifier;
  replyCopy = reply;
  selfCopy = self;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  objc_msgSend_m_property_type_info(self);
  property_qualifier_type_code = Property_Type_Info::get_property_qualifier_type_code(v45, get_property_data->var0, get_property_data->var2.mSelector);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  unpack_data_from_qualifier(&v45, property_qualifier_type_code, qualifierCopy);
  v43 = v45;
  v11 = v46;
  v37 = HIDWORD(v46);
  objc_msgSend_m_property_type_info(self);
  v12 = v45;
  var0 = get_property_data->var0;
  mSelector = get_property_data->var2.mSelector;
  std::mutex::lock((v45 + 24));
  v15 = *v12;
  v16 = *(v12 + 1);
  if (*v12 != v16)
  {
    while (*v15 != var0)
    {
      v15 += 48;
      if (v15 == v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (v15 == v16 || (v17 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v15 + 8), mSelector)) == 0)
  {
LABEL_16:
    hal_property_value_type_code = AMCP::HAL::get_hal_property_value_type_code(mSelector);
  }

  else
  {
    v18 = *(v17 + 5);
    if (v18 == 1918990199)
    {
      hal_property_value_type_code = 1;
    }

    else
    {
      if (v18 == 1667658612)
      {
        v19 = 6;
      }

      else
      {
        v19 = 0;
      }

      if (v18 == 1886155636)
      {
        hal_property_value_type_code = 15;
      }

      else
      {
        hal_property_value_type_code = v19;
      }
    }
  }

  std::mutex::unlock((v12 + 24));
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v38 = hal_property_value_type_code;
  v21 = qword_1DE7962A0[hal_property_value_type_code] | qword_1DE796208[hal_property_value_type_code];
  if ((v21 & 0x100000000) == 0)
  {
    LODWORD(v21) = data_size;
  }

  v44 = v21;
  v22 = [objc_alloc(MEMORY[0x1E695DF80]) initWithLength:v21];
  GetPropertyData = (*asp_interface)->GetPropertyData;
  v24 = get_property_data->var0;
  var1 = get_property_data->var1;
  v26 = v43;
  bytes = [(Property_Type_Info *)v43 bytes];
  v28 = v22;
  v29 = (GetPropertyData)(asp_interface, v24, var1, &get_property_data->var2, v11, bytes, v44, &v44, [v22 mutableBytes]);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    if (get_property_data->var2.mSelector == 1668641652)
    {
      objc_msgSend_m_property_type_info(selfCopy);
      v31 = v45;
      v32 = get_property_data->var0;
      v33 = v44;
      v34 = v22;
      Property_Type_Info::add_custom_properties(v31, v32, v33 / 0xCuLL, [v22 bytes]);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }
    }

    v35 = v44;
    v36 = v22;
    v30 = AMCP::HAL::pack_property_data(v38, v35, [v22 bytes]);
  }

  replyCopy[2](replyCopy, v29, v30);
  [(Core_Audio_Driver *)selfCopy release_unpacked_cf_objects:v37 qualifier_data:v43 data_type:v38 data:v22];
}

- (void)get_property_data_size:(Driver_Property_Identity *)get_property_data_size qualifier:(id)qualifier reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  qualifierCopy = qualifier;
  replyCopy = reply;
  v21 = 0;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  objc_msgSend_m_property_type_info(self);
  p_var2 = &get_property_data_size->var2;
  property_qualifier_type_code = Property_Type_Info::get_property_qualifier_type_code(v22, get_property_data_size->var0, get_property_data_size->var2.mSelector);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  unpack_data_from_qualifier(&v22, property_qualifier_type_code, qualifierCopy);
  v12 = v22;
  v14 = v23;
  v13 = HIDWORD(v23);
  GetPropertyDataSize = (*asp_interface)->GetPropertyDataSize;
  var0 = get_property_data_size->var0;
  var1 = get_property_data_size->var1;
  v18 = v22;
  v19 = (GetPropertyDataSize)(asp_interface, var0, var1, p_var2, v14, [v12 bytes], &v21);
  replyCopy[2](replyCopy, v19, v21);
  [(Core_Audio_Driver *)self release_unpacked_cf_objects:v13 qualifier_data:v12 data_type:0 data:0];
}

- (void)is_property_settable:(Driver_Property_Identity *)is_property_settable reply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v9[0] = 0;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v8 = ((*asp_interface)->IsPropertySettable)(asp_interface, is_property_settable->var0, is_property_settable->var1, &is_property_settable->var2, v9);
  replyCopy[2](replyCopy, v8, v9[0]);
}

- (void)release_unpacked_cf_objects:(unsigned int)release_unpacked_cf_objects qualifier_data:(id)qualifier_data data_type:(unsigned int)data_type data:(id)data
{
  qualifier_dataCopy = qualifier_data;
  dataCopy = data;
  v15 = qualifier_dataCopy;
  if (v15)
  {
    if ([v15 bytes])
    {
      if (release_unpacked_cf_objects <= 0x10 && ((1 << release_unpacked_cf_objects) & 0x18040) != 0)
      {
        v11 = *[v15 bytes];
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  v12 = dataCopy;
  v13 = v12;
  if (v12)
  {
    if ([v12 bytes])
    {
      if (data_type <= 0x10 && ((1 << data_type) & 0x18040) != 0)
      {
        v14 = *[v13 bytes];
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }
}

- (void)has_property:(Driver_Property_Identity *)has_property reply:(id)reply
{
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v8 = ((*asp_interface)->HasProperty)(asp_interface, has_property->var0, has_property->var1, &has_property->var2);
  replyCopy[2](replyCopy, v8);
}

- (void)stop_synchronous_messenger:(unsigned int)stop_synchronous_messenger client_id:(unsigned int)client_id reply:(id)reply
{
  replyCopy = reply;
  objc_msgSend_io_receiver_lock(self);
  os_unfair_lock_lock(lock);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  objc_msgSend_io_receivers(self);
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(lock, stop_synchronous_messenger, client_id);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v10 = v9;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  caulk::ipc::synchronous_messenger::semaphore_receiver::stop(*(v10[3] + 32), 5.0);
  objc_msgSend_io_receivers(self);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>>::__erase_unique<AMCP::Portal::IPC::io_messenger_id_t>(lock, stop_synchronous_messenger, client_id);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  os_unfair_lock_unlock(lock);
  replyCopy[2](replyCopy, 0);
}

- (void)start_synchronous_messenger:(unsigned int)start_synchronous_messenger client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(id)work_group_port io_messenger:(id)io_messenger reply:(id)reply
{
  v11 = *&io_buffer_frame_size;
  v13 = *&client_id;
  v14 = *&start_synchronous_messenger;
  work_group_portCopy = work_group_port;
  io_messengerCopy = io_messenger;
  replyCopy = reply;
  replyCopy[2](replyCopy, [(Core_Audio_Driver *)self create_and_start_io_receiver:v14 client_id:v13 nominal_sample_rate:v11 io_buffer_frame_size:work_group_portCopy work_group_port:io_messengerCopy io_messenger:nominal_sample_rate]);
}

- (void)stop_io:(unsigned int)stop_io client_id:(unsigned int)client_id reply:(id)reply
{
  v5 = *&client_id;
  v6 = *&stop_io;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v9 = ((*asp_interface)->StopIO)(asp_interface, v6, v5);
  replyCopy[2](replyCopy, v9);
  process_boost_reply = [(Core_Audio_Driver *)self process_boost_reply];

  if (process_boost_reply)
  {
    process_boost_reply2 = [(Core_Audio_Driver *)self process_boost_reply];
    process_boost_reply2[2]();

    [(Core_Audio_Driver *)self setProcess_boost_reply:0];
  }
}

- (void)start_io:(unsigned int)start_io client_id:(unsigned int)client_id reply:(id)reply
{
  v5 = *&client_id;
  v6 = *&start_io;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v10 = ((*asp_interface)->StartIO)(asp_interface, v6, v5);
  replyCopy[2](replyCopy, v10);
}

- (void)unregister_io_buffer:(id)unregister_io_buffer reply:(id)reply
{
  unregister_io_bufferCopy = unregister_io_buffer;
  replyCopy = reply;
  object = [unregister_io_bufferCopy object];
  v9 = object;
  if (!object)
  {
    v9 = xpc_null_create();
  }

  v10 = v9;
  v11 = v10;
  if (!v10 || (v12 = v10, MEMORY[0x1E12C2A30](v10) != MEMORY[0x1E69E9E80]))
  {
    v12 = xpc_null_create();
  }

  applesauce::xpc::object::object(&v15, v12);
  v13 = [(Core_Audio_Driver *)self handle_unregister_buffer:&v15];
  v14 = v15;
  v15 = 0;

  replyCopy[2](replyCopy, v13);
}

- (void)register_io_buffer:(id)register_io_buffer reply:(id)reply
{
  register_io_bufferCopy = register_io_buffer;
  replyCopy = reply;
  object = [register_io_bufferCopy object];
  v9 = object;
  if (!object)
  {
    v9 = xpc_null_create();
  }

  v10 = v9;
  v11 = v10;
  if (!v10 || (v12 = v10, MEMORY[0x1E12C2A30](v10) != MEMORY[0x1E69E9E80]))
  {
    v12 = xpc_null_create();
  }

  applesauce::xpc::object::object(&v15, v12);
  v13 = [(Core_Audio_Driver *)self handle_register_buffer:&v15];
  v14 = v15;
  v15 = 0;

  replyCopy[2](replyCopy, v13);
}

- (int)handle_unregister_buffer:(dict)handle_unregister_buffer
{
  v81 = *MEMORY[0x1E69E9840];
  buffer_key = get_buffer_key(handle_unregister_buffer.var0.fObj);
  v7 = v6;
  objc_msgSend_io_receiver_lock(self);
  v8 = *buf;
  os_unfair_lock_lock(*buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  objc_msgSend_io_buffer_list(self);
  v9 = **buf;
  objc_msgSend_io_buffer_list(self);
  v10 = v60.~runtime_error_0;
  if (v9 != v10)
  {
    while (*v9 != __PAIR128__(v7, buffer_key))
    {
      v9 = (v9 + 24);
      if (v9 == v10)
      {
        v9 = v60.~runtime_error_0;
        break;
      }
    }
  }

  if (v60.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60.__imp_.__imp_);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  objc_msgSend_io_buffer_list(self);
  v11 = *&buf[8];
  v12 = *(*buf + 8);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v9 == v12)
  {
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v38;
      AMCP::Log::Scope::get_os_log_t(*v38);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    else
    {
      v23 = *v38;
      AMCP::Log::Scope::get_os_log_t(*v38);
      objc_claimAutoreleasedReturnValue();
    }

    v40 = 560947818;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 551;
      v75 = 1024;
      *v76 = buffer_key;
      *&v76[4] = 1024;
      *&v76[6] = HIDWORD(buffer_key);
      v77 = 1024;
      LODWORD(v78) = v7;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Could not find buffer key in map! device id: %u, client id: %u, stream id: %u", buf, 0x24u);
    }

    goto LABEL_70;
  }

  objc_msgSend_io_buffer_list(self);
  v13 = *buf;
  v14 = *(*buf + 8);
  if ((v9 + 24) != v14)
  {
    do
    {
      *v9 = *(v9 + 24);
      v15 = *(v9 + 5);
      v16 = xpc_null_create();
      v17 = *(v9 + 5);
      *(v9 + 5) = v16;

      v18 = *(v9 + 2);
      *(v9 + 2) = v15;

      v19 = (v9 + 24);
      v20 = (v9 + 48);
      v9 = (v9 + 24);
    }

    while (v20 != v14);
    v9 = v19;
  }

  std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>::__base_destruct_at_end[abi:ne200100](v13, v9);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  objc_msgSend_io_receivers(self);
  v21 = *(*buf + 16);
  objc_msgSend_io_receivers(self);
  for (; v21; v21 = *v21)
  {
    if (v21[2] == buffer_key)
    {
      break;
    }
  }

  if (v60.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60.__imp_.__imp_);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  objc_msgSend_io_receivers(self);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v21)
  {
    v22 = v21[3];
    v23 = AMCP::Log::Scope::get_os_log_t(*handle_unregister_buffer.var0.fObj);
    v24 = v23;
    if (!v23)
    {
      v24 = xpc_null_create();
    }

    v25 = v24;
    v26 = v25;
    v73 = v25;
    if (!v25 || MEMORY[0x1E12C2A30](v25) != MEMORY[0x1E69E9E80])
    {
      v27 = xpc_null_create();
      v28 = v73;
      v73 = v27;
    }

    *buf = &v73;
    *&buf[8] = "buffer shared memory";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v72, buf);
    *buf = &v73;
    *&buf[8] = "buffer device id";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v71, buf);
    v29 = applesauce::xpc::dyn_cast_or_default(&v71, 0);
    *buf = &v73;
    *&buf[8] = "buffer client id";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v70, buf);
    v30 = applesauce::xpc::dyn_cast_or_default(&v70, 0);
    *buf = &v73;
    *&buf[8] = "buffer stream id";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v69, buf);
    v31 = applesauce::xpc::dyn_cast_or_default(&v69, 0);
    *buf = &v73;
    *&buf[8] = "buffer type";
    applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v68, buf);
    v32 = applesauce::xpc::dyn_cast_or_default(&v68, 0);
    v67[0] = v29;
    v67[1] = v30;
    v67[2] = v31;
    v67[3] = v32;
    v33 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(v22 + 10, v67);
    if (!v33)
    {
      v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v54 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        v57 = *v55;
        AMCP::Log::Scope::get_os_log_t(*v55);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      else
      {
        v57 = *v55;
        AMCP::Log::Scope::get_os_log_t(*v55);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IO_Receiver.mm";
        *&buf[12] = 1024;
        *&buf[14] = 182;
        v75 = 2080;
        *v76 = "find_result == m_shared_memory_map.end()";
        _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s buffer key doesnt exist in the map!", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v66);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v59, "buffer key doesnt exist in the map!");
      std::runtime_error::runtime_error(&v60, &v59);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = -1;
      v60.__vftable = &unk_1F5992170;
      v61 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v60);
      v78 = "void AMCP::Portal::IPC::IO_Receiver::unregister_buffer(__strong xpc_object_t)";
      v79 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
      v80 = 182;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v58);
    }

    v34 = v22[11];
    v35 = v33[1];
    v36 = vcnt_s8(v34);
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      if (v35 >= *&v34)
      {
        v35 %= *&v34;
      }
    }

    else
    {
      v35 &= *&v34 - 1;
    }

    v41 = v22[10];
    v42 = *(v41 + 8 * v35);
    do
    {
      v43 = v42;
      v42 = *v42;
    }

    while (v42 != v33);
    if (v43 == v22 + 12)
    {
      goto LABEL_60;
    }

    v44 = v43[1];
    if (v36.u32[0] > 1uLL)
    {
      if (v44 >= *&v34)
      {
        v44 %= *&v34;
      }
    }

    else
    {
      v44 &= *&v34 - 1;
    }

    if (v44 != v35)
    {
LABEL_60:
      if (!*v33)
      {
        goto LABEL_61;
      }

      v45 = *(*v33 + 8);
      if (v36.u32[0] > 1uLL)
      {
        if (v45 >= *&v34)
        {
          v45 %= *&v34;
        }
      }

      else
      {
        v45 &= *&v34 - 1;
      }

      if (v45 != v35)
      {
LABEL_61:
        *(v41 + 8 * v35) = 0;
      }
    }

    v46 = *v33;
    if (*v33)
    {
      v47 = *(v46 + 8);
      if (v36.u32[0] > 1uLL)
      {
        if (v47 >= *&v34)
        {
          v47 %= *&v34;
        }
      }

      else
      {
        v47 &= *&v34 - 1;
      }

      if (v47 != v35)
      {
        *(v22[10] + 8 * v47) = v43;
        v46 = *v33;
      }
    }

    *v43 = v46;
    *v33 = 0;
    --v22[13];
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,void *>>>::operator()[abi:ne200100](1, v33);
    v48 = v68;
    v68 = 0;

    v49 = v69;
    v69 = 0;

    v50 = v70;
    v70 = 0;

    v51 = v71;
    v71 = 0;

    v52 = v73;
    v73 = 0;

    v40 = 0;
LABEL_70:

    goto LABEL_71;
  }

  v40 = 0;
LABEL_71:
  os_unfair_lock_unlock(v8);
  return v40;
}

- (int)handle_register_buffer:(dict)handle_register_buffer
{
  v45 = *MEMORY[0x1E69E9840];
  buffer_key = get_buffer_key(handle_register_buffer.var0.fObj);
  v6 = v5;
  objc_msgSend_io_receiver_lock(self);
  i = *lock;
  os_unfair_lock_lock(*lock);
  if (*&lock[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
  }

  objc_msgSend_io_buffer_list(self);
  v8 = **lock;
  objc_msgSend_io_buffer_list(self);
  v9 = v38[1];
  if (v8 != v9)
  {
    while (*v8 != __PAIR128__(v6, buffer_key))
    {
      v8 = (v8 + 24);
      if (v8 == v9)
      {
        v8 = v38[1];
        break;
      }
    }
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (*&lock[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
  }

  objc_msgSend_io_buffer_list(self);
  v10 = *&lock[8];
  v11 = *(*lock + 8);
  if (*&lock[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
  }

  if (v8 == v11)
  {
    objc_msgSend_io_buffer_list(self);
    *lock = buffer_key;
    *&lock[8] = v6;
    applesauce::xpc::object::object(&lock[16], *handle_register_buffer.var0.fObj);
    v17 = v38[1];
    v16 = v38[2];
    if (v17 >= v16)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v38) >> 3);
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v38) >> 3);
      v21 = 2 * v20;
      if (2 * v20 <= v19 + 1)
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        if (v22 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = 8 * ((v17 - *v38) >> 3);
      std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(v23, lock);
      v25 = *v38;
      v24 = v38[1];
      v36 = v23 + *v38 - v24;
      if (v24 != *v38)
      {
        v35 = i;
        v26 = v23 + *v38 - v24;
        v27 = *v38;
        do
        {
          std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(v26, v27);
          v27 += 24;
          v26 += 24;
        }

        while (v27 != v24);
        for (i = v35; v25 != v24; v25 += 24)
        {
          v28 = *(v25 + 16);
          *(v25 + 16) = 0;
        }
      }

      v18 = v23 + 24;
      v29 = *v38;
      *v38 = v36;
      *(v38 + 1) = (v23 + 24);
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(v38[1], lock);
      v18 = v17 + 24;
      v38[1] = v17 + 24;
    }

    v38[1] = v18;
    v30 = *&lock[16];
    *&lock[16] = 0;

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    objc_msgSend_io_receivers(self, v35);
    v31 = *(*lock + 16);
    objc_msgSend_io_receivers(self);
    for (; v31; v31 = *v31)
    {
      if (v31[2] == buffer_key)
      {
        break;
      }
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (*&lock[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
    }

    objc_msgSend_io_receivers(self);
    if (*&lock[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
    }

    if (v31)
    {
      v32 = v31[3];
      v33 = *handle_register_buffer.var0.fObj;
      AMCP::Log::Scope::get_os_log_t(*handle_register_buffer.var0.fObj);
      objc_claimAutoreleasedReturnValue();
      AMCP::Portal::IPC::IO_Receiver::register_buffer(v32, v33);
    }
  }

  else
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *lock = 136316162;
      *&lock[4] = "Core_Audio_Driver.mm";
      *&lock[12] = 1024;
      *&lock[14] = 499;
      *&lock[18] = 1024;
      *&lock[20] = buffer_key;
      v41 = 1024;
      v42 = HIDWORD(buffer_key);
      v43 = 1024;
      v44 = v6;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Buffer was already registered! device id: %u, client id: %u, stream id: %u", lock, 0x24u);
    }
  }

  os_unfair_lock_unlock(i);
  return 0;
}

- (void)object_was_destroyed:(unsigned int)object_was_destroyed reply:(id)reply
{
  replyCopy = reply;
  objc_msgSend_m_property_type_info(self);
  Property_Type_Info::remove_custom_properties(v7, object_was_destroyed);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)destroy_device:(unsigned int)destroy_device reply:(id)reply
{
  v4 = *&destroy_device;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v8 = ((*asp_interface)->DestroyDevice)(asp_interface, v4);
  [(Core_Audio_Driver *)self destroy_io_receiver:v4];
  replyCopy[2](replyCopy, v8);
}

- (void)create_device:(id)create_device client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  create_deviceCopy = create_device;
  bundle_idCopy = bundle_id;
  replyCopy = reply;
  v19 = 0;
  v20[0] = client_id;
  v20[1] = process_id;
  v22 = bundle_idCopy;
  is_native_endianessCopy = is_native_endianess;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v18 = ((*asp_interface)->CreateDevice)(asp_interface, create_deviceCopy, v20, &v19);
  replyCopy[2](replyCopy, v18, v19);
}

- (void)remove_device_client:(unsigned int)remove_device_client client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply
{
  v12 = *&remove_device_client;
  v19 = *MEMORY[0x1E69E9840];
  bundle_idCopy = bundle_id;
  replyCopy = reply;
  v16 = [(Core_Audio_Driver *)self asp_interface:__PAIR64__(process_id];
  v17 = ((*v16)->RemoveDeviceClient)(v16, v12, &v18);
  replyCopy[2](replyCopy, v17);
}

- (void)add_device_client:(unsigned int)add_device_client client_id:(unsigned int)client_id process_id:(int)process_id is_native_endianess:(BOOL)is_native_endianess bundle_id:(id)bundle_id reply:(id)reply
{
  v12 = *&add_device_client;
  v19 = *MEMORY[0x1E69E9840];
  bundle_idCopy = bundle_id;
  replyCopy = reply;
  v16 = [(Core_Audio_Driver *)self asp_interface:__PAIR64__(process_id];
  v17 = ((*v16)->AddDeviceClient)(v16, v12, &v18);
  replyCopy[2](replyCopy, v17);
}

- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver
{
  objc_msgSend_io_receiver_lock(self, a2);
  os_unfair_lock_lock(lock);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  objc_msgSend_io_receivers(self);
  for (i = *&lock[4]._os_unfair_lock_opaque; i; i = *i)
  {
    if (*(i + 4) == destroy_io_receiver)
    {
      operator new();
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  os_unfair_lock_unlock(lock);
  return 0;
}

- (int)destroy_io_receiver:(unsigned int)destroy_io_receiver client_id:(unsigned int)client_id
{
  objc_msgSend_io_receiver_lock(self, a2);
  os_unfair_lock_lock(lock);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  objc_msgSend_io_receivers(self);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>>::__erase_unique<AMCP::Portal::IPC::io_messenger_id_t>(lock, destroy_io_receiver, client_id);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  os_unfair_lock_unlock(lock);
  return 0;
}

- (int)create_and_start_io_receiver:(unsigned int)create_and_start_io_receiver client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(id)work_group_port io_messenger:(id)io_messenger
{
  v41 = *MEMORY[0x1E69E9840];
  work_group_portCopy = work_group_port;
  io_messengerCopy = io_messenger;
  if (io_messengerCopy)
  {
    [(Core_Audio_Driver *)self asp_interface];
    objc_msgSend_io_receiver_lock(self);
    os_unfair_lock_lock(*buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    objc_msgSend_io_receivers(self);
    v12 = *(*buf + 16);
    objc_msgSend_io_receivers(self);
    if (v12)
    {
      while (*(v12 + 4) != create_and_start_io_receiver || *(v12 + 5) != client_id)
      {
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_8;
        }
      }

      v13 = 0;
    }

    else
    {
LABEL_8:
      v13 = 1;
    }

    if (v26.__imp_.__imp_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26.__imp_.__imp_);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    objc_msgSend_io_receivers(self);
    v18 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v13)
    {
      [io_messengerCopy object];
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v21;
      AMCP::Log::Scope::get_os_log_t(*v21);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v23 = *v21;
      AMCP::Log::Scope::get_os_log_t(*v21);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 286;
      v36 = 2080;
      v37 = "find_result != self.io_receivers->end()";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO Messenger was already created", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v32, "IO Messenger was already created");
    std::runtime_error::runtime_error(&v26, &v32);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v31) = -1;
    v26.__vftable = &unk_1F5992170;
    v27 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v26);
    v38 = "[Core_Audio_Driver create_and_start_io_receiver:client_id:nominal_sample_rate:io_buffer_frame_size:work_group_port:io_messenger:]";
    v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    LODWORD(v40) = 286;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
  }

  v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v14 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(0);
  }

  v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *v15;
    AMCP::Log::Scope::get_os_log_t(*v15);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    v17 = *v15;
    AMCP::Log::Scope::get_os_log_t(*v15);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "Core_Audio_Driver.mm";
    *&buf[12] = 1024;
    *&buf[14] = 274;
    _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d io messenger/buffer is nil", buf, 0x12u);
  }

  return 1852797029;
}

- (void)abort_device_configuration_change:(unsigned int)abort_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply
{
  replyCopy = reply;
  concurrent_queue = [(Core_Audio_Driver *)self concurrent_queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply___block_invoke;
  block[3] = &__block_descriptor_72_ea8_32c89_ZTSKZ75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply__E4__10_e5_v8__0l;
  selfCopy = self;
  v13 = _Block_copy(replyCopy);
  v14 = selfCopy;
  v16 = v14;
  abort_device_configuration_changeCopy = abort_device_configuration_change;
  actionCopy = action;
  changeCopy = change;
  v20 = _Block_copy(v13);
  dispatch_async(concurrent_queue, block);
}

- (void)perform_device_configuration_change:(unsigned int)perform_device_configuration_change action:(unint64_t)action change:(unint64_t)change reply:(id)reply
{
  replyCopy = reply;
  concurrent_queue = [(Core_Audio_Driver *)self concurrent_queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply___block_invoke;
  block[3] = &__block_descriptor_72_ea8_32c90_ZTSKZ77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply__E3__9_e5_v8__0l;
  selfCopy = self;
  v13 = _Block_copy(replyCopy);
  v14 = selfCopy;
  v16 = v14;
  perform_device_configuration_changeCopy = perform_device_configuration_change;
  actionCopy = action;
  changeCopy = change;
  v20 = _Block_copy(v13);
  dispatch_async(concurrent_queue, block);
}

- (void)initialize:(id)initialize reply:(id)reply
{
  v6 = 2003329396;
  initializeCopy = initialize;
  replyCopy = reply;
  asp_interface = [(Core_Audio_Driver *)self asp_interface];
  v10 = [[Core_Audio_Driver_Host_Proxy alloc] init_with_host_endpoint:initializeCopy driver:self];
  [(Core_Audio_Driver *)self setDriver_host_proxy:v10];

  driver_host_proxy = [(Core_Audio_Driver *)self driver_host_proxy];
  get_host_interface = [driver_host_proxy get_host_interface];

  if (asp_interface && get_host_interface)
  {
    v6 = ((*asp_interface)->Initialize)(asp_interface, get_host_interface);
  }

  replyCopy[2](replyCopy, v6);
}

- (void)store_change_info:(void *)store_change_info for_token:(unint64_t)for_token
{
  v34 = *MEMORY[0x1E69E9840];
  objc_msgSend_config_change_info_lock(self, a2);
  os_unfair_lock_lock(*buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v6 = objc_msgSend_config_change_info_map(self);
  v7 = *(v28 + 8);
  if (!v7)
  {
LABEL_16:
    operator new();
  }

  v8 = v28 + 8;
  v9 = *(v28 + 8);
  do
  {
    v10 = *(v9 + 32);
    v11 = v10 >= for_token;
    v12 = v10 < for_token;
    if (v11)
    {
      v8 = v9;
    }

    v9 = *(v9 + 8 * v12);
  }

  while (v9);
  if (v8 != v28 + 8 && *(v8 + 32) <= for_token)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v18 = *v16;
      AMCP::Log::Scope::get_os_log_t(*v16);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core_Audio_Driver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 135;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: change token/info item is already in the map", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v20, "change token/info item is already in the map!");
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "[Core_Audio_Driver store_change_info:for_token:]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
    v33 = 135;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  while (1)
  {
    while (1)
    {
      v13 = v7;
      v14 = v7[4];
      if (v14 <= for_token)
      {
        break;
      }

      v7 = *v13;
      if (!*v13)
      {
        goto LABEL_16;
      }
    }

    if (v14 >= for_token)
    {
      break;
    }

    v7 = v13[1];
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  os_unfair_lock_unlock(*buf);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599BDF0];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_16029];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__Core_Audio_Driver_listener_shouldAcceptNewConnection___block_invoke_2;
  v8[3] = &unk_1E8678318;
  v8[4] = self;
  [connectionCopy setInvalidationHandler:v8];
  [connectionCopy resume];

  return 1;
}

- (void)dealloc
{
  asp_interface = self->_asp_interface;
  if (asp_interface)
  {
    Release = (*asp_interface)->Release;
    if (Release)
    {
      Release();
      self->_asp_interface = 0;
    }
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    v6 = self->_listener;
    self->_listener = 0;
  }

  driver_host_proxy = self->_driver_host_proxy;
  self->_driver_host_proxy = 0;

  v8.receiver = self;
  v8.super_class = Core_Audio_Driver;
  [(Core_Audio_Driver *)&v8 dealloc];
}

- (id)init_driver_interface:(AudioServerPlugInDriverInterface *)init_driver_interface invalidation_handler:(function<void)(
{
  v6 = [(Core_Audio_Driver *)self init];
  if (v6)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v6->_listener;
    v6->_listener = anonymousListener;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
    listener = [(Core_Audio_Driver *)v6 listener];
    endpoint = [listener endpoint];
    endpoint = v6->_endpoint;
    v6->_endpoint = endpoint;

    std::function<void ()(void)>::operator=(v6->_m_invalidation_handler.__f_.__buf_.__data, a4);
    v6->_asp_interface = init_driver_interface;
    if (init_driver_interface)
    {
      AddRef = (*init_driver_interface)->AddRef;
      if (AddRef)
      {
        (AddRef)(init_driver_interface);
      }
    }
  }

  return v6;
}

- (Core_Audio_Driver)init
{
  v8.receiver = self;
  v8.super_class = Core_Audio_Driver;
  v2 = [(Core_Audio_Driver *)&v8 init];
  v3 = v2;
  if (v2)
  {
    listener = v2->_listener;
    v2->_listener = 0;

    endpoint = v3->_endpoint;
    v3->_endpoint = 0;

    driver_host_proxy = v3->_driver_host_proxy;
    v3->_driver_host_proxy = 0;

    v3->_asp_interface = 0;
    v3->_host_interface = 0;
    operator new();
  }

  return 0;
}

@end