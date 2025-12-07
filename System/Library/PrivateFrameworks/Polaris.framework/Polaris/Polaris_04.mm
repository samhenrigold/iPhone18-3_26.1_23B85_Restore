uint64_t ps_buffer_writer_camerastream_attach_synctag(uint64_t result)
{
  v3 = *(result + 128);
  if (v3)
  {
    if (v3 == 1)
    {
      v7[1] = v1;
      v7[2] = v2;
      v5 = ps_buffer_writer_camerastream_attach_synctag_cold_1(v7);
      return ps_buffer_writer_broadcast_resource(v5, v6);
    }
  }

  else
  {
    v4 = *(result + 160);

    return MEMORY[0x28219F040](v4);
  }

  return result;
}

uint64_t ps_buffer_writer_broadcast_resource(uint64_t a1, void *a2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    ps_buffer_writer_broadcast_resource_cold_1(&v6);
LABEL_4:
    v3 = a2;
    v4 = a1;
    ps_buffer_camera_stream_writer_increment_write_index();
    ps_gsm_notify(*(v4 + 144), *(v4 + 152), *v3 & 0xFFFFFFFFFFFFLL);
  }

  return 0;
}

void ps_buffer_writer_release(uint64_t a1)
{
  ps_gsm_remove_source(*(a1 + 144), *(a1 + 152));
  if (*(a1 + 128) == 1)
  {
    ps_buffer_delete_write_buffer();
  }

  else
  {
    ps_buffer_camera_stream_writer_stop();
    ps_buffer_delete_camera_stream_writer();
  }

  v2 = *(a1 + 136);
  if (v2 != -1)
  {
    ps_liveness_node_free(v2);
  }

  free(a1);
}

uint64_t OUTLINED_FUNCTION_9_3@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  *(v3 - 40) = a3;
  *a1 = 0;

  return ps_resource_get_key();
}

_BYTE *ps_synchronizer_init()
{
  v0 = malloc_type_calloc(1uLL, 0x1690uLL, 0x10300405BE762D9uLL);
  if (v0)
  {
    v1 = v0;
    v2 = 1248;
    bzero(v0, 0x4E0uLL);
    for (i = 0; i != 156; ++i)
    {
      v4 = &v1[v2];
      v4[176] = 0;
      v1[i + 2496] = 0;
      *v4 = 0;
      *&v1[4 * i + 3904] = -1;
      v2 += 8;
    }

    return v1;
  }

  else
  {
    inited = ps_synchronizer_init_cold_1(v10);
    return ps_synchronizer_register_writer(inited, v7, v8, v9);
  }
}

void ps_synchronizer_register_writer(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ps_synchronizer_register_writer_cold_5(&v18);
LABEL_13:
    ps_synchronizer_register_writer_cold_4(&v18);
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  v8 = a1 + 2496;
  v9 = (a1 + 8 * a3);
  if (a4 > 0x9B)
  {
    *(v8 + a3) = 1;
    v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    if (v11)
    {
LABEL_10:
      *v11 = 0;
      v9[566] = v11;
      goto LABEL_11;
    }

    ps_synchronizer_register_writer_cold_1(&v18);
  }

  else if (*(v8 + a4))
  {
    v10 = a1 + 1248;
    pthread_mutex_lock(*(a1 + 1248 + 8 * a4));
    *(v8 + a3) = 1;
    *(v10 + 8 * a3) = *(v10 + 8 * a4);
    *(a1 + 4528 + 8 * a3) = *(a1 + 4528 + 8 * a4);
    pthread_mutex_unlock(*(v10 + 8 * a4));
LABEL_11:
    v9[332] = a2;
    return;
  }

  v12 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  if (v12)
  {
    v13 = v12;
    v18.__sig = 0;
    *v18.__opaque = 0;
    pthread_mutexattr_init(&v18);
    pthread_mutexattr_settype(&v18, 2);
    pthread_mutex_init(v13, &v18);
    pthread_mutexattr_destroy(&v18);
    v9[156] = v13;
    *(v8 + a3) = 1;
    v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ps_synchronizer_register_writer_cold_3(&v18);
  }

  v14 = ps_synchronizer_register_writer_cold_2(&v17);
  ps_synchronizer_unregister_writer(v14, v15, v16);
}

void ps_synchronizer_unregister_writer(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ps_synchronizer_unregister_writer_cold_3(buf);
  }

  if (a3 > 0x9B)
  {
    v10 = a1 + 8 * a2;
    *(v10 + 2656) = 0;
    *(a1 + 4 * a2 + 3904) = -1;
    free(*(v10 + 4528));
    *(v10 + 4528) = 0;
    *v10 = 0;
    return;
  }

  v6 = a1 + 2496;
  if ((*(a1 + 2496 + a2) & 1) == 0)
  {
    ps_synchronizer_unregister_writer_cold_1(buf);
    goto LABEL_16;
  }

  v7 = *(a1 + 1248 + 8 * a2);
  if (!v7)
  {
LABEL_16:
    v11 = ps_synchronizer_unregister_writer_cold_2(buf);
    goto LABEL_17;
  }

  v8 = *(v6 + a3);
  pthread_mutex_lock(*(a1 + 1248 + 8 * a2));
  *(a1 + 1248 + 8 * a2) = 0;
  *(v6 + a2) = 0;
  v9 = a1 + 4528;
  if (v8)
  {
    *(v9 + 8 * a2) = 0;
    *(a1 + 4 * a2 + 3904) = -1;
    *(a1 + 8 * a2) = 0;

    pthread_mutex_unlock(v7);
    return;
  }

  free(*(v9 + 8 * a2));
  *(v9 + 8 * a2) = 0;
  *(a1 + 4 * a2 + 3904) = -1;
  *(a1 + 8 * a2) = 0;
  *(a1 + 2656 + 8 * a2) = 0;
  *(a1 + 2656 + 8 * a3) = 0;
  pthread_mutex_unlock(v7);
  v11 = pthread_mutex_destroy(v7);
  if (!v11)
  {

    free(v7);
    return;
  }

LABEL_17:
  v12 = v11;
  v23 = 0;
  v13 = asprintf(&v23, "Failed to destroy timestamp lock for resourceID %llu err=%d", a2, v11);
  v14 = __PLSLogSharedInstance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v25 = "ps_synchronizer_unregister_writer";
    v26 = 1024;
    v27 = 126;
    v28 = 2048;
    v29 = a2;
    v30 = 1024;
    v31 = v12;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_FAULT, "%s:%d Failed to destroy timestamp lock for resourceID %llu err=%d", buf, 0x22u);
  }

  v15 = OSLogFlushBuffers();
  if (v15)
  {
    v16 = v15;
    v17 = __PLSLogSharedInstance(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "ps_synchronizer_unregister_writer";
      v26 = 1024;
      v27 = v16;
      _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = abort_with_reason();
  ps_synchronizer_check_time_and_broadcast(v18, v19, v20, v21, v22);
}

uint64_t ps_synchronizer_check_time_and_broadcast(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  if (a4 > 0x9B)
  {
    v13 = a1 + 8 * a3;
    v14 = *(v13 + 2656);
    v33[0] = **(v13 + 4528);
    v15 = v33[0];
    ps_buffer_writer_camerastream_attach_synctag(v14);
    ++**(v13 + 4528);
    v34 = v15;
    v35 = a5;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    LOWORD(v32) = *(*(v14 + 168) + 56);
    v29 = a2;
    ps_telemetry_emit_event_internal(2, &v29, 0x30uLL, 8);
    ps_buffer_writer_broadcast_resource(v14, &v34);
    return 0;
  }

  else
  {
    v9 = a1 + 8 * a3;
    v10 = *(v9 + 1248);
    if (!v10)
    {
      ps_synchronizer_check_time_and_broadcast_cold_1(&v29);
    }

    if (pthread_mutex_lock(*(v9 + 1248)))
    {
      return 2;
    }

    else
    {
      v16 = *(a1 + 8 * a4);
      *(a1 + 8 * a3) = a2;
      v17 = a1 + 3904;
      *(a1 + 3904 + 4 * a3) = a5;
      if (v16)
      {
        v18 = a2 - v16;
        v19 = v16 > a2;
        v20 = v16 - a2;
        if (!v19)
        {
          v20 = v18;
        }

        if (v20 > 0x1D4C0)
        {
          v12 = 2;
        }

        else
        {
          v21 = *(v9 + 4528);
          v22 = (*v21)++;
          v35 = 0;
          v36 = v22;
          v23 = *(v17 + 4 * a4);
          v34 = v22;
          LODWORD(v35) = a5;
          v33[0] = v22;
          v33[1] = v23;
          v24 = *(a1 + 2656 + 8 * a3);
          v25 = *(a1 + 2656 + 8 * a4);
          ps_buffer_writer_camerastream_attach_synctag(v24);
          ps_buffer_writer_camerastream_attach_synctag(v25);
          v26 = ps_buffer_writer_broadcast_resource(v24, &v34);
          v27 = ps_buffer_writer_broadcast_resource(v25, v33);
          if (!v26)
          {
            *(a1 + 8 * a3) = 0;
            *(v17 + 4 * a3) = -1;
            v32 = 0;
            v30 = 0u;
            v31 = 0u;
            LOWORD(v32) = *(*(v24 + 168) + 56);
            v29 = a2;
            ps_telemetry_emit_event_internal(2, &v29, 0x30uLL, 8);
          }

          if (!v27)
          {
            *(a1 + 8 * a4) = 0;
            *(v17 + 4 * a4) = -1;
            v32 = 0;
            v30 = 0u;
            v31 = 0u;
            LOWORD(v32) = *(*(v25 + 168) + 56);
            v29 = a2;
            ps_telemetry_emit_event_internal(2, &v29, 0x30uLL, 8);
          }

          v12 = 2 * ((v27 | v26) != 0);
        }
      }

      else
      {
        v12 = 1;
      }

      pthread_mutex_unlock(v10);
    }
  }

  return v12;
}

void sub_25EAC8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EAC8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EAC9130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EACA920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void PSSG::Client::~Client(PSSG::Client *this)
{
  *this = &unk_2870BA6E8;
  v2 = *(this + 12);
  if (v2)
  {
    PSSG::Client::_deallocateOOLMem(this, v2, *(this + 26));
  }

  v3 = *(this + 17);
  if (v3)
  {
    PSSG::Client::_deallocateOOLMem(this, v3, *(this + 36));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1000);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 960);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 912);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 872);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 832);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 792);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 752);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 712);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 84);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 632);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 592);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 552);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 512);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 472);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 432);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 352);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 312);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 272);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 232);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 192);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 152);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 56);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  PSSG::Client::~Client(this);

  JUMPOUT(0x25F8C7C50);
}

