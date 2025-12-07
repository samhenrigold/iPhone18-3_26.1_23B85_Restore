@interface Core_Audio_Driver_Host_Proxy
- (AudioServerPlugInHostInterface)get_host_interface;
- (Core_Audio_Driver_Host_Proxy)init;
- (DictionaryRef)driver_storage;
- (PropertyListRef)copy_from_driver_storage:(StringRef)copy_from_driver_storage;
- (id).cxx_construct;
- (id)init_with_host_endpoint:(id)init_with_host_endpoint driver:(id)driver;
- (int)delete_from_driver_storage:(StringRef)delete_from_driver_storage;
- (int)driver_properties_changed:(unsigned int)driver_properties_changed properties_data:(id)properties_data;
- (int)driver_request_config_change:(unsigned int)driver_request_config_change change_action:(unint64_t)change_action change_info:(void *)change_info;
- (int)write_to_driver_storage:(StringRef)write_to_driver_storage property_list:(PropertyListRef)property_list;
- (shared_ptr<Host_Interface>)host_interface;
- (shared_ptr<caulk::mach::unfair_lock>)config_change_lock;
- (shared_ptr<caulk::mach::unfair_lock>)driver_storage_lock;
- (void)setDriver_storage:(DictionaryRef)driver_storage;
@end

@implementation Core_Audio_Driver_Host_Proxy

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  return self;
}

- (shared_ptr<caulk::mach::unfair_lock>)config_change_lock
{
  cntrl = self->_config_change_lock.__cntrl_;
  *v2 = self->_config_change_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setDriver_storage:(DictionaryRef)driver_storage
{
  mCFObject = self->_driver_storage.mObject.mCFObject;
  v5 = *driver_storage.mObject.mCFObject;
  self->_driver_storage.mObject.mCFObject = *driver_storage.mObject.mCFObject;
  if (v5)
  {
    CFRetain(v5);
  }

  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (DictionaryRef)driver_storage
{
  v3 = v2;
  mCFObject = self->_driver_storage.mObject.mCFObject;
  if (mCFObject)
  {
    self = CFRetain(self->_driver_storage.mObject.mCFObject);
  }

  *v3 = mCFObject;
  return self;
}

- (shared_ptr<caulk::mach::unfair_lock>)driver_storage_lock
{
  cntrl = self->_driver_storage_lock.__cntrl_;
  *v2 = self->_driver_storage_lock.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<Host_Interface>)host_interface
{
  cntrl = self->_host_interface.__cntrl_;
  *v2 = self->_host_interface.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (int)driver_request_config_change:(unsigned int)driver_request_config_change change_action:(unint64_t)change_action change_info:(void *)change_info
{
  v7 = *&driver_request_config_change;
  v38 = *MEMORY[0x1E69E9840];
  v9 = 2003329396;
  v36 = 2003329396;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];

  if (!connection_to_host)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      v26 = 0;
      v27 = 0;
      v28 = 47;
      do
      {
        v29 = &aLibraryCachesC_25[v26];
        if (v28 == 47)
        {
          v27 = &aLibraryCachesC_25[v26];
        }

        v28 = v29[1];
        if (!v29[1])
        {
          break;
        }
      }

      while (v26++ < 0xFFF);
      if (v27)
      {
        v31 = v27 + 1;
      }

      else
      {
        v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver_Host_Proxy.mm";
      }

      *lock = 136315394;
      *&lock[4] = v31;
      *&lock[12] = 1024;
      *&lock[14] = 235;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d No connection to host", lock, 0x12u);
    }
  }

  v35 = 0;
  connection_to_host2 = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v17 = connection_to_host2 == 0;

  if (!v17)
  {
    connection_to_host3 = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3321888768;
    v34[2] = __87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info___block_invoke;
    v34[3] = &__block_descriptor_48_ea8_32c101_ZTSKZ87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info__E4__12_e17_v16__0__NSError_8l;
    v34[4] = &v36;
    v34[5] = &v35;
    v19 = [connection_to_host3 synchronousRemoteObjectProxyWithErrorHandler:v34];

    objc_msgSend_config_change_lock(self);
    v20 = *lock;
    os_unfair_lock_lock(*lock);
    if (*&lock[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
    }

    current_config_change_token = [(Core_Audio_Driver_Host_Proxy *)self current_config_change_token];
    [(Core_Audio_Driver_Host_Proxy *)self setCurrent_config_change_token:current_config_change_token + 1];
    os_unfair_lock_unlock(v20);
    driver = [(Core_Audio_Driver_Host_Proxy *)self driver];
    [driver store_change_info:change_info for_token:current_config_change_token + 1];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3321888768;
    v32[2] = __87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info___block_invoke_39;
    v32[3] = &__block_descriptor_48_ea8_32c101_ZTSKZ87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info__E4__13_e8_v12__0i8l;
    [(Core_Audio_Driver_Host_Proxy *)self driver];
    v23 = v32[4] = &v36;
    v33 = v23;
    [v19 request_config_change:v7 change_action:change_action change_token:current_config_change_token + 1 reply:v32];

    if (v35 == 1)
    {
      connection_to_host4 = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
      [connection_to_host4 invalidate];
    }

    return v36;
  }

  return v9;
}

- (int)delete_from_driver_storage:(StringRef)delete_from_driver_storage
{
  v10 = 0;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage___block_invoke;
  v9[3] = &__block_descriptor_40_ea8_32c73_ZTSKZ59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage__E4__10_e17_v16__0__NSError_8l;
  v9[4] = &v10;
  v5 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v9];

  isa = delete_from_driver_storage.var0.var0->isa;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage___block_invoke_33;
  v8[3] = &__block_descriptor_40_ea8_32c73_ZTSKZ59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage__E4__11_e8_v12__0i8l;
  v8[4] = &v10;
  [v5 delete_storage_settings:isa reply:v8];
  LODWORD(connection_to_host) = v10;

  return connection_to_host;
}

