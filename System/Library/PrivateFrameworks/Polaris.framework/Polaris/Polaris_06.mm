void sub_25EAE8C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAE8CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<char (&)[256],unsigned int &,char (&)[256]>(uint64_t a1, char *a2, _DWORD *a3, char *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x492492492492492)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(a1, v8);
  }

  v15 = 0;
  v16 = 56 * v4;
  std::allocator<PSSG::ResourceStridesEntry>::construct[abi:ne200100]<PSSG::ResourceStridesEntry,char (&)[256],unsigned int &,char (&)[256]>(a1, (56 * v4), a2, a3, a4);
  v17 = (56 * v4 + 56);
  v9 = *(a1 + 8);
  v10 = 56 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_25EAE8E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<PSSG::ResourceStridesEntry>::construct[abi:ne200100]<PSSG::ResourceStridesEntry,char (&)[256],unsigned int &,char (&)[256]>(int a1, std::string *a2, char *__s, _DWORD *a4, char *a5)
{
  std::string::basic_string[abi:ne200100]<0>(v10, __s);
  LODWORD(a4) = *a4;
  std::string::basic_string[abi:ne200100]<0>(__p, a5);
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a2, v10, a4, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_25EAE8EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAEA8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EAEB28C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25EAEB6F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

PSSG::Server **ps_sysgraph_delete_server(PSSG::Server **this)
{
  if (this)
  {
    v1 = this;
    v2 = this[10];
    if (v2)
    {
      PSSG::Server::~Server(v2);
      MEMORY[0x25F8C7C50]();
    }

    PSSG::ServerComms::~ServerComms(v1);

    JUMPOUT(0x25F8C7C50);
  }

  return this;
}

void ps_sysgraph_send_user_is_active_notification(PSSG::ServerComms *this)
{
  if (this)
  {
    PSSG::ServerComms::sendUserIsActiveNotification(this);
  }
}

void ps_sysgraph_send_user_is_inactive_notification(PSSG::ServerComms *this)
{
  if (this)
  {
    PSSG::ServerComms::sendUserIsInactiveNotification(this);
  }
}

void populateGraphSetInfo(void *a1, uint64_t a2, const char *a3, int a4)
{
  v7 = a1;
  if (!v7)
  {
    populateGraphSetInfo_cold_1();
  }

  xdict = v7;
  xpc_dictionary_set_uint64(v7, "message_type", a2);
  xpc_dictionary_set_string(xdict, "exec_session_name", a3);
  xpc_dictionary_set_uint64(xdict, "client_pid", a4);
  if (a2 - 1 < 2)
  {
    empty = xpc_array_create_empty();
    xpc_dictionary_set_value(xdict, "graphs_array", empty);
LABEL_6:

    goto LABEL_8;
  }

  if (a2 == 8)
  {
    empty = xpc_array_create_empty();
    v9 = xpc_array_create_empty();
    xpc_dictionary_set_value(xdict, "graphs_added_array", empty);
    xpc_dictionary_set_value(xdict, "graphs_removed_array", v9);

    goto LABEL_6;
  }

  NSLog(&cfstr_ReceivedAMessa.isa, a2);
LABEL_8:
}

void populateGraphInfo(void *a1, uint64_t a2, const char *a3, uint64_t a4, BOOL a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, BOOL a16, const char *a17)
{
  xdict = a1;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  if (!xdict)
  {
    populateGraphInfo_cold_1();
  }

  xpc_dictionary_set_uint64(xdict, "gst_setup_type", a2);
  xpc_dictionary_set_string(xdict, "graph_name", a3);
  xpc_dictionary_set_uint64(xdict, "num_sources", a4);
  xpc_dictionary_set_BOOL(xdict, "synced_buffers", a5);
  xpc_dictionary_set_uint64(xdict, "graph_exec_type", a6);
  if (a6 == 1)
  {
    xpc_dictionary_set_uint64(xdict, "graph_threadpool_id", a7);
    xpc_dictionary_set_string(xdict, "graph_threadpool_name", a8);
  }

  xpc_dictionary_set_uint64(xdict, "graph_subgraph_idx", a9);
  xpc_dictionary_set_uint64(xdict, "stride", a10);
  xpc_dictionary_set_uint64(xdict, "desired_offset", a11);
  xpc_dictionary_set_value(xdict, "source_names_array", v22);
  xpc_dictionary_set_value(xdict, "storage_modes_array", v23);
  xpc_dictionary_set_value(xdict, "down_sample_factor_array", v24);
  xpc_dictionary_set_value(xdict, "stride_factor_array", v25);
  xpc_dictionary_set_BOOL(xdict, "force_cadenced_GST", a16);
  xpc_dictionary_set_string(xdict, "domain_id", a17);
}

void appendGraphInfotoGraphSetInfo(void *a1, void *a2)
{
  value = a1;
  v3 = a2;
  if (!value || !v3)
  {
    appendGraphInfotoGraphSetInfo_cold_2();
  }

  v4 = xpc_dictionary_get_value(v3, "graphs_array");
  if (!v4)
  {
    appendGraphInfotoGraphSetInfo_cold_1();
  }

  v5 = v4;
  xpc_array_append_value(v4, value);
}

void populateSourceInfo(void *a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v9 = a1;
  if (!v9)
  {
    populateSourceInfo_cold_1();
  }

  xdict = v9;
  xpc_dictionary_set_uint64(v9, "message_type", a2);
  xpc_dictionary_set_uint64(xdict, "source_idx", a3);
  xpc_dictionary_set_uint64(xdict, "gst_idx_in_source_array", a4);
  xpc_dictionary_set_uint64(xdict, "source_storage_mode", a5);
}

void populateRemoveWaiterInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (!v5)
  {
    populateRemoveWaiterInfo_cold_1();
  }

  xdict = v5;
  xpc_dictionary_set_uint64(v5, "message_type", a2);
  xpc_dictionary_set_uint64(xdict, "gst_idx", a3);
}

void populateRemoveThreadPoolInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    populateRemoveThreadPoolInfo_cold_1();
  }

  xdict = v3;
  xpc_dictionary_set_uint64(v3, "message_type", 5uLL);
  xpc_dictionary_set_uint64(xdict, "graph_threadpool_id", a2);
}

void populateProducibleStridesHaveChangedTo(void *a1, void *a2)
{
  v3 = a2;
  xdict = a1;
  xpc_dictionary_set_uint64(xdict, "message_type", 6uLL);
  v4 = [v3 bytes];
  v5 = [v3 length];

  xpc_dictionary_set_data(xdict, "producible_strides", v4, v5);
}

void populateProducedStridesWillChange(void *a1, void *a2, uint64_t a3, BOOL a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  xdict = a1;
  xpc_dictionary_set_uint64(xdict, "message_type", 7uLL);
  v11 = [v10 bytes];
  v12 = [v10 length];

  xpc_dictionary_set_data(xdict, "produced_strides", v11, v12);
  xpc_dictionary_set_uint64(xdict, "produced_strides_frameid", a3);
  xpc_dictionary_set_BOOL(xdict, "produced_strides_is_physical_frameid", a4);
  v13 = [v9 unsignedIntValue];

  xpc_dictionary_set_uint64(xdict, "produced_strides_MSG_sync_id", v13);
}

uint64_t isResourceShared(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [a2 resourceStreamForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 options] == 2;
  }

  else
  {
    v9 = [v6 isTimer:v5] ^ 1;
  }

  return v9;
}

id populateAddedGraphsInfo(void *a1, void *a2, void *a3, void *a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v76 = a2;
  v8 = a3;
  v9 = a4;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = [v7 name];
  xpc_dictionary_set_string(v10, "graph_name", [v11 UTF8String]);

  v12 = [v7 graphFrequency];
  xpc_dictionary_set_uint64(v10, "graph_frequency_type", [v12 type]);

  v13 = [v7 systemPulseStride];
  xdict = v10;
  xpc_dictionary_set_uint64(v10, "stride", [v13 unsignedLongLongValue]);

  xarray = xpc_array_create_empty();
  value = xpc_array_create_empty();
  empty = xpc_array_create_empty();
  v85 = xpc_array_create_empty();
  v84 = xpc_array_create_empty();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v78 = v7;
  obj = [v7 tasks];
  v81 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (v81)
  {
    v80 = *v106;
    do
    {
      v14 = 0;
      do
      {
        if (*v106 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v105 + 1) + 8 * v14);
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v82 = v15;
        v83 = v14;
        v16 = [v15 inputs];
        v17 = [v16 countByEnumeratingWithState:&v101 objects:v112 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v102;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v102 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v101 + 1) + 8 * i);
              v22 = [v21 resourceKey];
              v23 = xpc_string_create([v22 UTF8String]);
              xpc_array_append_value(xarray, v23);

              v24 = xpc_uint64_create([v21 type]);
              xpc_array_append_value(value, v24);

              v25 = [v21 resourceKey];
              if (isResourceShared(v25, v8, v9))
              {
                v26 = 2;
              }

              else
              {
                v26 = 1;
              }

              v27 = xpc_uint64_create(v26);
              xpc_array_append_value(empty, v27);
            }

            v18 = [v16 countByEnumeratingWithState:&v101 objects:v112 count:16];
          }

          while (v18);
        }

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v28 = [v82 outputs];
        v29 = [v28 countByEnumeratingWithState:&v97 objects:v111 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v98;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v98 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v97 + 1) + 8 * j);
              v34 = [v33 resourceKey];
              v35 = xpc_string_create([v34 UTF8String]);
              xpc_array_append_value(v85, v35);

              v36 = [v33 resourceKey];
              if (isResourceShared(v36, v8, v9))
              {
                v37 = 2;
              }

              else
              {
                v37 = 1;
              }

              v38 = xpc_uint64_create(v37);
              xpc_array_append_value(v84, v38);
            }

            v30 = [v28 countByEnumeratingWithState:&v97 objects:v111 count:16];
          }

          while (v30);
        }

        v14 = v83 + 1;
      }

      while (v83 + 1 != v81);
      v81 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
    }

    while (v81);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v39 = [v78 readers];
  v40 = [v39 countByEnumeratingWithState:&v93 objects:v110 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v94;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v94 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v93 + 1) + 8 * k);
        v45 = [v44 input];
        v46 = [v45 resourceKey];
        v47 = xpc_string_create([v46 UTF8String]);
        xpc_array_append_value(xarray, v47);

        v48 = [v44 input];
        v49 = xpc_uint64_create([v48 type]);
        xpc_array_append_value(value, v49);

        v50 = [v44 input];
        v51 = [v50 resourceKey];
        if (isResourceShared(v51, v8, v9))
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        v53 = xpc_uint64_create(v52);
        xpc_array_append_value(empty, v53);
      }

      v41 = [v39 countByEnumeratingWithState:&v93 objects:v110 count:16];
    }

    while (v41);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v54 = [v78 writers];
  v55 = [v54 countByEnumeratingWithState:&v89 objects:v109 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v90;
    do
    {
      for (m = 0; m != v56; ++m)
      {
        if (*v90 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v89 + 1) + 8 * m);
        v60 = [v59 output];
        v61 = [v60 resourceKey];
        v62 = xpc_string_create([v61 UTF8String]);
        xpc_array_append_value(v85, v62);

        v63 = [v59 output];
        v64 = [v63 resourceKey];
        if (isResourceShared(v64, v8, v9))
        {
          v65 = 2;
        }

        else
        {
          v65 = 1;
        }

        v66 = xpc_uint64_create(v65);
        xpc_array_append_value(v84, v66);
      }

      v56 = [v54 countByEnumeratingWithState:&v89 objects:v109 count:16];
    }

    while (v56);
  }

  v67 = xdict;
  xpc_dictionary_set_value(xdict, "input_names_array", xarray);
  xpc_dictionary_set_value(xdict, "input_types_array", value);
  xpc_dictionary_set_value(xdict, "input_storage_modes_array", empty);
  xpc_dictionary_set_value(xdict, "output_names_array", v85);
  xpc_dictionary_set_value(xdict, "output_storage_modes_array", v84);
  v68 = xpc_dictionary_get_value(v76, "graphs_added_array");
  v69 = v68;
  if (v68)
  {
    xpc_array_append_value(v68, xdict);
    v70 = 0;
    v71 = v78;
  }

  else
  {
    v72 = MEMORY[0x277CCACA8];
    v71 = v78;
    v73 = [v78 name];
    v74 = [v72 stringWithFormat:@"Failed to find graphsAddedArray XPC array for graph %@", v73];

    v67 = xdict;
    v70 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-3 description:v74 recoverySuggestion:0];
  }

  return v70;
}

id populateRemovedGraphsInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = [v3 name];
  xpc_dictionary_set_string(v5, "graph_name", [v6 UTF8String]);

  v7 = xpc_dictionary_get_value(v4, "graphs_removed_array");

  if (v7)
  {
    xpc_array_append_value(v7, v5);
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v3 name];
    v11 = [v9 stringWithFormat:@"Failed to find  graphsRemovedArray XPC array for graph %@", v10];

    v8 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-3 description:v11 recoverySuggestion:0];
  }

  return v8;
}

id createSupportedStridesInfo()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "message_type", 9uLL);
  empty = xpc_array_create_empty();
  xpc_dictionary_set_value(v0, "resource_info_array", empty);

  return v0;
}

void populateSupportedStridesInfo(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  xdict = a1;
  v7 = a2;
  v8 = a3;
  v22 = a4;
  v9 = xpc_dictionary_create(0, 0, 0);
  empty = xpc_array_create_empty();
  v11 = xpc_array_create_empty();
  xpc_dictionary_set_string(v9, "resource_key", [v7 UTF8String]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = xpc_uint64_create([v17 unsignedIntValue]);
        xpc_array_append_value(empty, v18);

        v19 = [v12 objectForKeyedSubscript:v17];
        v20 = xpc_uint64_create([v19 offset]);
        xpc_array_append_value(v11, v20);
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  xpc_dictionary_set_value(v9, "supported_strides_array", empty);
  xpc_dictionary_set_value(v9, "supported_offsets_array", v11);
  xpc_dictionary_set_uint64(v9, "default_stride", [v22 unsignedIntValue]);
  v21 = xpc_dictionary_get_value(xdict, "resource_info_array");
  xpc_array_append_value(v21, v9);
}

void populateTelemetryReaderInfo(void *a1, void *a2, const char *a3, int a4, const char *a5, const char *a6)
{
  v11 = a2;
  v12 = a1;
  populateGraphSetInfo(v12, 1uLL, a3, a4);
  xarray = xpc_array_create_empty();
  empty = xpc_array_create_empty();
  v14 = xpc_array_create_empty();
  v15 = xpc_array_create_empty();
  v16 = xpc_string_create(a5);
  xpc_array_append_value(xarray, v16);

  v17 = xpc_uint64_create(1uLL);
  xpc_array_append_value(empty, v17);

  v18 = xpc_uint64_create(1uLL);
  xpc_array_append_value(v14, v18);

  v19 = xpc_uint64_create(1uLL);
  xpc_array_append_value(v15, v19);

  populateGraphInfo(v11, 1uLL, a6, 1uLL, 0, 2uLL, 0, 0, 0, 0, 0, xarray, v15, empty, v14, 0, "mixed");
  appendGraphInfotoGraphSetInfo(v11, v12);
}

const char *PSSH::PSProcessMonitorEventToStr(int a1)
{
  if (a1 <= 9)
  {
    return PSSH::PSProcessMonitorEventToStr(PSSH::ProcessMonitorEvent)::_eventToStr[a1];
  }

  else
  {
    return "Invalid";
  }
}

uint64_t PSSH::PSProcessMonitorArgToStr(uint64_t result, uint64_t a2, size_t __size, char *__str)
{
  __src = a2;
  if (result > 7)
  {
LABEL_9:
    *__str = 0;
    return result;
  }

  if (((1 << result) & 0xA6) == 0)
  {
    if (((1 << result) & 0x58) != 0)
    {
      return snprintf(__str, __size, "%llu", a2);
    }

    goto LABEL_9;
  }

  if (__size >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = __size;
  }

  result = memcpy(__str, &__src, v5);
  __str[v5] = 0;
  return result;
}

PSSH::SysProcessMonitor *PSSH::SysProcessMonitor::SysProcessMonitor(PSSH::SysProcessMonitor *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = xmmword_25EB77120;
  *(this + 7) = 0;
  *(this + 8) = 0;
  PSSH::SysProcessMonitor::_instance = this;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  *(this + 5) = info.numer;
  *(this + 6) = (v2 * 1000.0 * 1000.0);
  *(this + 7) = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 8) = dispatch_queue_create("PSSH-ProcessMonitor", v3);
  ps_system_action_register_kill_process_report_block(&__block_literal_global_23);
  return this;
}

void ___ZN4PSSH17SysProcessMonitorC2Ev_block_invoke(uint64_t a1, int a2, int a3)
{
  if (PSSH::SysProcessMonitor::_instance)
  {
    v3 = *(PSSH::SysProcessMonitor::_instance + 56);
    v4 = *(PSSH::SysProcessMonitor::_instance + 64);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZN4PSSH17SysProcessMonitor29handleSystemActionKillProcessEi20ps_ca_death_reason_e_block_invoke;
    v5[3] = &__block_descriptor_tmp_8_1;
    v5[4] = PSSH::SysProcessMonitor::_instance;
    v6 = a2;
    v7 = a3;
    dispatch_group_async(v3, v4, v5);
  }
}

void PSSH::SysProcessMonitor::~SysProcessMonitor(dispatch_group_t *this)
{
  PSSH::SysProcessMonitor::_instance = 0;
  dispatch_group_wait(this[7], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(this[7]);
  dispatch_release(this[8]);

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this);
}

void PSSH::SysProcessMonitor::handleProcessRegisterDispatched(PSSH::SysProcessMonitor *this, uint64_t pid)
{
  v2 = pid;
  v32[6] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v4 = proc_pidinfo(pid, 13, 0, buffer, 64);
  if (v4 == 64 && buffer[0] == v2)
  {
    v6 = MEMORY[0x25F8C7A80](__p, v32);
    v8 = __PSSysHealthLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __p;
      if (v22 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "handleProcessRegisterDispatched";
      v29 = 1024;
      LODWORD(v30[0]) = v2;
      WORD2(v30[0]) = 2080;
      *(v30 + 6) = v9;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "%s() pid %d --> (%s)", buf, 0x1Cu);
    }

    if (PSSH::processHasDeathParams(__p) || (isKillDaemon = PSSH::isKillDaemon(__p), isKillDaemon))
    {
      *buf = __p;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, __p, &std::piecewise_construct, buf, &v27) + 22) = v2;
      *buf = __p;
      v12 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, __p, &std::piecewise_construct, buf, &v27);
      *(v12 + 100) = 1;
      v13 = PSSH::PSProcessMonitorEventLog(v12);
      v14 = __p;
      if (v22 < 0)
      {
        v14 = __p[0];
      }

      v15 = *v14;
      v16 = mach_absolute_time();
      v17 = *v13;
      v18 = &v13[12 * *v13];
      *(v18 + 6) = 1;
      *(v18 + 1) = v16;
      *(v18 + 2) = v15;
      *v13 = v17 + 1 - 100 * ((42949673 * (v17 + 1)) >> 32);
    }

    else
    {
      v19 = __PSSysHealthLogSharedInstance(isKillDaemon, v11);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = __p;
        if (v22 < 0)
        {
          v20 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = "handleProcessRegisterDispatched";
        v29 = 2080;
        v30[0] = v20;
        _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEFAULT, "%s() process [%s] is not monitored or a killDaemon. Ignoring.", buf, 0x16u);
      }
    }
  }

  else
  {
    __PSSysHealthLogSharedInstance(v4, v5);
    PSSH::SysProcessMonitor::handleProcessRegisterDispatched();
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

void PSSH::ProcessDeathParams::~ProcessDeathParams(void **this)
{
  v2 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void PSSH::SysProcessMonitor::handleProcessRegister(PSSH::SysProcessMonitor *this, int a2)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4PSSH17SysProcessMonitor21handleProcessRegisterEi_block_invoke;
  v4[3] = &__block_descriptor_tmp_3_1;
  v4[4] = this;
  v5 = a2;
  dispatch_group_async(v2, v3, v4);
}

void PSSH::SysProcessMonitor::handleKillDaemons(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 56);
  for (i = *(a3 + 64); v3 != i; v3 += 24)
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(a1, v3))
    {
      *__str = v3;
      v8 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v3, &std::piecewise_construct, __str, &v21);
      if (*(v8 + 100))
      {
        v10 = v3;
        if (*(v3 + 23) < 0)
        {
          v10 = *v3;
        }

        v11 = a2;
        if (*(a2 + 23) < 0)
        {
          v11 = *a2;
        }

        snprintf(__str, 0xC8uLL, "PolarisD ProcessMonitor::Terminating [%s] Reason Critical Daemon crashed - [%s]", v10, v11);
        v21 = v3;
        v12 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v3, &std::piecewise_construct, &v21, &v20);
        v13 = v3;
        if (*(v3 + 23) < 0)
        {
          v13 = *v3;
        }

        ps_system_action_kill_process(*(v12 + 22), __str, 2, 0, v13);
        continue;
      }

      v18 = __PSSysHealthLogSharedInstance(v8, v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v3;
        if (*(v3 + 23) < 0)
        {
          v19 = *v3;
        }

        *__str = 136315394;
        *&__str[4] = "handleKillDaemons";
        v23 = 2080;
        v24 = v19;
        v16 = v18;
        v17 = "%s() Daemon [%s] already dead. Ignoring";
LABEL_19:
        _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEFAULT, v17, __str, 0x16u);
      }
    }

    else
    {
      v14 = __PSSysHealthLogSharedInstance(0, v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v3;
        if (*(v3 + 23) < 0)
        {
          v15 = *v3;
        }

        *__str = 136315394;
        *&__str[4] = "handleKillDaemons";
        v23 = 2080;
        v24 = v15;
        v16 = v14;
        v17 = "%s() Daemon [%s] not registered. Ignoring";
        goto LABEL_19;
      }
    }
  }
}