double PSSG::Client::remoteHasRegistered(PSSG::Client *this, int a2)
{
  *(this + 13) = a2;
  if (*(this + 268))
  {
    PSSG::Client::handleRemoteExit(this);
  }

  *&result = 1;
  *(this + 134) = 1;
  *(this + 48) = 1;
  return result;
}

void *PSSG::Client::handleRemoteExit(PSSG::Client *this)
{
  v23 = *MEMORY[0x277D85DE8];
  *(this + 268) = 0;
  v2 = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 34);
  v5 = *(this + 66);
  if (v5)
  {
    *&v4 = 136315394;
    v19 = v4;
    do
    {
      v6 = v5[2];
      v7 = __PSSGLogSharedInstance(v2, v3);
      v2 = os_signpost_enabled(v7);
      if (v2)
      {
        v8 = this + 24;
        if (*(this + 47) < 0)
        {
          v8 = *(this + 3);
        }

        if (*(v6 + 23) < 0)
        {
          v6 = *v6;
        }

        *v20 = v19;
        *&v20[4] = v8;
        v21 = 2080;
        v22 = v6;
        v2 = _os_signpost_emit_unreliably_with_name_impl(&dword_25EA3A000, v7, 0, 0xEEEEB0B5B2B2EEEELL, "PSSG Log", "%s --- Client exited when blocked on (%s)", v19, *(&v19 + 1));
      }

      v5 = *v5;
    }

    while (v5);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 64);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 74);
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(this + 672);
  if (!PSSG::Server::isOrchestratorInitialized(*(this + 1)))
  {
    for (i = *(this + 71); i; i = *i)
    {
      PSSG::Resource::consumerNoLongerWantsResource(i[2], this);
    }
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 69);
  for (j = *(this + 9); j; j = *j)
  {
    PSSG::Resource::providerHasExited(j[2], v10);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 7);
  for (k = *(this + 91); k; k = *k)
  {
    PSSG::Resource::consumerNoLongerAwaitingContext(k[2], this);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 89);
  for (m = *(this + 96); m; m = *m)
  {
    PSSG::Resource::consumerNoLongerAwaitingResourceAvailabilityUpdates(m[2], this);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 94);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 99);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 104);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 59);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 49);
  for (n = *(this + 111); n; n = *n)
  {
    v15 = n[2];
    *v20 = this;
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>((v15 + 352), v20);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 109);
  for (ii = *(this + 116); ii; ii = *ii)
  {
    v17 = ii[2];
    *v20 = this;
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>((v17 + 1000), v20);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 114);
  *(this + 952) = 0;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 125);
  *(this + 1040) = 0;
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 120);
  *(this + 24) = 0;
  return result;
}

PSSG::Client *PSSG::Client::remoteHasDied(PSSG::Client *this, int a2)
{
  if (*(this + 13) == a2)
  {
    return PSSG::Client::handleRemoteExit(this);
  }

  return this;
}

void *PSSG::Client::remoteHasPublishedResourceStreams(PSSG::Client *this, void *a2, int a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    PSSG::Client::_deallocateOOLMem(this, v6, *(this + 26));
  }

  *(this + 12) = a2;
  *(this + 26) = a3;
  for (i = *(this + 9); i; i = *i)
  {
    PSSG::Resource::providerHasPublishedResourceStream(i[2]);
  }

  return PSSG::Client::notifyClientsAwaitingResourceStreams(this);
}

void *PSSG::Client::notifyClientsAwaitingResourceStreams(void *this)
{
  if (this[10])
  {
    v1 = this;
    if (this[12])
    {
      for (i = this[46]; i; i = *i)
      {
        v3 = i[2];
        if (*(v1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v1[3], v1[4]);
        }

        else
        {
          __p = *(v1 + 1);
        }

        p_p = &__p;
        std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 672), &__p, &std::piecewise_construct, &p_p, &v5)[5] = v1 + 7;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v1 + 44);
    }
  }

  return this;
}

void sub_25EACC7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Client::notifyClientsAwaitingResourceAvailabilityUpdates(uint64_t this)
{
  v1 = *(this + 408);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1[2];
      std::unordered_set<PSSG::Resource *>::unordered_set(v4, v2 + 472);
      PSSG::Client::providerHasSetResourceAvailability(v3, v4);
      this = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4);
      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

void sub_25EACC854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *PSSG::Client::providerHasSetResourceAvailability(void *result, uint64_t a2)
{
  v2 = result;
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(v2 + 94, &v5);
    if (result)
    {
      result = std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v2 + 104, &v5, &v5);
    }
  }

  for (j = v2[101]; j; j = *j)
  {
    v5 = j[2];
    result = std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v2 + 104, &v5, &v5);
  }

  return result;
}

void *PSSG::Client::remoteHasRequestedContext(PSSG::Client *this, PSSG::Client *a2)
{
  v5 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 109, &v5, &v5);
  v3 = v5;
  v6 = this;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(v5 + 44, &v6, &v6);
  return PSSG::Client::notifyClientsAwaitingResourceStreams(v3);
}

void *PSSG::Client::consumerIsAwaitingContext(PSSG::Client *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 44, &v4, &v4);
  return PSSG::Client::notifyClientsAwaitingResourceStreams(this);
}

PSSG::Client *PSSG::Client::remoteHasRequestedContextForResources(PSSG::Client *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v3 + 89, &v4, &v4);
      result = PSSG::Resource::consumerIsAwaitingContext(v4, v3);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t PSSG::Client::consumerIsAwaitingResourceAvailabilityUpdates(PSSG::Client *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 49, &v4, &v4);
  return PSSG::Client::notifyClientsAwaitingResourceAvailabilityUpdates(this);
}

void *PSSG::Client::remoteHasEnteredSleep(PSSG::Client *this)
{
  *(this + 269) = 1;
  for (i = *(this + 66); i; i = *i)
  {
    v4 = i[2];
    std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(this + 79, &v4, &v4);
    PSSG::Resource::consumerNoLongerWantsResource(v4, this);
  }

  return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 64);
}

uint64_t PSSG::Client::remoteHasExitedSleep(uint64_t this, uint64_t a2)
{
  *(this + 1076) = 0;
  for (i = *(this + 72); i; i = *i)
  {
    this = PSSG::Resource::providerIsAcceptingRequests(i[2], a2);
  }

  return this;
}

void *PSSG::Client::resourceIsNowBeingProduced(PSSG::Client *this, PSSG::Resource *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(this + 64, &v4);
  return std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(this + 74, &v4, &v4);
}

uint64_t PSSG::Client::remoteHasStoppedProducingResources(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerHasStoppedProducingResource(i[2], a2);
  }

  return result;
}

uint64_t PSSG::Client::setupResourcesCompleted(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  while (v2 != v3)
  {
    result = PSSG::Resource::providerHasSetupResource(*v2, *(v2 + 8));
    v2 += 16;
  }

  return result;
}

uint64_t PSSG::Client::pauseResourcesCompleted(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerHasPausedResource(i[2], a2);
  }

  return result;
}

uint64_t PSSG::Client::setupResourcesFailed(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerFailedToSetupResource(i[2], a2);
  }

  return result;
}

uint64_t PSSG::Client::pauseResourcesFailed(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerFailedToPauseResource(i[2], a2);
  }

  return result;
}

void *PSSG::Client::remoteHasRequestedCurrentGraphsForAllSessions(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 1000);
  if (a1 + 1000 != a2)
  {
    *(a1 + 1032) = *(a2 + 32);
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PSSG::Client *,void *> *>>((a1 + 1000), *(a2 + 16), 0);
  }

  v7 = a1;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(v3, &v7);
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((a1 + 960));
  *(a1 + 1040) = 1;
  for (i = *(a1 + 1016); i; i = *i)
  {
    v6 = i[2];
    v7 = a1;
    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>((v6 + 912), &v7, &v7);
  }

  return result;
}

void PSSG::Client::remoteHasPublishedCurrentGraphs(PSSG::Client *this, void *a2, unsigned int a3)
{
  v6 = *(this + 17);
  if (v6)
  {
    PSSG::Client::_deallocateOOLMem(this, v6, *(this + 36));
  }

  v7 = this + 24;
  std::string::operator=((this + 112), this + 1);
  *(this + 17) = a2;
  *(this + 36) = a3;
  for (i = *(this + 116); i; i = *i)
  {
    PSSG::Client::clientHasPublishedCurrentGraphs(i[2], this, this + 112);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 114);
  *(this + 952) = 0;
  if (*(this + 47) < 0)
  {
    v7 = *v7;
  }

  ps_telemetry_send_session_event(v7, 0, a2, a3);
}

void *PSSG::Client::clientHasPublishedCurrentGraphs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>((a1 + 1000), &v6);
  if (result)
  {
    std::__hash_table<PSSG::Graphs *,std::hash<PSSG::Graphs *>,std::equal_to<PSSG::Graphs *>,std::allocator<PSSG::Graphs *>>::__emplace_unique_key_args<PSSG::Graphs *,PSSG::Graphs * const&>((a1 + 960), &v5, &v5);
    return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>((a1 + 1000), &v6);
  }

  return result;
}

uint64_t PSSG::Client::clientStartingSystemReplay(uint64_t this, PSSG::Client *a2)
{
  *(this + 1048) = 1;
  *(this + 1056) = a2;
  *(this + 1064) = 1;
  return this;
}

