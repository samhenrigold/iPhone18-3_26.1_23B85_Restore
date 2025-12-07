@interface Core
@end

@implementation Core

void __66__Core_Audio_Driver_Registrar_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  objc_msgSend_connection_infos(*(a1 + 32));
  v4 = **v44;
  v3 = *(*v44 + 8);
  if (**v44 == v3)
  {
LABEL_4:
    v5 = 0;
    v6 = 0;
  }

  else
  {
    while (*(a1 + 40) != v4[1])
    {
      v4 += 2;
      if (v4 == v3)
      {
        goto LABEL_4;
      }
    }

    v5 = *v4;
    v6 = v4[1];
  }

  if (*&v44[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
  }

  objc_sync_exit(v2);

  v7 = v5;
  v8 = v7;
  v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v10;
      AMCP::Log::Scope::get_os_log_t(*v10);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v12 = *v10;
      AMCP::Log::Scope::get_os_log_t(*v10);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v17 = 0;
      v18 = 47;
      do
      {
        v19 = &aLibraryCachesC_5[v16];
        if (v18 == 47)
        {
          v17 = &aLibraryCachesC_5[v16];
        }

        v18 = v19[1];
        if (!v19[1])
        {
          break;
        }

        v20 = v16++ >= 0xFFF;
      }

      while (!v20);
      v21 = v8;
      v22 = [(AMCP::Log::AMCP_Scope_Registry *)v8 UTF8String];
      if (v17)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/Core_Audio_Driver_Registrar.mm";
      }

      *v44 = 136315650;
      *&v44[4] = v23;
      *&v44[12] = 1024;
      *&v44[14] = 50;
      v45 = 2080;
      v46 = v22;
      _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Calling invalidation handler for bundle id %s", v44, 0x1Cu);
    }

    std::function<void ()(NSString *,NSXPCConnection *)>::operator()([*(a1 + 32) registrar] + 16, v8, v6);
    v15 = *(a1 + 32);
    objc_sync_enter(v15);
    v24 = *(a1 + 32);
    if (v24)
    {
      objc_msgSend_connection_infos(v24);
      v25 = *v44;
    }

    else
    {
      v25 = 0;
      *v44 = 0;
      *&v44[8] = 0;
    }

    v26 = *v25;
    v27 = *(v25 + 8);
    if (*v25 == v27)
    {
      v27 = *v25;
    }

    else
    {
      while (v6 != v26[1] || v8 != *v26)
      {
        v26 += 2;
        if (v26 == v27)
        {
          v26 = *(v25 + 8);
          goto LABEL_38;
        }
      }

      if (v26 != v27)
      {
        v33 = v26 + 2;
        if (v26 + 2 != v27)
        {
          do
          {
            v34 = *v33;
            if (v6 != v33[1] || v8 != v34)
            {
              *v33 = 0;
              v36 = *v26;
              *v26 = v34;

              v37 = v33[1];
              v33[1] = 0;
              v38 = v26[1];
              v26[1] = v37;

              v26 += 2;
            }

            v33 += 2;
          }

          while (v33 != v27);
          v27 = *(v25 + 8);
        }
      }
    }

LABEL_38:
    v28 = v26 + 2;
    if (v26 + 2 != v27)
    {
      do
      {
        v29 = *v28;
        *v28 = 0;
        v30 = *(v28 - 2);
        *(v28 - 2) = v29;

        v31 = v28[1];
        v28[1] = 0;
        v32 = *(v28 - 1);
        *(v28 - 1) = v31;

        v28 += 2;
      }

      while (v28 != v27);
      v26 = v28 - 2;
    }

    std::vector<Registrar_Connection_Info>::__base_destruct_at_end[abi:ne200100](v25, v26);
    if (*&v44[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
    }

    objc_sync_exit(v15);
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v39 = 0;
      v40 = 0;
      v41 = 47;
      do
      {
        v42 = &aLibraryCachesC_5[v39];
        if (v41 == 47)
        {
          v40 = &aLibraryCachesC_5[v39];
        }

        v41 = v42[1];
        if (!v42[1])
        {
          break;
        }

        v20 = v39++ >= 0xFFF;
      }

      while (!v20);
      if (v40)
      {
        v43 = v40 + 1;
      }

      else
      {
        v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/Core_Audio_Driver_Registrar.mm";
      }

      *v44 = 136315394;
      *&v44[4] = v43;
      *&v44[12] = 1024;
      *&v44[14] = 46;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Invalidating connection but bundle id is nil!", v44, 0x12u);
    }
  }
}