const void **PSSH::SysProcessMonitor::handleProcessDeathCount(void *a1, int a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  *buf = a3;
  v10 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28);
  v12 = v10[5];
  if (v12)
  {
    v13 = (a1[5] * (a5 - v12)) / a1[6];
  }

  else
  {
    v13 = 0;
  }

  v14 = __PSSysHealthLogSharedInstance(v10, v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "handleProcessDeathCount";
    v30 = 2048;
    v31 = v13;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_INFO, "%s() deltaMSec: %llu", buf, 0x16u);
  }

  *buf = a3;
  std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28)[8] = v13;
  *buf = a3;
  v15 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28);
  v15[9] = v15[9] + 1;
  if (v13 && v13 < *a4)
  {
    *buf = a3;
    v16 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28);
    v16[7] = v16[7] + 1;
  }

  else
  {
    *buf = a3;
    std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28)[7] = 1;
    *buf = a3;
    std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28)[6] = a5;
  }

  *buf = a3;
  v17 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28);
  v17[5] = a5;
  v19 = __PSSysHealthLogSharedInstance(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = a3;
    if (a3[23] < 0)
    {
      v20 = *a3;
    }

    *buf = a3;
    v21 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28)[7];
    *buf = 136315650;
    *&buf[4] = "handleProcessDeathCount";
    v30 = 2080;
    v31 = v20;
    v32 = 2048;
    v33 = v21;
    _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEBUG, "%s() process [%s] death count %llu", buf, 0x20u);
  }

  *buf = a3;
  result = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28);
  if (result[7] > a4[1])
  {
    v23 = a3;
    if (a3[23] < 0)
    {
      v23 = *a3;
    }

    *buf = a3;
    v24 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28)[7];
    *buf = a3;
    v25 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, buf, &v28);
    snprintf(buf, 0xC8uLL, "PolarisD Triggered Panic - Reason Critical Process crashloop [%s] (PID: %u) Crash count: %llu; First crash: %llu[ms]; Last crash: %llu[ms]; Interval between crashes %llu[ms];", v23, a2, v24, a1[5] * v25[6] / a1[6], (a1[5] * a5) / a1[6], v13);
    ps_system_action_trigger_panic(buf, v26);
    v28 = a3;
    result = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, &v28, &v27);
    result[7] = 0;
  }

  return result;
}

void PSSH::SysProcessMonitor::handleProcessDiedDispatched(PSSH::SysProcessMonitor *this, uint64_t a2)
{
  v2 = a2;
  v43 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = 0;
  v33 = 0;
  memset(v36, 0, sizeof(v36));
  v4 = mach_continuous_time();
  std::string::basic_string[abi:ne200100]<0>(&v29, "");
  v5 = this + 16;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 22) == v2)
    {
      std::string::operator=(&v29, (v5 + 16));
      break;
    }
  }

  v6 = std::string::compare(&v29, "");
  if (v6)
  {
    v8 = __PSSysHealthLogSharedInstance(v6, v7);
    v9 = os_signpost_enabled(v8);
    if (v9)
    {
      v10 = &v29;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v29.__r_.__value_.__r.__words[0];
      }

      *v38 = 136315650;
      *&v38[4] = "handleProcessDiedDispatched";
      v39 = 2080;
      v40 = v10;
      v41 = 1024;
      v42 = v2;
      v9 = _os_signpost_emit_unreliably_with_name_impl(&dword_25EA3A000, v8, 0, 0xEEEEB0B5B2B2EEEELL, "PSSH Log", "%s() process [%s] pid: %u died.", __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, LODWORD(__p.__r_.__value_.__r.__words[2]));
    }

    v11 = PSSH::PSProcessMonitorEventLog(v9);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v29;
    }

    else
    {
      v12 = v29.__r_.__value_.__r.__words[0];
    }

    v13 = v12->__r_.__value_.__r.__words[0];
    v14 = mach_absolute_time();
    v15 = *v11;
    v16 = &v11[12 * *v11];
    *(v16 + 6) = 2;
    *(v16 + 1) = v14;
    *(v16 + 2) = v13;
    *v11 = v15 + 1 - 100 * ((42949673 * (v15 + 1)) >> 32);
    *v38 = &v29;
    v17 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v29, &std::piecewise_construct, v38, &v37);
    if (*(v17 + 100))
    {
      *v38 = &v29;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v29, &std::piecewise_construct, v38, &v37) + 100) = 0;
      *v38 = &v29;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v29, &std::piecewise_construct, v38, &v37) + 23) = 0;
      ProcessDeathParams = PSSH::getProcessDeathParams(&v29, v30);
      if (ProcessDeathParams)
      {
        v24 = __PSSysHealthLogSharedInstance(ProcessDeathParams, v20);
        PSSH::SysProcessMonitor::handleProcessDiedDispatched(v24, &v29.__r_.__value_.__r.__words[2] + 7, &v29);
      }

      else
      {
        v21 = ps_system_action_pause(v34, v20);
        if (v35 == 1)
        {
          ps_system_action_lock_apple_pay(v21, v22);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        else
        {
          v28 = v29;
        }

        *v38 = &v29;
        *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v29, &std::piecewise_construct, v38, &v37) + 101) = 0;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        else
        {
          v27 = v29;
        }

        PSSH::SysProcessMonitor::handleProcessDeathCount(this, v2, &v27, v30, v4);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v26, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        else
        {
          v26 = v29;
        }

        *v38 = &v29;
        v23 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v29, &std::piecewise_construct, v38, &v37);
        PSSH::SysProcessMonitor::submitCADeathReport(v23, &v26, (v23 + 5));
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v29;
        }

        PSSH::SysProcessMonitor::handleKillDaemons(this, &__p, v30);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      __PSSysHealthLogSharedInstance(v17, v18);
      PSSH::SysProcessMonitor::handleProcessDiedDispatched();
    }
  }

  else
  {
    __PSSysHealthLogSharedInstance(v6, v7);
    PSSH::SysProcessMonitor::handleProcessDiedDispatched();
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  *v38 = v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v38);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }
}

void sub_25EAEE02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  PSSH::ProcessDeathParams::~ProcessDeathParams(&a43);
  _Unwind_Resume(a1);
}

uint64_t PSSH::SysProcessMonitor::submitCADeathReport(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v3 = *(a3 + 52);
  v5[1] = 0;
  v5[0] = 0;
  v6 = 0;
  LODWORD(v7) = v3;
  BYTE4(v7) = *(a3 + 61);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  strlcpy(v5, a2, 0x14uLL);
  return pbs_ringbufferlogger_shared_write();
}

void PSSH::SysProcessMonitor::handleProcessDied(PSSH::SysProcessMonitor *this, int a2)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4PSSH17SysProcessMonitor17handleProcessDiedEi_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_0;
  v4[4] = this;
  v5 = a2;
  dispatch_group_async(v2, v3, v4);
}

void PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched(void *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v41 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v32, "");
  v28 = 0;
  v29 = 0;
  v30 = 0;
  memset(v31, 0, sizeof(v31));
  v6 = a1 + 2;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (*(v6 + 22) == v4)
    {
      std::string::operator=(&v32, (v6 + 2));
      break;
    }
  }

  v7 = std::string::compare(&v32, "");
  if (v7)
  {
    v9 = __PSSysHealthLogSharedInstance(v7, v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v11 = &v32;
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v32.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "handleSystemActionKillProcessDispatched";
      v35 = 2080;
      v36 = v11;
      v37 = 1024;
      v38 = v4;
      v39 = 1024;
      v40 = a3;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "%s() process [%s] pid: %u was killed by system action. deathReason: %u", buf, 0x22u);
    }

    v12 = PSSH::PSProcessMonitorEventLog(v10);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v32;
    }

    else
    {
      v13 = v32.__r_.__value_.__r.__words[0];
    }

    v14 = v13->__r_.__value_.__r.__words[0];
    v15 = mach_absolute_time();
    v16 = *v12;
    v17 = &v12[12 * *v12];
    *(v17 + 6) = 2;
    *(v17 + 1) = v15;
    *(v17 + 2) = v14;
    *v12 = v16 + 1 - 100 * ((42949673 * (v16 + 1)) >> 32);
    *buf = &v32;
    v18 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33);
    if (*(v18 + 100))
    {
      *buf = &v32;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33) + 100) = 0;
      *buf = &v32;
      std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33)[7] = 1;
      *buf = &v32;
      std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33)[5] = 0;
      *buf = &v32;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33) + 23) = a3;
      ProcessDeathParams = PSSH::getProcessDeathParams(&v32, v27);
      if (!ProcessDeathParams)
      {
        v22 = __PSSysHealthLogSharedInstance(ProcessDeathParams, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = &v32;
          if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = v32.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = "handleSystemActionKillProcessDispatched";
          v35 = 2080;
          v36 = v23;
          _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "%s() Handle killed daemon [%s] PST Transition", buf, 0x16u);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v26, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
        }

        else
        {
          v26 = v32;
        }

        *buf = &v32;
        *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33) + 101) = 0;
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v32;
      }

      *buf = &v32;
      v24 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v32, &std::piecewise_construct, buf, &v33);
      PSSH::SysProcessMonitor::submitCADeathReport(v24, &__p, (v24 + 5));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __PSSysHealthLogSharedInstance(v18, v19);
      PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched();
    }
  }

  else
  {
    __PSSysHealthLogSharedInstance(v7, v8);
    PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched();
  }

  *buf = v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_25EAEE618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  PSSH::ProcessDeathParams::~ProcessDeathParams(&a23);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PSSH::SysProcessMonitor::getProcessMonitorStatisticsDispatched(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "getProcessMonitorStatisticsDispatched";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  operator new[]();
}

void sub_25EAEE834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getProcessMonitorStatistics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH17SysProcessMonitor27getProcessMonitorStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P28pssh_process_monitor_stats_siE_block_invoke;
  block[3] = &unk_2870BB890;
  block[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  block[4] = a3;
  dispatch_group_async(v4, v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN4PSSH17SysProcessMonitor27getProcessMonitorStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P28pssh_process_monitor_stats_siE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  PSSH::SysProcessMonitor::getProcessMonitorStatisticsDispatched(v2, &__p, *(a1 + 32));
}

void sub_25EAEE998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void PSSH::SysProcessMonitor::getSystemActionStatisticsDispatched(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getSystemActionStatisticsDispatched";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = 0;
  *buf = 0;
  ps_system_action_get_stats(buf, &v4);
}

void sub_25EAEEB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getSystemActionStatistics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH17SysProcessMonitor25getSystemActionStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P26pssh_system_action_stats_siE_block_invoke;
  block[3] = &unk_2870BB8C8;
  block[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  block[4] = a3;
  dispatch_group_async(v4, v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN4PSSH17SysProcessMonitor25getSystemActionStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P26pssh_system_action_stats_siE_block_invoke(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  PSSH::SysProcessMonitor::getSystemActionStatisticsDispatched(a1, &__p, *(a1 + 32));
}

void sub_25EAEEC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getProcessMonitorEventLogDispatched(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "getProcessMonitorEventLogDispatched";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  operator new();
}

void sub_25EAEEE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getProcessMonitorEventLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH17SysProcessMonitor25getProcessMonitorEventLogENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P32pssh_process_monitor_event_log_sE_block_invoke;
  block[3] = &unk_2870BB900;
  block[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  block[4] = a3;
  dispatch_group_async(v4, v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN4PSSH17SysProcessMonitor25getProcessMonitorEventLogENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P32pssh_process_monitor_event_log_sE_block_invoke(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  PSSH::SysProcessMonitor::getProcessMonitorEventLogDispatched(a1, &__p, *(a1 + 32));
}

void sub_25EAEEFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
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
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EAEF228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAEF300(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t ps_system_action_pause(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "ps_system_action_pause";
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "%s() pauseDurationMs: %llu", &v6, 0x16u);
  }

  v4 = mach_continuous_time();
  result = mach_timebase_info(&v6);
  atomic_store(1000000 * a1 * v7 / v6 + v4, &pauseActionMachTime);
  return result;
}

void ps_system_action_stop(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "ps_system_action_stop";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEBUG, "%s()", &v3, 0xCu);
  }

  atomic_store(1u, gStopSystemAction);
}

void ps_system_action_handle_graph_hang(char *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v66 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v12 = mach_absolute_time();
  v13 = ps_util_mach_time_to_ns(v12);
  v14 = mach_continuous_time();
  v48 = 0;
  if (a6)
  {
    v15 = (v13 - a6) / 0xF4240;
    v16 = snprintf(__str, 0xC8uLL, "PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu] hungTimeMs:[%llu]", a2, a1, a3, a4, a6, v13, v15);
    v18 = __PSSysHealthLogSharedInstance(v16, v17);
    if (os_signpost_enabled(v18))
    {
      v19 = ps_util_ns_to_mach_time(a6);
      *buf = 134351106;
      *&buf[4] = ps_util_mat_to_mct(v19);
      v51 = 2050;
      v52 = v14;
      v53 = 2080;
      v54 = a2;
      v55 = 2080;
      *v56 = a1;
      *&v56[8] = 1024;
      *&v56[10] = a3;
      v57 = 2048;
      v58 = a4;
      v59 = 2048;
      v60 = a6;
      v61 = 2048;
      v62 = v13;
      v63 = 2048;
      v64 = (v13 - a6) / 0xF4240;
      _os_signpost_emit_with_name_impl(&dword_25EA3A000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GraphHang", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu] hungTimeMs:[%llu]", buf, 0x58u);
    }
  }

  else
  {
    v20 = snprintf(__str, 0xC8uLL, "PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu], creationTimeNs:[%llu]; graph did not run", a2, a1, a3, a4, 0, v13, a5);
    v22 = __PSSysHealthLogSharedInstance(v20, v21);
    if (os_signpost_enabled(v22))
    {
      v23 = ps_util_ns_to_mach_time(0);
      *buf = 134351106;
      *&buf[4] = ps_util_mat_to_mct(v23);
      v51 = 2050;
      v52 = v14;
      v53 = 2080;
      v54 = a2;
      v55 = 2080;
      *v56 = a1;
      *&v56[8] = 1024;
      *&v56[10] = a3;
      v57 = 2048;
      v58 = a4;
      v59 = 2048;
      v60 = 0;
      v61 = 2048;
      v62 = v13;
      v63 = 2048;
      v64 = a5;
      _os_signpost_emit_with_name_impl(&dword_25EA3A000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GraphHang", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu], creationTimeNs:[%llu]; graph did not run", buf, 0x58u);
    }

    v15 = (v13 - a5) / 0xF4240;
  }

  v24 = mach_continuous_time();
  v26 = atomic_load(&pauseActionMachTime);
  if (v24 <= v26)
  {
    ps_system_action_handle_graph_hang_cold_1(v24, v25);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, a1);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  GraphRecoveryAction = PSSH::getGraphRecoveryAction(buf, __p, &v49, &v48);
  v29 = GraphRecoveryAction;
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(*buf);
  }

  if (!v29)
  {
    v30 = __PSSysHealthLogSharedInstance(GraphRecoveryAction, v28);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
    if (v31)
    {
      *buf = 136316162;
      *&buf[4] = "ps_system_action_handle_graph_hang";
      v51 = 2080;
      v52 = a1;
      v53 = 2080;
      v54 = a2;
      v55 = 1024;
      *v56 = v49;
      *&v56[4] = 2048;
      *&v56[6] = v48;
      _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEBUG, "%s => getGraphRecoveryAction(sessionName=%s, graphName=%s, action=%d, waitTimeBeforeKillMs=%llu)", buf, 0x30u);
    }

    if (v49 == 2)
    {
      v33 = __PSSysHealthLogSharedInstance(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "ps_system_action_handle_graph_hang";
        _os_log_impl(&dword_25EA3A000, v33, OS_LOG_TYPE_INFO, "%s() ignoring", buf, 0xCu);
      }

      GraphHangStats = getGraphHangStats();
      std::string::basic_string[abi:ne200100]<0>(buf, a2);
      __p[0] = buf;
      v35 = std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(GraphHangStats, buf, &std::piecewise_construct, __p);
      v35[7] = v35[7] + 1;
    }

    else
    {
      v36 = PSSH::PSProcessMonitorEventLog(v31);
      v37 = *a2;
      v38 = mach_absolute_time();
      v40 = *v36;
      v41 = &v36[12 * *v36];
      *(v41 + 6) = 5;
      *(v41 + 1) = v38;
      *(v41 + 2) = v37;
      *v36 = v40 + 1 - 100 * ((42949673 * (v40 + 1)) >> 32);
      if (v48 && v15 <= v48)
      {
        ps_system_action_handle_graph_hang_cold_3(a2, &v48);
        return;
      }

      if (v49)
      {
        if (v49 != 1)
        {
          ps_system_action_handle_graph_hang_cold_2();
        }

        ps_system_action_trigger_panic(__str, v39);
        v42 = getGraphHangStats();
        std::string::basic_string[abi:ne200100]<0>(buf, a2);
        __p[0] = buf;
        v43 = std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42, buf, &std::piecewise_construct, __p);
        v43[6] = v43[6] + 1;
      }

      else
      {
        ps_system_action_kill_process(a3, __str, 1, 1, "");
        v44 = getGraphHangStats();
        std::string::basic_string[abi:ne200100]<0>(buf, a2);
        __p[0] = buf;
        v45 = std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44, buf, &std::piecewise_construct, __p);
        v45[5] = v45[5] + 1;
      }
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_25EAEFA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getGraphHangStats(void)
{
  {
    operator new();
  }

  return getGraphHangStats(void)::_graphHangStats;
}

void ps_system_action_trigger_panic(const char *a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(gStopSystemAction);
  v4 = __PSSysHealthLogSharedInstance(a1, a2);
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v26 = "ps_system_action_trigger_panic";
    v6 = "%s() Disabled Panic ";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
    goto LABEL_10;
  }

  v10 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v10)
  {
    *buf = 136315394;
    v26 = "ps_system_action_trigger_panic";
    v27 = 2080;
    v28 = a1;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_INFO, "%s() panicMessage: [%s]", buf, 0x16u);
  }

  v11 = PSSH::PSProcessMonitorEventLog(v10);
  v12 = mach_absolute_time();
  v13 = *v11;
  v14 = &v11[12 * *v11];
  *(v14 + 6) = 8;
  *(v14 + 1) = v12;
  *(v14 + 2) = 888;
  *v11 = v13 + 1 - 100 * ((42949673 * (v13 + 1)) >> 32);
  v24 = 0;
  v16 = PSSH::checkIsPanicEnabled(&v24, v15);
  if (!v16 && v24 == 1)
  {
    v19 = ps_system_action_trigger_panic(buf, a1);
    ps_system_action_kill_process(v19, v20, v21, v22, v23);
    return;
  }

  v18 = __PSSysHealthLogSharedInstance(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v6 = "Panic not enabled in config file. Skipping";
    v7 = v18;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
LABEL_10:
    _os_log_impl(&dword_25EA3A000, v7, v8, v6, buf, v9);
  }
}

void ps_system_action_kill_process(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = atomic_load(gStopSystemAction);
  v10 = __PSSysHealthLogSharedInstance(a1, a2);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v11)
    {
      return;
    }

    v31 = 136315138;
    v32 = "ps_system_action_kill_process";
    v12 = "%s() Disabled Kill Process ";
    v13 = v10;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 12;
    goto LABEL_17;
  }

  if (v11)
  {
    v31 = 136315394;
    v32 = "ps_system_action_kill_process";
    v33 = 2080;
    v34 = a2;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%s() killReason: [%s]", &v31, 0x16u);
  }

  v16 = PSSH::PSProcessMonitorEventLog(v11);
  v17 = *a5;
  v18 = mach_absolute_time();
  v20 = *v16;
  v21 = &v16[12 * *v16];
  *(v21 + 6) = 7;
  *(v21 + 1) = v18;
  *(v21 + 2) = v17;
  *v16 = v20 + 1 - 100 * ((42949673 * (v20 + 1)) >> 32);
  if (gKillProcessReportBlock)
  {
    v18 = (*(gKillProcessReportBlock + 16))(gKillProcessReportBlock, a1, a3);
  }

  v22 = __PSSysHealthLogSharedInstance(v18, v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136315138;
    v32 = "ps_system_action_kill_process";
    _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "%s() requesting logd to flush accumulated buffers", &v31, 0xCu);
  }

  v23 = OSLogFlushBuffers();
  if (v23)
  {
    v25 = v23;
    v26 = __PSSysHealthLogSharedInstance(v23, v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315394;
      v32 = "ps_system_action_kill_process";
      v33 = 1024;
      LODWORD(v34) = v25;
      _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v31, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v27 = terminate_with_reason();
  if (v27)
  {
    v29 = v27;
    v30 = __PSSysHealthLogSharedInstance(v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315394;
      v32 = "ps_system_action_kill_process";
      v33 = 1024;
      LODWORD(v34) = v29;
      v12 = "%s() terminate_with_reason() failed with %d";
      v13 = v30;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 18;
LABEL_17:
      _os_log_impl(&dword_25EA3A000, v13, v14, v12, &v31, v15);
    }
  }
}

uint64_t ps_system_action_lock_apple_pay(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = __PSSysHealthLogSharedInstance(a1, a2);
  result = os_signpost_enabled(v2);
  if (result)
  {
    *v4 = 136315138;
    *&v4[4] = "ps_system_action_lock_apple_pay";
    return _os_signpost_emit_unreliably_with_name_impl(&dword_25EA3A000, v2, 0, 0xEEEEB0B5B2B2EEEELL, "PSSH Log", "%s() not supported on platform. Ignoring", *v4);
  }

  return result;
}

void ps_system_action_get_stats(void *a1, unint64_t *a2)
{
  v3 = *(getGraphHangStats() + 24);
  *a2 = v3;
  is_mul_ok(v3, 0x98uLL);
  operator new[]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void PSSH::SysHealthData::SysHealthData(PSSH::SysHealthData *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  operator new[]();
}

void sub_25EAF0498(_Unwind_Exception *a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthData::~SysHealthData(PSSH::SysHealthData *this)
{
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(this);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 12);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 72 * v4 - 72;
      v6 = -72 * v4;
      do
      {
        if (*(v5 + 71) < 0)
        {
          operator delete(*(v5 + 48));
        }

        std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v5);
        v5 -= 72;
        v6 += 72;
      }

      while (v6);
    }

    MEMORY[0x25F8C7C30](v3, 0x10B2C803A500989);
  }

  v7 = *(this + 8);
  if (v7)
  {
    MEMORY[0x25F8C7C30](v7, 0x1000C80A31A6D41);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 96);

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this);
}