uint64_t PSSG::Client::clientEndingSystemReplay(uint64_t this, PSSG::Client *a2)
{
  *(this + 1049) = 1;
  *(this + 1056) = a2;
  *(this + 1064) = 1;
  return this;
}

uint64_t PSSG::Client::requestPausedResources(uint64_t this, uint64_t a2)
{
  for (i = *(this + 248); i; i = *i)
  {
    this = PSSG::Resource::resumePausedResource(i[2], a2);
  }

  return this;
}

uint64_t PSSG::Client::systemIsPaused(uint64_t this, uint64_t a2)
{
  for (i = *(this + 248); i; i = *i)
  {
    this = PSSG::Resource::pauseResource(i[2], a2);
  }

  return this;
}

void PSSG::Client::flushResponses(void **a1, uint64_t a2)
{
  PSSG::Client::flushRegisterDeregisterAcknowledgements(a1, a2);
  PSSG::Client::flushContexts(a1, a2);
  PSSG::Client::flushResourceAvailabilityUpdates(a1, a2);
  PSSG::Client::flushResourceRequest(a1, a2);
  PSSG::Client::flushResourcePauseRequest(a1, a2, v4, v5, v6);
  PSSG::Client::flushResourceSetupRequest(a1, a2);
  PSSG::Client::flushCompletedResourceRequest(a1, a2);
  PSSG::Client::flushCurrentGraphsRequest(a1, a2);
  PSSG::Client::flushCompletedCurrentGraphsRequest(a1, a2);

  PSSG::Client::flushSystemReplayRequest(a1, a2);
}

void PSSG::Client::flushRegisterDeregisterAcknowledgements(uint64_t a1, uint64_t a2)
{
  v4[62] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      return;
    }

    if (*(a1 + 48))
    {
      PSSG::Client::flushRegisterDeregisterAcknowledgements();
    }

    goto LABEL_7;
  }

  if (*(a1 + 49))
  {
    PSSG::Client::flushRegisterDeregisterAcknowledgements();
  }

  PSSG::MessageBase::MessageBase(v4, 31, (a1 + 24));
  v4[0] = &unk_2870BA718;
  (*(a2 + 16))(a2, v4);
  PSSG::MessageBase::~MessageBase(v4);
  *(a1 + 48) = 0;
  if (*(a1 + 49))
  {
LABEL_7:
    PSSG::MessageBase::MessageBase(v4, 32, (a1 + 24));
    v4[0] = &unk_2870BA760;
    (*(a2 + 16))(a2, v4);
    PSSG::MessageBase::~MessageBase(v4);
    *(a1 + 49) = 0;
  }
}

void sub_25EACD158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::Client::flushContexts(uint64_t a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x277D85DE8];
  for (i = *(a1 + 688); i; i = *i)
  {
    v5 = *(i + 5);
    PSSG::Client::resourceKeysAndSupportedOptions(v5, v6);
    PSSG::MessagePublishResourceKeysAndStrides::MessagePublishResourceKeysAndStrides(v7, i + 1, v6);
    (*(a2 + 16))(a2, v7);
    v7[0] = &unk_2870BB4A8;
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v10);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    PSSG::MessageBase::~MessageBase(v7);
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v6);
    PSSG::MessageBase::MessageBase(v7, 25, i + 1, *(v5 + 40), *(v5 + 48));
    v7[0] = off_2870BA7A8;
    (*(a2 + 16))(a2, v7);
    PSSG::MessageBase::~MessageBase(v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(a1 + 672);
}

void **PSSG::Client::flushResourceAvailabilityUpdates(void **result, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  if (result[107])
  {
    v3 = result;
    memset(v8, 0, sizeof(v8));
    v9 = 1065353216;
    for (i = result[106]; i; i = *i)
    {
      v5 = i[2];
      v6 = v5[193];
      v10[0] = v5;
      *(std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v8, v5, &std::piecewise_construct, v10, &v7) + 40) = v6;
    }

    if (*(v3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, v3[3], v3[4]);
    }

    else
    {
      v7 = *(v3 + 1);
    }

    PSSG::MessageSetResourceAvailability::MessageSetResourceAvailability(v10, &v7, v8);
    (*(a2 + 16))(a2, v10);
    v10[0] = &unk_2870BB4D8;
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v13);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    PSSG::MessageBase::~MessageBase(v10);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 104);
    return std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v8);
  }

  return result;
}

void *PSSG::Client::flushResourceRequest(void *result, uint64_t a2)
{
  v3 = result;
  v16 = *MEMORY[0x277D85DE8];
  if (result[22] || result[37])
  {
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, result[3], result[4]);
    }

    else
    {
      v8 = *(result + 1);
    }

    v11[0] = &unk_2870BAA30;
    v11[1] = v3;
    v11[3] = v11;
    PSSG::mapStrideArray((v3 + 19), v11, v7);
    v10[0] = &unk_2870BAAC0;
    v10[1] = v3;
    v10[3] = v10;
    PSSG::mapStrideArray((v3 + 34), v10, v6);
    PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(v12, 26, &v8, v7, v6);
    v12[0] = &unk_2870BB608;
    (*(a2 + 16))(a2, v12);
    v4 = v15;
    v12[0] = &unk_2870BB508;
    v15 = 0;
    if (v4)
    {
      MEMORY[0x25F8C7C30](v4, 0x1000C80B3D5DE44);
    }

    v9 = &v14;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v9);
    v9 = &v13;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v9);
    PSSG::MessageBase::~MessageBase(v12);
    v9 = v6;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v9);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v10);
    v6[0] = v7;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](v6);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v11);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 19);
    for (i = v3[36]; i; i = *i)
    {
      v12[0] = i[2];
      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(v3 + 39, v12);
    }

    return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 34);
  }

  return result;
}

void sub_25EACD6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  PSSG::MessageRequestResourcesWithStrides::~MessageRequestResourcesWithStrides(&a30);
  a21 = &a9;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](&a22);
  a9 = &a12;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](&a26);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *PSSG::Client::flushResourcePauseRequest(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[62] = *MEMORY[0x277D85DE8];
  if (result[57])
  {
    v6 = result;
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, result[3], result[4]);
    }

    else
    {
      v11 = *(result + 1);
    }

    v12[0] = &unk_2870BAB40;
    v12[1] = v6;
    v13 = v12;
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    v7 = v6 + 56;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v8 = v7[2];
      (*(*v13 + 48))(v13, v8, a3, a4, a5);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v9, v8, v8);
    }

    PSSG::MessageBase::MessageBase(v14, 44, &v11, v9);
    v14[0] = &unk_2870BA7F0;
    (*(a2 + 16))(a2, v14);
    PSSG::MessageBase::~MessageBase(v14);
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v9);
    std::__function::__value_func<void ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v12);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v6 + 54);
  }

  return result;
}

void *PSSG::Client::flushResourceSetupRequest(void *result, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (result[27])
  {
    v3 = result;
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, result[3], result[4]);
    }

    else
    {
      v6 = *(result + 1);
    }

    v8[0] = &unk_2870BABD0;
    v8[1] = v3;
    v8[3] = v8;
    PSSG::mapStrideArray((v3 + 24), v8, v5);
    PSSG::MessageSetupResources::MessageSetupResources(v9, &v6, v5);
    (*(a2 + 16))(a2, v9);
    v4 = v12;
    v9[0] = &unk_2870BB508;
    v12 = 0;
    if (v4)
    {
      MEMORY[0x25F8C7C30](v4, 0x1000C80B3D5DE44);
    }

    v7 = &v11;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v7);
    v7 = &v10;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v7);
    PSSG::MessageBase::~MessageBase(v9);
    v7 = v5;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v8);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 24);
  }

  return result;
}

void *PSSG::Client::flushCompletedResourceRequest(void *result, uint64_t a2)
{
  v3 = result;
  v30 = *MEMORY[0x277D85DE8];
  if (result[77])
  {
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, result[3], result[4]);
    }

    else
    {
      v21 = *(result + 1);
    }

    v23[0] = &unk_2870BAC50;
    v23[1] = v3;
    v23[3] = v23;
    PSSG::mapStrideArray(v3 + 592, v23, buf);
    memset(v20, 0, sizeof(v20));
    PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(__p, 27, &v21, buf, v20);
    __p[0] = &unk_2870BB6E0;
    (*(a2 + 16))(a2, __p);
    v4 = v29;
    __p[0] = &unk_2870BB508;
    v29 = 0;
    if (v4)
    {
      MEMORY[0x25F8C7C30](v4, 0x1000C80B3D5DE44);
    }

    v22 = v28;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v22);
    v22 = v27;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v22);
    PSSG::MessageBase::~MessageBase(__p);
    v22 = v20;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v22);
    v20[0] = buf;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](v20);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v23);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((v3 + 592));
  }

  if (*(v3 + 656))
  {
    memset(&v21, 0, sizeof(v21));
    PSSG::MessageResourceRequestsFailed::MessageResourceRequestsFailed(__p, (v3 + 24), &v21);
    (*(a2 + 16))(a2, __p);
    v5 = v29;
    __p[0] = &unk_2870BB508;
    v29 = 0;
    if (v5)
    {
      MEMORY[0x25F8C7C30](v5, 0x1000C80B3D5DE44);
    }

    *buf = v28;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v27;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](buf);
    PSSG::MessageBase::~MessageBase(__p);
    *buf = &v21;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](buf);
    for (i = *(v3 + 648); i; i = *i)
    {
      v9 = i[2];
      v10 = __PSSGLogSharedInstance(v6, v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v9 + 23) >= 0)
        {
          v11 = *(v9 + 23);
        }

        else
        {
          v11 = v9[1];
        }

        std::string::basic_string[abi:ne200100](&v21, v11 + 1);
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v21;
        }

        else
        {
          v12 = v21.__r_.__value_.__r.__words[0];
        }

        if (v11)
        {
          if (*(v9 + 23) >= 0)
          {
            v13 = v9;
          }

          else
          {
            v13 = *v9;
          }

          memmove(v12, v13, v11);
        }

        *(&v12->__r_.__value_.__l.__data_ + v11) = 58;
        v14 = *(v3 + 47);
        if (v14 >= 0)
        {
          v15 = (v3 + 24);
        }

        else
        {
          v15 = *(v3 + 24);
        }

        if (v14 >= 0)
        {
          v16 = *(v3 + 47);
        }

        else
        {
          v16 = *(v3 + 32);
        }

        v17 = std::string::append(&v21, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v26 = v17->__r_.__value_.__r.__words[2];
        *__p = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (v26 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%s <-- Failed", buf, 0xCu);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }

      v6 = PSSG::Resource::logState(v9);
    }

    return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((v3 + 632));
  }

  return result;
}