- (int)write_to_driver_storage:(StringRef)write_to_driver_storage property_list:(PropertyListRef)property_list
{
  v15 = 0;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list___block_invoke;
  v14[3] = &__block_descriptor_40_ea8_32c83_ZTSKZ70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list__E3__8_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v7 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v14];
  v8 = 560947818;

  v13 = *property_list.var0.var0;
  if (v13)
  {
    v9 = AMCP::HAL::pack_property_data(15, 8u, &v13);
    if (v9)
    {
      isa = write_to_driver_storage.var0.var0->isa;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3321888768;
      v12[2] = __70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list___block_invoke_28;
      v12[3] = &__block_descriptor_40_ea8_32c83_ZTSKZ70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list__E3__9_e8_v12__0i8l;
      v12[4] = &v15;
      [v7 write_storage_settings:isa storage_data:v9 reply:v12];
      v8 = v15;
    }
  }

  return v8;
}

- (PropertyListRef)copy_from_driver_storage:(StringRef)copy_from_driver_storage
{
  v5 = v3;
  v16 = 0;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage___block_invoke;
  v15[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage__E3__6_e17_v16__0__NSError_8l;
  v15[4] = &v16;
  v7 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v15];

  isa = copy_from_driver_storage.var0.var0->isa;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage___block_invoke_22;
  v13[3] = &__block_descriptor_48_ea8_32c70_ZTSKZ57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage__E3__7_e19_v20__0i8__NSData_12l;
  v13[4] = &v16;
  v13[5] = &v14;
  v14 = 0;
  [v7 copy_storage_settings:isa reply:v13];
  v9 = v14;
  if (v16 || !v14)
  {
    *v5 = 0;
  }

  else
  {
    v12 = 8;
    cf = 0;
    v16 = AMCP::HAL::unpack_property_data(v14, 15, &v12, &cf);
    if (v16 || !cf)
    {
      *v5 = 0;
    }

    else
    {
      mcp_applesauce::CF::PropertyListRef::from_get(v5, cf);
      CFRelease(cf);
    }

    v9 = v14;
  }

  return v10;
}

- (int)driver_properties_changed:(unsigned int)driver_properties_changed properties_data:(id)properties_data
{
  v4 = *&driver_properties_changed;
  properties_dataCopy = properties_data;
  v15 = 0;
  v14 = 2003329396;
  connection_to_host = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data___block_invoke;
  v13[3] = &__block_descriptor_48_ea8_32c87_ZTSKZ74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data__E3__4_e17_v16__0__NSError_8l;
  v13[4] = &v14;
  v13[5] = &v15;
  v8 = [connection_to_host synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data___block_invoke_16;
  v12[3] = &__block_descriptor_40_ea8_32c87_ZTSKZ74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data__E3__5_e8_v12__0i8l;
  v12[4] = &v14;
  [v8 object_properties_changed:v4 properties_data:properties_dataCopy reply:v12];
  if (v15 == 1)
  {
    connection_to_host2 = [(Core_Audio_Driver_Host_Proxy *)self connection_to_host];
    [connection_to_host2 invalidate];
  }

  v10 = v14;

  return v10;
}

- (AudioServerPlugInHostInterface)get_host_interface
{
  objc_msgSend_host_interface(self, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v3;
}

- (id)init_with_host_endpoint:(id)init_with_host_endpoint driver:(id)driver
{
  init_with_host_endpointCopy = init_with_host_endpoint;
  driverCopy = driver;
  v15.receiver = self;
  v15.super_class = Core_Audio_Driver_Host_Proxy;
  v16 = 0;
  v8 = [(Core_Audio_Driver_Host_Proxy *)&v15 init];
  v16 = v8;
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:init_with_host_endpointCopy];
    connection_to_host = v8->_connection_to_host;
    v8->_connection_to_host = v9;

    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599AAB0];
    [(NSXPCConnection *)v8->_connection_to_host setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v8->_connection_to_host resume];
    std::allocate_shared[abi:ne200100]<Host_Interface,std::allocator<Host_Interface>,Core_Audio_Driver_Host_Proxy * {__strong}&,0>(&v14, &v16);
  }

  v12 = 0;

  return v12;
}

- (Core_Audio_Driver_Host_Proxy)init
{
  v7.receiver = self;
  v7.super_class = Core_Audio_Driver_Host_Proxy;
  v2 = [(Core_Audio_Driver_Host_Proxy *)&v7 init];
  v8 = v2;
  if (v2)
  {
    connection_to_host = v2->_connection_to_host;
    v2->_connection_to_host = 0;

    std::allocate_shared[abi:ne200100]<Host_Interface,std::allocator<Host_Interface>,Core_Audio_Driver_Host_Proxy * {__strong}&,0>(&v6, &v8);
  }

  v4 = 0;

  return v4;
}

@end