__n128 PSSH::SysHealthData::getCurrSystemHealth(__n128 *a1, __n128 *a2)
{
  result = a1[5];
  *a2 = result;
  return result;
}

uint64_t PSSH::SysHealthData::getSessionFromStore(PSSH::SysHealthData *this, uint64_t a2)
{
  v4 = *(this + 14);
  if (v4 > 0x3F)
  {
    v9 = v2;
    v10 = v3;
    v7 = __PSSysHealthLogSharedInstance(this, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "No more entries in session store", v8, 2u);
    }

    return 0;
  }

  else
  {
    v5 = *(this + 6);
    *(this + 14) = v4 + 1;
    return v5 + 72 * v4;
  }
}

void PSSH::SysHealthData::updateSession(PSSH::SysHealthData *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *buf = a2;
  v7 = std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, buf, &v18)[5];
  if (!v7)
  {
    SessionFromStore = PSSH::SysHealthData::getSessionFromStore(a1, v6);
    if (!SessionFromStore)
    {
      v14 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(a1, a2);
      v16 = __PSSysHealthLogSharedInstance(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v17;
        _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_ERROR, "No memory for session: %s\n", buf, 0xCu);
      }

      return;
    }

    v7 = SessionFromStore;
    std::string::operator=(SessionFromStore + 2, a2);
    *buf = a2;
    std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, buf, &v18)[5] = v7;
  }

  v9 = v7[1].__r_.__value_.__r.__words[2];
  (*(a3 + 16))(a3, v7);
  v10 = v7[1].__r_.__value_.__r.__words[2];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v13 = *(a1 + 10) - 1;
LABEL_15:
    *(a1 + 10) = v13;
    return;
  }

  if (v10)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(a1 + 10) + 1;
    goto LABEL_15;
  }
}

const void **PSSH::SysHealthData::updateSessionGraphForKey(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  *buf = a3;
  v8 = std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3, &std::piecewise_construct, buf, &v15);
  v10 = v8[5];
  if (v10)
  {
LABEL_6:
    result = (*(a4 + 16))(a4, v10);
    if (v10[324])
    {
      return result;
    }

    return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(a2, a3);
  }

  v11 = *(a1 + 72);
  v10 = *(a1 + 64);
  if (v11 >= 0x200)
  {
    v13 = 512;
    while ((v10[324] & 1) != 0)
    {
      v10 += 376;
      if (!--v13)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_5;
  }

  *(a1 + 72) = v11 + 1;
  if (v10)
  {
    v10 += 376 * v11;
LABEL_5:
    *buf = a3;
    std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3, &std::piecewise_construct, buf, &v15)[5] = v10;
    goto LABEL_6;
  }

LABEL_12:
  v14 = __PSSysHealthLogSharedInstance(v8, v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, "No more free memory for graph data.", buf, 2u);
  }

  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(a2, a3);
}

uint64_t PSSH::SysHealthData::_for_each_active_session(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      if (*(*(v4 + 48) + v5 + 40))
      {
        result = (*(a2 + 16))(a2);
        v2 = *(v4 + 56);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t PSSH::SysHealthData::_for_each_active_graph(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      v6 = *(v4 + 48) + 72 * i;
      if (*(v6 + 40))
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          do
          {
            if (*(v7[5] + 324) == 1)
            {
              result = (*(a2 + 16))(a2);
            }

            v7 = *v7;
          }

          while (v7);
          v2 = *(v4 + 56);
        }
      }
    }
  }

  return result;
}

void PSSH::SysHealthData::cleanupSessionGraphsAfterProcessDeath(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(a2);
  }
}

uint64_t PSSH::SysHealthData::_for_each_active_liveness_node(uint64_t result, uint64_t a2)
{
  for (i = *(result + 112); i; i = *i)
  {
    result = (*(a2 + 16))(a2, i[2]);
  }

  return result;
}

void *std::__hash_table<pssh_graph_state_s const*,std::hash<pssh_graph_state_s const*>,std::equal_to<pssh_graph_state_s const*>,std::allocator<pssh_graph_state_s const*>>::__emplace_unique_key_args<pssh_graph_state_s const*,pssh_graph_state_s const* const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
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
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
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
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EAF0F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAF1040(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
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
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EAF12B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAF1378(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthManager::SysHealthManager(PSSH::SysHealthManager *this, PSSH::SysHealthServer *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  operator new();
}

void PSSH::SysHealthManager::~SysHealthManager(dispatch_group_t *this)
{
  dispatch_group_wait(this[2], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(this[3]);
  dispatch_release(this[2]);
  if (*this)
  {
    PSSH::SysHealthData::~SysHealthData(*this);
    MEMORY[0x25F8C7C50]();
  }

  *this = 0;
}

void PSSH::SysHealthManager::checkGraphForLiveness(__n128 **this, const pssh_graph_state_s *a2)
{
  PSSH::SysHealthData::getCurrSystemHealth(*this, &v6);
  if (v6.n128_u32[3])
  {
    if (a2->var4)
    {
      v4 = 0;
      while (!v6.n128_u8[v4 + 8])
      {
LABEL_9:
        if (++v4 == 4)
        {
          return;
        }
      }

      v5 = 352;
      while (v4 != a2->var0[v5] || !a2->var10)
      {
        if (++v5 == 356)
        {
          goto LABEL_9;
        }
      }

      PSSH::SysHealthData::addLivenessNode(*this, a2);
    }

    else
    {
      PSSH::SysHealthData::removeLivenessNode(*this, a2);
    }
  }
}

void PSSH::SysHealthManager::remoteHasUpdatedGraphs(PSSH::SysHealthData **this, const pssh_graph_state_s *a2, int a3)
{
  v6 = *this;
  std::string::basic_string[abi:ne200100]<0>(__p, a2->var1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke;
  v7[3] = &__block_descriptor_tmp_5;
  v8 = a3;
  v7[4] = this;
  v7[5] = a2;
  PSSH::SysHealthData::updateSession(v6, __p, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25EAF1604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 48) - 1);
  if (v2 >= 0)
  {
    v5 = *(a1 + 32);
    v6 = v2 + 1;
    v7 = 376 * v2;
    do
    {
      v8 = *(a1 + 40) + v7;
      v9 = *v5;
      std::string::basic_string[abi:ne200100]<0>(__p, (v8 + 192));
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 0x40000000;
      v11[2] = ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke_2;
      v11[3] = &__block_descriptor_tmp_3_2;
      v11[4] = v5;
      v11[5] = v8;
      v11[6] = a2;
      PSSH::SysHealthData::updateSessionGraphForKey(v9, a2, __p, v11);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v7 -= 376;
    }

    while (v6-- > 1);
  }
}

void sub_25EAF1724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke_2(void *a1, _BYTE *__dst)
{
  v4 = a1[4];
  v3 = a1[5];
  if (v3[324] == 1)
  {
    if ((__dst[324] & 1) == 0)
    {
      ++*(a1[6] + 40);
    }

    memcpy(__dst, v3, 0x178uLL);
  }

  else
  {
    if (__dst[324])
    {
      --*(a1[6] + 40);
    }

    __dst[324] = 0;
  }

  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke_3;
  v7[3] = &__block_descriptor_tmp_23;
  v7[4] = v4;
  v7[5] = __dst;
  dispatch_group_async(v5, v6, v7);
}

void PSSH::SysHealthManager::remoteHasRequestedGraphs(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  operator new[]();
}

void sub_25EAF1954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *___ZN4PSSH16SysHealthManager24remoteHasRequestedGraphsERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvPK18pssh_graph_state_siE_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  return memcpy((v2 + 376 * v4), a2, 0x178uLL);
}

void PSSH::SysHealthManager::remoteHasUpdatedSystemHealth(uint64_t *a1, __int128 *a2)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__2;
  v16[4] = __Block_byref_object_dispose__2;
  v17 = *a2;
  v4 = a1[2];
  v5 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke;
  block[3] = &unk_279A49350;
  block[4] = v16;
  block[5] = a1;
  dispatch_group_async(v4, v5, block);
  if (*(a2 + 3))
  {
    v6 = *a1;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_3;
    v14[3] = &__block_descriptor_tmp_10;
    v14[4] = a1;
    active = PSSH::SysHealthData::_for_each_active_graph(v6, v14);
    v9 = __PSSysHealthLogSharedInstance(active, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEBUG, "Starting poll..", buf, 2u);
    }

    v10 = a1[2];
    v11 = a1[3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_11;
    v12[3] = &__block_descriptor_tmp_12;
    v12[4] = a1;
    dispatch_group_async(v10, v11, v12);
  }

  _Block_object_dispose(v16, 8);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  PSSH::SysHealthData::updateSystemHealth(*v1, (*(*(a1 + 32) + 8) + 40), &__block_literal_global_24);
  v2 = *v1;

  return PSSH::SysHealthData::livenessClear(v2);
}

void ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_4;
  v5[3] = &__block_descriptor_tmp_9_1;
  v5[4] = v2;
  v5[5] = a2;
  dispatch_group_async(v3, v4, v5);
}

void ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    PSSH::SysHealthManager::monitorLiveness(v1);
  }
}

void PSSH::SysHealthManager::monitorLiveness(dispatch_group_t *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x4002000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__14;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v2 = mach_absolute_time();
  dispatch_group_enter(this[2]);
  PSSH::SysHealthData::getCurrSystemHealth(*this, &v26);
  if (v26.n128_u32[3])
  {
    v5 = *this;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 0x40000000;
    v17[2] = ___ZN4PSSH16SysHealthManager15monitorLivenessEv_block_invoke;
    v17[3] = &unk_279A49400;
    v17[4] = &v18;
    v17[5] = this;
    active = PSSH::SysHealthData::_for_each_active_liveness_node(v5, v17);
    if ((*(v19 + 63) & 0x8000000000000000) != 0)
    {
      if (!v19[6])
      {
LABEL_21:
        v12 = __PSSysHealthLogSharedInstance(active, v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v26.n128_u32[3];
          _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Polling for liveness. Next poll in %d secs", buf, 8u);
        }

        v13 = dispatch_time(0, 1000000000 * v26.n128_u32[3]);
        v14 = this[3];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN4PSSH16SysHealthManager15monitorLivenessEv_block_invoke_22;
        block[3] = &__block_descriptor_tmp_23;
        block[4] = this;
        dispatch_after(v13, v14, block);
        goto LABEL_24;
      }
    }

    else if (!*(v19 + 63))
    {
      goto LABEL_21;
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "\n");
    if ((v29 & 0x80u) == 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    if ((v29 & 0x80u) == 0)
    {
      v10 = v29;
    }

    else
    {
      v10 = v28;
    }

    std::string::append((v19 + 5), v9, v10);
    if (v29 < 0)
    {
      operator delete(*buf);
    }

    v11 = this[1];
    if (*(v19 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v19[5], v19[6]);
    }

    else
    {
      v16 = *(v19 + 5);
    }

    PSSH::SysHealthServer::reportEvent(v11, 0, v2, &v16.__r_.__value_.__l.__data_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

  *(this + 32) = 0;
  v8 = __PSSysHealthLogSharedInstance(v3, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "Stopping poll for liveness health", buf, 2u);
  }

LABEL_24:
  dispatch_group_leave(this[2]);
  _Block_object_dispose(&v18, 8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }
}

void sub_25EAF1F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  _Block_object_dispose(&a28, 8);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PSSH::SysHealthManager::remoteHasDied(PSSH::SysHealthManager *this, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__13;
  v30 = __Block_byref_object_dispose__14;
  std::string::basic_string[abi:ne200100]<0>(&v25, "PID: ");
  std::to_string(&v24, a2);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v25, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, ": ");
  if ((v23 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v33, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v32 = v10->__r_.__value_.__r.__words[2];
  v31 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v12 = mach_absolute_time();
  v14 = __PSSysHealthLogSharedInstance(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LODWORD(v33.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v33.__r_.__value_.__r.__words[0]) = a2;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_INFO, "Recording pid [%d] has died", &v33, 8u);
  }

  v15 = *this;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 0x40000000;
  v20[2] = ___ZN4PSSH16SysHealthManager13remoteHasDiedEi_block_invoke;
  v20[3] = &unk_279A493D8;
  v21 = a2;
  v20[4] = &v26;
  v20[5] = this;
  PSSH::SysHealthData::_for_each_active_session(v15, v20);
  std::string::basic_string[abi:ne200100]<0>(&v33, "\n");
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v33;
  }

  else
  {
    v16 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v33.__r_.__value_.__l.__size_;
  }

  std::string::append((v27 + 5), v16, v17);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v18 = *(this + 1);
  if (*(v27 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v27[5], v27[6]);
  }

  else
  {
    v19 = *(v27 + 5);
  }

  PSSH::SysHealthServer::reportEvent(v18, 1, v12, &v19.__r_.__value_.__l.__data_);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v26, 8);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }
}

void sub_25EAF22BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v40 - 144), 8);
  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN4PSSH16SysHealthManager13remoteHasDiedEi_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = 0;
    v6 = *(a1 + 40);
    do
    {
      while (1)
      {
        v7 = v2[5];
        if (*(v7 + 320) != *(a1 + 48) || (*(v7 + 324) & 1) == 0)
        {
          break;
        }

        *(v7 + 324) = 0;
        --*(a2 + 40);
        v2 = *v2;
        v5 = 1;
        if (!v2)
        {
          goto LABEL_10;
        }
      }

      v2 = *v2;
    }

    while (v2);
    if ((v5 & 1) == 0)
    {
      return;
    }

LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(&v15, " , ");
    v8 = *(a2 + 71);
    if (v8 >= 0)
    {
      v9 = (a2 + 48);
    }

    else
    {
      v9 = *(a2 + 48);
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 71);
    }

    else
    {
      v10 = *(a2 + 56);
    }

    v11 = std::string::insert(&v15, 0, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v17 >= 0)
    {
      v14 = HIBYTE(v17);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append((*(*(a1 + 32) + 8) + 40), v13, v14);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    PSSH::SysHealthData::cleanupSessionGraphsAfterProcessDeath(*v6, a2);
  }
}

void sub_25EAF24E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH16SysHealthManager15monitorLivenessEv_block_invoke(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (PSSH::SysHealthServer::checkDeadlineMisses(*(*(a1 + 40) + 8)))
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(v15, a2);
    v6 = __PSSysHealthLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = v15;
      if ((v16 & 0x80u) != 0)
      {
        v7 = v15[0];
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Deadline missed: %s", buf, 0xCu);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, " , ");
    if ((v16 & 0x80u) == 0)
    {
      v8 = v15;
    }

    else
    {
      v8 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = v15[1];
    }

    v10 = std::string::insert(&__p, 0, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v18 = v10->__r_.__value_.__r.__words[2];
    *buf = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    if (v18 >= 0)
    {
      v13 = HIBYTE(v18);
    }

    else
    {
      v13 = *&buf[8];
    }

    std::string::append((*(*(a1 + 32) + 8) + 40), v12, v13);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_25EAF269C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysHealthServer::SysHealthServer(_OWORD *a1, void *aBlock)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 4) = _Block_copy(aBlock);
  operator new();
}

void PSSH::SysHealthServer::~SysHealthServer(PSSH::SysHealthServer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    PSSH::SysHealthManager::~SysHealthManager(v2);
    MEMORY[0x25F8C7C50]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    PSSH::SysProcessMonitor::~SysProcessMonitor(v3);
    MEMORY[0x25F8C7C50]();
  }

  _Block_release(*(this + 4));
  v4 = *(this + 5);
  if (v4)
  {
    _Block_release(v4);
  }
}

void *PSSH::SysHealthServer::reportEventTo(uint64_t a1, void *a2, void *aBlock)
{
  *(a1 + 24) = *a2;
  result = _Block_copy(aBlock);
  *(a1 + 40) = result;
  return result;
}

void PSSH::SysHealthServer::reportEvent(uint64_t a1, uint64_t a2, uint64_t a3, const std::string::value_type **a4)
{
  v4 = a4;
  v6 = a2;
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) && (v7 = *(a1 + 24)) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1174405120;
    v10[2] = ___ZN4PSSH15SysHealthServer11reportEventENS_11pssh_reportEyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_30;
    v12 = a2;
    v10[4] = a1;
    v10[5] = a3;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a4, a4[1]);
    }

    else
    {
      __p = *a4;
    }

    dispatch_async(v7, v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    *buf = 134218754;
    v14 = a3;
    v15 = 1024;
    v16 = v6;
    v17 = 2080;
    v18 = v4;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_INFO, "Machtime: %llu event: %d reason: %s reported: %d", buf, 0x22u);
  }
}