void __87__Core_Audio_Driver_Host_Proxy_driver_request_config_change_change_action_change_info___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v11 = 0;
    v12 = 47;
    do
    {
      v13 = &aLibraryCachesC_25[v10];
      if (v12 == 47)
      {
        v11 = &aLibraryCachesC_25[v10];
      }

      v12 = v13[1];
      if (!v13[1])
      {
        break;
      }
    }

    while (v10++ < 0xFFF);
    if (v11)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver_Host_Proxy.mm";
    }

    v16 = [v4 description];
    v17 = 136315650;
    v18 = v15;
    v19 = 1024;
    v20 = 243;
    v21 = 2080;
    v22 = [v16 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Error sending request config change message to host: %s", &v17, 0x1Cu);
  }

  v9 = *(a1 + 40);
  **(a1 + 32) = 1852797029;
  *v9 = 1;
}

void __59__Core_Audio_Driver_Host_Proxy_delete_from_driver_storage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_25[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_25[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver_Host_Proxy.mm";
    }

    v15 = [v4 description];
    v16 = 136315650;
    v17 = v14;
    v18 = 1024;
    v19 = 217;
    v20 = 2080;
    v21 = [v15 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Error delete_from_driver_storage message to host: %s", &v16, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __70__Core_Audio_Driver_Host_Proxy_write_to_driver_storage_property_list___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_25[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_25[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver_Host_Proxy.mm";
    }

    v15 = [v4 description];
    v16 = 136315650;
    v17 = v14;
    v18 = 1024;
    v19 = 187;
    v20 = 2080;
    v21 = [v15 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Error write_to_driver_storage message to host: %s", &v16, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_25[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_25[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver_Host_Proxy.mm";
    }

    v15 = [v4 description];
    v16 = 136315650;
    v17 = v14;
    v18 = 1024;
    v19 = 151;
    v20 = 2080;
    v21 = [v15 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Error copy_from_driver_storage message to host: %s", &v16, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __57__Core_Audio_Driver_Host_Proxy_copy_from_driver_storage___block_invoke_22(uint64_t a1, int a2, id obj)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *v3 = a2;
  objc_storeStrong(v4, obj);
}

void __74__Core_Audio_Driver_Host_Proxy_driver_properties_changed_properties_data___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v11 = 0;
    v12 = 47;
    do
    {
      v13 = &aLibraryCachesC_25[v10];
      if (v12 == 47)
      {
        v11 = &aLibraryCachesC_25[v10];
      }

      v12 = v13[1];
      if (!v13[1])
      {
        break;
      }
    }

    while (v10++ < 0xFFF);
    if (v11)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver_Host_Proxy.mm";
    }

    v16 = [v4 description];
    v17 = 136315650;
    v18 = v15;
    v19 = 1024;
    v20 = 128;
    v21 = 2080;
    v22 = [v16 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Error sending properties changed message to host: %s", &v17, 0x1Cu);
  }

  v9 = *(a1 + 40);
  **(a1 + 32) = 2003329396;
  *v9 = 1;
}

void __63__Core_Audio_Driver_Service_Client_tell_driver_service_to_exit__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  NSLog(&stru_1F59937D8.isa, v2);
}

void __64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_69[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_69[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Server/Core_Audio_Driver_Service_Client.mm";
    }

    v15 = [*(a1 + 40) UTF8String];
    if (v4)
    {
      v7 = [v4 localizedDescription];
      v16 = [(std::__shared_weak_count *)v7 UTF8String];
    }

    else
    {
      v16 = "";
    }

    v17 = 136315906;
    v18 = v14;
    v19 = 1024;
    v20 = 156;
    v21 = 2080;
    v22 = v15;
    v23 = 2080;
    v24 = v16;
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Error loading driver bundle %s %s", &v17, 0x26u);
    if (v4)
    {
    }
  }

  **(a1 + 32) = 2;
}

void __64__Core_Audio_Driver_Service_Client_load_driver_driver_endpoint___block_invoke_27(uint64_t a1, int a2, id obj)
{
  v3 = *(a1 + 40);
  **(a1 + 32) = a2;
  objc_storeStrong(*v3, obj);
}