void sub_25EACDED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void **p_p, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  PSSG::MessageRequestResourcesWithStrides::~MessageRequestResourcesWithStrides(&a30);
  p_p = &__p;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&p_p);
  _Unwind_Resume(a1);
}

void PSSG::Client::flushCurrentGraphsRequest(uint64_t a1, uint64_t a2)
{
  v4[62] = *MEMORY[0x277D85DE8];
  if (*(a1 + 936))
  {
    if ((*(a1 + 952) & 1) == 0)
    {
      PSSG::MessageBase::MessageBase(v4, 37, (a1 + 24));
      v4[0] = &unk_2870BA838;
      (*(a2 + 16))(a2, v4);
      PSSG::MessageBase::~MessageBase(v4);
      *(a1 + 952) = 1;
    }
  }
}

void sub_25EACE030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void *PSSG::Client::flushCompletedCurrentGraphsRequest(void *result, uint64_t a2)
{
  v5[62] = *MEMORY[0x277D85DE8];
  if (!result[128])
  {
    v2 = result;
    if (*(result + 1040) == 1)
    {
      for (i = result[122]; i; i = *i)
      {
        PSSG::MessageBase::MessageBase(v5, 28, i[2], i[2][3], *(i[2] + 8));
        v5[0] = off_2870BA880;
        (*(a2 + 16))(a2, v5);
        PSSG::MessageBase::~MessageBase(v5);
      }

      PSSG::MessageBase::MessageBase(v5, 38, (v2 + 24));
      v5[0] = &unk_2870BA8C8;
      (*(a2 + 16))(a2, v5);
      PSSG::MessageBase::~MessageBase(v5);
      *(v2 + 1040) = 0;
      return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((v2 + 960));
    }
  }

  return result;
}

void sub_25EACE18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::Client::flushSystemReplayRequest(uint64_t a1, uint64_t a2)
{
  v4[62] = *MEMORY[0x277D85DE8];
  if (*(a1 + 1048) == 1)
  {
    if ((*(a1 + 1064) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    PSSG::MessageBase::MessageBase(v4, 39, (*(a1 + 1056) + 24));
    v4[0] = &unk_2870BA910;
    (*(a2 + 16))(a2, v4);
    PSSG::MessageBase::~MessageBase(v4);
    *(a1 + 1048) = 0;
  }

  if (*(a1 + 1049) == 1)
  {
    if ((*(a1 + 1064) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    PSSG::MessageBase::MessageBase(v4, 40, (*(a1 + 1056) + 24));
    v4[0] = &unk_2870BA958;
    (*(a2 + 16))(a2, v4);
    PSSG::MessageBase::~MessageBase(v4);
    *(a1 + 1049) = 0;
  }

  if (*(a1 + 1050) == 1)
  {
    PSSG::MessageRequestGraphResubmission::MessageRequestGraphResubmission(v4);
    (*(a2 + 16))(a2, v4);
    PSSG::MessageBase::~MessageBase(v4);
    *(a1 + 1050) = 0;
  }

  if (*(a1 + 1051) == 1)
  {
    PSSG::MessageRequestReplayResources::MessageRequestReplayResources(v4);
    (*(a2 + 16))(a2, v4);
    PSSG::MessageBase::~MessageBase(v4);
    *(a1 + 1051) = 0;
  }

  if (*(a1 + 1064) == 1)
  {
    *(a1 + 1064) = 0;
  }
}

void sub_25EACE360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::Client::resourceKeysAndSupportedOptions(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = i[2];
    __p = 0;
    v18 = 0;
    v19 = 0;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](&v13, v4 + 224);
    v5 = v13;
    if (v13 != &v14)
    {
      do
      {
        v21 = *(v5 + 28);
        std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&__p, &v21);
        v6 = *(v5 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v5 + 2);
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != &v14);
    }

    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(&v13, v14);
    LODWORD(v13) = *(v4 + 216);
    v15 = 0;
    v14 = 0uLL;
    std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(&v14, __p, v18, (v18 - __p) >> 3);
    LOBYTE(v16) = 0;
    HIDWORD(v16) = 0;
    v21 = v4;
    v9 = std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v4, &std::piecewise_construct, &v21, &v20);
    *(v9 + 10) = v13;
    v10 = v9[6];
    if (v10)
    {
      v9[7] = v10;
      operator delete(v10);
      v9[6] = 0;
      v9[7] = 0;
      v9[8] = 0;
    }

    *(v9 + 3) = v14;
    v11 = v15;
    v12 = v16;
    v15 = 0;
    v14 = 0uLL;
    v9[8] = v11;
    v9[9] = v12;
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

void sub_25EACE50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void PSSG::mapStrideArray(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    v9 = *(a2 + 24);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v15);
    v10 = a6[1];
    if (v10 >= a6[2])
    {
      v13 = std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<PSSG::ResourceStridesEntry>(a6, v15);
      v14 = SHIBYTE(v19);
      a6[1] = v13;
      if (v14 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v11 = *v15;
      *(v10 + 16) = v16;
      *v10 = v11;
      v15[1] = 0;
      v16 = 0;
      v15[0] = 0;
      *(v10 + 24) = v17;
      v12 = __p;
      *(v10 + 48) = v19;
      *(v10 + 32) = v12;
      v19 = 0;
      __p = 0uLL;
      a6[1] = v10 + 56;
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_25EACE670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PSSG::ResourceStridesEntry::~ResourceStridesEntry(va);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *PSSG::Client::remoteHasPublishedResourcesWithStrides(PSSG::Client *this, uint64_t a2, void *a3)
{
  *(this + 268) = 2;
  for (i = *(a2 + 16); i; i = *i)
  {
    v9 = i[2];
    if (!std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(this + 7, &v9))
    {
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(this + 7, &v9, &v9);
      v6 = v9;
      v7 = std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::find<std::string>(a3, v9);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      PSSG::Resource::providerHasPublishedResource(v6, this, (v7 + 5));
    }
  }

  return PSSG::Client::notifyClientsAwaitingResourceStreams(this);
}

void *PSSG::Client::remoteHasSetResourceAvailability(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a1 + 24);
    do
    {
      v14 = v4[2];
      if (std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>((a1 + 56), &v14))
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((a1 + 472), &v14, &v14);
        v8 = v14;
        v9 = std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::find<std::string>(a3, v14);
        if (!v9)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        PSSG::Resource::providerHasSetResourceAvailability(v8, *(v9 + 40));
      }

      else
      {
        v10 = __PSSGLogSharedInstance(0, v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = a1 + 24;
          if (*(a1 + 47) < 0)
          {
            v11 = *v6;
          }

          v12 = v14;
          if (*(v14 + 23) < 0)
          {
            v12 = *v14;
          }

          *buf = 136381187;
          v16 = "remoteHasSetResourceAvailability";
          v17 = 2081;
          v18 = v11;
          v19 = 2081;
          v20 = v12;
          _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_ERROR, "%{private}s: Client %{private}s has not published resource %{private}s", buf, 0x20u);
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((a1 + 472));
}

void *PSSG::Client::remoteHasRequestedResourceAvailabilityUpdates(PSSG::Client *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = i[2];
    std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a1 + 94, &v6, &v6);
    v4 = v6;
    if (*(v6 + 214) == 1)
    {
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a1 + 99, &v6, &v6);
      v4 = v6;
    }

    PSSG::Resource::consumerIsAwaitingResourceAvailabilityUpdates(v4, a1);
  }

  return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(a1 + 99);
}

PSSG::Client *PSSG::Client::remoteHasRequestedToStopResourceAvailabilityUpdates(PSSG::Client *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(v3 + 94, &v4);
      result = PSSG::Resource::consumerNoLongerAwaitingResourceAvailabilityUpdates(v4, v3);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t PSSG::Client::remoteHasRequestedResources(uint64_t result, unsigned int **a2, unsigned int **a3)
{
  v5 = result;
  v84 = *MEMORY[0x277D85DE8];
  if (a2[1] != *a2 || a3[1] != *a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v74);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "\n    Resources wanted: ", 23);
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      do
      {
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "{", 1);
        v9 = *(*v6 + 23);
        if (v9 >= 0)
        {
          v10 = *v6;
        }

        else
        {
          v10 = **v6;
        }

        if (v9 >= 0)
        {
          v11 = *(*v6 + 23);
        }

        else
        {
          v11 = *(*v6 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        if (*(v6 + 8))
        {
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "@", 1);
          MEMORY[0x25F8C7B00](v12, *(v6 + 8));
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "}, ", 3);
        v6 += 16;
      }

      while (v6 != v7);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "\n    Resources no longer wanted: ", 33);
    v15 = *a3;
    v16 = a3[1];
    if (*a3 != v16)
    {
      do
      {
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "{", 1);
        v18 = *(*v15 + 23);
        if (v18 >= 0)
        {
          v19 = *v15;
        }

        else
        {
          v19 = **v15;
        }

        if (v18 >= 0)
        {
          v20 = *(*v15 + 23);
        }

        else
        {
          v20 = *(*v15 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
        if (*(v15 + 8))
        {
          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "@", 1);
          MEMORY[0x25F8C7B00](v21, *(v15 + 8));
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "}, ", 3);
        v15 += 16;
      }

      while (v15 != v16);
    }

    v22 = __PSSGLogSharedInstance(v13, v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str();
      v23 = (SBYTE7(v72) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "RequestedResources: %s", buf, 0xCu);
      if (SBYTE7(v72) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *__p = 0u;
    v72 = 0u;
    v73 = 1065353216;
    *buf = 0u;
    v82 = 0u;
    v83 = 1065353216;
    v24 = *a3;
    v25 = a3[1];
    if (*a3 != v25)
    {
      do
      {
        v80 = v24;
        v26 = std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(__p, v24, &std::piecewise_construct, &v80);
        v27 = v26;
        v29 = v26[4];
        v28 = v26[5];
        if (v29 >= v28)
        {
          v31 = v26[3];
          v32 = v29 - v31;
          v33 = (v29 - v31) >> 2;
          v34 = v33 + 1;
          if ((v33 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v35 = v28 - v31;
          if (v35 >> 1 > v34)
          {
            v34 = v35 >> 1;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v36 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v26 + 3), v36);
          }

          v37 = (v29 - v31) >> 2;
          v38 = (4 * v33);
          v39 = (4 * v33 - 4 * v37);
          *v38 = *(v24 + 8);
          v30 = v38 + 1;
          memcpy(v39, v31, v32);
          v40 = v27[3];
          v27[3] = v39;
          v27[4] = v30;
          v27[5] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = *(v24 + 8);
          v30 = v29 + 4;
        }

        v27[4] = v30;
        v24 += 16;
      }

      while (v24 != v25);
      for (i = v72; i; i = *i)
      {
        v68 = 0;
        v69 = 0;
        v43 = i[2];
        v42 = i[3];
        v70 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v68, v42, i[4], (i[4] - v42) >> 2);
        PSSG::Resource::consumerNoLongerWantsResourceAtStrides(v43, v5, &v68);
        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }
      }
    }

    v44 = *a2;
    v45 = a2[1];
    if (*(v5 + 1076) == 1)
    {
      while (v44 != v45)
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v5 + 632), v44, v44);
        v44 += 16;
      }
    }

    else
    {
      for (; v44 != v45; v44 += 16)
      {
        v80 = v44;
        v46 = std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(buf, v44, &std::piecewise_construct, &v80);
        v47 = v46;
        v49 = v46[4];
        v48 = v46[5];
        if (v49 >= v48)
        {
          v51 = v46[3];
          v52 = v49 - v51;
          v53 = (v49 - v51) >> 2;
          v54 = v53 + 1;
          if ((v53 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v55 = v48 - v51;
          if (v55 >> 1 > v54)
          {
            v54 = v55 >> 1;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v56 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = v54;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v46 + 3), v56);
          }

          v57 = (v49 - v51) >> 2;
          v58 = (4 * v53);
          v59 = (4 * v53 - 4 * v57);
          *v58 = *(v44 + 8);
          v50 = v58 + 1;
          memcpy(v59, v51, v52);
          v60 = v47[3];
          v47[3] = v59;
          v47[4] = v50;
          v47[5] = 0;
          if (v60)
          {
            operator delete(v60);
          }
        }

        else
        {
          *v49 = *(v44 + 8);
          v50 = v49 + 4;
        }

        v47[4] = v50;
      }

      for (j = v82; j; j = *j)
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v5 + 512), j + 2, j + 2);
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v5 + 552), j + 2, j + 2);
        v65 = 0;
        v66 = 0;
        v63 = j[2];
        v62 = j[3];
        v67 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v65, v62, j[4], (j[4] - v62) >> 2);
        PSSG::Resource::consumerWantsResourceAtStrides(v63, v5, &v65);
        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }
      }
    }

    std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(buf);
    std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(__p);
    v74[0] = *MEMORY[0x277D82818];
    v64 = *(MEMORY[0x277D82818] + 72);
    *(v74 + *(v74[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v75 = v64;
    v76 = MEMORY[0x277D82878] + 16;
    if (v78 < 0)
    {
      operator delete(v77[7].__locale_);
    }

    v76 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v77);
    std::iostream::~basic_iostream();
    return MEMORY[0x25F8C7BD0](&v79);
  }

  return result;
}