void ___ZN4PSSH15SysHealthServer11reportEventENS_11pssh_reportEyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  (*(v2 + 16))(v2, v3, v1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF2A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysHealthServer::handleMessageNotifyClientDeath(PSSH::SysHealthManager **this, const PSSG::MessageNotifyClientDeath *a2)
{
  PSSH::SysHealthManager::remoteHasDied(this[1], *(a2 + 124));
  v4 = this[2];
  v5 = *(a2 + 124);

  PSSH::SysProcessMonitor::handleProcessDied(v4, v5);
}

void PSSH::SysHealthServer::handleRequestAllGraphs(uint64_t a1, PSSG::MessageSHRequestAllGraphs *this, uint64_t a3)
{
  v5 = *(a1 + 8);
  PSSG::MessageSHRequestAllGraphs::getFilter(this, __p);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___ZN4PSSH15SysHealthServer22handleRequestAllGraphsERKN4PSSG25MessageSHRequestAllGraphsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v6[3] = &unk_279A49448;
  v6[4] = a3;
  v6[5] = this;
  PSSH::SysHealthManager::remoteHasRequestedGraphs(v5, __p, v6);
}

void sub_25EAF2BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer22handleRequestAllGraphsERKN4PSSG25MessageSHRequestAllGraphsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v15[62] = *MEMORY[0x277D85DE8];
  v4 = PSSG::MessageBase::MessageBase(v15, 33, (*(a1 + 40) + 16), a2, 376 * a3);
  v15[0] = &unk_2870BB7B8;
  v6 = __PSSysHealthLogSharedInstance(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = (v7 + 16);
    if (*(v7 + 39) < 0)
    {
      v8 = *v8;
    }

    PSSG::MessageSHPublishAllGraphs::description(v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v12 = v8;
    v13 = 2080;
    v14 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v15);
}

void sub_25EAF2D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleRequestProcessMonitorStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH15SysHealthServer32handleRequestProcessMonitorStatsERKN4PSSG35MessageSHRequestProcessMonitorStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v5[3] = &unk_279A49470;
  v5[4] = a3;
  PSSH::SysProcessMonitor::getProcessMonitorStatistics(v4, &v6, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer32handleRequestProcessMonitorStatsERKN4PSSG35MessageSHRequestProcessMonitorStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v17[62] = *MEMORY[0x277D85DE8];
  v6 = PSSG::MessageBase::MessageBase(v17, 34, a2, a3, 144 * a4);
  v17[0] = &unk_2870BB9C0;
  v8 = __PSSysHealthLogSharedInstance(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a2;
    if (*(a2 + 23) < 0)
    {
      v9 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Report Process Monitor statistics");
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v14 = v9;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v17);
}

void sub_25EAF2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleRequestSystemActionStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH15SysHealthServer30handleRequestSystemActionStatsERKN4PSSG33MessageSHRequestSystemActionStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v5[3] = &unk_279A49498;
  v5[4] = a3;
  PSSH::SysProcessMonitor::getSystemActionStatistics(v4, &v6, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF3090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer30handleRequestSystemActionStatsERKN4PSSG33MessageSHRequestSystemActionStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v17[62] = *MEMORY[0x277D85DE8];
  v6 = PSSG::MessageBase::MessageBase(v17, 35, a2, a3, 152 * a4);
  v17[0] = &unk_2870BBA08;
  v8 = __PSSysHealthLogSharedInstance(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a2;
    if (*(a2 + 23) < 0)
    {
      v9 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Report System Action statistics");
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v14 = v9;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v17);
}

void sub_25EAF320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleRequestProcessMonitorEventLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH15SysHealthServer35handleRequestProcessMonitorEventLogERKN4PSSG38MessageSHRequestProcessMonitorEventLogEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v5[3] = &unk_279A494C0;
  v5[4] = a3;
  PSSH::SysProcessMonitor::getProcessMonitorEventLog(v4, &v6, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF3304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer35handleRequestProcessMonitorEventLogERKN4PSSG38MessageSHRequestProcessMonitorEventLogEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v16[62] = *MEMORY[0x277D85DE8];
  v5 = PSSG::MessageBase::MessageBase(v16, 36, a2, a3, 4800);
  v16[0] = &unk_2870BBA50;
  v7 = __PSSysHealthLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = a2;
    if (*(a2 + 23) < 0)
    {
      v8 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Report Process Monitor event log");
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315394;
    v13 = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v16);
}

void sub_25EAF3478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleCollectDPTailspin(PSSH::SysHealthServer *this, const PSSG::MessageCollectDPTailspin *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "polarisd was asked to collect a DP tailspin on behalf of ");
  v4 = *(a2 + 39);
  if (v4 >= 0)
  {
    v5 = a2 + 16;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 39);
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = std::string::append(&v22, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v23, ". Received reason: ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = *(a2 + 7);
  if (*(v11 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(v11 + 16), *(v11 + 24));
  }

  else
  {
    v21 = *(v11 + 16);
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v21;
  }

  else
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v24, v12, size);
  v15 = v14->__r_.__value_.__r.__words[0];
  v16 = v14->__r_.__value_.__l.__size_;
  v25[0] = v14->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
  v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v18 = *(this + 3);
  if (!v18)
  {
    goto LABEL_29;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH15SysHealthServer23handleCollectDPTailspinERKN4PSSG24MessageCollectDPTailspinE_block_invoke;
  block[3] = &__block_descriptor_tmp_11_1;
  if (v17 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v15, v16);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v15;
    __p.__r_.__value_.__l.__size_ = v16;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v25[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&__p.__r_.__value_.__s + 23) = v17;
  }

  dispatch_async(v18, block);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v17 < 0)
  {
LABEL_30:
    operator delete(v15);
  }
}

void ___ZN4PSSH15SysHealthServer23handleCollectDPTailspinERKN4PSSG24MessageCollectDPTailspinE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  if (*(a1 + 55) >= 0)
  {
    v3 = a1 + 32;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = PSUtilitiesDiagnosticPipelineRequestTailspin(1, v3);
  if ((v4 & 1) == 0)
  {
    v6 = __PSSysHealthLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 55) >= 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = *(a1 + 32);
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Could not produce a Diagnostic Pipeline tailspin for %s.", &v8, 0xCu);
    }
  }
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void PSSG::MessageSHReportProcessMonitorStats::~MessageSHReportProcessMonitorStats(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHReportSystemActionStats::~MessageSHReportSystemActionStats(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHReportProcessMonitorEventLog::~MessageSHReportProcessMonitorEventLog(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void ps_syshealth_create_server(uint64_t a1, void *a2, uint64_t a3)
{
  serverComms = a1;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  pssh_global_queue = dispatch_queue_create("PSSH-dispatch", v3);
  operator new();
}

uint64_t __ps_syshealth_create_server_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const UInt8 *a4)
{
  Mutable = CFDataCreateMutable(0, 0);
  v7 = *(a4 + 23);
  if (v7 < 0)
  {
    v8 = a4;
    a4 = *a4;
    v7 = *(v8 + 1);
  }

  CFDataAppendBytes(Mutable, a4, v7);
  v9 = *(*(a1 + 32) + 16);

  return v9();
}

uint64_t ps_syshealth_release_server()
{
  dispatch_release(pssh_global_queue);
  PSSG::ServerComms::registerSysHealthServer(serverComms, 0);
  result = healthServer;
  if (healthServer)
  {
    PSSH::SysHealthServer::~SysHealthServer(healthServer);
    result = MEMORY[0x25F8C7C50]();
  }

  healthServer = 0;
  return result;
}

void ps_telemetry_setup_filter_buffer(uint64_t result, uint64_t a2)
{
  if (qword_27FD132F8 != -1)
  {
    ps_telemetry_setup_filter_buffer_cold_1();
  }
}

uint64_t __ps_telemetry_setup_filter_buffer_block_invoke()
{
  filterBufferReader = ps_buffer_create_serial_data_reader();
  result = ps_buffer_get_serial_data_read_buffer();
  _MergedGlobals = result;
  return result;
}

uint64_t ps_telemetry_release_filter_buffer()
{
  result = filterBufferReader;
  if (filterBufferReader)
  {
    return ps_buffer_destroy_serial_data_reader();
  }

  return result;
}

void ps_telemetry_init_daemon()
{
  context[12305] = ps_buffer_create_serial_data_writer();
  context[0] = ps_buffer_get_serial_data_write_buffer();
  atomic_store(0, context[0]);
  context[12306] = ps_buffer_create_serial_data_writer();
  v0 = ps_buffer_get_serial_data_write_buffer();
  context[12297] = v0;
  atomic_store(0, v0);
  v1 = 0x300Au;
  context[v1] = ps_buffer_create_group_writer_with_options();
  MEMORY[0x25F8C8900]();
  MEMORY[0x25F8C8C70](context[v1]);
  v2 = ps_buffer_get_write_buffers();
  context[12300] = v2;
  v3 = *(v2 + 8);
  v4 = 0x300Bu;
  context[v4] = v3;
  v5 = 0x300Du;
  v6 = context[v5] + 1;
  context[v5] = v6;
  *v3 = v6;
  *(context[v4] + 8) = 0;
  context[12302] = 0;
  memset(&v12, 0, 32);
  v12.compare = compare_timestamps;
  context[12296] = CFBinaryHeapCreate(0, 4096, &v12, 0);
  v7 = ps_gsm_map_shared();
  context[12307] = v7;
  context[12308] = ps_gsm_create_source(v7, 1, "polaris.telemetry");
  serial_dispatch_queue = ps_util_create_serial_dispatch_queue("polaris.telemetry.daemon", 37);
  context[12304] = serial_dispatch_queue;
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, serial_dispatch_queue);
  v10 = 0x300Fu;
  context[v10] = v9;
  dispatch_source_set_timer(v9, 0, 0x5F5E100uLL, 0x989680uLL);
  dispatch_source_set_event_handler_f(context[v10], process_thread_buffers);
  v11 = 0x3015u;
  context[v11] = xpc_connection_create_mach_service("com.apple.polaris.telemetry", 0, 1uLL);
  context[12310] = dispatch_queue_create("telemetry.enablementQueue", 0);
  context[12311] = CFSetCreateMutable(0, 0, 0);
  xpc_connection_set_event_handler(context[v11], &__block_literal_global_26);
  xpc_connection_activate(context[v11]);
}

void ps_telemetry_destroy_daemon(uint64_t a1, uint64_t a2)
{
  if (context[0] && (v2 = atomic_load(context[0]), (v2 & 1) != 0))
  {
    v3 = __PSTelemetryLogSharedInstance(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_ERROR, "Daemon destroyed while telemetry was enabled", v5, 2u);
    }
  }

  else
  {
    if (qword_27FD2B378)
    {
      dispatch_source_cancel(qword_27FD2B378);
      dispatch_resume(qword_27FD2B378);
      dispatch_release(qword_27FD2B378);
      qword_27FD2B378 = 0;
      dispatch_release(qword_27FD2B380);
    }

    if (qword_27FD2B340)
    {
      CFRelease(qword_27FD2B340);
      qword_27FD2B340 = 0;
    }

    if (qword_27FD2B350)
    {
      ps_buffer_delete_write_buffer();
      qword_27FD2B350 = 0;
    }

    if (qword_27FD2B390)
    {
      ps_buffer_destroy_serial_data_writer();
      qword_27FD2B390 = 0;
    }

    if (qword_27FD2B388)
    {
      ps_buffer_destroy_serial_data_writer();
      qword_27FD2B388 = 0;
    }

    if (qword_27FD2B3A8)
    {
      xpc_release(qword_27FD2B3A8);
      qword_27FD2B3A8 = 0;
    }

    if (qword_27FD2B3B0)
    {
      dispatch_release(qword_27FD2B3B0);
      qword_27FD2B3B0 = 0;
    }

    if (qword_27FD2B3B8)
    {
      CFRelease(qword_27FD2B3B8);
      qword_27FD2B3B8 = 0;
    }

    if (qword_27FD2B3A0)
    {
      ps_gsm_remove_source(qword_27FD2B398, qword_27FD2B3A0);
    }

    v4 = qword_27FD2B398;
    if (qword_27FD2B398)
    {

      ps_gsm_remove_gsm(v4);
    }
  }
}

void ps_telemetry_send_session_event(const char *a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v8, PSTelemetrySessionEventKey[0], a3, a4);
  xpc_dictionary_set_uint64(v8, PSTelemetrySessionEventTypeKey[0], a2);
  xpc_dictionary_set_string(v8, PSTelemetrySessionEventSessionNameKey, a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ps_telemetry_send_session_event_block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = v8;
  dispatch_sync(qword_27FD2B3B0, block);
  xpc_release(v8);
}

uint64_t compare_timestamps(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + *(a1 + 16) + 16);
  v3 = *(*(a2 + 8) + *(a2 + 16) + 16);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

unint64_t **process_thread_buffers()
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v31 = 0u;
  v30 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  qword_27FD2B330 = qword_27FD2B338;
  qword_27FD2B338 = v30;
  v0 = atomic_load(qword_27FD2B348);
  byte_27FD2B30A = v0;
  if (v0)
  {
    v1 = 0;
    v2 = 0x3001u;
    do
    {
      v3 = *(&context[12289] + v1 + 3);
      v4 = atomic_load((context[12297] + 34 * v1 + 1));
      if (v3 < v4)
      {
        *(&context[12289] + v1 + 3) = v4;
        v5 = context[v2];
        do
        {
          v6 = &context[3 * v5];
          snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v1);
          v6[1] = ps_buffer_create_serial_data_reader();
          buffer = ps_buffer_get_serial_data_read_buffer();
          v8 = context[v2];
          v6[2] = buffer;
          v6[3] = 0;
          v5 = v8 + 1;
          LOWORD(context[v2]) = v5;
          ++v3;
        }

        while (v4 != v3);
      }

      ++v1;
    }

    while (v1 < byte_27FD2B30A);
  }

  if (word_27FD2B308)
  {
    v9 = 0;
    v10 = &unk_27FD13308;
    do
    {
      test_and_add_to_heap(v10);
      ++v9;
      v10 += 24;
    }

    while (v9 < word_27FD2B308);
  }

  if (CFBinaryHeapGetCount(qword_27FD2B340) >= 1)
  {
    do
    {
      Minimum = CFBinaryHeapGetMinimum(qword_27FD2B340);
      *&v31 = v31 + 1;
      v12 = *(Minimum + 1) + *(Minimum + 2);
      v13 = qword_27FD2B370;
      v14 = ps_telemetry_padding_for_alignment(qword_27FD2B370, 8) + 48;
      v15 = ps_telemetry_padding_for_alignment(v14 + v13, *(v12 + 56)) + v14 + *(v12 + 48);
      if ((qword_27FD2B370 + v15) >= 0x1FFF1)
      {
        swap_global_buffer_and_notify();
        v16 = ps_telemetry_padding_for_alignment(0, 8) + 48;
        v15 = ps_telemetry_padding_for_alignment(v16, *(v12 + 56)) + v16 + *(v12 + 48);
      }

      ++*(qword_27FD2B358 + 8);
      qword_27FD2B370 += ps_telemetry_padding_for_alignment(qword_27FD2B370, 8);
      v17 = (qword_27FD2B358 + qword_27FD2B370);
      v18 = *(v12 + 16);
      v19 = *(v12 + 48);
      v17[2] = *(v12 + 32);
      v17[3] = v19;
      v17[1] = v18;
      if (*(v12 + 16) < qword_27FD2B330)
      {
        *(v17 + 2) = qword_27FD2B330;
      }

      qword_27FD2B370 += 48;
      v20 = qword_27FD2B370 + ps_telemetry_padding_for_alignment(qword_27FD2B370, *(v12 + 56));
      qword_27FD2B370 = v20;
      v21 = *(Minimum + 2);
      if (*(v12 + 48) >= (32704 - v21))
      {
        v22 = 32704 - v21;
      }

      else
      {
        v22 = *(v12 + 48);
      }

      memcpy((qword_27FD2B358 + v20 + 16), (*(Minimum + 1) + v21 + 64), v22);
      v23 = qword_27FD2B370 + v22;
      qword_27FD2B370 += v22;
      v24 = *(v12 + 48);
      v25 = v24 >= v22;
      v26 = v24 - v22;
      if (v26 != 0 && v25)
      {
        memcpy((qword_27FD2B358 + v23 + 16), (*(Minimum + 1) + 16), v26);
        qword_27FD2B370 += v26;
      }

      *(&v31 + 1) += v15;
      CFBinaryHeapRemoveMinimumValue(qword_27FD2B340);
      v27 = ps_telemetry_total_size(*(Minimum + 2), *(*(Minimum + 1) + *(Minimum + 2) + 48));
      atomic_fetch_add(*(Minimum + 1), -v27);
      *(Minimum + 2) = (*(Minimum + 2) + v27) % 0x7FF0uLL;
      test_and_add_to_heap(Minimum);
    }

    while (CFBinaryHeapGetCount(qword_27FD2B340) > 0);
  }

  v28 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *&v32 = qword_27FD2B370;
  *(&v32 + 1) = v28;
  if (qword_27FD2B370)
  {
    swap_global_buffer_and_notify();
  }

  return ps_telemetry_emit_event_internal(6, &v30, 0x28uLL, 8);
}

void test_and_add_to_heap(void *value)
{
  if (atomic_load(*(value + 1)))
  {
    v2 = atomic_load((*(value + 1) + 8));
    if (v2)
    {
      *(value + 2) = 0;
      atomic_store(0, (*(value + 1) + 8));
    }

    if (*(*(value + 1) + *(value + 2) + 16) <= qword_27FD2B338)
    {
      CFBinaryHeapAddValue(qword_27FD2B340, value);
    }
  }
}

uint64_t swap_global_buffer_and_notify()
{
  resource_view_index = ps_buffer_get_resource_view_index();
  v2 = qword_27FD2B368;
  MEMORY[0x25F8C8E80](qword_27FD2B350, resource_view_index, &v2);
  ps_buffer_release_write_buffers();
  ps_gsm_notify(qword_27FD2B398, qword_27FD2B3A0, qword_27FD2B368 & 0xFFFFFFFFFFFFLL);
  result = ps_buffer_get_write_buffers();
  qword_27FD2B358 = *(result + 8);
  qword_27FD2B360 = result;
  *qword_27FD2B358 = ++qword_27FD2B368;
  *(qword_27FD2B358 + 8) = 0;
  qword_27FD2B370 = 0;
  return result;
}

void __create_enablement_xpc_service_block_invoke(uint64_t a1, xpc_connection_t connection)
{
  v24 = *MEMORY[0x277D85DE8];
  if (connection == MEMORY[0x277D863F8])
  {
    v12 = __PSTelemetryLogSharedInstance(a1, connection);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v13 = "Daemon received XPC_ERROR_CONNECTION_INVALID";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 2;
    goto LABEL_13;
  }

  pid = xpc_connection_get_pid(connection);
  value = xpc_connection_copy_entitlement_value();
  if (value)
  {
    v6 = value;
    value = MEMORY[0x25F8C9F10]();
    if (value == MEMORY[0x277D86448])
    {
      value = xpc_BOOL_get_value(v6);
      if (value)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = __PSTelemetryLogSharedInstance(value, v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 134218240;
    v21 = connection;
    v22 = 1024;
    v23 = pid;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) does not have the correct entitlements to access Telemetry Server", buf, 0x12u);
  }

  is_internal_build = ps_util_is_internal_build(v8, v9);
  if (is_internal_build)
  {
LABEL_8:
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __create_enablement_xpc_service_block_invoke_14;
    v18[3] = &__block_descriptor_tmp_16_0;
    v18[4] = connection;
    v19 = pid;
    xpc_connection_set_event_handler(connection, v18);
    xpc_connection_set_target_queue(connection, qword_27FD2B3B0);
    xpc_connection_activate(connection);
    return;
  }

  v17 = __PSTelemetryLogSharedInstance(is_internal_build, v11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v21 = connection;
    v22 = 1024;
    v23 = pid;
    v13 = "Rejecting connection %p (pid %d)";
    v14 = v17;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 18;
LABEL_13:
    _os_log_impl(&dword_25EA3A000, v14, v15, v13, buf, v16);
  }
}

void __create_enablement_xpc_service_block_invoke_14(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a2 != MEMORY[0x277D863F8])
  {
    v4 = MEMORY[0x25F8C9F10](a2);
    if (v4 != MEMORY[0x277D86468])
    {
      v6 = __PSTelemetryLogSharedInstance(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v27 = 134218498;
        v28 = v7;
        v29 = 1024;
        v30 = v8;
        v31 = 2080;
        v32 = MEMORY[0x25F8C9E20](a2);
        _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "connection %p (pid %d) got unexpected message %s", &v27, 0x1Cu);
      }

      return;
    }

    if (xpc_dictionary_get_string(a2, PSTelemetrySessionEventTypeKey[0]))
    {
      CFSetApplyFunction(qword_27FD2B3B8, MEMORY[0x277D864E0], a2);
    }

    v12 = xpc_dictionary_get_BOOL(a2, "telemetryWanted");
    v13 = v12;
    v15 = __PSTelemetryLogSharedInstance(v12, v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v16)
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v27 = 134218240;
        v28 = v17;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) wants telemetry", &v27, 0x12u);
      }

      v19 = *(a1 + 32);
      Count = CFSetGetCount(qword_27FD2B3B8);
      v22 = __PSTelemetryLogSharedInstance(Count, v21);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (Count)
      {
        if (v23)
        {
          v24 = CFSetGetCount(qword_27FD2B3B8);
          v27 = 134217984;
          v28 = v24;
          _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Telemetry already active with count: %ld", &v27, 0xCu);
        }
      }

      else
      {
        if (v23)
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Enabling telemetry", &v27, 2u);
        }

        atomic_store(1u, context[0]);
        dispatch_resume(context[12303]);
      }

      CFSetAddValue(qword_27FD2B3B8, v19);
      return;
    }

    if (v16)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = 134218240;
      v28 = v25;
      v29 = 1024;
      v30 = v26;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) no longer wants telemetry", &v27, 0x12u);
    }

LABEL_8:
    connection_no_longer_wants_telemetry(*(a1 + 32));
    return;
  }

  v9 = __PSTelemetryLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v27 = 134218240;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) invalidated", &v27, 0x12u);
  }

  if (CFSetContainsValue(qword_27FD2B3B8, *(a1 + 32)))
  {
    goto LABEL_8;
  }
}

void connection_no_longer_wants_telemetry(void *value)
{
  v9 = *MEMORY[0x277D85DE8];
  if (CFSetContainsValue(qword_27FD2B3B8, value))
  {
    CFSetRemoveValue(qword_27FD2B3B8, value);
    if (!CFSetGetCount(qword_27FD2B3B8))
    {
      v3 = __PSTelemetryLogSharedInstance(0, v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "No more active clients; disabling telemetry", &v7, 2u);
      }

      atomic_store(0, context[0]);
      dispatch_suspend(context[12303]);
      dispatch_async_f(context[12304], 0, process_thread_buffers);
    }
  }

  else
  {
    v4 = MEMORY[0x25F8C9E20](value);
    v6 = __PSTelemetryLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = v4;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Call to connection_no_longer_wants_telemetry for a connection not present in connectionsWantingTelemetry: %s", &v7, 0xCu);
    }

    free(v4);
  }
}

uint64_t __PSTelemetryLogSharedInstance(uint64_t a1, uint64_t a2)
{
  if (__PSTelemetryLogSharedInstance_onceToken != -1)
  {
    __PSTelemetryLogSharedInstance_cold_1();
  }

  return sharedInstance_4;
}

void ps_telemetry_init_reader(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  ps_telemetry_setup_filter_buffer(a1, a2);
  context_0[0] = ps_buffer_create_group_reader();
  qword_27FD2B3D8 = 0;
  qword_27FD2B4F0 = ps_buffer_create_serial_data_reader();
  qword_27FD2B3E0 = ps_buffer_get_serial_data_read_buffer();
  v2 = getpid();
  if (!proc_name(v2, xmmword_27FD2B658, 0x80u))
  {
    strcpy(xmmword_27FD2B658, "Unknown Process");
  }

  error_out = 0;
  v3 = getpid();
  v4 = snprintf(xmmword_27FD2B658, 0x80uLL, "%s-%d", xmmword_27FD2B658, v3);
  if (v4 >= 0x80)
  {
    v6 = __PSTelemetryLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = xmmword_27FD2B658;
      v21 = 1024;
      v22 = getpid();
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Context Session Name for telemetry reader %s client pid %d has beentruncated", buf, 0x12u);
    }
  }

  v7 = xpc_session_create_mach_service("com.apple.polaris.systemgraph_v2", 0, XPC_SESSION_CREATE_NONE, &error_out);
  qword_27FD2B650 = v7;
  if (error_out)
  {
    ps_telemetry_init_reader_cold_1(buf, error_out);
  }

  v8 = __PSTelemetryLogSharedInstance(v7, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = xmmword_27FD2B658;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Telemetry client %s was able to establish connection withPS_POLARISD_SYSGRAPH_XPC_SERVICE", buf, 0xCu);
  }

  qword_27FD2B608 = ps_gsm_map_shared();
  ps_gsm_assign_system_graph_session(qword_27FD2B608, qword_27FD2B650);
  v18 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = getpid();
  populateTelemetryReaderInfo(v9, v10, xmmword_27FD2B658, v11, "polaris.telemetry", "polaris.telemetry");
  v12 = xpc_session_send_message_with_reply_sync(qword_27FD2B650, v9, &v18);
  if (!v12 && v18)
  {
    ps_telemetry_init_reader_cold_3(buf, v18);
  }

  value = xpc_dictionary_get_value(v12, "polaris.telemetry");
  if (!value)
  {
    ps_telemetry_init_reader_cold_2(buf);
  }

  uint64 = xpc_dictionary_get_uint64(value, "gst_idx");
  v16 = __PSTelemetryLogSharedInstance(uint64, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v20 = uint64;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEBUG, "Received a reply for reserving GST, gstIndex = %llu", buf, 0xCu);
  }

  qword_27FD2B610 = ps_gsm_get_gst(qword_27FD2B608, uint64);
  xpc_release(v10);
  xpc_release(v9);
  qword_27FD2B620 = dispatch_queue_create("com.apple.polaris.telemetry", 0);
  qword_27FD2B628 = xpc_connection_create_mach_service("com.apple.polaris.telemetry", qword_27FD2B620, 0);
  xpc_connection_set_event_handler(qword_27FD2B628, &__block_literal_global_42);
  xpc_connection_activate(qword_27FD2B628);
  byte_27FD2B4E8 = 1;
}