void __57__Core_Audio_Driver_Service_Client_get_driver_name_list___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  NSLog(&stru_1F59937D8.isa, v2);
}

void __94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 673;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d is_property_settable error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

void __112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 618;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d get_property_data error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

void __112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data___block_invoke_152(uint64_t a1, int a2, id obj)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *v3 = a2;
  objc_storeStrong(v4, obj);
}

void __93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 580;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d is_property_settable error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

uint64_t __93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size___block_invoke_147(uint64_t result, int a2, int a3)
{
  v3 = *(result + 40);
  **(result + 32) = a2;
  *v3 = a3;
  return result;
}

void __60__Core_Audio_Driver_Host_is_property_settable_out_settable___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 552;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d is_property_settable error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

uint64_t __60__Core_Audio_Driver_Host_is_property_settable_out_settable___block_invoke_141(uint64_t result, int a2, char a3)
{
  v3 = *(result + 40);
  **(result + 32) = a2;
  *v3 = a3;
  return result;
}

void __56__Core_Audio_Driver_Host_has_property_out_has_property___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 529;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d has_property error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

void __44__Core_Audio_Driver_Host_unregister_buffer___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 503;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d unregister_buffer error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

void __42__Core_Audio_Driver_Host_register_buffer___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 481;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d register_buffer error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 1768911973;
}

void __56__Core_Audio_Driver_Host_retain_reply_for_process_boost__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v8 = [v3 description];
    v9 = 136315650;
    v10 = "Core_Audio_Driver_Host.mm";
    v11 = 1024;
    v12 = 466;
    v13 = 2080;
    v14 = [v8 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d retain_reply_for_process_boost error %s", &v9, 0x1Cu);
  }
}

void __63__Core_Audio_Driver_Host_stop_synchronous_messenger_client_id___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v8 = [v3 description];
    v9 = 136315650;
    v10 = "Core_Audio_Driver_Host.mm";
    v11 = 1024;
    v12 = 448;
    v13 = 2080;
    v14 = [v8 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d stop_synchronous_messenger error %s", &v9, 0x1Cu);
  }
}

void __134__Core_Audio_Driver_Host_start_synchronous_messenger_client_id_nominal_sample_rate_io_buffer_frame_size_work_group_port_io_messenger___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v8 = [v3 description];
    v9 = 136315650;
    v10 = "Core_Audio_Driver_Host.mm";
    v11 = 1024;
    v12 = 421;
    v13 = 2080;
    v14 = [v8 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d start_synchronous_messenger error %s", &v9, 0x1Cu);
  }
}

void __46__Core_Audio_Driver_Host_stop_io_client_info___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v8 = [v3 description];
    v9 = 136315650;
    v10 = "Core_Audio_Driver_Host.mm";
    v11 = 1024;
    v12 = 396;
    v13 = 2080;
    v14 = [v8 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d stop_io error %s", &v9, 0x1Cu);
  }
}

void __47__Core_Audio_Driver_Host_start_io_client_info___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v8 = [v3 description];
    v9 = 136315650;
    v10 = "Core_Audio_Driver_Host.mm";
    v11 = 1024;
    v12 = 375;
    v13 = 2080;
    v14 = [v8 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d start_io error %s", &v9, 0x1Cu);
  }
}

void __47__Core_Audio_Driver_Host_object_was_destroyed___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 352;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d object_was_destroyed error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __41__Core_Audio_Driver_Host_destroy_device___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 334;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d destroy_device error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __66__Core_Audio_Driver_Host_create_device_client_info_out_object_id___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 315;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d create_device error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

uint64_t __66__Core_Audio_Driver_Host_create_device_client_info_out_object_id___block_invoke_89(uint64_t result, int a2, int a3)
{
  v3 = *(result + 40);
  **(result + 32) = a2;
  **v3 = a3;
  return result;
}

void __59__Core_Audio_Driver_Host_remove_device_client_client_info___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 295;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d remove_device_client error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __56__Core_Audio_Driver_Host_add_device_client_client_info___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 276;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d add_device_client error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __74__Core_Audio_Driver_Host_abort_device_configuration_change_action_change___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 257;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d abort_device_configuration_change error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