void sub_25EACF134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a22, MEMORY[0x277D82818]);
  MEMORY[0x25F8C7BD0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_25EACF44C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F8C7BD0](v1);
  _Unwind_Resume(a1);
}

void **PSSG::Client::remoteHasRequestedResources(void **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v4 = result;
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    if (*(result + 269) == 1)
    {
      do
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v4 + 79, v2, v2);
        v2 += 16;
      }

      while (v2 != v3);
    }

    else
    {
      do
      {
        v24 = v2;
        v5 = std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(&v21, v2, &std::piecewise_construct, &v24);
        v6 = v5;
        v8 = v5[4];
        v7 = v5[5];
        if (v8 >= v7)
        {
          v10 = v5[3];
          v11 = v8 - v10;
          v12 = (v8 - v10) >> 2;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v7 - v10;
          if (v14 >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v5 + 3), v15);
          }

          v16 = (v8 - v10) >> 2;
          v17 = (4 * v12);
          v18 = (4 * v12 - 4 * v16);
          *v17 = *(v2 + 8);
          v9 = v17 + 1;
          memcpy(v18, v10, v11);
          v19 = v6[3];
          v6[3] = v18;
          v6[4] = v9;
          v6[5] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8 = *(v2 + 8);
          v9 = v8 + 4;
        }

        v6[4] = v9;
        v2 += 16;
      }

      while (v2 != v3);
      for (i = v22; i; i = *i)
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v4 + 64, i + 2, i + 2);
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v4 + 69, i + 2, i + 2);
        PSSG::Resource::consumerWantsResource(i[2], v4);
      }
    }

    return std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(&v21);
  }

  return result;
}

uint64_t PSSG::Client::remoteIsNowProducingResources(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v4 + 312), v2, v2);
      result = PSSG::Resource::providerIsNowProducingResource(*v2, *(v2 + 8));
      v2 += 16;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t PSSG::Client::remoteFailedToProcessResourceRequests(uint64_t a1, PSSG::Resource ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    result = PSSG::Resource::providerFailedToProduceResource(v4, a2);
  }

  return result;
}

uint64_t PSSG::Client::remoteFailedToProcessNotificationsOfResourcesNoLongerWanted(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerFailedToProcessNoLongerWantedNotification(i[2], a2);
  }

  return result;
}

uint64_t PSSG::Client::remoteProcessedNotificationsOfResourcesNoLongerWanted(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerProcessedNoLongerWantedNotification(i[2], a2);
  }

  return result;
}

void PSSG::Client::_deallocateOOLMem(PSSG::Client *this, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x25F8C9D00](*MEMORY[0x277D85F48]);
  if (v6)
  {
    v8 = v6;
    v9 = __PSSGLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (this + 24);
      if (*(this + 47) < 0)
      {
        v10 = *v10;
      }

      v11 = 136316418;
      v12 = "_deallocateOOLMem";
      v13 = 1024;
      v14 = 880;
      v15 = 2080;
      v16 = v10;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = a3;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s %d Client= %s, failed to vm_deallocate addr %p of size:%lu ret=%#x\n", &v11, 0x36u);
    }
  }
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v4;
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 488) = 0;
  return a1;
}

void PSSG::MessageRegisterAck::~MessageRegisterAck(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageDeRegisterAck::~MessageDeRegisterAck(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishResourceKeysAndStrides::~MessagePublishResourceKeysAndStrides(PSSG::MessagePublishResourceKeysAndStrides *this)
{
  *this = &unk_2870BB4A8;
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4A8;
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4A8;
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = a2;
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

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = a5;
  *(a1 + 128) = a4;
  *(a1 + 488) = 0;
  return a1;
}

void PSSG::MessagePublishResourceStreams::~MessagePublishResourceStreams(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishResourceStreams::description(PSSG::MessagePublishResourceStreams *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "Publish resource streams: ");
  std::to_string(&v13, *(this + 30));
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v13;
  }

  else
  {
    v4 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v14, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, " bytes");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_25EACFC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSetResourceAvailability::~MessageSetResourceAvailability(void **this)
{
  *this = &unk_2870BB4D8;
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 65);
  v2 = this[62];
  if (v2)
  {
    this[63] = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4D8;
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 65);
  v2 = this[62];
  if (v2)
  {
    this[63] = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4D8;
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 65);
  v2 = this[62];
  if (v2)
  {
    this[63] = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<PSSG::ResourceStridesEntry>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 6);
  v9 = a2[2];
  *(v7 + 48) = *(a2 + 6);
  *(v7 + 32) = v9;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  *&v18 = 56 * v2 + 56;
  v10 = a1[1];
  v11 = 56 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(&v16);
  return v15;
}

void sub_25EACFE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 6);
      v9 = v7[2];
      *(a4 + 48) = *(v7 + 6);
      *(a4 + 32) = v9;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 4) = 0;
      v7 = (v7 + 56);
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](a1, v5);
      v5 = (v5 + 56);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(void **a1)
{
  std::__split_buffer<PSSG::ResourceStridesEntry>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PSSG::ResourceStridesEntry>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void PSSG::ResourceStridesEntry::~ResourceStridesEntry(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void PSSG::MessageRequestResourcesWithStrides::~MessageRequestResourcesWithStrides(PSSG::MessageRequestResourcesWithStrides *this)
{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
  MEMORY[0x25F8C7C50]();
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v6;
  }

  std::unordered_set<std::string>::unordered_set(a1 + 40, a4);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 488) = 0;
  return a1;
}

