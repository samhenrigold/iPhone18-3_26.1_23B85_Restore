@interface Remote_Driver_Host_Delegate
- (id).cxx_construct;
- (id)init_with_remote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)init_with_remote_plugin;
- (int)delete_storage_settings:(__CFString *)delete_storage_settings;
- (int)write_storage_settings:(__CFString *)write_storage_settings storage_data:(void *)storage_data;
- (pair<int,)copy_storage_settings:(__CFString *)copy_storage_settings;
- (shared_ptr<HALS_UCRemotePlugIn>)remote_plugin;
- (uint64_t)object_properties_changed:(NSObject  *){objcproto17OS_dispatch_queue} data:(id)&;
- (uint64_t)object_properties_changed:(uint64_t *)object_properties_changed data:;
- (uint64_t)request_config_change:(NSObject  *){objcproto17OS_dispatch_queue} change_action:(id)& change_token:;
- (uint64_t)request_config_change:(uint64_t *)request_config_change change_action:change_token:;
- (void)object_properties_changed:(unsigned int)object_properties_changed data:(id)data;
- (void)object_properties_changed:data:;
- (void)request_config_change:(unsigned int)request_config_change change_action:(unint64_t)change_action change_token:(unint64_t)change_token;
- (void)request_config_change:change_action:change_token:;
- (void)setRemote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)remote_plugin;
- (void)teardown;
@end

@implementation Remote_Driver_Host_Delegate

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)setRemote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)remote_plugin
{
  v4 = *remote_plugin.__ptr_;
  v3 = *(remote_plugin.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_remote_plugin.__cntrl_;
  self->_remote_plugin.__ptr_ = v4;
  self->_remote_plugin.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<HALS_UCRemotePlugIn>)remote_plugin
{
  cntrl = self->_remote_plugin.__cntrl_;
  *v2 = self->_remote_plugin.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (int)delete_storage_settings:(__CFString *)delete_storage_settings
{
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_remote_plugin(self, a2);
  if (v14)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (v14 + 392));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __55__Remote_Driver_Host_Delegate_delete_storage_settings___block_invoke;
    block[3] = &unk_1F5960880;
    block[5] = v14;
    v8 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = &v10;
    delete_storage_settingsCopy = delete_storage_settings;
    v4 = atomic_load(&v17);
    if (v4)
    {
      atomic_store(1u, v18);
    }

    dispatch_sync(queue[0], block);
    v5 = *(v11 + 6);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 560947818;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v5;
}

- (pair<int,)copy_storage_settings:(__CFString *)copy_storage_settings
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend_remote_plugin(self, a2);
  if (v20)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (v20 + 392));
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __53__Remote_Driver_Host_Delegate_copy_storage_settings___block_invoke;
    v9[3] = &unk_1F5960848;
    v9[6] = v20;
    v10 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    copy_storage_settingsCopy = copy_storage_settings;
    v9[4] = &v16;
    v9[5] = &v12;
    v4 = atomic_load(&v23);
    if (v4)
    {
      atomic_store(1u, v24);
    }

    dispatch_sync(queue[0], v9);
    v5 = *(v17 + 6);
    v6 = v13[3];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
  }

  else
  {
    v6 = 0;
    v5 = 560947818;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v7 = v5;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (int)write_storage_settings:(__CFString *)write_storage_settings storage_data:(void *)storage_data
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = 560947818;
  if (storage_data)
  {
    objc_msgSend_remote_plugin(self, a2);
    if (v17)
    {
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (v17 + 392));
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3321888768;
      v9[2] = __67__Remote_Driver_Host_Delegate_write_storage_settings_storage_data___block_invoke;
      v9[3] = &unk_1F5960810;
      v9[5] = v17;
      v10 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9[4] = &v13;
      storage_dataCopy = storage_data;
      write_storage_settingsCopy = write_storage_settings;
      v7 = atomic_load(&v20);
      if (v7)
      {
        atomic_store(1u, v21);
      }

      dispatch_sync(queue[0], v9);
      v4 = *(v14 + 6);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      _Block_object_dispose(&v13, 8);
      AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  return v4;
}

- (void)request_config_change:(unsigned int)request_config_change change_action:(unint64_t)change_action change_token:(unint64_t)change_token
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend_remote_plugin(self, a2);
  if (v13)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v20, (v13 + 392));
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = atomic_load(&v21);
    if (v8)
    {
      atomic_store(1u, v22);
    }

    if (v24 != 1)
    {
      v12 = v20[0];
      operator new();
    }

    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v23;
    v10 = v20[0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZ80__Remote_Driver_Host_Delegate_request_config_change_change_action_change_token__E3__8EEvOT__block_invoke;
    block[3] = &__block_descriptor_72_ea8_32c92_ZTSZ80__Remote_Driver_Host_Delegate_request_config_change_change_action_change_token__E3__8_e5_v8__0l;
    block[4] = v13;
    v16 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    request_config_changeCopy = request_config_change;
    change_actionCopy = change_action;
    change_tokenCopy = change_token;
    v11 = v9;
    dispatch_group_async(v11, v10, block);

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v20);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