void __76__Core_Audio_Driver_Host_perform_device_configuration_change_action_change___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = *v6;
    AMCP::Log::Scope::get_os_log_t(*v6);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 description];
    v10 = 136315650;
    v11 = "Core_Audio_Driver_Host.mm";
    v12 = 1024;
    v13 = 238;
    v14 = 2080;
    v15 = [v9 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d perform_device_configuration_change error %s", &v10, 0x1Cu);
  }

  **(a1 + 32) = 2003329396;
}

uint64_t __44__Core_Audio_Driver_Host_initialize_driver___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection_from_driver];
  [v2 invalidate];

  v3 = [*(a1 + 32) listener];
  [v3 invalidate];

  v4 = *(a1 + 32);
  if (!v4)
  {
    v8 = 0u;
    v9 = 0u;
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v8);
  }

  objc_msgSend_m_invalidation_handler(v4);
  v5 = *(&v9 + 1);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v8);
  if (!v5)
  {
    return result;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_10:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  objc_msgSend_m_invalidation_handler(v7);
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  (*(**(&v9 + 1) + 48))(*(&v9 + 1));
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v8);
}

void __44__Core_Audio_Driver_Host_initialize_driver___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
    v8 = [v3 description];
    v9 = 136315650;
    v10 = "Core_Audio_Driver_Host.mm";
    v11 = 1024;
    v12 = 210;
    v13 = 2080;
    v14 = [v8 UTF8String];
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Error initializing driver %s", &v9, 0x1Cu);
  }
}

void __61__Core_Audio_Driver_Host_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) listener];
  [v2 invalidate];

  v3 = [*(a1 + 32) connection_to_driver];
  [v3 invalidate];
}

uint64_t __75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply___block_invoke(uint64_t a1, const char *a2)
{
  objc_msgSend_config_change_info_map(*(a1 + 32), a2);
  objc_msgSend_config_change_info_lock(*(a1 + 32));
  os_unfair_lock_lock(lock);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v3 = *(v15 + 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 56);
  v5 = (v15 + 8);
  do
  {
    v6 = v3[4];
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = v3[v8];
  }

  while (v3);
  if (v5 != (v15 + 8) && v4 >= v5[4])
  {
    v10 = v5[5];
    v11 = *(a1 + 32);
    if (v11)
    {
      objc_msgSend_config_change_info_map(v11);
      v11 = lock;
    }

    else
    {
      v14 = 0;
    }

    std::__tree<HALS_IOUADriver *>::__remove_node_pointer(v11, v5);
    operator delete(v5);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    os_unfair_lock_unlock(lock);
    v12 = [*(a1 + 32) asp_interface];
    (*(*v12 + 80))(v12, *(a1 + 40), *(a1 + 48), v10);
  }

  else
  {
LABEL_11:
    os_unfair_lock_unlock(lock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return (*(*(a1 + 64) + 16))(*(a1 + 64));
}

uint64_t __77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply___block_invoke(uint64_t a1, const char *a2)
{
  objc_msgSend_config_change_info_map(*(a1 + 32), a2);
  objc_msgSend_config_change_info_lock(*(a1 + 32));
  os_unfair_lock_lock(lock);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v3 = *(v15 + 8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 56);
  v5 = (v15 + 8);
  do
  {
    v6 = v3[4];
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = v3[v8];
  }

  while (v3);
  if (v5 != (v15 + 8) && v4 >= v5[4])
  {
    v10 = v5[5];
    v11 = *(a1 + 32);
    if (v11)
    {
      objc_msgSend_config_change_info_map(v11);
      v11 = lock;
    }

    else
    {
      v14 = 0;
    }

    std::__tree<HALS_IOUADriver *>::__remove_node_pointer(v11, v5);
    operator delete(v5);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    os_unfair_lock_unlock(lock);
    v12 = [*(a1 + 32) asp_interface];
    (*(*v12 + 72))(v12, *(a1 + 40), *(a1 + 48), v10);
  }

  else
  {
LABEL_11:
    os_unfair_lock_unlock(lock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return (*(*(a1 + 64) + 16))(*(a1 + 64));
}

uint64_t __56__Core_Audio_Driver_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_m_invalidation_handler(v2, a2);
    if (*(&v5 + 1))
    {
      (*(**(&v5 + 1) + 48))(*(&v5 + 1));
    }
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v4);
}

@end