void sub_25EAD0284(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessagePauseResources::~MessagePauseResources(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePauseResources::description(PSSG::MessagePauseResources *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v47, "Pause resources: ");
  v4 = *(this + 8);
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v55, "[");
    v7 = *(this + 7);
    v10 = *(v7 + 16);
    v8 = v7 + 16;
    v9 = v10;
    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    v14 = std::string::append(v6, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v54, "]");
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v54;
    }

    else
    {
      v16 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v56, v16, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v46 = v18->__r_.__value_.__r.__words[2];
    *v45 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v55.__r_.__value_.__r.__words[0];
LABEL_60:
      operator delete(v20);
    }
  }

  else
  {
    if (!v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "[]");
      goto LABEL_61;
    }

    std::string::basic_string[abi:ne200100]<0>(&v53, "[");
    v21 = *(this + 7);
    v24 = *(v21 + 16);
    v22 = v21 + 16;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v28 = std::string::append(&v53, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v51, " +");
    if ((v52 & 0x80u) == 0)
    {
      v30 = v51;
    }

    else
    {
      v30 = v51[0];
    }

    if ((v52 & 0x80u) == 0)
    {
      v31 = v52;
    }

    else
    {
      v31 = v51[1];
    }

    v32 = std::string::append(&v54, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v50, v5);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v50;
    }

    else
    {
      v34 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v50.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v55, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, " more]");
    if ((v49 & 0x80u) == 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = __p[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v39 = v49;
    }

    else
    {
      v39 = __p[1];
    }

    v40 = std::string::append(&v56, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v46 = v40->__r_.__value_.__r.__words[2];
    *v45 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v53.__r_.__value_.__r.__words[0];
      goto LABEL_60;
    }
  }

LABEL_61:
  if (v46 >= 0)
  {
    v42 = v45;
  }

  else
  {
    v42 = v45[0];
  }

  if (v46 >= 0)
  {
    v43 = HIBYTE(v46);
  }

  else
  {
    v43 = v45[1];
  }

  v44 = std::string::append(&v47, v42, v43);
  *a2 = *v44;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD0604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 41) < 0)
  {
    operator delete(*(v44 - 64));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25EAD09D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD0A94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *PSSG::MessageSetupResources::MessageSetupResources(uint64_t *a1, __int128 *a2, void *a3)
{
  memset(v5, 0, sizeof(v5));
  PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(a1, 43, a2, a3, v5);
  v6 = v5;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v6);
  *a1 = &unk_2870BB698;
  return a1;
}

void sub_25EAD0B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *PSSG::MessageResourceRequestsFailed::MessageResourceRequestsFailed(uint64_t *a1, __int128 *a2, void *a3)
{
  memset(v5, 0, sizeof(v5));
  PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(a1, 29, a2, a3, v5);
  v6 = v5;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v6);
  *a1 = &unk_2870BB650;
  return a1;
}

void sub_25EAD0BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PSSG::MessageRequestCurrentGraphs::~MessageRequestCurrentGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishCurrentGraphs::~MessagePublishCurrentGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishCurrentGraphs::description(PSSG::MessagePublishCurrentGraphs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "Publish current graphs: ");
  std::to_string(&v13, *(this + 30));
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v13;
  }

  else
  {
    v4 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v14, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, " bytes");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD0D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageCompletedCurrentGraphsRequest::~MessageCompletedCurrentGraphsRequest(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void PSSG::MessageSystemReplayStarting::~MessageSystemReplayStarting(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSystemReplayEnding::~MessageSystemReplayEnding(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

PSSG::MessageRequestGraphResubmission *PSSG::MessageRequestGraphResubmission::MessageRequestGraphResubmission(PSSG::MessageRequestGraphResubmission *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  PSSG::MessageBase::MessageBase(this, 41, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2870BA9A0;
  return this;
}

void sub_25EAD0F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestGraphResubmission::~MessageRequestGraphResubmission(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

PSSG::MessageRequestReplayResources *PSSG::MessageRequestReplayResources::MessageRequestReplayResources(PSSG::MessageRequestReplayResources *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  PSSG::MessageBase::MessageBase(this, 42, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2870BA9E8;
  return this;
}

void sub_25EAD1034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestReplayResources::~MessageRequestReplayResources(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void *std::map<unsigned int,unsigned int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(void *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, void *a4)
{
  v4 = *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
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

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned int,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EAD1464(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned int,unsigned int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8C7B80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25EAD1598(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F8C7AD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F8C7AE0](v13);
  return a1;
}

void sub_25EAD1700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F8C7AE0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25EAD16E0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25EAD1934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAD1C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD1CF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::unordered_set<PSSG::Resource *>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(void *a1, void *a2, void *a3)
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

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(void *a1, void *a2, void *a3)
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

uint64_t std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(void *a1, void *a2)
{
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(a1, a2);
  if (result)
  {
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
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
      if (result[2] == *a2)
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

uint64_t std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAD2678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD2740(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PSSG::Client *,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_multi<PSSG::Client * const&>(a1);
  }
}

void sub_25EAD287C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25EAD2E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<PSSG::Graphs *,std::hash<PSSG::Graphs *>,std::equal_to<PSSG::Graphs *>,std::allocator<PSSG::Graphs *>>::__emplace_unique_key_args<PSSG::Graphs *,PSSG::Graphs * const&>(void *a1, void *a2, void *a3)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,PSSG::ResourceOptions>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,PSSG::ResourceOptions>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAD3468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD3530(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAA30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a2 + 51);
  v7 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    v9 = &v24;
    std::string::basic_string[abi:ne200100](&v24, v8 + 1);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 58;
    v13 = *(v5 + 24);
    v12 = v5 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&v24, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    v20 = v25.__r_.__value_.__r.__words[0];
    PSSG::Resource::describe(&__p, v6);
    v21 = &v25;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v27 = v21;
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- Wanted@%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, a2[1]);
  }

  else
  {
    v25 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &v25, v6, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD38B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *PSSG::ResourceStridesEntry::ResourceStridesEntry(std::string *this, __int128 *a2, int a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 32) = __p;
  }

  return this;
}

void sub_25EAD3A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_1,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAAC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_1,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    v8 = &v19;
    std::string::basic_string[abi:ne200100](&v19, v7 + 1);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v19.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 58;
    v12 = *(v5 + 24);
    v11 = v5 + 24;
    v10 = v12;
    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = *(v11 + 8);
    }

    v16 = std::string::append(&v19, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v22 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s <-- No longer wanted", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, a2[1]);
  }

  else
  {
    __p = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v19, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &__p, 0, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD3DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_1,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PSSG::Client::flushResourcePauseRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,void ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAB40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<PSSG::Client::flushResourcePauseRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,void ()(PSSG::Resource const&)>::operator()(uint64_t a1, const void **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    v6 = &v18;
    std::string::basic_string[abi:ne200100](&v18, v5 + 1);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v18.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v10 = *(v3 + 24);
    v9 = v3 + 24;
    v8 = v10;
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = *(v9 + 8);
    }

    v14 = std::string::append(&v18, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = __p;
    if (v20 < 0)
    {
      v16 = __p[0];
    }

    *buf = 136315138;
    v22 = v16;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s <-- Pause", buf, 0xCu);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  return PSSG::Resource::logState(a2);
}

void sub_25EAD408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourcePauseRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,void ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<PSSG::Client::flushResourceSetupRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BABD0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushResourceSetupRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a2 + 51);
  v7 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    v9 = &v24;
    std::string::basic_string[abi:ne200100](&v24, v8 + 1);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 58;
    v13 = *(v5 + 24);
    v12 = v5 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&v24, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    v20 = v25.__r_.__value_.__r.__words[0];
    PSSG::Resource::describe(&__p, v6);
    v21 = &v25;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v27 = v21;
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- Setup@%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, a2[1]);
  }

  else
  {
    v25 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &v25, v6, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD4458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourceSetupRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PSSG::Client::flushCompletedResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAC50;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushCompletedResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a2 + 49);
  v7 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    v9 = &v24;
    std::string::basic_string[abi:ne200100](&v24, v8 + 1);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 58;
    v13 = *(v5 + 24);
    v12 = v5 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&v24, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    v20 = v25.__r_.__value_.__r.__words[0];
    PSSG::Resource::describe(&__p, v6);
    v21 = &v25;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v27 = v21;
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- Completed@%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, a2[1]);
  }

  else
  {
    v25 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &v25, v6, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD47E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushCompletedResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAD4AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,PSSG::ResourceOptions>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
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
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EAD4FE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t PSSG::ServerComms::registerOrchestrator(PSSG::ServerComms *this, void *a2)
{
  *(*(this + 10) + 184) = a2;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN4PSSG11ServerComms20registerOrchestratorEPv_block_invoke;
  v3[3] = &__block_descriptor_40_e24_v16__0__NSMutableArray_8l;
  v3[4] = this;
  return [a2 setNotifier:v3];
}

void ___ZN4PSSG11ServerComms20registerOrchestratorEPv_block_invoke(uint64_t a1, void *a2)
{
  v3[46] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3[0] = &unk_2870BB538;
  v3[1] = v2;
  PSSG::MessageResourceStateUpdate::serialize(v3);
  ps_comms_client_send();
}

void PSSG::Server::forwardMessage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v16 = v2;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    for (i = *(a2 + 536); i; i = *i)
    {
      v6 = objc_alloc_init(PSSupportedCadencesConfig);
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 10)];
      [(PSSupportedCadencesConfig *)v6 setDefaultStride:v7];

      if (*(i + 19) == -1)
      {
        [(PSSupportedCadencesConfig *)v6 setBaseMSGSyncID:0];
      }

      else
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        [(PSSupportedCadencesConfig *)v6 setBaseMSGSyncID:v8];
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = i[6];
      v10 = i[7];
      while (v11 != v10)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[1]];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v11];
        [v9 setObject:v12 forKeyedSubscript:v13];

        v11 += 2;
      }

      [(PSSupportedCadencesConfig *)v6 setSupportedCadences:v9];
      v14 = i + 2;
      if (*(i + 39) < 0)
      {
        v14 = *v14;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
      [v4 setObject:v6 forKeyedSubscript:v15];
    }

    [v16 setupSupportedCadences:v4];
  }
}