const char *ps_telemetry_get_string(unsigned int a1, uint64_t a2)
{
  if (a1 == 0xFFFF)
  {
    return "Unavailable";
  }

  buffer = context_0[a2 + 3];
  if (!buffer)
  {
    v4 = &context_0[a2];
    v4[37] = ps_buffer_create_serial_data_reader();
    buffer = ps_buffer_get_serial_data_read_buffer();
    v4[3] = buffer;
  }

  return (buffer + 130 * a1 + 4);
}

void ps_telemetry_deinit_reader()
{
  if (context_0[0])
  {
    ps_buffer_delete_read_buffer();
  }

  if (qword_27FD2B4F0)
  {
    ps_buffer_destroy_serial_data_reader();
  }

  for (i = 0; i != 32; ++i)
  {
    if (context_0[i + 37])
    {
      ps_buffer_destroy_serial_data_reader();
    }
  }

  ps_telemetry_release_filter_buffer();
  xpc_release(qword_27FD2B628);
  dispatch_release(qword_27FD2B620);
  xpc_session_cancel(qword_27FD2B650);
  v1 = qword_27FD2B650;

  xpc_release(v1);
}

uint64_t ps_telemetry_start_reader(NSObject *a1, const void *a2)
{
  if (a1)
  {
    v3 = a1;
    dispatch_retain(a1);
  }

  else
  {
    v3 = dispatch_queue_create("polaris.telemetry", 0);
  }

  qword_27FD2B5F8 = v3;
  qword_27FD2B600 = _Block_copy(a2);
  v4 = _Block_copy(&__block_literal_global_28);
  result = pthread_create(&qword_27FD2B618, 0, workloop, v4);
  if (result)
  {
    ps_telemetry_start_reader_cold_1(&v6);
  }

  return result;
}

void __ps_telemetry_start_reader_block_invoke(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= a3)
  {
    v4 = a2;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      qword_27FD2B3D8 = v4;
      buffers_with_frameid = ps_buffer_get_read_buffers_with_frameid();
      v11 = buffers_with_frameid == 0;
      if (buffers_with_frameid)
      {
        v12 = *(buffers_with_frameid + 8);
        if (qword_27FD2B3D8 != *v12)
        {
          __ps_telemetry_start_reader_block_invoke_cold_1();
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __process_buffers_in_range_reader_block_invoke;
        block[3] = &__block_descriptor_tmp_37;
        v20 = v5;
        v16 = 8;
        v15 = xmmword_25EB78600;
        block[4] = v8;
        v17 = v6;
        v18 = v7;
        v19 = v12;
        dispatch_async_and_wait(qword_27FD2B5F8, block);
        ps_buffer_release_read_buffers();
      }

      else
      {
        v13 = __PSTelemetryLogSharedInstance(0, v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v22 = v4;
          _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Dropped global telemetry buffer %llu", buf, 0xCu);
        }

        v7 = v4;
        if (!v5)
        {
          v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v7 = v4;
          v6 = v4;
        }
      }

      ++v4;
      v5 = v11;
    }

    while (v4 <= a3);
  }
}

uint64_t workloop(void (**a1)(void, void))
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pthread_setname_np("Telemetry workloop");
  if (v2)
  {
    v4 = v2;
    v5 = __PSTelemetryLogSharedInstance(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "Telemetry workloop";
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "pthread_setname_np failed with name %s and return code %d", v12, 0x12u);
    }
  }

  *v12 = 0;
  v6 = 0x26906FC00020C49BLL;
  if (ps_gsm_wait_gst(qword_27FD2B608, qword_27FD2B610, v12, v6) != 1)
  {
    v7 = 1;
    do
    {
      if (v7)
      {
        v8 = *v12 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = qword_27FD2B3D8 + 1;
      }

      a1[2](a1, v8);
      *v12 = 0;
      v9 = 0x26906FC00020C49BLL;
      v10 = ps_gsm_wait_gst(qword_27FD2B608, qword_27FD2B610, v12, v9);
      v7 = 0;
    }

    while (v10 != 1);
  }

  _Block_release(a1);
  return 0;
}

void ps_telemetry_stop_reader()
{
  remove_remote_gst();
  pthread_join(qword_27FD2B618, 0);
  dispatch_release(qword_27FD2B5F8);
  v0 = qword_27FD2B600;

  _Block_release(v0);
}

void remove_remote_gst()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = getpid();
  populateGraphSetInfo(v0, 2uLL, xmmword_27FD2B658, v1);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "graph_name", "polaris.telemetry");
  gst_index = ps_gsm_get_gst_index(qword_27FD2B610, v3);
  xpc_dictionary_set_uint64(v2, "gst_idx", gst_index);
  appendGraphInfotoGraphSetInfo(v2, v0);
  v5 = xpc_session_send_message(qword_27FD2B650, v0);
  if (v5)
  {
    remove_remote_gst_cold_1(&v6, v5);
  }

  xpc_release(v2);

  xpc_release(v0);
}

void ps_telemetry_enable()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, "telemetryWanted", 1);
  xpc_connection_send_message(qword_27FD2B628, v0);

  xpc_release(v0);
}

void ps_telemetry_disable()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, "telemetryWanted", 0);
  xpc_connection_send_message(qword_27FD2B628, v0);

  xpc_release(v0);
}

uint64_t __process_buffers_in_range_reader_block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 88) == 1)
  {
    result = (*(qword_27FD2B600 + 16))(qword_27FD2B600, result + 32, result + 64);
  }

  if (*(*(v1 + 80) + 8))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = ps_telemetry_padding_for_alignment(v3, 8);
      v5 = *(v1 + 80) + v4 + v3;
      v6 = ps_telemetry_padding_for_alignment(v4 + v3 + 48, *(v5 + 56)) + v4 + v3 + 48;
      result = (*(qword_27FD2B600 + 16))(qword_27FD2B600, v5 + 16, *(v1 + 80) + v6 + 16);
      v3 = *(v5 + 48) + v6;
      ++v2;
    }

    while (*(*(v1 + 80) + 8) > v2);
  }

  return result;
}

void __setup_xpc_connection_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 == MEMORY[0x277D863F8])
  {
    __setup_xpc_connection_block_invoke_cold_1();
  }

  v3 = MEMORY[0x25F8C9F10](a2);
  if (v3 == MEMORY[0x277D86468])
  {
    value = xpc_dictionary_get_value(a2, PSTelemetrySessionEventTypeKey[0]);
    if (value)
    {
      v7 = xpc_uint64_get_value(value);
      if (qword_27FD2B630)
      {
        v8 = v7;
        v9 = xpc_dictionary_get_value(a2, PSTelemetrySessionEventKey[0]);
        v10 = xpc_dictionary_get_value(a2, PSTelemetrySessionEventSessionNameKey);
        xpc_retain(v9);
        xpc_retain(v10);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __setup_xpc_connection_block_invoke_44;
        block[3] = &__block_descriptor_tmp_45;
        block[4] = v10;
        block[5] = v9;
        block[6] = v8;
        dispatch_async(qword_27FD2B630, block);
      }
    }
  }

  else
  {
    v5 = __PSTelemetryLogSharedInstance(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v13 = qword_27FD2B628;
      v14 = 2080;
      v15 = MEMORY[0x25F8C9E20](a2);
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "connection %p got unexpected message %s", buf, 0x16u);
    }
  }
}

void __setup_xpc_connection_block_invoke_44(uint64_t a1)
{
  string_ptr = xpc_string_get_string_ptr(*(a1 + 32));
  length = xpc_data_get_length(*(a1 + 40));
  bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 40));
  (*(qword_27FD2B638 + 16))(qword_27FD2B638, string_ptr, *(a1 + 48), bytes_ptr, length);
  xpc_release(*(a1 + 40));
  v5 = *(a1 + 32);

  xpc_release(v5);
}

char *OUTLINED_FUNCTION_3_10(void *a1, xpc_rich_error_t error)
{
  *a1 = 0;

  return xpc_rich_error_copy_description(error);
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

uint64_t ps_telemetry_total_size(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48 + a1) % 0x7FF0uLL;
  v3 = v2 - 32705 + (-v2 & 7);
  v4 = 32752 - v2;
  if (v3 >= 0xFFFFFFFFFFFF800FLL)
  {
    v4 = -((a2 + 48 + a1) % 0x7FF0uLL) & 7;
  }

  return v4 + a2 + 48;
}

void ps_telemetry_init_process(uint64_t result, uint64_t a2)
{
  if (ps_telemetry_init_process_onceToken != -1)
  {
    ps_telemetry_init_process_cold_1();
  }
}

void __ps_telemetry_init_process_block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = getpid();
  dword_27FD2EE80 = v0;
  ps_telemetry_setup_filter_buffer(v0, v1);
  proc_name(dword_27FD2EE80, setup_clientid_and_perProcess_buffers_name, 0x20u);
  qword_27FD2EEA0 = ps_buffer_create_serial_data_reader();
  buffer = ps_buffer_get_serial_data_read_buffer();
  v3 = atomic_load(buffer);
  v4 = buffer + 1;
  if (v3)
  {
    v5 = 0;
    if (!strncmp(setup_clientid_and_perProcess_buffers_name, (buffer + 3), 0x20uLL))
    {
LABEL_7:
      ps_telemetry_writer_context[0] = v4 + 34 * v5;
      qword_27FD2EE98 = ps_buffer_create_serial_data_reader();
      qword_27FD2DE78 = ps_buffer_get_serial_data_read_buffer();
      goto LABEL_9;
    }

    v6 = (buffer + 37);
    while (v3 - 1 != v5)
    {
      v7 = strncmp(setup_clientid_and_perProcess_buffers_name, v6, 0x20uLL);
      v6 += 34;
      ++v5;
      if (!v7)
      {
        if (v5 >= v3)
        {
          break;
        }

        goto LABEL_7;
      }
    }
  }

  add = atomic_fetch_add(buffer, 1u);
  ps_telemetry_writer_context[0] = v4 + 34 * add;
  qword_27FD2EE90 = ps_buffer_create_serial_data_writer();
  qword_27FD2DE78 = ps_buffer_get_serial_data_write_buffer();
  atomic_store(0, qword_27FD2DE78);
  strlcpy((ps_telemetry_writer_context[0] + 2), setup_clientid_and_perProcess_buffers_name, 0x20uLL);
  v9 = ps_telemetry_writer_context[0];
  atomic_store(add, (ps_telemetry_writer_context[0] + 1));
  atomic_store(0, v9);
LABEL_9:
  qword_27FD2EE88 = dispatch_queue_create("polaris.telemetry.bufferAllocation", 0);
  v10 = atomic_load(ps_telemetry_writer_context[0]);
  if (v10)
  {
    v11 = 0;
    v12 = &qword_27FD2DE88;
    do
    {
      v13 = atomic_load((ps_telemetry_writer_context[0] + 1));
      snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v13);
      serial_data_reader = ps_buffer_create_serial_data_reader();
      *(v12 - 1) = ps_buffer_get_serial_data_read_buffer();
      *v12 = 0;
      v12[2] = serial_data_reader;
      ++v11;
      v12 += 4;
    }

    while (v10 != v11);
  }

  dispatch_async(qword_27FD2EE88, &__block_literal_global_11_0);
  atomic_store(1u, byte_27FD2EE84);
}

uint64_t ps_telemetry_acquire_thread_buffer(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __ps_telemetry_acquire_thread_buffer_block_invoke;
  v4[3] = &unk_279A49650;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(qword_27FD2EE88, v4);
  dispatch_async(qword_27FD2EE88, &__block_literal_global_11_0);
  v1 = v6[3];
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void __ps_telemetry_acquire_thread_buffer_block_invoke(uint64_t *thread_buffer, uint64_t a2)
{
  v2 = thread_buffer;
  *&v19[5] = *MEMORY[0x277D85DE8];
  v3 = atomic_load(ps_telemetry_writer_context[0]);
  if (v3)
  {
    v4 = v3 + 1;
    v5 = &ps_telemetry_writer_context[4 * v3 - 2];
    while (v5[1] || atomic_load(*v5))
    {
      --v4;
      v5 -= 4;
      if (v4 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  *(*(thread_buffer[4] + 8) + 24) = v5;
  v7 = *(*(thread_buffer[4] + 8) + 24);
  if (v7 || (thread_buffer = allocate_thread_buffer(), *(*(v2[4] + 8) + 24) = thread_buffer, (v7 = *(*(v2[4] + 8) + 24)) != 0))
  {
    if (atomic_load(*v7))
    {
      __ps_telemetry_acquire_thread_buffer_block_invoke_cold_1();
    }

    atomic_store(1u, (**(*(v2[4] + 8) + 24) + 8));
    *(*(*(v2[4] + 8) + 24) + 8) = v2[5];
    v9 = __PSTelemetryLogSharedInstance(thread_buffer, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v2[5];
      v11 = *(**(*(v2[4] + 8) + 24) + 9);
      v18 = 67109376;
      v19[0] = v11;
      LOWORD(v19[1]) = 2048;
      *(&v19[1] + 2) = v10;
      v12 = "acquired buffer %d for thread %llu";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 18;
LABEL_12:
      _os_log_impl(&dword_25EA3A000, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    v16 = __PSTelemetryLogSharedInstance(thread_buffer, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v2[5];
      v18 = 134217984;
      *v19 = v17;
      v12 = "unable to acquire buffer for thread %llu";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
      goto LABEL_12;
    }
  }
}

uint64_t *allocate_thread_buffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = atomic_load(ps_telemetry_writer_context[0]);
  if (v0 == 128)
  {
    return 0;
  }

  v2 = atomic_load((ps_telemetry_writer_context[0] + 1));
  snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v2);
  v3 = &ps_telemetry_writer_context[4 * v0];
  v3[4] = ps_buffer_create_serial_data_writer();
  v4 = ps_buffer_get_serial_data_write_buffer();
  v3[2] = v4;
  v1 = v3 + 2;
  *(v4 + 9) = v0;
  atomic_store(0, *v1);
  atomic_store(1u, (*v1 + 8));
  v1[1] = 0;
  atomic_fetch_add(ps_telemetry_writer_context[0], 1u);
  v6 = __PSTelemetryLogSharedInstance(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = __str;
    v10 = 1024;
    v11 = v0;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "allocated local buffer with key: %s id: %d", buf, 0x12u);
  }

  return v1;
}

void ps_telemetry_release_thread_buffer(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ps_telemetry_release_thread_buffer_block_invoke;
  block[3] = &__block_descriptor_tmp_4_2;
  block[4] = a1;
  dispatch_async_and_wait(qword_27FD2EE88, block);
}

void __ps_telemetry_release_thread_buffer_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  ps_telemetry_writer_context[4 * *(*(a1 + 32) + 9) + 3] = 0;
  v3 = __PSTelemetryLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 9);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "released buffer %d", v5, 8u);
  }
}

void __manage_thread_buffer_watermark_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = atomic_load(ps_telemetry_writer_context[0]);
  v3 = __PSTelemetryLogSharedInstance(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    v14 = 67109376;
    v15 = v2;
    v16 = 1024;
    v17 = 128;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "thread buffer count: %d, max: %d", &v14, 0xEu);
  }

  if (v2)
  {
    if (v2 == 128)
    {
      return;
    }

    v6 = 0;
    v7 = &qword_27FD2DE88;
    v8 = v2;
    do
    {
      if (!*v7 && !atomic_load(*(v7 - 1)))
      {
        ++v6;
      }

      v7 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v10 = __PSTelemetryLogSharedInstance(v4, v5);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    v14 = 67109376;
    v15 = v6;
    v16 = 1024;
    v17 = 4;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEBUG, "free buffer count: %d, watermark: %d", &v14, 0xEu);
  }

  if (v6 <= 3u)
  {
    if (128 - v2 >= (4 - v6))
    {
      LOBYTE(v2) = 4 - v6;
    }

    else
    {
      LOBYTE(v2) = 0x80 - v2;
    }

    v13 = __PSTelemetryLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v2) = v2;
      v14 = 67109120;
      v15 = v2;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEBUG, "will allocate %d to meet watermark", &v14, 8u);
      if (!v2)
      {
        return;
      }
    }

    else
    {
      LODWORD(v2) = v2;
      if (!v2)
      {
        return;
      }
    }

    do
    {
      allocate_thread_buffer();
      LODWORD(v2) = v2 - 1;
    }

    while (v2);
  }
}

unint64_t **ps_telemetry_emit_event_internal(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  if (a3 >= 0x7FC1)
  {
    ps_telemetry_emit_event_internal_cold_1();
  }

  result = ps_telemetry_is_enabled();
  if (result)
  {
    v10 = atomic_load(&ps_telemetry_writer_context[514] + 4);
    if ((v10 & 1) == 0)
    {
      ps_telemetry_init_process(result, v9);
    }

    v11 = threadState();
    v13 = v11;
    if ((*v11 & 1) == 0)
    {
      ps_telemetry_init_thread(v11, v12);
    }

    result = buffer();
    if (*result)
    {
      v14 = result;
      if (*(v13 + 7))
      {
        v15 = ps_telemetry_total_size(*(v13 + 1), 32);
        v19 = atomic_load(*v14);
        if (v19 + v15 > 0x7FF0)
        {
          result = ps_telemetry_total_size(*(v13 + 1), a3);
          *(v13 + 3) = vadd_s32(*(v13 + 24), (result | 0x100000000));
          return result;
        }

        v27 = 0;
        v25 = *(v13 + 2);
        v20 = *(v13 + 3);
        v21.i64[0] = v20;
        v21.i64[1] = HIDWORD(v20);
        v26 = vextq_s8(v21, v21, 8uLL);
        LOWORD(v27) = *threadNameID(&threadNameID, v16, v17, v18);
        write_all(7, &v25, 0x20uLL, 8, v22);
        *(v13 + 3) = 0;
      }

      v23 = ps_telemetry_total_size(*(v13 + 1), a3);
      v24 = atomic_load(*v14);
      if (v24 + v23 >= 0x7FF1)
      {
        *(v13 + 6) = v23;
        *(v13 + 7) = 1;
        result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        *(v13 + 2) = result;
      }

      else
      {

        return write_all(a1, a2, a3, a4, v23);
      }
    }
  }

  return result;
}

_BYTE *ps_telemetry_init_thread(uint64_t a1, uint64_t a2)
{
  result = ps_telemetry_is_enabled();
  if (result)
  {
    return ps_telemetry_init_thread_cold_1();
  }

  return result;
}

void *write_all(uint64_t a1, char *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v10 = threadState();
  if ((*(v10 + 8) - 32705) <= 0xFFFFFFFFFFFF800ELL)
  {
    write_all_cold_1();
  }

  v11 = v10;
  v12 = buffer();
  v14 = *v12 + v13;
  *(v14 + 2) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v15 = atomic_load((ps_telemetry_writer_context[0] + 1));
  v14[36] = v15;
  *(v14 + 8) = dword_27FD2EE80;
  *(v14 + 3) = *threadid();
  *(v14 + 5) = a1;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  v16 = *v12;
  v17 = *(v11 + 8);
  if (32704 - v17 >= a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = 32704 - v17;
  }

  result = memcpy(v16 + v17 + 64, a2, v18);
  if (32704 - v17 < a3)
  {
    result = memcpy(v16 + 2, &a2[v18], a3 - v18);
  }

  *(v11 + 8) = (v17 + a5) % 0x7FF0;
  atomic_fetch_add(v16, a5);
  return result;
}

void ps_telemetry_deinit_thread(uint64_t a1, uint64_t a2)
{
  if (ps_telemetry_is_enabled())
  {
    ps_telemetry_deinit_thread_cold_1();
  }
}

uint64_t PLSSettingsEnableSuperframeIOSurfaceNames()
{
  v0 = +[PLSSettings currentSettings];
  v1 = [v0 enableSuperframeIOSurfaceNames];

  return v1;
}

uint64_t PLSSettingsEnableFastTransition()
{
  v0 = +[PLSSettings currentSettings];
  v1 = [v0 enableFastTransition];

  return v1;
}

uint64_t PLSSettingsSupportsVirtualFrameID(uint64_t a1, uint64_t a2)
{
  if (MGGetProductType() != 1036038801)
  {
    return 0;
  }

  v2 = +[PLSSettings currentSettings];
  v3 = ([v2 camDispConfig] >> 6) & 1;

  return v3;
}

uint64_t ps_is_virtual_device()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ps_is_virtual_device_block_invoke;
  block[3] = &unk_279A49740;
  block[4] = &v3;
  if (ps_is_virtual_device_onceToken != -1)
  {
    dispatch_once(&ps_is_virtual_device_onceToken, block);
  }

  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __ps_is_virtual_device_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MGGetProductType();
  *(*(*(a1 + 32) + 8) + 24) = v3 == 2141052862;
  v4 = __PLSLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "MGGetProductType:%ld, isVirtualDevice:%d", &v6, 0x12u);
  }
}