- (uint64_t)request_config_change:(uint64_t *)request_config_change change_action:change_token:
{
  v2 = *request_config_change;
  *request_config_change = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C40992E6479);
  }

  return request_config_change;
}

- (uint64_t)request_config_change:(NSObject  *){objcproto17OS_dispatch_queue} change_action:(id)& change_token:
{
  selfCopy = self;
  [Remote_Driver_Host_Delegate request_config_change:change_action:change_token:]::$_8::operator()(self);
  return std::unique_ptr<-[Remote_Driver_Host_Delegate request_config_change:change_action:change_token:]::$_8>::~unique_ptr[abi:ne200100](&selfCopy);
}

- (void)request_config_change:change_action:change_token:
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*self)[18].__on_zero_shared_weak)
  {
    operator new();
  }

  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(self);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v3;
    AMCP::Log::Scope::get_os_log_t(*v3);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v5 = *v3;
    AMCP::Log::Scope::get_os_log_t(*v3);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(self + 4);
    v7 = 136315650;
    v8 = "HALS_UCRemotePlugIn.mm";
    v9 = 1024;
    v10 = 123;
    v11 = 1024;
    v12 = v6;
    _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d The host ref is null, cannot request config change for object id %u", &v7, 0x18u);
  }
}

- (void)object_properties_changed:(unsigned int)object_properties_changed data:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_msgSend_remote_plugin(self);
  if (v15)
  {
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v21, (v15 + 392));
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = dataCopy;
    v8 = atomic_load(&v22);
    if (v8)
    {
      atomic_store(1u, v23);
    }

    if (v25 != 1)
    {
      v14 = v21[0];
      operator new();
    }

    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v7;
    v10 = v9;
    v11 = v24;
    v12 = v21[0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZ62__Remote_Driver_Host_Delegate_object_properties_changed_data__E3__7EEvOT__block_invoke;
    block[3] = &__block_descriptor_64_ea8_32c74_ZTSZ62__Remote_Driver_Host_Delegate_object_properties_changed_data__E3__7_e5_v8__0l;
    block[4] = v15;
    v18 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    object_properties_changedCopy = object_properties_changed;
    v20 = v9;
    v13 = v11;
    dispatch_group_async(v13, v12, block);

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
    }

    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v21);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

- (uint64_t)object_properties_changed:(uint64_t *)object_properties_changed data:
{
  v2 = *object_properties_changed;
  *object_properties_changed = 0;
  if (v2)
  {

    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x10A0C405C5CD52DLL);
  }

  return object_properties_changed;
}

- (uint64_t)object_properties_changed:(NSObject  *){objcproto17OS_dispatch_queue} data:(id)&
{
  selfCopy = self;
  [Remote_Driver_Host_Delegate object_properties_changed:data:]::$_7::operator()(self);
  return std::unique_ptr<-[Remote_Driver_Host_Delegate object_properties_changed:data:]::$_7>::~unique_ptr[abi:ne200100](&selfCopy);
}

- (void)object_properties_changed:data:
{
  v15 = *MEMORY[0x1E69E9840];
  [*(self + 24) bytes];
  [*(self + 24) length];
  v2 = *(*self + 752);
  if (v2)
  {
    v3 = *v2;

    v3();
  }

  else
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v5;
      AMCP::Log::Scope::get_os_log_t(*v5);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v7 = *v5;
      AMCP::Log::Scope::get_os_log_t(*v5);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(self + 16);
      v9 = 136315650;
      v10 = "HALS_UCRemotePlugIn.mm";
      v11 = 1024;
      v12 = 97;
      v13 = 1024;
      v14 = v8;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d The host ref is null, cannot issue properties changed for object id %u", &v9, 0x18u);
    }
  }
}

- (void)teardown
{
  v2 = 0;
  v3 = 0;
  [(Remote_Driver_Host_Delegate *)self setRemote_plugin:&v2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

- (id)init_with_remote_plugin:(shared_ptr<HALS_UCRemotePlugIn>)init_with_remote_plugin
{
  ptr = init_with_remote_plugin.__ptr_;
  v10.receiver = self;
  v10.super_class = Remote_Driver_Host_Delegate;
  v4 = [(Remote_Driver_Host_Delegate *)&v10 init:init_with_remote_plugin.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_remote_plugin.__cntrl_;
    v5->_remote_plugin.__ptr_ = v7;
    v5->_remote_plugin.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

@end