{
  v2 = *(a1 + 184);
  if (v2)
  {
    v9 = v2;
    v6 = *(a2 + 16);
    v5 = a2 + 16;
    v4 = v6;
    if (*(v5 + 23) >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    [v9 execSessionRemoved:v8];
  }
}

{
  v2 = *(a1 + 184);
  if (v2)
  {
    v9 = v2;
    v6 = *(a2 + 16);
    v5 = a2 + 16;
    v4 = v6;
    if (*(v5 + 23) >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    [v9 execSessionRemoved:v8];
  }
}

void PSSG::Server::forwardMessage(PSSG::Server *this, const PSSG::MessageCompletedResourceRequestWithStrides *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(&v12, *(a2 + 62), *(a2 + 63), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 63) - *(a2 + 62)) >> 3));
    v6 = v12;
    for (i = v13; v6 != i; v6 += 56)
    {
      v8 = objc_alloc_init(PSResourceStateUpdate);
      v9 = v6;
      if (*(v6 + 23) < 0)
      {
        v9 = *v6;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [(PSResourceStateUpdate *)v8 setResourceName:v10];

      [(PSResourceStateUpdate *)v8 setState:2];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v6 + 24)];
      [(PSResourceStateUpdate *)v8 setStride:v11];

      [v5 addObject:v8];
    }

    [v4 resourceStateUpdate:v5];
    v15 = &v12;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v15);
  }
}

void sub_25EAD5520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void PSSG::Server::forwardMessage(PSSG::Server *this, const PSSG::MessageSetupCompleted *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(&v12, *(a2 + 62), *(a2 + 63), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 63) - *(a2 + 62)) >> 3));
    v6 = v12;
    for (i = v13; v6 != i; v6 += 56)
    {
      v8 = objc_alloc_init(PSResourceStateUpdate);
      v9 = v6;
      if (*(v6 + 23) < 0)
      {
        v9 = *v6;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [(PSResourceStateUpdate *)v8 setResourceName:v10];

      [(PSResourceStateUpdate *)v8 setState:1];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v6 + 24)];
      [(PSResourceStateUpdate *)v8 setStride:v11];

      [v5 addObject:v8];
    }

    [v4 resourceStateUpdate:v5];
    v15 = &v12;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v15);
  }
}

void sub_25EAD56D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageResourceStateUpdate *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 resourceName];
        v9 = v8;
        v10 = [v8 UTF8String];
        v11 = strlen(v10);
        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v12 = v11;
        if (v11 >= 0x17)
        {
          operator new();
        }

        v17 = v11;
        if (v11)
        {
          memmove(&__dst, v10, v11);
        }

        *(&__dst + v12) = 0;
        p_dst = &__dst;
        v13 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 6, &__dst, &std::piecewise_construct, &p_dst)[5];
        if (v17 < 0)
        {
          operator delete(__dst);
        }

        v14 = [v7 desiredStride];
        PSSG::Resource::orchestratorHasSetState(v13, [v14 unsignedIntValue], objc_msgSend(v7, "wantedByConsumers"));
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

uint64_t *std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PSSG::ResourceStridesEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EAD5B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<PSSG::ResourceStridesEntry>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 32), *(v6 + 4), *(v6 + 5));
      }

      else
      {
        v8 = v6[2];
        v4[2].__r_.__value_.__r.__words[0] = *(v6 + 6);
        *&v4[1].__r_.__value_.__r.__words[1] = v8;
      }

      v6 = (v6 + 56);
      v4 = (v13 + 56);
      v13 = (v13 + 56);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
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

std::string *PSSG::Resource::Resource(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[2]) = 1065353216;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = 1065353216;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[6].__r_.__value_.__l.__data_) = 1065353216;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[7].__r_.__value_.__r.__words[2]) = 1065353216;
  this[9].__r_.__value_.__r.__words[2] = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__s.__data_[8] = 0;
  *(&this[8].__r_.__value_.__r.__words[2] + 4) = 0;
  *(&this[8].__r_.__value_.__r.__words[1] + 4) = 0;
  this[9].__r_.__value_.__l.__size_ = &this[9].__r_.__value_.__r.__words[2];
  this[10].__r_.__value_.__r.__words[2] = 0;
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = &this[10].__r_.__value_.__r.__words[2];
  return this;
}