uint64_t sourceTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"RealityCamera"])
  {
    v2 = 4;
  }

  else
  {
    [v1 isEqualToString:@"IMU"];
    v2 = 1;
  }

  return v2;
}

id __PLSLogSharedInstance(uint64_t a1)
{
  if (__PLSLogSharedInstance_onceToken != -1)
  {
    __PLSLogSharedInstance_cold_1();
  }

  v2 = sharedInstance_5;

  return v2;
}

void ps_gsm_death_notifier_callback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (death_notifier_callback_queue && (+[PLSSettings currentSettings](PLSSettings, "currentSettings", a3), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 enableFastTransition], v6, v7))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __ps_gsm_death_notifier_callback_block_invoke;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = a4;
    v8[5] = a2;
    dispatch_sync(death_notifier_callback_queue, v8);
  }

  else
  {

    ps_gsm_handle_process_death(a4, a2);
  }
}

uint64_t sub_25EAFA458()
{
  v0 = sub_25EB6E1B8();
  __swift_allocate_value_buffer(v0, qword_27FD2EEA8);
  __swift_project_value_buffer(v0, qword_27FD2EEA8);

  return sub_25EB6E1A8();
}

id sub_25EAFA504(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_25EB6E258();

  return v3;
}

id PSCStrideConfig.init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25EB6E258();

  v8 = sub_25EB6E258();

  v9 = [v6 initWithGraphName:v7 sessionName:v8 stride:a5];

  return v9;
}

id PSCStrideConfig.init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (v5 + OBJC_IVAR___PSCStrideConfig_graphName);
  *v6 = a1;
  v6[1] = a2;
  v7 = (v5 + OBJC_IVAR___PSCStrideConfig_sessionName);
  *v7 = a3;
  v7[1] = a4;
  *(v5 + OBJC_IVAR___PSCStrideConfig_stride) = a5;
  v9.super_class = PSCStrideConfig;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_25EAFA7F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E6E6F6973736573;
  v4 = 0xEB00000000656D61;
  if (v2 != 1)
  {
    v3 = 0x656469727473;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D614E6870617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x4E6E6F6973736573;
  v8 = 0xEB00000000656D61;
  if (*a2 != 1)
  {
    v7 = 0x656469727473;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D614E6870617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25EB6E988();
  }

  return v11 & 1;
}

uint64_t sub_25EAFA900()
{
  sub_25EB6EA28();
  sub_25EB6E2D8();

  return sub_25EB6EA58();
}

uint64_t sub_25EAFA9AC(uint64_t a1)
{
  sub_25EB6E2D8();
}

uint64_t sub_25EAFAA44(uint64_t a1)
{
  sub_25EB6EA28();
  sub_25EB6E2D8();

  return sub_25EB6EA58();
}

unint64_t sub_25EAFAAEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25EAFD8F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25EAFAB1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E6E6F6973736573;
  if (v2 != 1)
  {
    v5 = 0x656469727473;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D614E6870617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25EAFAB84()
{
  v1 = 0x4E6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x656469727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E6870617267;
  }
}

unint64_t sub_25EAFABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25EAFD8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25EAFAC28(uint64_t a1)
{
  v2 = sub_25EAFAF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EAFAC64(uint64_t a1)
{
  v2 = sub_25EAFAF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25EAFACA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B40, &qword_25EB78620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EAFAF7C();
  sub_25EB6EA78();
  v9 = [v3 graphName];
  sub_25EB6E268();

  v13[15] = 0;
  sub_25EB6E928();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v10 = [v3 sessionName];
    sub_25EB6E268();

    v13[14] = 1;
    sub_25EB6E928();

    v11 = [v3 stride];
    [v11 integerValue];

    v13[13] = 2;
    sub_25EB6E938();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25EAFAF7C()
{
  result = qword_27FD11B48;
  if (!qword_27FD11B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B48);
  }

  return result;
}

void *StrideConfig.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B50, &qword_25EB78628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EAFAF7C();
  sub_25EB6EA68();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for StrideConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v16 = sub_25EB6E8D8();
    v18 = 1;
    v15 = sub_25EB6E8D8();
    v18 = 2;
    sub_25EB6E8E8();
    v16 = sub_25EB6E258();

    v11 = sub_25EB6E258();

    sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
    v12 = sub_25EB6E4F8();
    v13 = type metadata accessor for StrideConfig();
    v17.receiver = v3;
    v17.super_class = v13;
    v14 = v16;
    v9 = objc_msgSendSuper2(&v17, sel_initWithGraphName_sessionName_stride_, v16, v11, v12);

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

id StrideConfig.__allocating_init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_allocWithZone(v5);
  v8 = sub_25EB6E258();

  v9 = sub_25EB6E258();

  v10 = [v7 initWithGraphName:v8 sessionName:v9 stride:a5];

  return v10;
}

id StrideConfig.init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_25EB6E258();

  v8 = sub_25EB6E258();

  v11.receiver = v5;
  v11.super_class = type metadata accessor for StrideConfig();
  v9 = objc_msgSendSuper2(&v11, sel_initWithGraphName_sessionName_stride_, v7, v8, a5);

  return v9;
}

id StrideConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StrideConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrideConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_25EAFB578@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for StrideConfig());
  result = StrideConfig.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void __swiftcall PolarisSystemConfig.init(fromPlistAtPath:)(PolarisSystemConfig_optional *__return_ptr retstr, Swift::String_optional fromPlistAtPath)
{
  if (fromPlistAtPath.value._object)
  {
    v2 = sub_25EB6E258();
  }

  else
  {
    v2 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromPlistAtPath_];
}

void PolarisSystemConfig.init(fromPlistAtPath:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25EB6E058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B60, &qword_25EB78630);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_25EB6E098();
  v37 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  if (a2)
  {
    goto LABEL_5;
  }

  v34 = v12;
  v18 = MGGetProductType();
  if (v18 == 1608945770)
  {
    v36 = v3;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_25EB6E258();
    v22 = sub_25EB6E258();
    v23 = [v20 pathForResource:v21 ofType:v22];

    if (v23)
    {
      sub_25EB6E268();

      v3 = v36;
      v12 = v34;
LABEL_5:
      (*(v37 + 56))(v11, 1, 1, v12);
      (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);
      sub_25EB6E088();
      v24 = sub_25EB6E0A8();
      v26 = v25;
      sub_25EB6E028();
      swift_allocObject();
      sub_25EB6E018();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B68, &qword_25EB78638);
      sub_25EAFC420();
      sub_25EB6E008();
      (*(v37 + 8))(v17, v12);

      sub_25EAFC5CC(v24, v26);
      *&v3[OBJC_IVAR___PolarisSystemConfig_strideConfigsForModes] = v39[0];
      v38.receiver = v3;
      v38.super_class = PolarisSystemConfig;
      objc_msgSendSuper2(&v38, sel_init);
      return;
    }

    __break(1u);
  }

  else
  {
    v27 = v18;
    if (qword_27FD11B18 != -1)
    {
      swift_once();
    }

    v28 = sub_25EB6E1B8();
    __swift_project_value_buffer(v28, qword_27FD2EEA8);
    v29 = sub_25EB6E198();
    v30 = sub_25EB6E498();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v27;
      _os_log_impl(&dword_25EA3A000, v29, v30, "Unsupported product type: %ld", v31, 0xCu);
      MEMORY[0x25F8C9C00](v31, -1, -1);
    }

    type metadata accessor for PolarisSystemConfig(v32);
    swift_deallocPartialClassInstance();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t PolarisSystemConfig.strideConfigs(for:)(uint64_t a1)
{
  v2 = 0xEA00000000005453;
  v3 = 0x41465F53444E4148;
  v4 = 0xE700000000000000;
  v5 = 0x4E574F4E4B4E55;
  if (!a1)
  {
    v5 = 0x4F4E5F53444E4148;
    v4 = 0xEC0000004C414D52;
  }

  if (a1 != 1)
  {
    v3 = v5;
    v2 = v4;
  }

  if (a1 == 2)
  {
    v6 = 0x48545F53444E4148;
  }

  else
  {
    v6 = v3;
  }

  if (a1 == 2)
  {
    v7 = 0xED00004C414D5245;
  }

  else
  {
    v7 = v2;
  }

  v8 = OBJC_IVAR___PolarisSystemConfig_strideConfigsForModes;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {

    goto LABEL_16;
  }

  v10 = sub_25EAFCBE4(v6, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_16:
    swift_endAccess();
    return 0;
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  v14 = swift_endAccess();
  if (v13 >> 62)
  {
    type metadata accessor for PSCStrideConfig(v14);

    v17 = sub_25EB6E848();

    return v17;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v15 = sub_25EB6E998();
    type metadata accessor for PSCStrideConfig(v15);

    return v13;
  }
}

id _sSo15PSCStrideConfigC7PolarisEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_25EAFC324@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_25EAFC354(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25EAFC620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25EAFD9DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25EAFC420()
{
  result = qword_27FD11B70;
  if (!qword_27FD11B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD11B68, &qword_25EB78638);
    sub_25EAFC4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B70);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25EAFC4F4()
{
  result = qword_27FD11B78;
  if (!qword_27FD11B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD11B80, &qword_25EB78640);
    sub_25EAFC578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B78);
  }

  return result;
}

unint64_t sub_25EAFC578()
{
  result = qword_27FD11B88;
  if (!qword_27FD11B88)
  {
    type metadata accessor for StrideConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B88);
  }

  return result;
}

uint64_t sub_25EAFC5CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25EAFC620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25EAFC72C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25EB6E6E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25EAFC72C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25EAFC778(a1, a2);
  sub_25EAFC8A8(&unk_2870BBCD0);
  return v3;
}

void *sub_25EAFC778(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25EB06AF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25EB6E6E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25EB6E308();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25EB06AF0(v10, 0);
        result = sub_25EB6E6A8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25EAFC8A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25EAFC994(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25EAFC994(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11BE0, &unk_25EB78940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25EAFCA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (a4)
  {
    sub_25EB6E2D8();
  }

  v8 = sub_25EB6EA58();

  return sub_25EAFD228(a1, a2, a3, a4, v8);
}

unint64_t sub_25EAFCB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  v8 = sub_25EB6EA58();

  return sub_25EAFD334(a1, a2, a3, a4, v8);
}

unint64_t sub_25EAFCBE4(uint64_t a1, uint64_t a2)
{
  sub_25EB6EA28();
  sub_25EB6E2D8();
  v4 = sub_25EB6EA58();

  return sub_25EAFD434(a1, a2, v4);
}

uint64_t sub_25EAFCC70(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25EAFCD7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StrideConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StrideConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25EAFCF3C()
{
  result = qword_27FD11BC0;
  if (!qword_27FD11BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11BC0);
  }

  return result;
}

unint64_t sub_25EAFCF94()
{
  result = qword_27FD11BC8;
  if (!qword_27FD11BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11BC8);
  }

  return result;
}

unint64_t sub_25EAFCFEC()
{
  result = qword_27FD11BD0;
  if (!qword_27FD11BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11BD0);
  }

  return result;
}

unint64_t sub_25EAFD040(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  sub_25EAFD940(&qword_27FD11BD8, MEMORY[0x277D3E7B0]);
  v2 = sub_25EB6E228();

  return sub_25EAFD4EC(a1, v2);
}

unint64_t sub_25EAFD0D0(uint64_t a1)
{
  v2 = sub_25EB6E508();

  return sub_25EAFD6A0(a1, v2);
}

unint64_t sub_25EAFD1BC(uint64_t a1)
{
  sub_25EB6EA28();
  sub_25EB2F4F0(v4, a1);
  v2 = sub_25EB6EA58();

  return sub_25EAFD83C(a1, v2);
}

unint64_t sub_25EAFD228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_25EB6E988() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_25EB6E988() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_25EAFD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_25EB6E988() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_25EB6E988() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_25EAFD434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25EB6E988())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25EAFD4EC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25EAFD940(&qword_27FD11F30, MEMORY[0x277D3E7B8]);
      v15 = sub_25EB6E248();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_25EAFD6A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25EB6E518();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25EAFD774(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_25EB6E518();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25EAFD83C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      sub_25EB24B58(v7, a1);
      v9 = v8;

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25EAFD8F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25EB6E8A8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25EAFD940(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD11BF0, &qword_25EB78980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25EAFD9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unsigned __int8 *Key<>.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = (&v36[-1] - v9);
  v11 = HIBYTE(a2) & 0xF;
  v12 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    v34 = 1;
    return (*(v7 + 56))(a3, v34, 1, v6);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = sub_25EB06B64(a1, a2, 10);

    if ((v15 & 0x100000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_25EB6E6E8();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          LODWORD(v15) = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_61;
              }

              v24 = 10 * v15;
              if ((v24 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v15) = v24 + v23;
              if (__CFADD__(v24, v23))
              {
                goto LABEL_61;
              }

              ++v22;
              if (!--v11)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        LODWORD(v15) = 0;
        if (result)
        {
          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              goto LABEL_61;
            }

            v29 = 10 * v15;
            if ((v29 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v15) = v29 + v28;
            if (__CFADD__(v29, v28))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v15) = 0;
      LOBYTE(v11) = 1;
LABEL_62:
      v37 = v11;
      v33 = v11;

      if (v33)
      {
LABEL_63:
        v34 = 1;
        return (*(v7 + 56))(a3, v34, 1, v6);
      }

LABEL_66:
      *v10 = v15;
      (*(v7 + 104))(v10, *MEMORY[0x277D3E7A8], v6);
      (*(v7 + 32))(a3, v10, v6);
      v34 = 0;
      return (*(v7 + 56))(a3, v34, 1, v6);
    }

    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        LODWORD(v15) = 0;
        if (result)
        {
          v16 = result + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            v18 = 10 * v15;
            if ((v18 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v15) = v18 - v17;
            if (v18 < v17)
            {
              goto LABEL_61;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v11) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v36[0] = a1;
  v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v11)
      {
        LODWORD(v15) = 0;
        v30 = v36;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v32 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v15) = v32 + v31;
          if (__CFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v11)
    {
      if (--v11)
      {
        LODWORD(v15) = 0;
        v19 = v36 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v21 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v15) = v21 - v20;
          if (v21 < v20)
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v11)
  {
    if (--v11)
    {
      LODWORD(v15) = 0;
      v25 = v36 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v15;
        if ((v27 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v15) = v27 + v26;
        if (__CFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v11)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_25EAFDE80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_25EAFDF18(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void sub_25EAFDFE8(uint64_t a1, uint64_t a2)
{
  v187 = a1;
  v225 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v198 = v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v215 = (v186 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11C00, &qword_25EB78990);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v188 = v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v203 = v186 - v12;
  MEMORY[0x28223BE20](v11);
  v214 = v186 - v13;
  v14 = sub_25EB6E138();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v193 = v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v192 = v186 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v197 = v186 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v202 = v186 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v200 = v186 - v25;
  MEMORY[0x28223BE20](v24);
  v213 = v186 - v26;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v27 = *(v218 - 8);
  v28 = MEMORY[0x28223BE20](v218);
  v191 = v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v189 = v186 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v196 = v186 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v194 = v186 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v201 = v186 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v199 = v186 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v206 = v186 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v195 = v186 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = v186 - v44;
  v46 = *(a2 + 16);
  v220 = v14;
  v217 = v15;
  v204 = v27;
  v186[1] = a2;
  v190 = v46;
  if (v46)
  {
    v47 = a2 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    swift_beginAccess();
    v49 = *(v27 + 16);
    v48 = (v27 + 16);
    v210 = v48[7];
    v211 = v49;
    v212 = v48;
    v208 = (v15 + 48);
    *&v209 = v48 - 1;
    v216 = MEMORY[0x277D84F90];
    *&v207 = v15 + 32;
    v50 = v46;
    do
    {
      v51 = v218;
      v52 = (v211)(v45, v47, v218);
      v53 = v2;
      v54 = *(v2 + 16);
      MEMORY[0x28223BE20](v52);

      v55 = v214;
      v56 = v219;
      sub_25EAFF930(sub_25EB0EE44, v54, v214);
      v219 = v56;

      (*v209)(v45, v51);
      v57 = v220;
      if ((*v208)(v55, 1, v220) == 1)
      {
        sub_25EB0D660(v55, &unk_27FD11C00, &qword_25EB78990);
      }

      else
      {
        v58 = *v207;
        (*v207)(v213, v55, v57);
        v59 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_25EB064D0(0, v59[2] + 1, 1, v59);
        }

        v61 = v59[2];
        v60 = v59[3];
        if (v61 >= v60 >> 1)
        {
          v59 = sub_25EB064D0((v60 > 1), v61 + 1, 1, v59);
        }

        v59[2] = v61 + 1;
        v62 = (*(v217 + 80) + 32) & ~*(v217 + 80);
        v216 = v59;
        v58(v59 + v62 + *(v217 + 72) * v61, v213, v220);
      }

      v47 += v210;
      --v50;
      v2 = v53;
    }

    while (v50);
  }

  else
  {
    v216 = MEMORY[0x277D84F90];
  }

  v63 = v216;
  if (v216[2] != v190)
  {

    *&v209 = sub_25EB0C8D4(v83);

    v84 = v63;
    v214 = v63[2];
    if (v214)
    {
      v85 = 0;
      v86 = (v204 + 32);
      v212 = (v204 + 56);
      v213 = (v217 + 16);
      v210 = v204 + 48;
      v211 = (v217 + 8);
      v219 = MEMORY[0x277D84F90];
      while (v85 < v84[2])
      {
        v87 = v217;
        v88 = v200;
        v89 = v220;
        (*(v217 + 16))(v200, v84 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v85, v220);
        v90 = v206;
        sub_25EB6E128();
        v91 = *v86;
        v92 = v218;
        (*v86)(v215, v90, v218);
        (*v212)(v215, 0, 1, v92);
        v93 = v215;
        (*(v87 + 8))(v88, v89);
        if ((*v210)(v93, 1, v92) == 1)
        {
          sub_25EB0D660(v93, &qword_27FD11BF8, &qword_25EB78988);
        }

        else
        {
          v94 = v195;
          v91(v195, v93, v92);
          v91(v199, v94, v92);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v219 = sub_25EB062E0(0, v219[2] + 1, 1, v219);
          }

          v96 = v219[2];
          v95 = v219[3];
          if (v96 >= v95 >> 1)
          {
            v219 = sub_25EB062E0((v95 > 1), v96 + 1, 1, v219);
          }

          v97 = v218;
          v98 = v219;
          v219[2] = v96 + 1;
          v91(&v98[((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v96], v199, v97);
        }

        ++v85;
        v84 = v216;
        if (v214 == v85)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_93;
    }

    v219 = MEMORY[0x277D84F90];
LABEL_51:

    v123 = v219;
LABEL_69:
    sub_25EB07554(v123, v209);

    sub_25EAFD940(&qword_27FD11BD8, MEMORY[0x277D3E7B0]);
    v153 = sub_25EB6E448();
    v155 = v154;

    sub_25EB0CA68();
    swift_allocError();
    *v156 = v153;
    *(v156 + 8) = v155;
    *(v156 + 16) = 1;
    swift_willThrow();
    return;
  }

  v64 = *(v187 + 16);
  v65 = v217;
  v66 = v204;
  v205 = v2;
  *&v209 = v64;
  if (v64)
  {
    v67 = v187 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
    swift_beginAccess();
    v69 = *(v66 + 16);
    v68 = v66 + 16;
    v212 = *(v68 + 56);
    v213 = v69;
    v214 = v68;
    v211 = (v68 - 8);
    v70 = (v65 + 48);
    v215 = MEMORY[0x277D84F90];
    v210 = v65 + 32;
    do
    {
      v71 = v201;
      v72 = v218;
      v73 = (v213)(v201, v67, v218);
      v74 = *(v205 + 16);
      MEMORY[0x28223BE20](v73);

      v75 = v203;
      v76 = v219;
      sub_25EAFF930(sub_25EB0CABC, v74, v203);
      v219 = v76;

      (*v211)(v71, v72);
      v77 = v220;
      if ((*v70)(v75, 1, v220) == 1)
      {
        sub_25EB0D660(v75, &unk_27FD11C00, &qword_25EB78990);
      }

      else
      {
        v78 = *v210;
        (*v210)(v202, v75, v77);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v79 = v215;
        }

        else
        {
          v79 = sub_25EB064D0(0, v215[2] + 1, 1, v215);
        }

        v81 = v79[2];
        v80 = v79[3];
        if (v81 >= v80 >> 1)
        {
          v79 = sub_25EB064D0((v80 > 1), v81 + 1, 1, v79);
        }

        v79[2] = v81 + 1;
        v82 = (*(v217 + 80) + 32) & ~*(v217 + 80);
        v215 = v79;
        v78((v79 + v82 + *(v217 + 72) * v81), v202, v220);
      }

      v67 += v212;
      --v64;
    }

    while (v64);
  }

  else
  {
    v215 = MEMORY[0x277D84F90];
  }

  v99 = v215;
  if (v215[2] != v209)
  {

    *&v209 = sub_25EB0C8D4(v104);

    v105 = v220;
    v106 = v99;
    v214 = v99[2];
    if (v214)
    {
      v107 = 0;
      v108 = (v204 + 32);
      v212 = (v204 + 56);
      v213 = (v217 + 16);
      v210 = v204 + 48;
      v211 = (v217 + 8);
      v216 = MEMORY[0x277D84F90];
      while (v107 < v106[2])
      {
        v110 = v217;
        v111 = v106 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v112 = *(v217 + 72);
        v219 = v107;
        v113 = v197;
        (*(v217 + 16))(v197, &v111[v112 * v107], v105);
        v114 = v206;
        sub_25EB6E128();
        v115 = *v108;
        v116 = v198;
        v117 = v218;
        (*v108)(v198, v114, v218);
        (*v212)(v116, 0, 1, v117);
        (*(v110 + 8))(v113, v105);
        if ((*v210)(v116, 1, v117) == 1)
        {
          sub_25EB0D660(v116, &qword_27FD11BF8, &qword_25EB78988);
          v109 = v219;
        }

        else
        {
          v118 = v194;
          v115(v194, v116, v117);
          v115(v196, v118, v117);
          v119 = v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v216 = sub_25EB062E0(0, v216[2] + 1, 1, v216);
          }

          v109 = v219;
          v121 = v216[2];
          v120 = v216[3];
          if (v121 >= v120 >> 1)
          {
            v216 = sub_25EB062E0((v120 > 1), v121 + 1, 1, v216);
          }

          v122 = v216;
          v216[2] = v121 + 1;
          v119(&v122[((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v121], v196, v218);
        }

        v107 = v109 + 1;
        v106 = v215;
        v105 = v220;
        if (v214 == v107)
        {
          goto LABEL_68;
        }
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v216 = MEMORY[0x277D84F90];
LABEL_68:

    v123 = v216;
    goto LABEL_69;
  }

  v100 = v205;
  os_unfair_lock_lock((v205 + 24));
  v101 = v219;
  sub_25EAFFFB0((v100 + 32), v99, v224);
  v102 = v220;
  v103 = v217;
  if (v101)
  {

    os_unfair_lock_unlock((v100 + 24));
    return;
  }

  v219 = 0;
  os_unfair_lock_unlock((v100 + 24));
  v124 = v216[2];
  swift_beginAccess();
  swift_beginAccess();
  v211 = v124;
  if (v124)
  {
    v125 = 0;
    v210 = v103 + 16;
    v213 = (v204 + 8);
    v208 = (v103 + 8);
    v209 = xmmword_25EB78950;
    v207 = xmmword_25EB78960;
    v126 = v192;
    while (v125 < v216[2])
    {
      (*(v103 + 16))(v126, v216 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v125, v102);
      v128 = v189;
      sub_25EB6E128();
      v129 = *(v205 + 56);
      if (!*(v129 + 16))
      {
        goto LABEL_95;
      }

      v130 = sub_25EAFD040(v128);
      if ((v131 & 1) == 0)
      {
        goto LABEL_96;
      }

      v214 = v125;
      v132 = *(*(v129 + 56) + 8 * v130);
      v133 = *(v204 + 8);

      v134 = v133;
      v133(v128, v218);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
      *(swift_allocObject() + 16) = v209;
      sub_25EB6E128();
      v135 = v132 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
      os_unfair_lock_lock((v132 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer));
      __swift_project_boxed_opaque_existential_1((v135 + 8), *(v135 + 32));
      v136 = v219;
      sub_25EB6E158();
      v219 = v136;
      if (v136)
      {

        os_unfair_lock_unlock(v135);

        (*v208)(v126, v220);
        return;
      }

      os_unfair_lock_unlock(v135);

      v137 = v205;
      os_unfair_lock_lock((v205 + 24));
      v138 = v188;
      sub_25EB09BDC(v126, v188);
      sub_25EB0D660(v138, &unk_27FD11C00, &qword_25EB78990);
      os_unfair_lock_unlock((v137 + 24));
      v139 = *(v137 + 40);
      v102 = v220;
      v140 = v193;
      v103 = v217;
      if (v139)
      {
        v141 = MEMORY[0x277D84F90];
        v142 = v206;
        v212 = v139;
        if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
        {
          sub_25EB0CADC(v141);
        }

        sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
        sub_25EB0D6C0(&qword_27FD11C28, &qword_27FD11C20, 0x277D3E698);
        v143 = sub_25EB6E428();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C30, &qword_25EB789A0);
        inited = swift_initStackObject();
        *(inited + 16) = v207;
        sub_25EB6E128();
        v145 = *(v205 + 64);
        if (!*(v145 + 16))
        {
          goto LABEL_100;
        }

        v146 = sub_25EAFD040(v142);
        if ((v147 & 1) == 0)
        {
          goto LABEL_101;
        }

        v148 = *(*(v145 + 56) + 8 * v146);
        v149 = v142;
        v150 = v148;
        v134(v149, v218);

        *(inited + 32) = v150;
        sub_25EB0CADC(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v151 = sub_25EB6E428();

        v223[0] = 0;
        LODWORD(v150) = [v212 commitRemoteGraphs:v143 removedGraphs:v151 option:1 error:v223];

        if (!v150)
        {
          v182 = v223[0];
          v183 = sub_25EB6E048();

          swift_willThrow();
          v223[0] = 0;
          v223[1] = 0xE000000000000000;
          sub_25EB6E6B8();
          MEMORY[0x25F8C69B0](0xD000000000000022, 0x800000025EB8D700);
          v222[7] = v183;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
          sub_25EB6E748();
          goto LABEL_106;
        }

        v152 = v223[0];
        v102 = v220;
        v126 = v192;
        v140 = v193;
      }

      v125 = v214 + 1;
      (*v208)(v126, v102);
      v127 = v215;
      if (v211 == v125)
      {
        goto LABEL_71;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
  }

  v140 = v193;
  v127 = v215;
LABEL_71:
  v212 = v127[2];
  if (!v212)
  {
LABEL_91:

    return;
  }

  v157 = v205;
  v214 = *(v205 + 40);
  v211 = v127 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  swift_beginAccess();
  swift_beginAccess();
  v158 = 0;
  v210 = v103 + 16;
  v213 = (v204 + 8);
  v208 = (v103 + 8);
  v209 = xmmword_25EB78950;
  v207 = xmmword_25EB78960;
  v159 = v191;
  while (1)
  {
    if (v158 >= v215[2])
    {
      goto LABEL_97;
    }

    (*(v103 + 16))(v140, &v211[*(v103 + 72) * v158], v102);
    if (v214)
    {
      break;
    }

LABEL_81:
    sub_25EB6E128();
    v175 = *(v157 + 56);
    if (!*(v175 + 16))
    {
      goto LABEL_98;
    }

    v176 = sub_25EAFD040(v159);
    if ((v177 & 1) == 0)
    {
      goto LABEL_99;
    }

    v178 = *(*(v175 + 56) + 8 * v176);
    v179 = *(v204 + 8);

    v179(v159, v218);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
    *(swift_allocObject() + 16) = v209;
    sub_25EB6E128();
    v180 = v178 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
    os_unfair_lock_lock((v178 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer));
    __swift_project_boxed_opaque_existential_1((v180 + 8), *(v180 + 32));
    v181 = v219;
    sub_25EB6E158();
    if (v181)
    {

      os_unfair_lock_unlock(v180);

      (*v208)(v140, v220);
      return;
    }

    v219 = 0;
    ++v158;

    os_unfair_lock_unlock(v180);

    v102 = v220;
    (*v208)(v140, v220);
    v159 = v191;
    v103 = v217;
    v157 = v205;
    if (v212 == v158)
    {
      goto LABEL_91;
    }
  }

  v160 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C30, &qword_25EB789A0);
  v161 = swift_initStackObject();
  *(v161 + 16) = v207;
  v162 = v157;
  v163 = v206;
  sub_25EB6E128();
  v164 = *(v162 + 64);
  if (!*(v164 + 16))
  {
    goto LABEL_102;
  }

  v165 = v162;

  v166 = sub_25EAFD040(v163);
  if ((v167 & 1) == 0)
  {
    goto LABEL_103;
  }

  v168 = *v213;
  v169 = *(*(v164 + 56) + 8 * v166);
  v168(v163, v218);

  *(v161 + 32) = v169;
  sub_25EB0CADC(v161);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
  sub_25EB0D6C0(&qword_27FD11C28, &qword_27FD11C20, 0x277D3E698);
  v170 = sub_25EB6E428();

  v171 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    v157 = v165;
    if (sub_25EB6E5F8())
    {
      sub_25EB0CADC(v171);
    }
  }

  else
  {
    v157 = v165;
  }

  v172 = sub_25EB6E428();

  v222[0] = 0;
  v173 = [v214 commitRemoteGraphs:v170 removedGraphs:v172 option:1 error:v222];

  if (v173)
  {
    v158 = v160;
    v174 = v222[0];
    v140 = v193;
    v159 = v191;
    goto LABEL_81;
  }

  v184 = v222[0];
  v185 = sub_25EB6E048();

  swift_willThrow();
  v222[0] = 0;
  v222[1] = 0xE000000000000000;
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD000000000000022, 0x800000025EB8D700);
  v221 = v185;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
  sub_25EB6E748();
LABEL_106:
  sub_25EB6E838();
  __break(1u);
}

uint64_t sub_25EAFF930@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_25EB6E138();
  v6 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_25EAFFC80(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *))
{
  v9 = a1;
  v10 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_25EB6E5F8();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = a2(0);
  v13 = sub_25EB0D618(a3, a4, MEMORY[0x277D85378]);
  v24[1] = MEMORY[0x25F8C6B20](v11, v12, v13);
  if (v10)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v9 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v9 + 32);
    v14 = v9 + 64;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v9 + 64);
  }

  v20 = 0;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_25EB6E808() || (swift_dynamicCast(), !v24[0]))
    {
LABEL_21:
      sub_25EB0EC08(v9);
      return;
    }

LABEL_11:
    a5(v24);
  }

  v21 = v20;
  v22 = v16;
  v23 = v20;
  if (v16)
  {
LABEL_17:
    if (!*(*(v9 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22))))))
    {
      goto LABEL_21;
    }

    v16 = (v22 - 1) & v22;
    v20 = v23;
    goto LABEL_11;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= ((v15 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v22 = *(v14 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_25EAFFEA4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_25EB6E128();
  v6 = sub_25EB6E178();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_25EAFFFB0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - v6;
  v7 = sub_25EB6E138();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  v47 = *(a2 + 16);
  if (v47)
  {
    v17 = 0;
    v20 = *(v8 + 16);
    v18 = v8 + 16;
    v19 = v20;
    v49 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);
    v52 = v20;
    v53 = v21;
    v54 = (v18 - 8);
    v46 = a1;
    while (1)
    {
      v50 = v17;
      v19(v16, v49 + v53 * v17, v7);
      v25 = *a1;
      if (*(*a1 + 16))
      {
        sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
        v26 = sub_25EB6E228();
        v27 = -1 << *(v25 + 32);
        v28 = v26 & ~v27;
        v51 = v25 + 56;
        if ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          break;
        }
      }

LABEL_3:
      v17 = v50 + 1;
      v22 = v48;
      v19 = v52;
      v52(v48, v16, v7);
      v23 = v22;
      a1 = v46;
      sub_25EB25C78(v13, v23);
      v24 = *v54;
      (*v54)(v13, v7);
      result = (v24)(v16, v7);
      if (v17 == v47)
      {
        return result;
      }
    }

    v29 = ~v27;
    while (1)
    {
      v30 = v18;
      v52(v13, *(v25 + 48) + v28 * v53, v7);
      sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738], MEMORY[0x277D3E748]);
      v31 = v16;
      v32 = sub_25EB6E248();
      v33 = *v54;
      (*v54)(v13, v7);
      if (v32)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      v16 = v31;
      v18 = v30;
      if (((*(v51 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v34 = v42;
    sub_25EB6E128();
    v35 = v44;
    v36 = sub_25EB6E168();
    v38 = v37;
    (*(v43 + 8))(v34, v35);
    sub_25EB0CA68();
    v39 = swift_allocError();
    *v40 = v36;
    *(v40 + 8) = v38;
    *(v40 + 16) = 3;
    swift_willThrow();
    result = (v33)(v31, v7);
    *v45 = v39;
  }

  return result;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments8withName0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_SSAA0bchI0_pSgSbtAC5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v9 + 32) = MEMORY[0x277D84FA0];
  v11 = MEMORY[0x277D84F90];
  *(v9 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v9 + 56) = sub_25EB0D408(v11, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v9 + 64) = sub_25EB0D408(v11, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    v12 = a6;
    *(v9 + 16) = v10;
    v13 = objc_opt_self();
    v14 = sub_25EB6E258();

    v15 = [v13 uniqueSessionWithName_];

    *(v9 + 40) = v15;
    if (v15)
    {
      [v15 setRemoteSession_];
    }

    sub_25EB0EDAC(a4, v9 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v9 + 112) = a5 & 1;
    v16 = v22;
    sub_25EB00E80(a1, &v20);
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);

    if (v16)
    {
      v17 = v21;
      *v12 = v20;
      *(v12 + 16) = v17;
    }
  }

  else
  {

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 4;
    v20 = 0uLL;
    v21 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v9 + 32, &qword_27FD11C48, &qword_25EB789B8);

    swift_deallocPartialClassInstance();
  }

  return v9;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments8withName0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_SSAA0bchI0_pSgSbtAC5ErrorOYKcfc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = MEMORY[0x277D84FA0];
  *(v6 + 32) = MEMORY[0x277D84FA0];
  *(v6 + 24) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v6 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v6 + 56) = sub_25EB0D408(v11, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v6 + 64) = sub_25EB0D408(v11, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    *(v6 + 16) = v10;
    v12 = objc_opt_self();
    v13 = sub_25EB6E258();

    v14 = [v12 uniqueSessionWithName_];

    *(v6 + 40) = v14;
    if (v14)
    {
      [v14 setRemoteSession_];
    }

    sub_25EB0EDAC(a4, v6 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v6 + 112) = a5 & 1;
    sub_25EB00E80(a1, &v19);
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);

    if (v18)
    {
      v15 = v20;
      *a6 = v19;
      *(a6 + 16) = v15;
    }
  }

  else
  {

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 4;
    v19 = 0uLL;
    v20 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v6 + 32, &qword_27FD11C48, &qword_25EB789B8);

    type metadata accessor for GraphManager();
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments7withKey0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_So018PSExecutionSessionG0aSgAA0bchI0_pSgSbtAC5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v9 + 32) = MEMORY[0x277D84FA0];
  v11 = MEMORY[0x277D84F90];
  *(v9 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v9 + 56) = sub_25EB0D408(v11, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v9 + 64) = sub_25EB0D408(v11, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    *(v9 + 16) = v10;
    if ((a2 & 0x100000000) != 0)
    {
      *(v9 + 40) = 0;
    }

    else
    {
      v12 = [objc_opt_self() sharedInstanceForExecutionSessionKey_];
      *(v9 + 40) = v12;
      if (v12)
      {
        [v12 setRemoteSession_];
      }
    }

    sub_25EB0EDAC(a3, v9 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v9 + 112) = a4 & 1;
    v13 = v19;
    sub_25EB00E80(a1, &v17);
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);

    if (v13)
    {
      v14 = v18;
      *a5 = v17;
      *(a5 + 16) = v14;
    }
  }

  else
  {

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 4;
    v17 = 0uLL;
    v18 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v9 + 32, &qword_27FD11C48, &qword_25EB789B8);

    swift_deallocPartialClassInstance();
  }

  return v9;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments7withKey0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_So018PSExecutionSessionG0aSgAA0bchI0_pSgSbtAC5ErrorOYKcfc(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = MEMORY[0x277D84FA0];
  *(v5 + 32) = MEMORY[0x277D84FA0];
  *(v5 + 24) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v5 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v5 + 56) = sub_25EB0D408(v12, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v5 + 64) = sub_25EB0D408(v12, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    *(v5 + 16) = v11;
    if ((a2 & 0x100000000) != 0)
    {
      *(v5 + 40) = 0;
    }

    else
    {
      v13 = [objc_opt_self() sharedInstanceForExecutionSessionKey_];
      *(v5 + 40) = v13;
      if (v13)
      {
        [v13 setRemoteSession_];
      }
    }

    sub_25EB0EDAC(a3, v5 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v5 + 112) = a4 & 1;
    sub_25EB00E80(a1, &v17);
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);

    if (v16)
    {
      v14 = v18;
      *a5 = v17;
      *(a5 + 16) = v14;
    }
  }

  else
  {

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 4;
    v17 = 0uLL;
    v18 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v5 + 32, &qword_27FD11C48, &qword_25EB789B8);

    type metadata accessor for GraphManager();
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t _s7Polaris12GraphManagerC26graphDeploymentsForTesting010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_SbtAC5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    result = (*(v3 + 184))();
    if (v4)
    {
      *a3 = v7;
      *(a3 + 16) = v8;
    }
  }

  else
  {

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
    sub_25EB0CA68();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_25EB00E80(uint64_t a1, _OWORD *a2)
{
  v79 = a2;
  v4 = v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v86 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v97 = &v78 - v6;
  v7 = sub_25EB6E138();
  v93 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v80 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v78 - v10;
  v12 = *(v2 + 40);
  if (v12)
  {
    v13 = type metadata accessor for GraphManager.GraphManagerExecutionSessionDelegate();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager] = v2;
    swift_unownedRetain();
    v98.receiver = v14;
    v98.super_class = v13;
    v15 = objc_msgSendSuper2(&v98, sel_init);
    [v12 setDelegate:v15 delegateQueue:0];
  }

  v16 = *(a1 + 16);
  swift_beginAccess();
  v17 = v2;
  v81 = v16;
  if (v16)
  {
    v18 = 0;
    v82 = a1 + 32;
    v92 = v93 + 16;
    v85 = v86 + 16;
    v88 = v2;
    v89 = (v86 + 8);
    v91 = (v93 + 8);
    v96 = v7;
    while (2)
    {
      sub_25EB0ECC8(v82 + 40 * v18, &v99);
      type metadata accessor for GraphManager.HashableEndpointServer(0);
      v19 = swift_allocObject();
      sub_25EB6E0D8();
      v20 = v19 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
      *v20 = 0;
      *(v20 + 24) = 0u;
      *(v20 + 40) = 0;
      *(v20 + 8) = 0u;
      sub_25EB0ED2C(&v99, v20 + 8);
      v21 = sub_25EB03CC4(&v99);
      if (v4)
      {

        goto LABEL_31;
      }

      v22 = v21;
      v84 = 0;
      v83 = v18 + 1;
      v23 = (v21 + 56);
      v24 = 1 << *(v21 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v21 + 56);
      v27 = (v24 + 63) >> 6;

      v29 = 0;
      v94 = v27;
      v95 = v23;
      v87 = v28;
      while (v26)
      {
LABEL_17:
        (*(v93 + 16))(v11, *(v22 + 48) + *(v93 + 72) * (__clz(__rbit64(v26)) | (v29 << 6)), v7);
        v31 = v97;
        sub_25EB6E128();
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v17 + 56);
        v33 = v101;
        *(v17 + 56) = 0x8000000000000000;
        v35 = sub_25EAFD040(v31);
        v36 = *(v33 + 2);
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          sub_25EB6E9B8();
          __break(1u);
LABEL_52:

          __break(1u);
          return result;
        }

        v39 = v34;
        if (*(v33 + 3) >= v38)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25EB2D340();
          }
        }

        else
        {
          sub_25EB2A9FC(v38, isUniquelyReferenced_nonNull_native);
          v40 = sub_25EAFD040(v97);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_51;
          }

          v35 = v40;
        }

        v7 = v96;
        v42 = v101;
        if (v39)
        {
          *(*(v101 + 7) + 8 * v35) = v19;

          (*v89)(v97, v90);
        }

        else
        {
          v43 = v11;
          *&v101[8 * (v35 >> 6) + 64] |= 1 << v35;
          v44 = v86;
          v45 = v97;
          v46 = v90;
          (*(v86 + 16))(*(v42 + 6) + *(v86 + 72) * v35, v97, v90);
          *(*(v42 + 7) + 8 * v35) = v19;
          (*(v44 + 8))(v45, v46);
          v47 = *(v42 + 2);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_49;
          }

          *(v42 + 2) = v49;
          v11 = v43;
          v7 = v96;
          v22 = v87;
        }

        v26 &= v26 - 1;
        v17 = v88;
        *(v88 + 56) = v42;

        swift_endAccess();
        (*v91)(v11, v7);
        v27 = v94;
        v23 = v95;
      }

      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v30 >= v27)
        {
          break;
        }

        v26 = v23[v30];
        ++v29;
        if (v26)
        {
          v29 = v30;
          goto LABEL_17;
        }
      }

      v50 = *(v17 + 16);

      v51 = v17;
      v52 = *(sub_25EB0B09C(v22, v50) + 16);

      if (v52)
      {
        v56 = v19;
        *&v99 = 0;
        *(&v99 + 1) = 0xE000000000000000;
        sub_25EB6E6B8();
        MEMORY[0x25F8C69B0](0xD000000000000035, 0x800000025EB8DBB0);
        v23 = *(v51 + 16);

        v57 = sub_25EB0B09C(v22, v23);

        KeyPath = swift_getKeyPath();
        v59 = v57 + 56;
        v60 = 1 << *(v57 + 32);
        v61 = -1;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        v62 = v61 & *(v57 + 56);
        v63 = (v60 + 63) >> 6;
        v97 = KeyPath;

        v95 = v57;

        v64 = 0;
        v65 = MEMORY[0x277D84F90];
        v78 = v56;
        if (v62)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v66 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_50;
          }

          if (v66 >= v63)
          {

            v101 = v65;

            v23 = v84;
            sub_25EB0A814(&v101);
            if (v23)
            {
              goto LABEL_52;
            }

            v73 = MEMORY[0x25F8C6AB0](v101, MEMORY[0x277D84CC0]);
            v75 = v74;

            MEMORY[0x25F8C69B0](v73, v75);

            v76 = v99;
            v77 = v79;
            *v79 = v99;
            *(v77 + 16) = 2;
            v99 = v76;
            v100 = 2;
            sub_25EB0CA68();
            swift_willThrowTypedImpl();
          }

          v62 = *(v59 + 8 * v66);
          ++v64;
          if (v62)
          {
            v64 = v66;
            do
            {
LABEL_39:
              v67 = v96;
              v68 = v93;
              v69 = v80;
              (*(v93 + 16))(v80, v95[6] + *(v93 + 72) * (__clz(__rbit64(v62)) | (v64 << 6)), v96);
              swift_getAtKeyPath();
              v70 = v101;
              (*(v68 + 8))(v69, v67);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_25EB067AC(0, *(v65 + 2) + 1, 1, v65);
              }

              v72 = *(v65 + 2);
              v71 = *(v65 + 3);
              if (v72 >= v71 >> 1)
              {
                v65 = sub_25EB067AC((v71 > 1), v72 + 1, 1, v65);
              }

              v62 &= v62 - 1;
              *(v65 + 2) = v72 + 1;
              *&v65[4 * v72 + 32] = v70;
            }

            while (v62);
          }
        }
      }

      swift_beginAccess();
      sub_25EB0F088(v22);
      swift_endAccess();

      v18 = v83;
      v4 = v84;
      v17 = v51;
      if (v83 != v81)
      {
        continue;
      }

      break;
    }
  }

  result = sub_25EB01C40(&v99);
  if (v4)
  {
LABEL_31:
    v54 = v100;
    v55 = v79;
    *v79 = v99;
    *(v55 + 16) = v54;
  }

  return result;
}