uint64_t PSSG::Resource::providerHasPublishedResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 232);
  v6 = *(a1 + 232);
  *(a1 + 24) = a2;
  v8 = a1 + 224;
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1 + 224, v6);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
  *(v7 - 4) = 0;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  if (v12 != v11)
  {
    *(a1 + 216) = *a3;
    do
    {
      v9 = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int> const&>(v8, v11, v11);
      v11 += 2;
    }

    while (v11 != v12);
  }

  if (*(a3 + 32) == 1)
  {
    *(a1 + 215) = 1;
    v9 = PSSG::Client::resourceCanBePaused(*(a1 + 24), a1);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v42 = *(a2 + 24);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v42.__r_.__value_.__l.__size_ != 14)
    {
      goto LABEL_18;
    }

    v13 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) != 14)
    {
      goto LABEL_18;
    }

    v13 = &v42;
  }

  v14 = v13->__r_.__value_.__r.__words[0];
  v15 = *(v13->__r_.__value_.__r.__words + 6);
  if (v14 == 0x72506172656D6143 && v15 == 0x72656469766F7250)
  {
    v18 = 1;
    if ((*(&v42.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_18:
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v41 = *(a2 + 24);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = v41.__r_.__value_.__l.__size_ == 12 && *v41.__r_.__value_.__l.__data_ == 0x65526D6574737953 && *(v41.__r_.__value_.__r.__words[0] + 8) == 2036427888;
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  else
  {
    v18 = SHIBYTE(v41.__r_.__value_.__r.__words[2]) == 12 && v41.__r_.__value_.__r.__words[0] == 0x65526D6574737953 && LODWORD(v41.__r_.__value_.__r.__words[1]) == 2036427888;
  }

  if ((*(&v42.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_42:
    operator delete(v42.__r_.__value_.__l.__data_);
  }

LABEL_43:
  if (v18)
  {
    *(a1 + 192) = 1;
  }

  v20 = __PSSGLogSharedInstance(v9, v10);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = *(a1 + 23);
    }

    else
    {
      v21 = *(a1 + 8);
    }

    v22 = &v40;
    std::string::basic_string[abi:ne200100](&v40, v21 + 1);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v40.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if (*(a1 + 23) >= 0)
      {
        v23 = a1;
      }

      else
      {
        v23 = *a1;
      }

      memmove(v22, v23, v21);
    }

    *(&v22->__r_.__value_.__l.__data_ + v21) = 58;
    v24 = *(a1 + 24);
    if (v24)
    {
      if (*(v24 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *(v24 + 24), *(v24 + 32));
      }

      else
      {
        v39 = *(v24 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v39, "NULL (likely due to a Polaris client error)");
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v39;
    }

    else
    {
      v25 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v40, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
    v30 = v41.__r_.__value_.__r.__words[0];
    v31 = *(a3 + 32);
    PSSG::Resource::describeSupportedStrides(a1, __p);
    v32 = &v41;
    if (v29 < 0)
    {
      v32 = v30;
    }

    v33 = "unsupported";
    if (v31)
    {
      v33 = "supported";
    }

    v34 = *(a3 + 36);
    LODWORD(v42.__r_.__value_.__l.__data_) = 136316162;
    *(v42.__r_.__value_.__r.__words + 4) = v32;
    if (v38 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    WORD2(v42.__r_.__value_.__r.__words[1]) = 2080;
    *(&v42.__r_.__value_.__r.__words[1] + 6) = "providerHasPublishedResource";
    HIWORD(v42.__r_.__value_.__r.__words[2]) = 2080;
    v43 = v33;
    v44 = 2080;
    v45 = v35;
    v46 = 1024;
    v47 = v34;
    _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "%s --> %s [setup/pause %s] %s [%u]", &v42, 0x30u);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  return PSSG::Resource::sendOutgoingMessages(a1);
}

void sub_25EAD6478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *PSSG::Resource::describeSupportedStrides@<X0>(PSSG::Resource *this@<X0>, void *a2@<X8>)
{
  if (*(this + 30))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "[", 1);
    v3 = *(this + 28);
    if (v3 != (this + 232))
    {
      v4 = 1;
      do
      {
        if ((v4 & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ",", 1);
        }

        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(", 1);
        v6 = MEMORY[0x25F8C7B00](v5, *(v3 + 7));
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/", 1);
        v8 = MEMORY[0x25F8C7B00](v7, *(v3 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
        if (*(v3 + 7) == *(this + 54))
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " (default)", 10);
        }

        v9 = *(v3 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v4 = 0;
        v3 = v10;
      }

      while (v10 != (this + 232));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "]", 1);
    std::stringbuf::str();
    v14[0] = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v15 = v12;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    return MEMORY[0x25F8C7BD0](&v19);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "[]");
  }
}

uint64_t PSSG::Resource::sendOutgoingMessages(PSSG::Client **this)
{
  result = PSSG::Resource::logState(this);
  if (*(this + 52) == 1)
  {
    for (i = this[11]; i; i = *i)
    {
      PSSG::Client::resourceIsNowBeingProduced(*(i + 2), this);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 9);
  }

  if (this[3])
  {
    if (*(this + 214) == 1)
    {
      for (j = this[16]; j; j = *j)
      {
        PSSG::Client::consumerIsAwaitingContext(this[3], *(j + 2));
      }

      for (k = this[21]; k; k = *k)
      {
        PSSG::Client::consumerIsAwaitingResourceAvailabilityUpdates(this[3], *(k + 2));
      }

      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 14);
    }

    if (*(this + 212) == 1)
    {
      v6 = this[3];

      return PSSG::Client::isAcceptingRequests(v6);
    }

    else
    {
      v7 = *(this + 213);
      result = PSSG::Client::isAcceptingRequests(this[3]);
      if (result && (v7 & 1) == 0)
      {
        if (this[25] & 1) != 0 || *(this + 52) == 1 && (*(this + 52) = 0, PSSG::Client::resourceNeedsToBeUnlocked(this[3], this), (this[25]) || *(this + 195) == 1 && (*(this + 212) = 1, *(this + 195) = 0, PSSG::Client::resourceNoLongerHasConsumers(this[3], this), (this[25]))
        {
          if (*(this + 195) == 1 && !*(this + 52))
          {
            *(this + 213) = 1;
            PSSG::Client::resourceNeedsToBeLocked(this[3], this);
          }
        }

        if (PSSG::Resource::needToSendWanted(this) && (*(this + 200) != 1 || *(this + 195) != 1 || *(this + 52)))
        {
          *(this + 212) = 1;
          PSSG::Client::resourceNowHasConsumers(this[3], this);
        }

        result = PSSG::Resource::needToSendSetup(this);
        if (result)
        {
          *(this + 212) = 1;
          result = PSSG::Client::resourceNeedsToBeSetup(this[3], this);
        }

        if (*(this + 200) == 1)
        {
          result = PSSG::Client::isUserInactive(this[3]);
          if (result)
          {
            if (*(this + 215) == 1 && *(this + 194) == 1)
            {
              *(this + 212) = 1;
              v8 = this[3];

              return PSSG::Client::resourceNeedsToBePaused(v8, this);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t PSSG::Resource::providerHasExited(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerHasExited";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 3) = 0;
  *(this + 214) = 0;
  *(this + 97) = 0;
  *(this + 49) = 0;
  *(this + 212) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD6BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::consumerIsAwaitingContext(PSSG::Client **this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 14, &v4, &v4);
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::consumerIsAwaitingResourceAvailabilityUpdates(PSSG::Client **this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 19, &v4, &v4);
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::providerIsNowProducingResource(PSSG::Resource *this, PSSG::Resource *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v20;
    std::string::basic_string[abi:ne200100](&v20, v5 + 1);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v20.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v8 = *(this + 3);
    if (v8)
    {
      if (*(v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v19 = *(v8 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v19, "NULL (likely due to a Polaris client error)");
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v20, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22 = v11->__r_.__value_.__r.__words[2];
    *v21 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = SHIBYTE(v22);
    v14 = v21[0];
    PSSG::Resource::describe(&__p, a2);
    v15 = v21;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v24 = v15;
    v25 = 2080;
    v26 = "providerIsNowProducingResource";
    v27 = 2080;
    v28 = p_p;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s @ %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  *(this + 97) = 257;
  *(this + 49) = a2;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD6F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *PSSG::Resource::describe@<X0>(std::string *__return_ptr a1@<X8>, PSSG::Resource *this@<X0>)
{
  if (this)
  {
    return std::to_string(a1, this);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a1, "_");
  }
}

uint64_t PSSG::Resource::providerIsAcceptingRequests(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerIsAcceptingRequests";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::resumePausedResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "resumePausedResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD73BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::pauseResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "pauseResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD75DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasStoppedProducingResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerHasStoppedProducingResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 194) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD7800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasSetResourceAvailability(PSSG::Resource *this, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v4 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v16;
    std::string::basic_string[abi:ne200100](&v16, v5 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v16.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v8 = *(this + 3);
    if (v8)
    {
      if (*(v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v15 = *(v8 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v15, "NULL (likely due to a Polaris client error)");
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v18 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = __p;
    if (v18 < 0)
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v20 = v13;
    v21 = 2080;
    v22 = "providerHasSetResourceAvailability";
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  *(this + 193) = v2;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD7A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::consumerWantsResourceAtStrides(const void **a1, uint64_t a2, unsigned int **a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v6 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = &v24;
    std::string::basic_string[abi:ne200100](&v24, v7 + 1);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v24.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 58;
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v23 = *(a2 + 24);
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v23;
    }

    else
    {
      v10 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v24, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v26 = v12->__r_.__value_.__r.__words[2];
    *v25 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = SHIBYTE(v26);
    v15 = v25[0];
    PSSG::describeStrides(a3);
    v16 = v25;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    *v29 = v16;
    *&v29[8] = 2080;
    *&v29[10] = "consumerWantsResourceAtStrides";
    v30 = 2080;
    v31 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s --> %s %s", buf, 0x20u);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (*a3 != a3[1])
  {
    *buf = **a3;
    *&v29[4] = a2;
    std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__emplace_multi<std::pair<unsigned int const,PSSG::Client *>>((a1 + 31), buf);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(a1 + 9, &v27, &v27);
  v18 = PSSG::Resource::computeDesiredStride(a1);
  if ((v18 & 0x100000000) != 0)
  {
    *(a1 + 51) = v18;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 200) = v19;
  return PSSG::Resource::sendOutgoingMessages(a1);
}

void sub_25EAD7CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::describeStrides(unsigned int **a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "[", 1);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 1;
    do
    {
      v6 = *v3;
      if ((v5 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, ",", 1);
      }

      PSSG::Resource::describe(&__p, v6);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = 0;
      ++v3;
    }

    while (v3 != v4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "]", 1);
  std::stringbuf::str();
  v12[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v9;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8C7BD0](&v17);
}

uint64_t PSSG::Resource::consumerNoLongerWantsResourceAtStrides(const void **a1, uint64_t a2, unsigned int **a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = __PSSGLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = &v38;
    std::string::basic_string[abi:ne200100](&v38, v7 + 1);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v38.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 58;
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v37 = *(a2 + 24);
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v37;
    }

    else
    {
      v10 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v38, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
    v15 = v39.__r_.__value_.__r.__words[0];
    PSSG::describeStrides(a3);
    v16 = &v39;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v36 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    v41 = v16;
    v42 = 2080;
    v43 = "consumerNoLongerWantsResourceAtStrides";
    v44 = 2080;
    v45 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s --> %s %s", buf, 0x20u);
    if (v36 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v18 = *a3;
  v19 = a3[1];
  if (*a3 != v19)
  {
    while (1)
    {
      v20 = *v18;
      *buf = *v18;
      v21 = std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__equal_range_multi<unsigned int>((a1 + 31), buf);
      v23 = v21;
      if (a1 + 32 == v21)
      {
        break;
      }

      if (v21 != v22)
      {
        while (v23[5] != a2)
        {
          v24 = v23[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v23[2];
              v26 = *v25 == v23;
              v23 = v25;
            }

            while (!v26);
          }

          v23 = v25;
          if (v25 == v22)
          {
            goto LABEL_62;
          }
        }

        std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__remove_node_pointer(a1 + 31, v23);
        v28 = v23;
LABEL_61:
        operator delete(v28);
      }

LABEL_62:
      if (++v18 == v19)
      {
        goto LABEL_63;
      }
    }

    v27 = __PSSGLogSharedInstance(v21, v22);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v39 = *(a2 + 24);
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v39;
    }

    else
    {
      v29 = v39.__r_.__value_.__r.__words[0];
    }

    v30 = a1;
    if (*(a1 + 23) < 0)
    {
      v30 = *a1;
    }

    PSSG::Resource::describe(&v38, v20);
    v31 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v38.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v41 = v29;
    v42 = 2080;
    v43 = v30;
    v44 = 2080;
    v45 = v31;
    _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_ERROR, "Critical! API MISUSE: Client %s isn't using (%s) at stride %s but is attempting to remove it", buf, 0x20u);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    v28 = v39.__r_.__value_.__r.__words[0];
    goto LABEL_61;
  }

LABEL_63:
  v32 = PSSG::Resource::computeDesiredStride(a1);
  if ((v32 & 0x100000000) != 0)
  {
    *(a1 + 51) = v32;
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 200) = v33;
  return PSSG::Resource::sendOutgoingMessages(a1);
}

void sub_25EAD8368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::consumerWantsResource(PSSG::Client **this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 9, &v4, &v4);
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::orchestratorHasSetState(PSSG::Client **this, int a2, char a3)
{
  *(this + 200) = a3;
  *(this + 51) = a2;
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::consumerNoLongerWantsResource(PSSG::Resource *this, PSSG::Client *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v4 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v21;
    std::string::basic_string[abi:ne200100](&v21, v5 + 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v21.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v20 = *(a2 + 1);
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v20;
    }

    else
    {
      v8 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v21, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v23 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v26 = v12;
    v27 = 2080;
    v28 = "consumerNoLongerWantsResource";
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(this + 31);
  if (v13 != (this + 256))
  {
    do
    {
      if (v13[5] == v24)
      {
        v15 = std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__remove_node_pointer(this + 31, v13);
        operator delete(v13);
      }

      else
      {
        v14 = v13[1];
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
            v15 = v13[2];
            v16 = *v15 == v13;
            v13 = v15;
          }

          while (!v16);
        }
      }

      v13 = v15;
    }

    while (v15 != (this + 256));
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(this + 9, &v24);
  v17 = PSSG::Resource::computeDesiredStride(this);
  if ((v17 & 0x100000000) != 0)
  {
    *(this + 51) = v17;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  *(this + 200) = v18;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD869C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerFailedToProduceResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerFailedToProduceResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD88C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasSetupResource(PSSG::Resource *this, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v4 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v16;
    std::string::basic_string[abi:ne200100](&v16, v5 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v16.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v8 = *(this + 3);
    if (v8)
    {
      if (*(v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v15 = *(v8 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v15, "NULL (likely due to a Polaris client error)");
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v18 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = __p;
    if (v18 < 0)
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v20 = v13;
    v21 = 2080;
    v22 = "providerHasSetupResource";
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  *(this + 49) = v2;
  *(this + 212) = 0;
  *(this + 195) = 1;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD8AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasPausedResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerHasPausedResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  *(this + 194) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD8D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerFailedToSetupResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerFailedToSetupResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD8F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerFailedToPauseResource(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerFailedToPauseResource";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD916C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerFailedToProcessNoLongerWantedNotification(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerFailedToProcessNoLongerWantedNotification";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  *(this + 195) = 1;
  return PSSG::Resource::sendOutgoingMessages(this);
}

void sub_25EAD9398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerProcessedNoLongerWantedNotification(PSSG::Resource *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __PSSGLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v4 = *(this + 23);
    }

    else
    {
      v4 = *(this + 1);
    }

    v5 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v4 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v15.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (*(this + 23) >= 0)
      {
        v6 = this;
      }

      else
      {
        v6 = *this;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 58;
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v14 = *(v7 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v15, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v17 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = "providerProcessedNoLongerWantedNotification";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 97) = 0;
  *(this + 212) = 0;
  return PSSG::Resource::sendOutgoingMessages(this);
}