uint64_t GraphManager.deinit()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  if (v1)
  {
    v9 = 0;
    if ([v1 stopRemoteGraphs:1 error:&v9])
    {
      v2 = v9;
    }

    else
    {
      v3 = v9;
      v4 = sub_25EB6E048();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C50, &unk_25EB789C0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25EB78950;
      v9 = 0;
      v10 = 0xE000000000000000;
      sub_25EB6E6B8();
      MEMORY[0x25F8C69B0](0xD00000000000003ALL, 0x800000025EB8D730);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
      sub_25EB6E748();
      v6 = v9;
      v7 = v10;
      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 32) = v6;
      *(v5 + 40) = v7;
      sub_25EB6EA18();
    }
  }

  sub_25EB0D660(v0 + 32, &qword_27FD11C48, &qword_25EB789B8);

  sub_25EB0D660(v0 + 72, &qword_27FD11C40, &qword_25EB789B0);
  return v0;
}

uint64_t GraphManager.__deallocating_deinit()
{
  GraphManager.deinit();

  return swift_deallocClassInstance();
}

void *GraphManager.executionSession.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_25EB019AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

uint64_t sub_25EB01A44(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_25EB01AE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t sub_25EB01B78(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_25EB01C40(uint64_t a1)
{
  v225[0] = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11C00, &qword_25EB78990);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v233 = v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v237 = v225 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v256 = v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v225 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v239 = v225 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v242 = v225 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v243 = v225 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v262 = v225 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v236 = v225 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v261 = v225 - v25;
  MEMORY[0x28223BE20](v24);
  v245 = v225 - v26;
  v267 = sub_25EB6E138();
  v27 = *(v267 - 8);
  v28 = MEMORY[0x28223BE20](v267);
  v253 = v225 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v251 = v225 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v226 = v225 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v257 = v225 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v255 = v225 - v37;
  MEMORY[0x28223BE20](v36);
  v229 = v225 - v38;
  swift_beginAccess();
  v39 = *(v2 + 16);
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v258 = v27 + 16;
  v252 = v27 + 32;
  v254 = v8 + 32;
  v241 = (v27 + 56);
  v240 = (v27 + 40);
  v263 = v8;
  v266 = (v8 + 8);
  v235 = v27;
  v234 = (v27 + 8);
  v230 = v39;

  v45 = 0;
  v244 = xmmword_25EB78950;
  v268 = v7;
  v246 = v13;
  v264 = v2;
  v265 = v8 + 16;
  v228 = v40;
  v227 = v44;
LABEL_6:
  if (v43)
  {
    v60 = v45;
LABEL_11:
    v232 = (v43 - 1) & v43;
    v231 = v60;
    v61 = *(v230 + 48);
    v62 = v235;
    v249 = *(v235 + 72);
    v63 = v229;
    v64 = v267;
    v250 = *(v235 + 16);
    v250(v229, v61 + v249 * (__clz(__rbit64(v43)) | (v60 << 6)), v267);
    v238 = *(v62 + 32);
    v238(v255, v63, v64);
    v65 = sub_25EB6E108();
    v67 = v65 + 56;
    v66 = *(v65 + 56);
    v259 = v65;
    v68 = 1 << *(v65 + 32);
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v70 = v69 & v66;
    swift_beginAccess();
    v71 = 0;
    v72 = (v68 + 63) >> 6;
    v73 = v261;
    v248 = v67;
    v247 = v72;
    while (v70)
    {
LABEL_20:
      v75 = *(v259 + 48);
      v76 = v263;
      v260 = *(v263 + 72);
      v77 = *(v263 + 16);
      v78 = v245;
      v79 = v268;
      v77(v245, v75 + v260 * (__clz(__rbit64(v70)) | (v71 << 6)), v268);
      (*(v76 + 32))(v73, v78, v79);
      if (*(v2 + 112) == 1)
      {
        v80 = *(v2 + 48);
        if (*(v80 + 16))
        {

          v81 = sub_25EAFD040(v73);
          if (v82)
          {
            v202 = v237;
            v203 = v73;
            v204 = v267;
            v250(v237, *(v80 + 56) + v81 * v249, v267);

            (*v241)(v202, 0, 1, v204);
            sub_25EB0D660(v202, &unk_27FD11C00, &qword_25EB78990);
            v272 = 0;
            v273 = 0xE000000000000000;
            sub_25EB6E6B8();
            MEMORY[0x25F8C69B0](0xD000000000000025, 0x800000025EB8DB40);
            v205 = v236;
            v206 = v255;
            sub_25EB6E128();
            sub_25EAFD940(&qword_27FD11E78, MEMORY[0x277D3E7C0]);
            v207 = v268;
            v208 = sub_25EB6E968();
            MEMORY[0x25F8C69B0](v208);

            v209 = *v266;
            (*v266)(v205, v207);
            MEMORY[0x25F8C69B0](0xD000000000000031, 0x800000025EB8DB70);
            v210 = sub_25EB6E168();
            MEMORY[0x25F8C69B0](v210);

            MEMORY[0x25F8C69B0](46, 0xE100000000000000);
            v211 = v272;
            v212 = v273;
            v213 = v225[0];
            *v225[0] = v272;
            *(v213 + 8) = v212;
            *(v213 + 16) = 0;
            v272 = v211;
            v273 = v212;
            v274 = 0;
            sub_25EB0CA68();
            swift_willThrowTypedImpl();

            v209(v203, v207);
            return (*v234)(v206, v204);
          }
        }

        v83 = v237;
        (*v241)(v237, 1, 1, v267);
        sub_25EB0D660(v83, &unk_27FD11C00, &qword_25EB78990);
        v79 = v268;
      }

      v84 = v262;
      v77(v262, v73, v79);
      swift_beginAccess();
      v250(v257, v255, v267);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v269 = *(v2 + 48);
      v86 = v269;
      *(v2 + 48) = 0x8000000000000000;
      v87 = sub_25EAFD040(v84);
      v89 = *(v86 + 16);
      v90 = (v88 & 1) == 0;
      v91 = __OFADD__(v89, v90);
      v92 = v89 + v90;
      if (v91)
      {
        goto LABEL_112;
      }

      v93 = v88;
      if (*(v86 + 24) >= v92)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = v87;
          sub_25EB2CFE4();
          v87 = v115;
        }
      }

      else
      {
        sub_25EB2A550(v92, isUniquelyReferenced_nonNull_native);
        v87 = sub_25EAFD040(v262);
        if ((v93 & 1) != (v94 & 1))
        {
          goto LABEL_116;
        }
      }

      v95 = v269;
      if (v93)
      {
        (*v240)(*(v269 + 56) + v87 * v249, v257, v267);
        v96 = v268;
      }

      else
      {
        *(v269 + 8 * (v87 >> 6) + 64) |= 1 << v87;
        v97 = v87;
        v96 = v268;
        v77((v95[6] + v87 * v260), v262, v268);
        v238((v95[7] + v97 * v249), v257, v267);
        v98 = v95[2];
        v91 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v91)
        {
          goto LABEL_114;
        }

        v95[2] = v99;
      }

      v70 &= v70 - 1;
      v260 = *v266;
      v260(v262, v96);
      v100 = v264;
      *(v264 + 48) = v95;

      swift_endAccess();
      v101 = [objc_allocWithZone(MEMORY[0x277D3E6B8]) init];
      [v101 setType_];
      sub_25EB6E188();
      LODWORD(v269) = v272;
      sub_25EB6E968();
      v102 = sub_25EB6E258();

      [v101 setKey_];

      v103 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v101 setDefaultStride_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11CD0, &qword_25EB789D8);
      inited = swift_initStackObject();
      *(inited + 16) = v244;
      sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
      *(inited + 32) = sub_25EB6E4F8();
      *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D3E6C0]) initWithOffset_];
      sub_25EB0E264(inited, &qword_27FD11F20, &qword_25EB78D48, sub_25EAFD0D0);
      swift_setDeallocating();
      sub_25EB0D660(inited + 32, &qword_27FD11CD8, &qword_25EB789E0);
      sub_25EAFCC70(0, &qword_27FD11CE0, 0x277D3E6C0);
      sub_25EB0D6C0(&qword_27FD11CE8, &qword_27FD11B58, 0x277CCABB0);
      v105 = sub_25EB6E1F8();

      [v101 setSupportedStrides_];

      [v101 setOptions_];
      sub_25EB0EDAC(v100 + 72, &v269, &qword_27FD11C40, &qword_25EB789B0);
      if (v271)
      {
        sub_25EB0ED2C(&v269, &v272);
        v106 = *(v100 + 40);
        if (v106)
        {
          v107 = [v106 context];
          v109 = v275;
          v108 = v276;
          __swift_project_boxed_opaque_existential_1(&v272, v275);
          v110 = *(v108 + 8);
          v111 = v101;
          v112 = v110(v109, v108);
          v7 = v268;
          [v107 addResourceStream:v111 withInitialAvailability:v112];

          v73 = v261;
          v260(v261, v7);
        }

        else
        {
          v73 = v261;
          v7 = v268;
          v260(v261, v268);
        }

        v67 = v248;
        v72 = v247;
        __swift_destroy_boxed_opaque_existential_1Tm(&v272);
        v2 = v264;
      }

      else
      {
        sub_25EB0D660(&v269, &qword_27FD11C40, &qword_25EB789B0);
        v113 = *(v100 + 40);
        if (v113)
        {
          v114 = [v113 context];
          [v114 addResourceStream_];

          v73 = v261;
          v7 = v268;
          v260(v261, v268);
        }

        else
        {
          v73 = v261;
          v7 = v268;
          v260(v261, v268);
        }

        v2 = v264;
        v67 = v248;
        v72 = v247;
      }
    }

    while (1)
    {
      v74 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      if (v74 >= v72)
      {
        break;
      }

      v70 = *(v67 + 8 * v74);
      ++v71;
      if (v70)
      {
        v71 = v74;
        goto LABEL_20;
      }
    }

    v116 = v236;
    sub_25EB6E128();
    sub_25EB6E188();
    v260 = *v266;
    v260(v116, v7);
    LODWORD(v269) = v272;
    v272 = sub_25EB6E968();
    v273 = v117;

    MEMORY[0x25F8C69B0](0x6B7361545FLL, 0xE500000000000000);

    v118 = objc_allocWithZone(MEMORY[0x277D3E6D0]);
    v119 = sub_25EB6E258();

    v259 = [v118 initWithName_];

    v120 = sub_25EB6E118();
    v121 = v120;
    v122 = 0;
    v123 = v120 + 56;
    v124 = 1 << *(v120 + 32);
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    else
    {
      v125 = -1;
    }

    v126 = v125 & *(v120 + 56);
    v127 = (v124 + 63) >> 6;
    while (v126)
    {
      v128 = v122;
LABEL_53:
      v129 = __clz(__rbit64(v126));
      v126 &= v126 - 1;
      v130 = v243;
      v131 = v268;
      (*(v263 + 16))(v243, *(v121 + 48) + *(v263 + 72) * (v129 | (v128 << 6)), v268);
      sub_25EB6E188();
      LODWORD(v269) = v272;
      sub_25EB6E968();
      v132 = sub_25EB6E258();

      v133 = [objc_opt_self() inputWithKey_];

      [v259 addInput_];
      v260(v130, v131);
    }

    while (1)
    {
      v128 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        break;
      }

      if (v128 >= v127)
      {

        v134 = sub_25EB6E108();
        v135 = v134;
        v136 = 0;
        v137 = v134 + 56;
        v138 = 1 << *(v134 + 32);
        if (v138 < 64)
        {
          v139 = ~(-1 << v138);
        }

        else
        {
          v139 = -1;
        }

        v140 = v139 & *(v134 + 56);
        v141 = (v138 + 63) >> 6;
        while (v140)
        {
          v142 = v136;
LABEL_64:
          v143 = __clz(__rbit64(v140));
          v140 &= v140 - 1;
          v144 = v242;
          v145 = v268;
          (*(v263 + 16))(v242, *(v135 + 48) + *(v263 + 72) * (v143 | (v142 << 6)), v268);
          sub_25EB6E188();
          LODWORD(v269) = v272;
          sub_25EB6E968();
          v146 = sub_25EB6E2B8();

          v147 = [objc_allocWithZone(MEMORY[0x277D3E6E0]) initWithKey_];

          [v259 addOutput_];

          v260(v144, v145);
        }

        while (1)
        {
          v142 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
            goto LABEL_108;
          }

          if (v142 >= v141)
          {

            v46 = v236;
            v47 = v255;
            sub_25EB6E128();
            v48 = v268;
            sub_25EB6E188();
            v49 = v260;
            v260(v46, v48);
            LODWORD(v269) = v272;
            sub_25EB6E968();
            v50 = objc_allocWithZone(MEMORY[0x277D3E698]);
            v51 = sub_25EB6E258();

            v52 = v50;
            v7 = v48;
            v53 = [v52 initWithName_];

            v54 = [objc_opt_self() fixedFrequency_];
            [v53 setGraphFrequency_];

            v55 = v259;
            [v53 addTask_];
            sub_25EB6E128();
            v56 = v264;
            swift_beginAccess();
            v57 = v53;
            v2 = v56;
            v58 = v57;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            *&v269 = *(v56 + 64);
            *(v56 + 64) = 0x8000000000000000;
            sub_25EB2C628(v58, v46, v59);
            v49(v46, v7);
            *(v56 + 64) = v269;
            swift_endAccess();

            (*v234)(v47, v267);
            v45 = v231;
            v13 = v246;
            v40 = v228;
            v44 = v227;
            v43 = v232;
            goto LABEL_6;
          }

          v140 = *(v137 + 8 * v142);
          ++v136;
          if (v140)
          {
            v136 = v142;
            goto LABEL_64;
          }
        }
      }

      v126 = *(v123 + 8 * v128);
      ++v122;
      if (v126)
      {
        v122 = v128;
        goto LABEL_53;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v60 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v60 >= v44)
      {

        [*(v2 + 40) publishContext];
        v148 = *(v2 + 16);
        v151 = *(v148 + 56);
        v150 = (v148 + 56);
        v149 = v151;
        v152 = 1 << *(*(v2 + 16) + 32);
        if (v152 < 64)
        {
          v153 = ~(-1 << v152);
        }

        else
        {
          v153 = -1;
        }

        v154 = v153 & v149;
        v155 = (v152 + 63) >> 6;
        v247 = *(v2 + 16);

        v156 = 0;
        v245 = v150;
        *&v244 = v155;
LABEL_71:
        if (v154)
        {
          v157 = v156;
LABEL_76:
          v158 = __clz(__rbit64(v154));
          v249 = (v154 - 1) & v154;
          v248 = v157;
          v159 = *(v247 + 48);
          v160 = v235;
          v259 = *(v235 + 72);
          v161 = v226;
          v162 = v267;
          v260 = *(v235 + 16);
          (v260)(v226, v159 + v259 * (v158 | (v157 << 6)), v267);
          v250 = *(v160 + 32);
          v250(v251, v161, v162);
          v163 = sub_25EB6E0F8();
          v165 = (v163 + 56);
          v164 = *(v163 + 56);
          v261 = v163;
          v166 = 1 << *(v163 + 32);
          if (v166 < 64)
          {
            v167 = ~(-1 << v166);
          }

          else
          {
            v167 = -1;
          }

          v168 = v167 & v164;
          swift_beginAccess();
          v169 = 0;
          v170 = (v166 + 63) >> 6;
          v257 = v165;
          v255 = v170;
          while (v168)
          {
            v173 = v264;
LABEL_89:
            v175 = *(v261 + 6);
            v176 = v263;
            v262 = *(v263 + 72);
            v177 = *(v263 + 16);
            v178 = v239;
            v179 = v268;
            v177(v239, v175 + v262 * (__clz(__rbit64(v168)) | (v169 << 6)), v268);
            (*(v176 + 32))(v13, v178, v179);
            if (*(v173 + 112))
            {
              v180 = *(v173 + 48);
              if (*(v180 + 16))
              {

                v181 = sub_25EAFD040(v13);
                if (v182)
                {
                  v214 = v233;
                  v215 = v267;
                  (v260)(v233, *(v180 + 56) + v181 * v259, v267);

                  (*v241)(v214, 0, 1, v215);
                  sub_25EB0D660(v214, &unk_27FD11C00, &qword_25EB78990);
                  *&v269 = 0;
                  *(&v269 + 1) = 0xE000000000000000;
                  sub_25EB6E6B8();
                  MEMORY[0x25F8C69B0](0xD000000000000025, 0x800000025EB8DB40);
                  v216 = v236;
                  v217 = v251;
                  sub_25EB6E128();
                  sub_25EAFD940(&qword_27FD11E78, MEMORY[0x277D3E7C0]);
                  v218 = v13;
                  v219 = v268;
                  v220 = sub_25EB6E968();
                  MEMORY[0x25F8C69B0](v220);

                  v221 = *v266;
                  (*v266)(v216, v219);
                  MEMORY[0x25F8C69B0](0xD000000000000031, 0x800000025EB8DB70);
                  v222 = sub_25EB6E168();
                  MEMORY[0x25F8C69B0](v222);

                  MEMORY[0x25F8C69B0](46, 0xE100000000000000);
                  v223 = v269;
                  v224 = v225[0];
                  *v225[0] = v269;
                  *(v224 + 16) = 0;
                  v269 = v223;
                  v270 = 0;
                  sub_25EB0CA68();
                  swift_willThrowTypedImpl();

                  v221(v218, v219);
                  return (*v234)(v217, v215);
                }
              }

              v183 = v233;
              (*v241)(v233, 1, 1, v267);
              sub_25EB0D660(v183, &unk_27FD11C00, &qword_25EB78990);
              v179 = v268;
            }

            v184 = v256;
            v177(v256, v13, v179);
            swift_beginAccess();
            (v260)(v253, v251, v267);
            v185 = swift_isUniquelyReferenced_nonNull_native();
            v277 = *(v173 + 48);
            v186 = v277;
            *(v173 + 48) = 0x8000000000000000;
            v188 = sub_25EAFD040(v184);
            v189 = v186[2];
            v190 = (v187 & 1) == 0;
            v191 = v189 + v190;
            if (__OFADD__(v189, v190))
            {
              goto LABEL_113;
            }

            v192 = v187;
            if (v186[3] >= v191)
            {
              if ((v185 & 1) == 0)
              {
                sub_25EB2CFE4();
              }
            }

            else
            {
              sub_25EB2A550(v191, v185);
              v193 = sub_25EAFD040(v256);
              if ((v192 & 1) != (v194 & 1))
              {
                goto LABEL_116;
              }

              v188 = v193;
            }

            v195 = v277;
            v196 = v266;
            if (v192)
            {
              (*v240)(v277[7] + v188 * v259, v253, v267);
              v171 = *v196;
              v172 = v268;
              (*v196)(v256, v268);
            }

            else
            {
              v277[(v188 >> 6) + 8] |= 1 << v188;
              v197 = v256;
              v198 = v268;
              v177((v195[6] + v188 * v262), v256, v268);
              v250((v195[7] + v188 * v259), v253, v267);
              v171 = *v196;
              (*v196)(v197, v198);
              v199 = v195[2];
              v91 = __OFADD__(v199, 1);
              v200 = v199 + 1;
              if (v91)
              {
                goto LABEL_115;
              }

              v195[2] = v200;
              v172 = v268;
            }

            v168 &= v168 - 1;
            *(v264 + 48) = v195;

            swift_endAccess();
            v13 = v246;
            v171(v246, v172);
            v165 = v257;
            v170 = v255;
          }

          v173 = v264;
          while (1)
          {
            v174 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              goto LABEL_109;
            }

            if (v174 >= v170)
            {
              (*v234)(v251, v267);

              v156 = v248;
              v150 = v245;
              v155 = v244;
              v154 = v249;
              goto LABEL_71;
            }

            v168 = *&v165[8 * v174];
            ++v169;
            if (v168)
            {
              v169 = v174;
              goto LABEL_89;
            }
          }
        }

        while (1)
        {
          v157 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            goto LABEL_111;
          }

          if (v157 >= v155)
          {
          }

          v154 = *&v150[8 * v157];
          ++v156;
          if (v154)
          {
            goto LABEL_76;
          }
        }
      }

      v43 = *(v40 + 8 * v60);
      ++v45;
      if (v43)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  result = sub_25EB6E9B8();
  __break(1u);
  return result;
}