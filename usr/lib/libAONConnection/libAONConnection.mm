uint64_t rpc_afk_interface_find_with_timeout(const char *a1, const char *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, double a6)
{
  v15 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  interface = rpctools_find_interface(__str, "AFKEndpointInterface", a6);
  *a4 = interface;
  if (interface)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a5 && interface)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = rpctools_find_interface(__str, "AFKEndpointInterface", a6);
    *a5 = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t rpctools_find_interface(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x29EDB8ED8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v9 = CFStringCreateWithCString(v7, a1, 0x8000100u);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v9);
      }

      else
      {
        v10 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v10);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v12 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  if (v12)
  {
    v13 = v12;
    RunLoopSource = IONotificationPortGetRunLoopSource(v12);
    if (RunLoopSource)
    {
      v15 = RunLoopSource;
      v16 = *MEMORY[0x29EDB8FC0];
      CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x29EDB8FC0]);
      if (IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", MutableCopy, DeviceMatched, notification, &notification[1]))
      {
        v17 = 0;
        notification[0] = 0;
      }

      else
      {
        v18 = IOIteratorNext(notification[1]);
        v17 = 0;
        notification[0] = v18;
        if (a3 != 0.0 && !v18)
        {
          if (a3 >= 0.0)
          {
            v19 = *MEMORY[0x29EDB8ED8];
            v20 = CFAbsoluteTimeGetCurrent();
            v17 = CFRunLoopTimerCreate(v19, v20 + a3, 0.0, 0, 0, MatchTimeout, 0);
            CFRunLoopAddTimer(Current, v17, v16);
          }

          else
          {
            v17 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v15, v16);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v13);
      if (v17)
      {
        CFRunLoopRemoveTimer(Current, v17, v16);
        CFRunLoopTimerInvalidate(v17);
        CFRelease(v17);
      }
    }

    else
    {
      IONotificationPortDestroy(v13);
    }
  }

  return notification[0];
}

void DeviceMatched(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void MatchTimeout()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

uint64_t rpc_get_servers(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&rpc_lock))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = rpc_static_connection_head_0;
    if (rpc_static_connection_head_0)
    {
      v9 = 0;
      do
      {
        v9 += rpc_is_match(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = rpc_malloc(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      rpc_release_server_array(v6);
      v6 = 0;
    }

    else
    {
      v7 = rpc_static_connection_head_0;
      if (rpc_static_connection_head_0)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (rpc_is_match(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&rpc_lock);
  }

  *a3 = v6;
  return v7;
}

void rpc_release_server_array(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

char *rpc_get_server_by_name(const char *a1)
{
  v7 = 0;
  servers = rpc_get_servers(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!servers)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  rpc_release_server_array(v4);
  return v3;
}

uint64_t rpc_interface_open_with_timeout(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&rpc_lock))
  {
    v13 = rpc_static_connection_head_0;
    if (!rpc_static_connection_head_0)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = rpc_afk_interface_find_with_timeout(a1, a2, a3, &v17 + 1, v14, a6);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&rpc_lock);
    return v12;
  }

  return 6;
}

uint64_t rpc_malloc(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

void rpc_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t rpc_is_match(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

uint64_t shmem_map(const char *a1, uint64_t a2, io_connect_t **a3)
{
  v5 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    v7 = IOServiceMatching("AFKSharedMemoryRegion");
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x29EDB8ED8];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v7);
      CFRelease(v8);
      if (MutableCopy)
      {
        v11 = CFStringCreateWithCString(v9, a1, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(MutableCopy, @"IONameMatch", v11);
        }

        else
        {
          v12 = MutableCopy;
          MutableCopy = 0;
        }

        CFRelease(v12);
      }
    }

    else
    {
      MutableCopy = 0;
    }

    *notification = 0;
    v14 = IONotificationPortCreate(*MEMORY[0x29EDBB118]);
    RunLoopSource = IONotificationPortGetRunLoopSource(v14);
    Current = CFRunLoopGetCurrent();
    v17 = *MEMORY[0x29EDB8FC0];
    CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x29EDB8FC0]);
    if (IOServiceAddMatchingNotification(v14, "IOServiceFirstMatch", MutableCopy, DeviceMatched_0, notification, &notification[1]))
    {
      *v6 = 0;
LABEL_12:
      v13 = 5;
      goto LABEL_19;
    }

    notification[0] = IOIteratorNext(notification[1]);
    if (!notification[0])
    {
      CFRunLoopRun();
    }

    v18 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v18, RunLoopSource, v17);
    IOObjectRelease(notification[1]);
    IONotificationPortDestroy(v14);
    v19 = notification[0];
    *v6 = notification[0];
    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = MEMORY[0x29EDCA6B0];
    if (!IOServiceOpen(v19, *MEMORY[0x29EDCA6B0], 0x61666B6Du, v6 + 1) && !MEMORY[0x29C2575E0](v6[1], 1, *v20, v6 + 2, v6 + 4, 1))
    {
      v13 = 0;
      goto LABEL_20;
    }

    v13 = 6;
  }

  else
  {
    v13 = 4;
  }

LABEL_19:
  shmem_unmap(v6);
  v6 = 0;
LABEL_20:
  *a3 = v6;
  return v13;
}

uint64_t shmem_unmap(io_object_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      IOServiceClose(v2);
    }

    if (*a1)
    {
      IOObjectRelease(*a1);
    }

    free(a1);
  }

  return 0;
}

uint64_t shmem_get_address(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t shmem_get_size(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void DeviceMatched_0(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

id aon_net_log_obj()
{
  if (aon_net_log_obj_log_once != -1)
  {
    dispatch_once(&aon_net_log_obj_log_once, &__block_literal_global);
  }

  v1 = aon_net_log_obj_g_log;

  return v1;
}

uint64_t __aon_net_log_obj_block_invoke()
{
  aon_net_log_obj_g_log = os_log_create("com.apple.aon_net", &unk_296045D3B);

  return MEMORY[0x2A1C71028]();
}

uint64_t AONNetBufferRing::enqueueBuffer(unsigned int *a1, _WORD *a2)
{
  v2 = a1 + 3;
  v3 = atomic_load(a1 + 3);
  if (a1[2] - 1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = atomic_load(a1 + 4);
  if (v4 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = atomic_load(a1 + 4);
  while (1)
  {
    v8 = atomic_load(v2);
    if (v7 == v8)
    {
      break;
    }

    if (*a2 == *(*a1 + 2 * v7))
    {
      return 4294967291;
    }

    if (a1[2] - 1 == v7)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    v2 = a1 + 3;
  }

  v6 = 0;
  v9 = *a1;
  v10 = atomic_load(a1 + 3);
  *(v9 + 2 * v10) = *a2;
  v11 = atomic_load(a1 + 3);
  if (a1[2] - 1 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 + 1;
  }

  atomic_store(v12, a1 + 3);
  return v6;
}

BOOL AONNetSharedMemChannel::init(AONNetSharedMemChannel *this)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(this + 4) && *(this + 24) && *(this + 10) && *(this + 11))
  {
    v2 = *(this + 50);
    if ((v2 - 3) >= 0xFFFFFFFE)
    {
      if ((*(this + 14) - 0xFFFF) >= 0xFFFF0002)
      {
        v10 = 8 * v2;
        v11 = operator new[](8 * v2, MEMORY[0x29EDC9418]);
        if (v11)
        {
          v12 = v11;
          *v11 = 0;
          bzero(v11 + 1, v10 - 8);
          v13 = 0;
          *(this + 3) = v12;
          v14 = MEMORY[0x29EDC9418];
          while (1)
          {
            v15 = operator new(0x18uLL, v14);
            if (v15)
            {
              v16 = *(this + 14);
              *v15 = 0;
              v15[3] = 0;
              v15[4] = 0;
              v15[2] = v16 + 1;
              operator new[]();
            }

            v12[v13] = 0;
            v12 = *(this + 3);
            if (!v12[v13])
            {
              break;
            }

            if (++v13 >= *(this + 50))
            {
              *(this + 2) = *(this + 1) + *(this + 14) * *(this + 24);
              return 1;
            }
          }

          v3 = 79;
        }

        else
        {
          *(this + 3) = 0;
          v3 = 70;
        }
      }

      else
      {
        v3 = 63;
      }
    }

    else
    {
      v3 = 57;
    }
  }

  else
  {
    v3 = 51;
  }

  result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = *(this + 4);
    v6 = *(this + 24);
    v7 = *(this + 10);
    v8 = *(this + 11);
    v9 = *(this + 50);
    v17 = 136316674;
    v18 = "ShMemChannel";
    v19 = 1024;
    v20 = v3;
    v21 = 2048;
    v22 = v5;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v6;
    v27 = 1024;
    v28 = v8;
    v29 = 1024;
    v30 = v9;
    _os_log_error_impl(&dword_29603C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s:%d init() failed, baseAddr %p memSize %u bufferSize %u syncBatch %u # of rings %u", &v17, 0x34u);
    return 0;
  }

  return result;
}

void AONNetSharedMemChannel::~AONNetSharedMemChannel(AONNetSharedMemChannel *this)
{
  AONNetSharedMemChannel::~AONNetSharedMemChannel(this);

  JUMPOUT(0x29C2576C0);
}

{
  v12 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1D1D868;
  v2 = *(this + 50);
  if (*(this + 50))
  {
    v3 = 0;
    do
    {
      v4 = *(*(this + 3) + 8 * v3);
      if (v4)
      {
        if (*v4)
        {
          MEMORY[0x29C2576A0](*v4, 0x1000C80BDFB0063);
        }

        MEMORY[0x29C2576C0](v4, 0x1020C405AF6BDC9);
        v2 = *(this + 50);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x29C2576A0](v5, 0x20C8093837F09);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "ShMemChannel";
    v8 = 1024;
    v9 = 109;
    v10 = 2048;
    v11 = this;
    _os_log_error_impl(&dword_29603C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s:%d channel %p destructed", &v6, 0x1Cu);
  }
}

void AONNetSharedMemChannel::reset(AONNetSharedMemChannel *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "ShMemChannel";
    v6 = 1024;
    v7 = 212;
    v8 = 2048;
    v9 = this;
    _os_log_error_impl(&dword_29603C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s:%d reset() channel %p", &v4, 0x1Cu);
  }

  if (*(this + 50))
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 3) + 8 * v2);
      atomic_store(0, (v3 + 12));
      atomic_store(0, (v3 + 16));
      ++v2;
    }

    while (v2 < *(this + 50));
  }
}

uint64_t AONNetSharedMemChannelProducer::deallocBuffer(uint64_t a1, __int16 a2)
{
  if (*(a1 + 56) <= a2)
  {
    return 4294967292;
  }

  else
  {
    return AONNetBufferPool::dealloc(a1 + 64, a2);
  }
}

uint64_t AONNetSharedMemChannelProducer::enqueueBuffer(uint64_t a1, unsigned int a2, unsigned __int16 a3)
{
  v6 = a3;
  if (*(a1 + 56) <= a3)
  {
    return 4294967292;
  }

  v3 = *(a1 + 16);
  v4 = *(v3 + 16 * a3 + 4);
  if (*(a1 + 48) < v4)
  {
    v4 = *(a1 + 48);
  }

  if (v4 && *(v3 + 16 * a3))
  {
    return AONNetBufferRing::enqueueBuffer(*(*(a1 + 24) + 8 * a2), &v6);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t AONNetSharedMemChannelProducer::allocBuffer(AONNetSharedMemChannelProducer *this)
{
  v1 = atomic_load(this + 19);
  v2 = (this + 80);
  v3 = atomic_load(this + 20);
  if (v1 == v3)
  {
    v4 = 0xFFFFLL;
  }

  else
  {
    v5 = *(this + 8);
    v6 = atomic_load(v2);
    v4 = *(v5 + 2 * v6);
    v7 = atomic_load(v2);
    if (*(this + 18) - 1 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 + 1;
    }

    atomic_store(v8, v2);
  }

  if (*(this + 14) > v4)
  {
    v9 = *(this + 2) + 16 * v4;
    *v9 = 0;
    *(v9 + 8) = -1;
  }

  return v4;
}

void AONNetSharedMemChannelProducer::~AONNetSharedMemChannelProducer(AONNetSharedMemChannelProducer *this)
{
  *this = &unk_2A1D1D898;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C2576A0](v2, 0x1000C80BDFB0063);
  }

  AONNetSharedMemChannel::~AONNetSharedMemChannel(this);

  JUMPOUT(0x29C2576C0);
}

{
  *this = &unk_2A1D1D898;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C2576A0](v2, 0x1000C80BDFB0063);
  }

  AONNetSharedMemChannel::~AONNetSharedMemChannel(this);
}

void AONNetSharedMemChannelProducer::reset(AONNetSharedMemChannelProducer *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = (this + 64);
  atomic_store(0, this + 19);
  atomic_store(0, this + 20);
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  if (*(this + 76))
  {
    v3 = 0;
    do
    {
      LOWORD(v4) = v3;
      AONNetBufferRing::enqueueBuffer(v2, &v4);
      ++v3;
    }

    while (v3 < *(this + 76));
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = v2;
    _os_log_impl(&dword_29603C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "Buffer Pool [%p] reset", &v4, 0xCu);
  }

  AONNetSharedMemChannel::reset(this);
}

uint64_t AONNetSharedMemChannelConsumer::deallocBuffer(uint64_t a1, unsigned __int16 a2)
{
  v3 = a2;
  if (*(a1 + 56) <= a2)
  {
    return 4294967292;
  }

  AONNetBufferRing::enqueueBuffer((a1 + 80), &v3);
  return 0;
}

uint64_t AONNetSharedMemChannelConsumer::peekBuffer(AONNetSharedMemChannelConsumer *this, unsigned int a2)
{
  v2 = *(*(this + 3) + 8 * a2);
  v3 = atomic_load(v2 + 3);
  v4 = atomic_load(v2 + 4);
  if (v3 == v4)
  {
    return 0xFFFFLL;
  }

  v6 = *v2;
  v7 = atomic_load(v2 + 4);
  return *(v6 + 2 * v7);
}

uint64_t AONNetSharedMemChannelConsumer::dequeueBuffer(AONNetSharedMemChannelConsumer *this, unsigned int a2)
{
  v2 = *(*(this + 3) + 8 * a2);
  v3 = atomic_load(v2 + 3);
  v4 = v2 + 4;
  v5 = atomic_load(v2 + 4);
  if (v3 == v5)
  {
    return 0xFFFFLL;
  }

  v7 = *v2;
  v8 = atomic_load(v4);
  result = *(v7 + 2 * v8);
  v9 = atomic_load(v4);
  if (v2[2] - 1 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 1;
  }

  atomic_store(v10, v4);
  return result;
}

void AONNetSharedMemChannelConsumer::~AONNetSharedMemChannelConsumer(AONNetSharedMemChannelConsumer *this)
{
  *this = &unk_2A1D1D8E0;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x29C2576A0](v2, 0x1000C80BDFB0063);
  }

  AONNetSharedMemChannel::~AONNetSharedMemChannel(this);

  JUMPOUT(0x29C2576C0);
}

{
  *this = &unk_2A1D1D8E0;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x29C2576A0](v2, 0x1000C80BDFB0063);
  }

  AONNetSharedMemChannel::~AONNetSharedMemChannel(this);
}

void AONNetSharedMemChannelConsumer::reset(AONNetSharedMemChannel *this)
{
  atomic_store(0, this + 23);
  atomic_store(0, this + 24);
  AONNetSharedMemChannel::reset(this);
}

void *AONNetSharedMemChannelProducer::create(uint64_t *a1, uint64_t a2)
{
  v3 = operator new(0xB0uLL, MEMORY[0x29EDC9418]);
  if (v3)
  {
    v4 = *a1;
    v3[2] = 0;
    v3[3] = 0;
    *(v3 + 2) = *a1;
    v3[6] = a1[2];
    v5 = *(a1 + 2) / (*(a1 + 8) + 16);
    *(v3 + 14) = v5;
    *v3 = &unk_2A1D1D898;
    v3[1] = v4;
    v3[8] = 0;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
    *(v3 + 18) = v5 + 1;
    operator new[]();
  }

  return 0;
}

void sub_29603E360(_Unwind_Exception *a1)
{
  AONNetSharedMemChannel::~AONNetSharedMemChannel(v1);
  MEMORY[0x29C2576B0]();
  _Unwind_Resume(a1);
}

uint64_t AONNetSharedMemChannelProducer::sync(AONNetSharedMemChannelProducer *this, uint64_t a2)
{
  v26[1] = *MEMORY[0x29EDCA608];
  v4 = *(*(this + 3) + 8 * a2);
  v5 = atomic_load(v4 + 3);
  v6 = atomic_load(v4 + 4);
  v7 = v5 - v6;
  if (v5 < v6)
  {
    v7 += v4[2];
  }

  result = MEMORY[0x2A1C7C4A8]();
  v11 = (v26 - v10);
  if (v7)
  {
    v12 = v7;
    bzero(v26 - v10, v9);
    v13 = v11;
    do
    {
      v14 = *(*(this + 3) + 8 * a2);
      v15 = atomic_load(v14 + 3);
      v16 = v14 + 4;
      v17 = atomic_load(v14 + 4);
      if (v15 == v17)
      {
        v18 = -1;
      }

      else
      {
        v19 = *v14;
        v20 = atomic_load(v16);
        v18 = *(v19 + 2 * v20);
        v21 = atomic_load(v16);
        if (v14[2] - 1 == v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 + 1;
        }

        atomic_store(v22, v16);
      }

      *v13++ = v18;
      --v12;
    }

    while (v12);
    v23 = 0;
    do
    {
      v24 = *(this + 11);
      if (v24 >= v7)
      {
        v25 = v7;
      }

      else
      {
        v25 = v24;
      }

      result = (*(this + 20))(*(this + 21), a2, &v11[v23], v25);
      v23 += v25;
      v7 -= v25;
    }

    while (v7);
  }

  return result;
}

void *AONNetSharedMemChannelConsumer::create(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x68uLL, MEMORY[0x29EDC9418]);
  if (v4)
  {
    v5 = *a1;
    v4[2] = 0;
    v4[3] = 0;
    *(v4 + 2) = *a1;
    v4[6] = a1[2];
    v6 = *(a1 + 2) / (*(a1 + 8) + 16);
    *(v4 + 14) = v6;
    *v4 = &unk_2A1D1D8E0;
    v4[1] = v5;
    v4[8] = aon_net_rx_completion_doorbell;
    v4[9] = a2;
    v4[10] = 0;
    *(v4 + 23) = 0;
    *(v4 + 24) = 0;
    *(v4 + 22) = v6 + 1;
    operator new[]();
  }

  return 0;
}

void sub_29603E610(_Unwind_Exception *a1)
{
  AONNetSharedMemChannel::~AONNetSharedMemChannel(v1);
  MEMORY[0x29C2576B0]();
  _Unwind_Resume(a1);
}

uint64_t AONNetSharedMemChannelConsumer::sync(AONNetSharedMemChannelConsumer *this)
{
  v22[1] = *MEMORY[0x29EDCA608];
  v2 = atomic_load(this + 23);
  v3 = atomic_load(this + 24);
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v4 += *(this + 22);
  }

  result = MEMORY[0x2A1C7C4A8]();
  v8 = (v22 - v7);
  if (v4)
  {
    v9 = v4;
    bzero(v22 - v7, v6);
    v10 = v8;
    do
    {
      v11 = atomic_load(this + 23);
      v12 = (this + 96);
      v13 = atomic_load(this + 24);
      if (v11 == v13)
      {
        v14 = -1;
      }

      else
      {
        v15 = *(this + 10);
        v16 = atomic_load(v12);
        v14 = *(v15 + 2 * v16);
        v17 = atomic_load(v12);
        if (*(this + 22) - 1 == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17 + 1;
        }

        atomic_store(v18, v12);
      }

      *v10++ = v14;
      --v9;
    }

    while (v9);
    v19 = 0;
    do
    {
      v20 = *(this + 11);
      if (v20 >= v4)
      {
        v21 = v4;
      }

      else
      {
        v21 = v20;
      }

      result = (*(this + 8))(*(this + 9), &v8[v19], v21);
      v19 += v21;
      v4 -= v21;
    }

    while (v4);
  }

  return result;
}

uint64_t AONNetBufferPool::dealloc(uint64_t a1, __int16 a2)
{
  v11 = a2;
  v3 = (a1 + 90);
  atomic_load((a1 + 90));
  result = AONNetBufferRing::enqueueBuffer(a1, &v11);
  if (!result)
  {
    atomic_store(1u, v3);
    v5 = a1 + 24;
    v6 = 64;
    do
    {
      if (*v5)
      {
        v7 = atomic_load((a1 + 12));
        v8 = atomic_load((a1 + 16));
        v9 = v7 >= v8;
        v10 = v7 - v8;
        if (!v9)
        {
          v10 += *(a1 + 8);
        }

        if (v10 >= *(v5 + 8))
        {
          (***v5)();
          *v5 = 0;
          *(v5 + 8) = 0;
        }
      }

      v5 += 16;
      v6 -= 16;
    }

    while (v6);
    result = 0;
    atomic_store(0, (a1 + 90));
  }

  return result;
}

uint64_t aon_net_service_init(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x29EDCA608];
  address = 0;
  v58 = 0x4000000000;
  v59 = 512;
  v60 = 1;
  v53 = 0;
  v54 = 0x4000000000;
  v55 = 512;
  v56 = 1;
  if (!a1)
  {
    __assert_rtn("aon_net_service_init", "connection.m", 374, "tb_attr");
  }

  if (!a2)
  {
    __assert_rtn("aon_net_service_init", "connection.m", 375, "tx_attr");
  }

  if (!a3)
  {
    __assert_rtn("aon_net_service_init", "connection.m", 376, "rx_attr");
  }

  if (!*a1 || (v7 = a1 + 128, !a1[128]))
  {
    v16 = aon_net_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "tightbeam client name or server name is invalid";
LABEL_27:
    _os_log_error_impl(&dword_29603C000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_28;
  }

  if (!*a2 || !*a3)
  {
    v16 = aon_net_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "shared memory name is invalid";
    goto LABEL_27;
  }

  if (!*(a2 + 128) || !*(a3 + 128))
  {
    v16 = aon_net_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "shared memory buffer size is invalid";
    goto LABEL_27;
  }

  if (!*(a2 + 136) || !*(a3 + 136))
  {
    v16 = aon_net_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v17 = "shared memory ring count is invalid";
    goto LABEL_27;
  }

  v9 = malloc_type_calloc(1uLL, 0x278uLL, 0x10A004037B5C555uLL);
  if (v9)
  {
    v10 = v9;
    if (aon_net_service_init::once_token != -1)
    {
      dispatch_once(&aon_net_service_init::once_token, &__block_literal_global_23);
    }

    strlcpy(v10, a1, 0x80uLL);
    strlcpy((v10 + 128), v7, 0x80uLL);
    server_by_name = rpc_get_server_by_name((v10 + 128));
    *(v10 + 560) = server_by_name;
    if (!server_by_name)
    {
      v14 = aon_net_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v62 = v10 + 128;
        v15 = "rpc_get_server_by_name failed for server - %s";
        v19 = v14;
        v20 = 12;
LABEL_42:
        _os_log_error_impl(&dword_29603C000, v19, OS_LOG_TYPE_ERROR, v15, buf, v20);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    v12 = rpc_interface_open(server_by_name, v10, 0, (v10 + 544), (v10 + 552));
    if (v12)
    {
      v13 = v12;
      v14 = aon_net_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v62 = v10;
        *&v62[8] = 2080;
        *&v62[10] = v10 + 128;
        *&v62[18] = 1024;
        *&v62[20] = v13;
        v15 = "rpc interface open from client[%s] to server[%s] failed[%d]";
LABEL_41:
        v19 = v14;
        v20 = 28;
        goto LABEL_42;
      }

      goto LABEL_50;
    }

    v21 = aonnetworking_networkingservice__init((v10 + 568), *(v10 + 544));
    if (v21)
    {
      v22 = v21;
      v14 = aon_net_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v62 = v22;
        *&v62[4] = 2080;
        *&v62[6] = v10;
        *&v62[14] = 2080;
        *&v62[16] = v10 + 128;
        v15 = "aon networking service initialization failed[%u] for client[%s]<->server[%s]";
        goto LABEL_41;
      }

LABEL_50:

      aon_net_service_destroy(v10);
      return 0;
    }

    *(v10 + 624) = 1;
    v52[0] = MEMORY[0x29EDCA5F8];
    v52[1] = 3221225472;
    v52[2] = __aon_net_service_init_block_invoke_5;
    v52[3] = &__block_descriptor_40_e297_v20__0I8r__aonnetworking_flowmetadata_s_Q_______aonnetworking_tcpmetadata_s__aonnetworking_milliseconds_s_I___aonnetworking_tlsmetadata_s__aonnetworking_alpnstring__opt_s_B_aonnetworking_alpnstring_s__ncalpn8_v_s_C_______Q_______QQ______tb_message_s_QQQ_____s_aonnetworking_milliseconds_s_I_____12l;
    v52[4] = a4;
    v23 = MEMORY[0x29C2578D0](v52);
    v24 = *(v10 + 576);
    *(v10 + 576) = v23;

    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 3221225472;
    v51[2] = __aon_net_service_init_block_invoke_3;
    v51[3] = &__block_descriptor_40_e11_v16__0I8i12l;
    v51[4] = a4;
    v25 = MEMORY[0x29C2578D0](v51);
    v26 = *(v10 + 584);
    *(v10 + 584) = v25;

    v50[0] = MEMORY[0x29EDCA5F8];
    v50[1] = 3221225472;
    v50[2] = __aon_net_service_init_block_invoke_4;
    v50[3] = &__block_descriptor_48_e21_v28__0I8_64S_12I20S24l;
    v50[4] = v10;
    v50[5] = a4;
    v27 = MEMORY[0x29C2578D0](v50);
    v28 = *(v10 + 592);
    *(v10 + 592) = v27;

    v49[0] = MEMORY[0x29EDCA5F8];
    v49[1] = 3221225472;
    v49[2] = __aon_net_service_init_block_invoke_5;
    v49[3] = &__block_descriptor_48_e15_v20__0_64S_8I16l;
    v49[4] = v10;
    v49[5] = a4;
    v29 = MEMORY[0x29C2578D0](v49);
    v30 = *(v10 + 600);
    *(v10 + 600) = v29;

    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 3221225472;
    v48[2] = __aon_net_service_init_block_invoke_18;
    v48[3] = &__block_descriptor_40_e212_v20__0I8r__aonnetworking_pskconfig_s_S_ncpsk8_v_s_C_______Q_______QQ______tb_message_s_QQQ____ncpskid8_v_s_C_______Q_______QQ______tb_message_s_QQQ____aonnetworking_seconds_s_I__aonnetworking_milliseconds_s_I__12l;
    v48[4] = a4;
    v31 = MEMORY[0x29C2578D0](v48);
    v32 = *(v10 + 608);
    *(v10 + 608) = v31;

    started = aonnetworking_networkingservicecallback__server_start_owned(*(v10 + 552), (v10 + 616), v10 + 576);
    if (started)
    {
      v34 = started;
      v14 = aon_net_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v62 = v34;
        *&v62[4] = 2080;
        *&v62[6] = v10;
        *&v62[14] = 2080;
        *&v62[16] = v10 + 128;
        v15 = "aon networking callback service initialization failed[%u] for client[%s]<->server[%s]";
        goto LABEL_41;
      }

      goto LABEL_50;
    }

    *(v10 + 625) = 1;
    v35 = aon_net_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v62 = v10;
      *&v62[8] = 2080;
      *&v62[10] = v10 + 128;
      _os_log_debug_impl(&dword_29603C000, v35, OS_LOG_TYPE_DEBUG, "tightbeam setup %s<->%s completed", buf, 0x16u);
    }

    strlcpy((v10 + 256), a2, 0x80uLL);
    strlcpy((v10 + 384), a3, 0x80uLL);
    v36 = shmem_map((v10 + 256), 0, (v10 + 512));
    if (v36)
    {
      v37 = v36;
      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 67109120;
      *v62 = v37;
      v15 = "Mapping tx shared memory failed with error %d";
      goto LABEL_66;
    }

    address = shmem_get_address(*(v10 + 512));
    v59 = *(a2 + 128);
    LODWORD(v58) = shmem_get_size(*(v10 + 512));
    v60 = *(a2 + 136);
    v38 = AONNetSharedMemChannelProducer::create(&address, v10);
    *(v10 + 528) = v38;
    if (v38)
    {
      v39 = atomic_load(v38 + 19);
      v40 = atomic_load(v38 + 20);
      v41 = v39 >= v40;
      v42 = v39 - v40;
      if (!v41)
      {
        v42 += v38[18];
      }

      atomic_store(v42, debug_num_tx_buffers);
      v43 = aon_net_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = atomic_load(debug_num_tx_buffers);
        *buf = 67109120;
        *v62 = v44;
        _os_log_impl(&dword_29603C000, v43, OS_LOG_TYPE_DEFAULT, "tx channel init numFree %u", buf, 8u);
      }

      v45 = shmem_map((v10 + 384), 0, (v10 + 520));
      if (v45)
      {
        v46 = v45;
        v14 = aon_net_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *buf = 67109120;
        *v62 = v46;
        v15 = "Mapping rx shared memory failed with error %d";
LABEL_66:
        v19 = v14;
        v20 = 8;
        goto LABEL_42;
      }

      v53 = shmem_get_address(*(v10 + 520));
      v55 = *(a3 + 128);
      LODWORD(v54) = shmem_get_size(*(v10 + 520));
      v56 = *(a3 + 136);
      v47 = AONNetSharedMemChannelConsumer::create(&v53, v10);
      *(v10 + 536) = v47;
      if (v47)
      {
        return v10;
      }

      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v15 = "AONNetSharedMemChannelConsumer initializtion failed";
    }

    else
    {
      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v15 = "AONNetSharedMemChannelProducer allocation failed";
    }

    v19 = v14;
    v20 = 2;
    goto LABEL_42;
  }

  v16 = aon_net_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_29603C000, v16, OS_LOG_TYPE_FAULT, "aon_net_client allocation failed", buf, 2u);
  }

LABEL_28:

  return 0;
}

void __aon_net_service_init_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3[4])
  {
    if (!a3 || *a3 != 0xBD41E11B08125829)
    {
      __assert_rtn("aon_net_service_init_block_invoke", "connection.m", 444, "tb_flow_metadata && tb_flow_metadata->tag == AONNETWORKING_FLOWMETADATA__TLS");
    }

    v6 = malloc_type_malloc(0x48uLL, 0x100004008215D7EuLL);
    if (!v6)
    {
      __assert_rtn("aon_net_service_init_block_invoke", "connection.m", 448, "flow_metadata");
    }

    v7 = v6;
    *v6 = 1;
    *(v6 + 4) = *(a3 + 8);
    *(v6 + 15) = *(a3 + 68);
    *(v6 + 32) = 0;
    v8 = *(a3 + 64);
    v6[24] = 0;
    v9 = v6 + 24;
    if (v8 == 772)
    {
      v10 = 772;
    }

    else
    {
      v10 = 0;
    }

    *(v6 + 32) = v10;
    if (*(a3 + 16) == 1)
    {
      v11 = ncalpn8__v_count((a3 + 24));
      if (v11 <= 0x21)
      {
        v12 = v11;
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 3221225472;
        v14[2] = __aon_net_service_init_block_invoke_2;
        v14[3] = &__block_descriptor_40_e11_v20__0Q8C16l;
        v14[4] = v7;
        ncalpn8__v_visit((a3 + 24), v14);
        if (v9[v12 - 1])
        {
          *v9 = 0;
        }
      }
    }

    (*(*(*(a1 + 32) + 32) + 16))();
    free(v7);
  }

  else
  {
    v13 = *(*v3 + 16);

    v13();
  }
}

uint64_t __aon_net_service_init_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!v3)
  {
    return (*(*(v2 + 8) + 16))();
  }

  v4 = *(v3 + 16);

  return v4();
}

uint64_t __aon_net_service_init_block_invoke_4(uint64_t a1, unsigned int a2, __int16 *a3, unsigned int a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = *(*(a1 + 32) + 536);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136316162;
    v18 = "ShMemChannel";
    v19 = 1024;
    v20 = 446;
    v21 = 2048;
    v22 = v8;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = a4;
    _os_log_debug_impl(&dword_29603C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s:%d processSubmission() channel %p ringId %u numBuffers %u", &v17, 0x28u);
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else if (!a4)
  {
    goto LABEL_5;
  }

  v9 = a4;
  do
  {
    v10 = *(*(v8 + 24) + 8 * a2);
    v11 = *a3++;
    LOWORD(v17) = v11;
    AONNetBufferRing::enqueueBuffer(v10, &v17);
    --v9;
  }

  while (v9);
LABEL_5:
  v12 = *(a1 + 40);
  v13 = *(v12 + 56);
  if (v13)
  {
    v14 = *(v13 + 16);

    return v14();
  }

  else
  {
    v16 = *(*(v12 + 16) + 16);

    return v16();
  }
}

uint64_t __aon_net_service_init_block_invoke_5(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = *(*(a1 + 32) + 528);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315906;
    *v25 = "ShMemChannel";
    *&v25[8] = 1024;
    *v26 = 381;
    *&v26[4] = 2048;
    v27 = v6;
    v28 = 1024;
    v29 = a3;
    _os_log_debug_impl(&dword_29603C000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s:%d processCompletion() channel %p numBuffers %u", &v24, 0x22u);
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else if (!a3)
  {
    goto LABEL_5;
  }

  v7 = a3;
  v8 = a2;
  do
  {
    AONNetBufferPool::dealloc(v6 + 64, *v8++);
    --v7;
  }

  while (v7);
LABEL_5:
  aon_net_log_buffers(a2, a3, "aop2->ap complete buffers");
  atomic_fetch_add(debug_num_tx_buffers, a3);
  v9 = *(*(a1 + 32) + 528);
  v10 = atomic_load(v9 + 19);
  v11 = atomic_load(v9 + 20);
  v12 = v10 - v11;
  if (v10 < v11)
  {
    v12 += v9[18];
  }

  v13 = aon_net_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = atomic_load(debug_num_tx_buffers);
    v24 = 67109632;
    *v25 = a3;
    *&v25[4] = 1024;
    *&v25[6] = v12;
    *v26 = 1024;
    *&v26[2] = v14;
    _os_log_impl(&dword_29603C000, v13, OS_LOG_TYPE_DEFAULT, "tx complete %u buffers numFree %u expected %u", &v24, 0x14u);
  }

  v15 = atomic_load(debug_num_tx_buffers);
  if (v12 != v15)
  {
    v16 = trigger_abc_for_buffer_loss(void)::symptom_diagnostic_reporter;
    if (!trigger_abc_for_buffer_loss(void)::symptom_diagnostic_reporter)
    {
      v17 = [objc_alloc(MEMORY[0x29EDC6DB8]) initWithQueue:0];
      v18 = trigger_abc_for_buffer_loss(void)::symptom_diagnostic_reporter;
      trigger_abc_for_buffer_loss(void)::symptom_diagnostic_reporter = v17;

      v16 = trigger_abc_for_buffer_loss(void)::symptom_diagnostic_reporter;
    }

    v19 = [v16 signatureWithDomain:@"ULPN" type:@"Channel" subType:@"Leak" detectedProcess:@"apsd" triggerThresholdValues:0];
    v20 = [trigger_abc_for_buffer_loss(void)::symptom_diagnostic_reporter snapshotWithSignature:v19 duration:0 event:0 payload:&__block_literal_global_44 reply:0.0];
    v21 = aon_net_log_obj();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_29603C000, v22, OS_LOG_TYPE_DEFAULT, "Successfully sent snapshot to Symptoms", &v24, 2u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_29603C000, v22, OS_LOG_TYPE_ERROR, "Failed to send snapshot to Symptoms", &v24, 2u);
    }
  }

  return (*(*(*(a1 + 40) + 24) + 16))();
}

void __aon_net_service_init_block_invoke_18(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v6 = ncpsk8__v_count(a3 + 8);
  v7 = ncpskid8__v_count(a3 + 48);
  if (v6 - 65 <= 0xFFFFFFFFFFFFFFBFLL)
  {
    v8 = aon_net_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v35 = v6;
      v9 = "Invalid PSK size: %zu";
      v10 = v8;
      v11 = 12;
LABEL_31:
      _os_log_error_impl(&dword_29603C000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = v7;
  v13 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v13)
  {
    v8 = aon_net_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Failed to allocate memory for PSK";
      v10 = v8;
      v11 = 2;
      goto LABEL_31;
    }

LABEL_9:

    return;
  }

  v14 = v13;
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = __aon_net_service_init_block_invoke_19;
  v33[3] = &__block_descriptor_40_e11_v20__0Q8C16l;
  v33[4] = v13;
  ncpsk8__v_visit(a3 + 8, v33);
  if (v12 - 257 > 0xFFFFFFFFFFFFFEFFLL)
  {
    v19 = malloc_type_malloc(v12, 0x100004077774924uLL);
    if (v19)
    {
      v20 = v19;
      v32[0] = MEMORY[0x29EDCA5F8];
      v32[1] = 3221225472;
      v32[2] = __aon_net_service_init_block_invoke_20;
      v32[3] = &__block_descriptor_40_e11_v20__0Q8C16l;
      v32[4] = v19;
      ncpskid8__v_visit(a3 + 48, v32);
      v21 = *(a3 + 22);
      if (v21)
      {
        v22 = *a3;
        v23 = *(a3 + 23);
        v24 = malloc_type_malloc(0x38uLL, 0x10100400BCF7F57uLL);
        if (!v24)
        {
          __assert_rtn("aon_net_tls_psk_data_create", "tls.m", 52, "psk_data");
        }

        v25 = v24;
        v24[24] = v22;
        v26 = malloc_type_malloc(v6, 0xAC7EE69AuLL);
        *v25 = v26;
        if (!v26)
        {
          __assert_rtn("aon_net_tls_psk_data_create", "tls.m", 57, "psk_data->psk");
        }

        memcpy(v26, v14, v6);
        *(v25 + 1) = v6;
        v27 = malloc_type_malloc(v12, 0xD752AE95uLL);
        *(v25 + 2) = v27;
        if (!v27)
        {
          __assert_rtn("aon_net_tls_psk_data_create", "tls.m", 62, "psk_data->psk_id");
        }

        memcpy(v27, v20, v12);
        *(v25 + 3) = v12;
        *(v25 + 8) = v23;
        *(v25 + 5) = v21;
      }

      else
      {
        v29 = aon_net_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_29603C000, v29, OS_LOG_TYPE_FAULT, "invalid ticket lifetime", buf, 2u);
        }

        v25 = 0;
      }

      v30 = *(*(a1 + 32) + 48);
      if (v30)
      {
        (*(v30 + 16))(v30, a2, 1, v25, 56);
      }

      if (!v25)
      {
        __assert_rtn("aon_net_tls_psk_data_destroy", "tls.m", 81, "psk_data");
      }

      if (*v25)
      {
        free(*v25);
        *v25 = 0;
      }

      v31 = *(v25 + 2);
      if (v31)
      {
        free(v31);
      }

      free(v25);
      free(v14);
      v28 = v20;
      goto LABEL_29;
    }

    v15 = aon_net_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Failed to allocate memory for PSK ID";
      v17 = v15;
      v18 = 2;
      goto LABEL_33;
    }
  }

  else
  {
    v15 = aon_net_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v35 = v12;
      v16 = "Invalid PSK ID size: %zu";
      v17 = v15;
      v18 = 12;
LABEL_33:
      _os_log_error_impl(&dword_29603C000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    }
  }

  v28 = v14;
LABEL_29:
  free(v28);
}

void aon_net_service_destroy(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = aon_net_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_29603C000, v2, OS_LOG_TYPE_DEFAULT, "aon_net_service_destroy", &v16, 2u);
  }

  atomic_store(0, debug_num_tx_buffers);
  v3 = *(a1 + 576);
  *(a1 + 576) = 0;

  v4 = *(a1 + 584);
  *(a1 + 584) = 0;

  v5 = *(a1 + 592);
  *(a1 + 592) = 0;

  v6 = *(a1 + 600);
  *(a1 + 600) = 0;

  v7 = *(a1 + 608);
  *(a1 + 608) = 0;

  if (*(a1 + 625) == 1)
  {
    MEMORY[0x29C257B70](*(a1 + 616));
  }

  if (*(a1 + 624) == 1)
  {
    MEMORY[0x29C2579C0](*(a1 + 568));
  }

  if (*(a1 + 544))
  {
    if (*(a1 + 552))
    {
      v8 = rpc_interface_close();
      if (v8)
      {
        v9 = v8;
        v10 = aon_net_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315650;
          v17 = a1;
          v18 = 2080;
          v19 = a1 + 128;
          v20 = 1024;
          v21 = v9;
          _os_log_error_impl(&dword_29603C000, v10, OS_LOG_TYPE_ERROR, "rpc interface close from client[%s] to server[%s] failed[%d]", &v16, 0x1Cu);
        }
      }
    }
  }

  v11 = *(a1 + 560);
  if (v11)
  {
    rpc_free(v11);
    *(a1 + 560) = 0;
  }

  v12 = *(a1 + 528);
  if (v12)
  {
    (*(*v12 + 16))(v12);
    *(a1 + 528) = 0;
  }

  v13 = *(a1 + 536);
  if (v13)
  {
    (*(*v13 + 16))(v13);
    *(a1 + 536) = 0;
  }

  v14 = *(a1 + 512);
  if (v14)
  {
    shmem_unmap(v14);
    *(a1 + 512) = 0;
  }

  v15 = *(a1 + 520);
  if (v15)
  {
    shmem_unmap(v15);
  }

  free(a1);
}

uint64_t aon_net_rx_completion_doorbell(void *a1, unsigned __int16 *a2, unsigned int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    return 0;
  }

  if (!a1)
  {
    __assert_rtn("aon_net_complete_buffers", "connection.m", 1064, "client");
  }

  v3 = a3;
  v4 = 0;
  while (1)
  {
    if (v3 >= 0x100)
    {
      v5 = 256;
    }

    else
    {
      v5 = v3;
    }

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    v16 = 0u;
    v6 = tb_client_connection_message_construct();
    if (!v6)
    {
      tb_message_precheck_encoding();
      tb_message_raw_encode_u64();
      for (i = 0; i != 128; i += 2)
      {
        tb_message_raw_encode_u16();
      }

      tb_message_raw_encode_u32();
      tb_message_complete();
      v6 = tb_connection_send_query();
      tb_client_connection_message_destruct();
    }

    v8 = aon_net_log_obj();
    v9 = v8;
    if (v6)
    {
      break;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29603C000, v9, OS_LOG_TYPE_DEBUG, "rx completion doorbell", buf, 2u);
    }

    v10 = v3 >= v5;
    v3 -= v5;
    if (!v10)
    {
      v13 = aon_net_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        *&buf[4] = v3;
        *&buf[8] = 1024;
        *&buf[10] = v5;
        _os_log_fault_impl(&dword_29603C000, v13, OS_LOG_TYPE_FAULT, "UNDERFLOW: pending_buffers = %u, completion_batch_size = %u", buf, 0xEu);
      }

      __assert_rtn("aon_net_rx_completion_doorbell", "connection.m", 300, "0");
    }

    v4 += v5;
    if (!v3)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_29603C000, v9, OS_LOG_TYPE_ERROR, "aon net rx completion doorbell failed with error %d", buf, 8u);
  }

  v12 = aon_net_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 72;
    _os_log_error_impl(&dword_29603C000, v12, OS_LOG_TYPE_ERROR, "rx completion doorbell failed with error %d", buf, 8u);
  }

  return 72;
}

uint64_t aon_net_tx_submission_doorbell(void *a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a4;
  v24 = *MEMORY[0x29EDCA608];
  aon_net_log_buffers(a3, a4, "ap->aop2 submit buffers");
  if (!a1)
  {
    __assert_rtn("aon_net_tx_submission_doorbell", "connection.m", 250, "client");
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    if (v4 >= 0x100)
    {
      v7 = 256;
    }

    else
    {
      v7 = v4;
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *buf = 0u;
    v18 = 0u;
    v8 = tb_client_connection_message_construct();
    if (!v8)
    {
      tb_message_precheck_encoding();
      tb_message_raw_encode_u64();
      tb_message_raw_encode_u32();
      for (i = 0; i != 128; i += 2)
      {
        tb_message_raw_encode_u16();
      }

      tb_message_raw_encode_u32();
      tb_message_complete();
      v8 = tb_connection_send_query();
      tb_client_connection_message_destruct();
    }

    v10 = aon_net_log_obj();
    v11 = v10;
    if (v8)
    {
      break;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_29603C000, v11, OS_LOG_TYPE_DEBUG, "tx submission doorbell", buf, 2u);
    }

    v12 = v4 >= v7;
    v4 -= v7;
    if (!v12)
    {
      v15 = aon_net_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        *&buf[4] = v4;
        *&buf[8] = 1024;
        *&buf[10] = v7;
        _os_log_fault_impl(&dword_29603C000, v15, OS_LOG_TYPE_FAULT, "UNDERFLOW: pending_buffers = %u, submission_batch_size = %u", buf, 0xEu);
      }

      __assert_rtn("aon_net_tx_submission_doorbell", "connection.m", 267, "0");
    }

    v6 += v7;
    if (!v4)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_error_impl(&dword_29603C000, v11, OS_LOG_TYPE_ERROR, "aon net tx submission doorbell failed with error %d", buf, 8u);
  }

  v14 = aon_net_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 72;
    _os_log_error_impl(&dword_29603C000, v14, OS_LOG_TYPE_ERROR, "tx submission doorbell failed with error %d", buf, 8u);
  }

  return 72;
}

void aon_net_log_buffers(const unsigned __int16 *a1, unsigned int a2, const char *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = a2;
    v5 = 0;
    v17 = a2;
    v6 = 16;
    do
    {
      if (v17 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v17;
      }

      v8 = v5 + 16;
      if (v5 + 16 >= v3)
      {
        v9 = v3;
      }

      else
      {
        v9 = v5 + 16;
      }

      if (v5 < v9)
      {
        v10 = __str;
        v11 = 256;
        v12 = v5;
        do
        {
          v13 = &unk_296045D3B;
          if (v12 < v9 - 1)
          {
            v13 = ", ";
          }

          v14 = snprintf(v10, v11, "%u%s", a1[v12], v13);
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          if (v11 <= v14)
          {
            break;
          }

          v10 += v14;
          v11 -= v14;
          ++v12;
        }

        while (v7 != v12);
      }

      v15 = aon_net_log_obj();
      v3 = a2;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = a3;
        v21 = 1024;
        v22 = v5;
        v23 = 1024;
        v24 = v9 - 1;
        v25 = 1024;
        v26 = a2;
        v27 = 2080;
        v28 = __str;
        _os_log_impl(&dword_29603C000, v15, OS_LOG_TYPE_DEFAULT, "%s: [%u-%u/%u] [%s]", buf, 0x28u);
      }

      v6 += 16;
      v5 += 16;
    }

    while (v8 < a2);
  }
}

void ___ZL27trigger_abc_for_buffer_lossv_block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v3 = aon_net_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_29603C000, v3, OS_LOG_TYPE_DEFAULT, "got response from diagnosticReporter %@", &v4, 0xCu);
  }
}

uint64_t aon_net_connect_flow_with_telemetry_slot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v95 = *MEMORY[0x29EDCA608];
  memset(v94, 0, 30);
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  v80 = 0u;
  memset(v81, 0, sizeof(v81));
  v79 = 0u;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  if (!a1)
  {
    __assert_rtn("aon_net_connect_flow_with_telemetry_slot", "connection.m", 870, "client");
  }

  if (*a5 == 1)
  {
    v7 = a6;
    v9 = a3;
    v67 = getpid();
    v12 = a5[69];
    if (v12 >= 4)
    {
      __assert_rtn("aon_net_connect_flow_with_telemetry_slot", "connection.m", 883, "flow_config->values.tls_config.tls_handshake_config.values.psk.alpn_count <= AON_NET_MAX_ALPNS");
    }

    if (a5[8] != 1)
    {
      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v42 = a5[8];
      *v74 = 134217984;
      *&v74[4] = v42;
      v15 = "invalid TLS handshake type %llu";
      goto LABEL_35;
    }

    v13 = a5[18];
    if ((v13 - 65) <= 0xFFFFFFFFFFFFFFBFLL)
    {
      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *v74 = 0;
      v15 = "Invalid psk info";
LABEL_19:
      v21 = v14;
      v22 = 2;
LABEL_36:
      _os_log_error_impl(&dword_29603C000, v21, OS_LOG_TYPE_ERROR, v15, v74, v22);
LABEL_12:

      v18 = aon_net_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v74 = 0;
        _os_log_error_impl(&dword_29603C000, v18, OS_LOG_TYPE_ERROR, "failed to setup security layer", v74, 2u);
      }

LABEL_14:

      return 22;
    }

    v20 = a5[51];
    if ((v20 - 257) <= 0xFFFFFFFFFFFFFEFFLL)
    {
      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *v74 = 0;
      v15 = "Invalid psk id info";
      goto LABEL_19;
    }

    v23 = *(a5 + 36);
    v24 = *(a5 + 104);
    v25 = *(a5 + 106);
    v26 = *(a5 + 108);
    v27 = *(a5 + 440);
    if (v12)
    {
      v57 = *(a5 + 440);
      v58 = *(a5 + 36);
      v59 = *(a5 + 106);
      v60 = *(a5 + 104);
      v61 = *(a5 + 108);
      v62 = a5[18];
      v63 = a5[51];
      v64 = a2;
      v65 = v9;
      v66 = v7;
      v28 = 0;
      v29 = (a5 + 56);
      v30 = &v78;
      while (1)
      {
        v31 = strnlen(v29, 0x21uLL);
        if (v31 == 33 || v31 == 0)
        {
          break;
        }

        v33 = 3;
        *(v30 - 16) = 3;
        *(v30 - 1) = v29;
        *v30 = v31 + 1;
        v30[1] = 0;
        ++v28;
        v30 += 5;
        v29 += 33;
        if (v12 == v28)
        {
          v34 = buf;
          v9 = v65;
          v7 = v66;
          v20 = v63;
          a2 = v64;
          v13 = v62;
          v24 = v60;
          v26 = v61;
          v23 = v58;
          v25 = v59;
          v27 = v57;
          goto LABEL_31;
        }
      }

      v14 = aon_net_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *v74 = 134217984;
      *&v74[4] = v28;
      v15 = "Invalid ALPN at index %zu";
LABEL_35:
      v21 = v14;
      v22 = 12;
      goto LABEL_36;
    }

    v33 = 0;
    v34 = 0;
LABEL_31:
    v36 = *(a5 + 4);
    v37 = *(a5 + 5);
    v38 = a5[2];
    if (v38 == 2)
    {
      v43 = *(a5 + 12);
      v44 = *(a5 + 15);
      v45 = *(a5 + 26);
      v39 = *(a5 + 16);
      *v74 = *(a5 + 34);
      *&v74[8] = *(a5 + 42);
      v40 = (v45 << 16) | (v44 << 48) | v43;
      v94[0] = *v74;
      *&v94[1] = *&v74[16];
      v41 = 0x50ADE84BD2E7F7ADLL;
    }

    else
    {
      if (v38 != 1)
      {
        v47 = aon_net_log_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v55 = a5[2];
          *v74 = 134217984;
          *&v74[4] = v55;
          _os_log_error_impl(&dword_29603C000, v47, OS_LOG_TYPE_ERROR, "invalid ip family %llu", v74, 0xCu);
        }

        v18 = aon_net_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_29603C000, v18, OS_LOG_TYPE_ERROR, "failed to setup security layer", v74, 2u);
        }

        goto LABEL_14;
      }

      v39 = *(a5 + 16);
      v40 = a5[3];
      v41 = 0x50CA50002955C7E4;
    }

    if (*a4 == 2)
    {
      v48 = *(a4 + 4);
      *&v92[1] = *(a4 + 10);
      v92[0] = 0x3535710A48A0B21FLL;
      LOWORD(v92[3]) = v48;
    }

    else
    {
      if (*a4 != 1)
      {
        v54 = aon_net_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v56 = *a4;
          *v74 = 134217984;
          *&v74[4] = v56;
          _os_log_error_impl(&dword_29603C000, v54, OS_LOG_TYPE_ERROR, "invalid if type %llu", v74, 0xCu);
        }

        v18 = aon_net_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v74 = 0;
          _os_log_error_impl(&dword_29603C000, v18, OS_LOG_TYPE_ERROR, "failed to setup security layer", v74, 2u);
        }

        goto LABEL_14;
      }

      v46 = *(a4 + 4);
      *&v92[1] = *(a4 + 22);
      v92[0] = 0x620030750AF50153;
      LOWORD(v92[3]) = v46;
      *(&v92[3] + 2) = *(a4 + 10);
      HIWORD(v92[3]) = *(a4 + 7);
      LODWORD(v93) = *(a4 + 4);
      WORD2(v93) = *(a4 + 10);
    }

    *&v79 = 0xAF85315B9F89E6C1;
    WORD4(v79) = v36;
    WORD5(v79) = v37;
    HIDWORD(v79) = 0;
    *&v80 = v41;
    *(&v80 + 1) = v40;
    LOWORD(v81[0]) = v39;
    *(v81 + 2) = v94[0];
    v81[1] = *(v94 + 14);
    *&v82 = 0xE3DEF943A893CC74;
    WORD4(v82) = v23;
    *(&v82 + 10) = 0;
    HIWORD(v82) = 0;
    LOBYTE(v83) = 3;
    DWORD1(v83) = 0;
    *(&v83 + 1) = 0;
    *(&v83 + 1) = a5 + 74;
    v84 = v13;
    *&v85 = 0;
    BYTE8(v85) = 3;
    *(&v85 + 9) = 0;
    HIDWORD(v85) = 0;
    *&v86 = a5 + 19;
    *(&v86 + 1) = v20;
    v87 = 0uLL;
    *&v88 = __PAIR64__(v25, v24);
    BYTE8(v88) = (v27 & 1) == 0;
    BYTE11(v88) = 0;
    *(&v88 + 9) = 0;
    HIDWORD(v88) = v26;
    LOBYTE(v89) = v33;
    DWORD1(v89) = 0;
    *(&v89 + 1) = 0;
    *(&v89 + 1) = v34;
    v90 = v12;
    v91 = 0;
    *v74 = 0;
    *&v74[8] = v74;
    *&v74[16] = 0x2020000000;
    v75 = 0;
    if (get_self_bundle_id(void)::onceToken != -1)
    {
      dispatch_once(&get_self_bundle_id(void)::onceToken, &__block_literal_global_49);
    }

    v49 = get_self_bundle_id(void)::bundle_identifier_string;
    if (!get_self_bundle_id(void)::bundle_identifier_string)
    {
      v50 = getprogname();
      if (v50)
      {
        v49 = v50;
      }

      else
      {
        v49 = "unknown";
      }

      get_self_bundle_id(void)::bundle_identifier_string = v49;
    }

    LOBYTE(v69) = 3;
    *(&v69 + 1) = v49;
    v70 = strlen(v49) + 1;
    v68[0] = MEMORY[0x29EDCA5F8];
    v68[1] = 3221225472;
    v68[2] = __aon_net_connect_flow_with_telemetry_slot_block_invoke;
    v68[3] = &unk_29EDEDFE8;
    v68[4] = v74;
    v51 = aonnetworking_networkingservice_connectflow((a1 + 568), a2, v67, v9, v92, &v79, v7, &v69, v68);
    if (v51)
    {
      v52 = v51;
      v53 = aon_net_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *v72 = 67109120;
        v73 = v52;
        _os_log_error_impl(&dword_29603C000, v53, OS_LOG_TYPE_ERROR, "connect flow failed with error %d", v72, 8u);
      }

      v17 = 72;
    }

    else
    {
      v17 = *(*&v74[8] + 24);
    }

    _Block_object_dispose(v74, 8);
  }

  else
  {
    v16 = aon_net_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v35 = *a5;
      *buf = 134217984;
      v77 = v35;
      _os_log_error_impl(&dword_29603C000, v16, OS_LOG_TYPE_ERROR, "invalid flow type %llu", buf, 0xCu);
    }

    return 45;
  }

  return v17;
}

void sub_296041060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __aon_net_connect_flow_with_telemetry_slot_block_invoke(uint64_t result, unsigned int a2)
{
  if (a2 != 0 && a2 < 0xFFFFFFE9)
  {
    v2 = 5;
  }

  else
  {
    v2 = dword_296045638[a2 + 23];
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void ___ZL18get_self_bundle_idv_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, *MEMORY[0x29EDB8F10]);
    if (ValueForInfoDictionaryKey)
    {
      v2 = ValueForInfoDictionaryKey;
      if (CFStringGetLength(ValueForInfoDictionaryKey) >= 1)
      {
        Length = CFStringGetLength(v2);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        if (MaximumSizeForEncoding != -1)
        {
          v5 = MaximumSizeForEncoding;
          v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
          if (CFStringGetCString(v2, v6, v5 + 1, 0x8000100u))
          {
LABEL_8:
            get_self_bundle_id(void)::bundle_identifier_string = v6;
            return;
          }

          free(v6);
        }

        v6 = 0;
        goto LABEL_8;
      }
    }
  }
}

uint64_t aon_net_disconnect_flow(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    __assert_rtn("aon_net_disconnect_flow", "connection.m", 959, "client");
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __aon_net_disconnect_flow_block_invoke;
  v7[3] = &unk_29EDEDFE8;
  v7[4] = &v8;
  v2 = aonnetworking_networkingservice_disconnectflow((a1 + 568), a2, 0, v7);
  if (v2)
  {
    v3 = v2;
    v4 = aon_net_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v3;
      _os_log_error_impl(&dword_29603C000, v4, OS_LOG_TYPE_ERROR, "aon net disconnect flow failed with error %d", buf, 8u);
    }

    v5 = 72;
  }

  else
  {
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __aon_net_disconnect_flow_block_invoke(uint64_t result, unsigned int a2)
{
  if (a2 != 0 && a2 < 0xFFFFFFE9)
  {
    v2 = 5;
  }

  else
  {
    v2 = dword_296045638[a2 + 23];
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

uint64_t aon_net_remove_flow(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    __assert_rtn("aon_net_remove_flow", "connection.m", 978, "client");
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __aon_net_remove_flow_block_invoke;
  v7[3] = &unk_29EDEDFE8;
  v7[4] = &v8;
  v2 = aonnetworking_networkingservice_disconnectflow((a1 + 568), a2, 2, v7);
  if (v2)
  {
    v3 = v2;
    v4 = aon_net_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v3;
      _os_log_error_impl(&dword_29603C000, v4, OS_LOG_TYPE_ERROR, "aon net remove flow failed with error %d", buf, 8u);
    }

    v5 = 72;
  }

  else
  {
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __aon_net_remove_flow_block_invoke(uint64_t result, unsigned int a2)
{
  if (a2 != 0 && a2 < 0xFFFFFFE9)
  {
    v2 = 5;
  }

  else
  {
    v2 = dword_296045638[a2 + 23];
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

uint64_t aon_net_path_update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v10 = __aon_net_path_update_block_invoke;
  v11 = &unk_29EDEDFE8;
  v12 = &v13;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *buf = 0u;
  v26 = 0u;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u16();
    tb_message_complete();
    v17 = 0;
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) != 0)
    {
LABEL_5:
      tb_client_connection_message_destruct();
      goto LABEL_6;
    }

    if (!v17)
    {
      v4 = 4;
      goto LABEL_5;
    }

    v24 = 0;
    tb_message_decode_s32();
    if ((v24 + 23) < 0x15 || !v24)
    {
      (v10)(v9);
      tb_client_connection_message_destruct();
      v6 = *(v14 + 6);
      goto LABEL_9;
    }

    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v24, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 3408);
    _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v8);
    __break(1u);
LABEL_16:
    __assert_rtn("aon_net_path_update", "connection.m", 1001, "client");
  }

  v4 = v3;
LABEL_6:
  v5 = aon_net_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_error_impl(&dword_29603C000, v5, OS_LOG_TYPE_ERROR, "aon net networking path update failed with error %d", buf, 8u);
  }

  v6 = 72;
LABEL_9:
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t __aon_net_path_update_block_invoke(uint64_t result, unsigned int a2)
{
  if (a2 != 0 && a2 < 0xFFFFFFE9)
  {
    v2 = 5;
  }

  else
  {
    v2 = dword_296045638[a2 + 23];
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

uint64_t aon_net_metadata_get_flow_type(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_metadata_get_flow_type", "connection.m", 1020, "flow_metadata");
  }

  return *a1;
}

void *aon_net_flow_metadata_get_tls_metadata(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 3;
  if (v2 != 1)
  {
    return 0;
  }

  return result;
}

void *aon_net_flow_metadata_get_tcp_metadata(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 1)
  {
    return 0;
  }

  return result;
}

uint64_t aon_net_get_num_tx_buffers(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_get_num_tx_buffers", "connection.m", 1079, "client");
  }

  v1 = *(a1 + 528);
  if (!v1)
  {
    __assert_rtn("aon_net_get_num_tx_buffers", "connection.m", 1080, "client->tx_channel");
  }

  return *(v1 + 56);
}

uint64_t aon_net_get_tx_buffer_size(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_get_tx_buffer_size", "connection.m", 1087, "client");
  }

  v1 = *(a1 + 528);
  if (!v1)
  {
    __assert_rtn("aon_net_get_tx_buffer_size", "connection.m", 1088, "client->tx_channel");
  }

  return *(v1 + 48);
}

uint64_t aon_net_alloc_tx_buffer(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    __assert_rtn("aon_net_alloc_tx_buffer", "connection.m", 1095, "client");
  }

  v2 = *(a1 + 528);
  if (!v2)
  {
    __assert_rtn("aon_net_alloc_tx_buffer", "connection.m", 1096, "client->tx_channel");
  }

  v3 = (*(*v2 + 32))(v2);
  v4 = *(a1 + 528);
  if (!v4)
  {
    __assert_rtn("aon_net_tx_buffer_is_valid", "connection.m", 1167, "client->tx_channel");
  }

  v5 = v3;
  if (*(v4 + 56) > v3)
  {
    atomic_fetch_add(debug_num_tx_buffers, 0xFFFFFFFF);
  }

  v6 = aon_net_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 528);
    v8 = atomic_load(v7 + 19);
    v9 = atomic_load(v7 + 20);
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (!v10)
    {
      v11 += v7[18];
    }

    v12 = atomic_load(debug_num_tx_buffers);
    v14[0] = 67109632;
    v14[1] = v5;
    v15 = 1024;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(&dword_29603C000, v6, OS_LOG_TYPE_DEFAULT, "tx alloced buf %u free %u expected free %u", v14, 0x14u);
  }

  return v5;
}

BOOL aon_net_tx_buffer_is_valid(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tx_buffer_is_valid", "connection.m", 1166, "client");
  }

  v2 = *(a1 + 528);
  if (!v2)
  {
    __assert_rtn("aon_net_tx_buffer_is_valid", "connection.m", 1167, "client->tx_channel");
  }

  return *(v2 + 56) > a2;
}

void aon_net_dealloc_tx_buffer(uint64_t a1, unsigned int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    __assert_rtn("aon_net_dealloc_tx_buffer", "connection.m", 1112, "client");
  }

  v3 = *(a1 + 528);
  if (!v3)
  {
    __assert_rtn("aon_net_dealloc_tx_buffer", "connection.m", 1113, "client->tx_channel");
  }

  v5 = (*(*v3 + 48))(v3, a2);
  atomic_fetch_add(debug_num_tx_buffers, 1u);
  v6 = aon_net_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 528);
    v8 = atomic_load(v7 + 19);
    v9 = atomic_load(v7 + 20);
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (!v10)
    {
      v11 += v7[18];
    }

    v12 = atomic_load(debug_num_tx_buffers);
    v13[0] = 67109888;
    v13[1] = a2;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&dword_29603C000, v6, OS_LOG_TYPE_DEFAULT, "tx dealloc buf %u status %d free %u expected free %u", v13, 0x1Au);
  }
}

unint64_t aon_net_tx_get_buffer_address(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tx_get_buffer_address", "connection.m", 1126, "client");
  }

  v2 = *(a1 + 528);
  if (!v2)
  {
    __assert_rtn("aon_net_tx_get_buffer_address", "connection.m", 1127, "client->tx_channel");
  }

  if (*(v2 + 56) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8) + *(v2 + 48) * a2;
  }
}

uint64_t aon_net_set_tx_length(uint64_t result, unsigned int a2, unsigned __int16 a3)
{
  if (!result)
  {
    __assert_rtn("aon_net_set_tx_length", "connection.m", 1134, "client");
  }

  v3 = *(result + 528);
  if (!v3)
  {
    __assert_rtn("aon_net_set_tx_length", "connection.m", 1135, "client->tx_channel");
  }

  if (a3 && *(v3 + 56) > a2 && *(v3 + 48) >= a3)
  {
    *(*(v3 + 16) + 16 * a2 + 4) = a3;
  }

  return result;
}

uint64_t aon_net_set_tx_flow_id(uint64_t result, unsigned int a2, int a3)
{
  if (!result)
  {
    __assert_rtn("aon_net_set_tx_flow_id", "connection.m", 1142, "client");
  }

  v3 = *(result + 528);
  if (!v3)
  {
    __assert_rtn("aon_net_set_tx_flow_id", "connection.m", 1143, "client->tx_channel");
  }

  if (a3)
  {
    if (*(v3 + 56) > a2)
    {
      *(*(v3 + 16) + 16 * a2) = a3;
    }
  }

  return result;
}

uint64_t aon_net_tx_enqueue_buffer(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tx_enqueue_buffer", "connection.m", 1150, "client");
  }

  v1 = *(a1 + 528);
  if (!v1)
  {
    __assert_rtn("aon_net_tx_enqueue_buffer", "connection.m", 1151, "client->tx_channel");
  }

  v2 = *(*v1 + 40);

  return v2();
}

uint64_t aon_net_tx_ring_sync(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tx_ring_sync", "connection.m", 1158, "client");
  }

  v2 = *(a1 + 528);
  if (!v2)
  {
    __assert_rtn("aon_net_tx_ring_sync", "connection.m", 1159, "client->tx_channel");
  }

  return AONNetSharedMemChannelProducer::sync(v2, a2);
}

uint64_t aon_net_get_num_rx_buffers(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_get_num_rx_buffers", "connection.m", 1174, "client");
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    __assert_rtn("aon_net_get_num_rx_buffers", "connection.m", 1175, "client->rx_channel");
  }

  return *(v1 + 56);
}

uint64_t aon_net_dealloc_rx_buffer(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_dealloc_rx_buffer", "connection.m", 1182, "client");
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    __assert_rtn("aon_net_dealloc_rx_buffer", "connection.m", 1183, "client->rx_channel");
  }

  v2 = *(*v1 + 48);

  return v2();
}

uint64_t aon_net_get_rx_buffer_size(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_get_rx_buffer_size", "connection.m", 1190, "client");
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    __assert_rtn("aon_net_get_rx_buffer_size", "connection.m", 1191, "client->rx_channel");
  }

  return *(v1 + 48);
}

uint64_t aon_net_rx_ring_sync(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_rx_ring_sync", "connection.m", 1198, "client");
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    __assert_rtn("aon_net_rx_ring_sync", "connection.m", 1199, "client->rx_channel");
  }

  return AONNetSharedMemChannelConsumer::sync(v1);
}

uint64_t aon_net_rx_dequeue_buffer(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_rx_dequeue_buffer", "connection.m", 1206, "client");
  }

  v1 = *(a1 + 536);
  if (!v1)
  {
    __assert_rtn("aon_net_rx_dequeue_buffer", "connection.m", 1207, "client->rx_channel");
  }

  return (*(*v1 + 32))(v1);
}

unint64_t aon_net_rx_get_buffer_address(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_rx_get_buffer_address", "connection.m", 1214, "client");
  }

  v2 = *(a1 + 536);
  if (!v2)
  {
    __assert_rtn("aon_net_rx_get_buffer_address", "connection.m", 1215, "client->rx_channel");
  }

  if (*(v2 + 56) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8) + *(v2 + 48) * a2;
  }
}

uint64_t aon_net_rx_get_buffer_flow_id(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_rx_get_buffer_flow_id", "connection.m", 1222, "client");
  }

  v2 = *(a1 + 536);
  if (!v2)
  {
    __assert_rtn("aon_net_rx_get_buffer_flow_id", "connection.m", 1223, "client->rx_channel");
  }

  if (*(v2 + 56) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(v2 + 16) + 16 * a2);
  }
}

uint64_t aon_net_rx_get_buffer_length(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_rx_get_buffer_length", "connection.m", 1230, "client");
  }

  v2 = *(a1 + 536);
  if (!v2)
  {
    __assert_rtn("aon_net_rx_get_buffer_length", "connection.m", 1231, "client->rx_channel");
  }

  if (*(v2 + 56) <= a2)
  {
    return 0;
  }

  v3 = *(*(v2 + 16) + 16 * a2 + 4);
  v4 = *(v2 + 48);
  if (v4 >= v3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

BOOL aon_net_rx_buffer_is_valid(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    __assert_rtn("aon_net_rx_buffer_is_valid", "connection.m", 1238, "client");
  }

  v2 = *(a1 + 536);
  if (!v2)
  {
    __assert_rtn("aon_net_rx_buffer_is_valid", "connection.m", 1239, "client->rx_channel");
  }

  return *(v2 + 56) > a2;
}

uint64_t aon_net_tls_psk_data_get_negotiated_cipher(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_negotiated_cipher", "tls.m", 104, "psk_data");
  }

  return *(a1 + 48);
}

uint64_t aon_net_tls_psk_data_get_psk(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_psk", "tls.m", 111, "psk_data");
  }

  return *a1;
}

uint64_t aon_net_tls_psk_data_get_psk_len(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_psk_len", "tls.m", 118, "psk_data");
  }

  return *(a1 + 8);
}

uint64_t aon_net_tls_psk_data_get_psk_id(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_psk_id", "tls.m", 125, "psk_data");
  }

  return *(a1 + 16);
}

uint64_t aon_net_tls_psk_data_get_psk_id_len(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_psk_id_len", "tls.m", 132, "psk_data");
  }

  return *(a1 + 24);
}

uint64_t aon_net_tls_psk_data_get_psk_ticket_age_add(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_psk_ticket_age_add", "tls.m", 139, "psk_data");
  }

  return *(a1 + 32);
}

uint64_t aon_net_tls_psk_data_get_psk_ticket_lifetime(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_psk_data_get_psk_ticket_lifetime", "tls.m", 146, "psk_data");
  }

  return *(a1 + 40);
}

_BYTE *aon_net_tls_metadata_get_alpn(_BYTE *result)
{
  if (!result)
  {
    __assert_rtn("aon_net_tls_metadata_get_alpn", "tls.m", 153, "tls_metadata");
  }

  if (!*result)
  {
    return 0;
  }

  return result;
}

uint64_t aon_net_tls_metadata_get_tls_setup_time(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_metadata_get_tls_setup_time", "tls.m", 160, "tls_metadata");
  }

  return *(a1 + 36);
}

uint64_t aon_net_tls_metadata_get_tls_version(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tls_metadata_get_tls_version", "tls.m", 167, "tls_metadata");
  }

  return *(a1 + 40);
}

uint64_t aon_net_tcp_metadata_get_tcp_setup_time(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("aon_net_tcp_metadata_get_tcp_setup_time", "tcp.m", 23, "tcp_metadata");
  }

  return *(a1 + 8);
}

uint64_t ncpskid8__v_count(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 3)
  {
    return *&a1[qword_296045698[(v1 - 1)]];
  }

  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v1, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 797);
  result = _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v3);
  __break(1u);
  return result;
}

unsigned __int8 *ncpskid8__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v5, *(*(v3 + 1) + v5));
            ++v5;
          }

          while (v5 < *(v3 + 2));
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 837);
      _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v7);
      __break(1u);
LABEL_16:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "aon_networking.c", 815);
      result = _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
      __break(1u);
      return result;
    }

    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "aon_networking.c", 834);
    _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
    __break(1u);
  }

  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_16;
  }

  result = tb_message_configure_received();
  if (*(v3 + 3))
  {
    v6 = 0;
    do
    {
      tb_message_decode_u8();
      result = (*(a2 + 16))(a2, v6++, 0);
    }

    while (v6 < *(v3 + 3));
  }

  return result;
}

uint64_t __ncpskid8__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_u8();
      (*(*(a1 + 32) + 16))();
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t ncpsk8__v_count(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 3)
  {
    return *&a1[qword_296045698[(v1 - 1)]];
  }

  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v1, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 968);
  result = _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v3);
  __break(1u);
  return result;
}

unsigned __int8 *ncpsk8__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v5, *(*(v3 + 1) + v5));
            ++v5;
          }

          while (v5 < *(v3 + 2));
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 1008);
      _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v7);
      __break(1u);
LABEL_16:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "aon_networking.c", 986);
      result = _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
      __break(1u);
      return result;
    }

    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "aon_networking.c", 1005);
    _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
    __break(1u);
  }

  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_16;
  }

  result = tb_message_configure_received();
  if (*(v3 + 3))
  {
    v6 = 0;
    do
    {
      tb_message_decode_u8();
      result = (*(a2 + 16))(a2, v6++, 0);
    }

    while (v6 < *(v3 + 3));
  }

  return result;
}

uint64_t __ncpsk8__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_u8();
      (*(*(a1 + 32) + 16))();
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t __ncpsk8__v_decode_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      tb_message_decode_u8();
      ++v2;
    }

    while (v2 < *(a1 + 32));
  }

  return 0;
}

uint64_t __ncpskid8__v_decode_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      tb_message_decode_u8();
      ++v2;
    }

    while (v2 < *(a1 + 32));
  }

  return 0;
}

uint64_t ncalpn8__v_count(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 3)
  {
    return *&a1[qword_296045698[(v1 - 1)]];
  }

  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v1, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 1414);
  result = _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v3);
  __break(1u);
  return result;
}

unsigned __int8 *ncalpn8__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v5, *(*(v3 + 1) + v5));
            ++v5;
          }

          while (v5 < *(v3 + 2));
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 1454);
      _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v7);
      __break(1u);
LABEL_16:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "aon_networking.c", 1432);
      result = _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
      __break(1u);
      return result;
    }

    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "aon_networking.c", 1451);
    _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
    __break(1u);
  }

  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_16;
  }

  result = tb_message_configure_received();
  if (*(v3 + 3))
  {
    v6 = 0;
    do
    {
      tb_message_decode_u8();
      result = (*(a2 + 16))(a2, v6++, 0);
    }

    while (v6 < *(v3 + 3));
  }

  return result;
}

uint64_t __ncalpn8__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_u8();
      (*(*(a1 + 32) + 16))();
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t __ncalpn8__v_decode_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      tb_message_decode_u8();
      ++v2;
    }

    while (v2 < *(a1 + 32));
  }

  return 0;
}

unsigned __int8 *aonnetworking_alpnstring__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v27 = *MEMORY[0x29EDCA608];
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v6++, *(v3 + 1) + v5);
            v5 += 40;
          }

          while (v6 < *(v3 + 2));
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 1713);
      _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v8);
      __break(1u);
LABEL_18:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "aon_networking.c", 1691);
      result = _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
      __break(1u);
      return result;
    }

    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "aon_networking.c", 1710);
    _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
    __break(1u);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_18;
  }

  result = tb_message_configure_received();
  if (*(v3 + 3))
  {
    v7 = 0;
    do
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      v19 = 0;
      tb_message_decode_u64();
      v13 = MEMORY[0x29EDCA5F8];
      v14 = 0x40000000;
      v15 = __ncalpn8__v_decode_block_invoke;
      v16 = &__block_descriptor_tmp_119;
      v17 = v19;
      v18 = v11;
      if (tb_message_measure_subrange())
      {
        LOBYTE(v9[0]) = 0;
        printf("TB_ASSERT: (aonnetworking_alpnstring__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.ALPNString, \b\b (%s:%d)\n", "aon_networking.c", 1696);
        _os_crash("TB_ASSERT: (aonnetworking_alpnstring__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.ALPNString");
        __break(1u);
      }

      *(&v9[0] + 1) = v11;
      v10 = v19;
      LOBYTE(v9[0]) = 2;
      result = (*(a2 + 16))(a2, v7++, v9);
    }

    while (v7 < *(v3 + 3));
  }

  return result;
}

uint64_t __aonnetworking_alpnstring__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 40) + 32))
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    tb_message_decode_u64();
    if (tb_message_measure_subrange())
    {
      break;
    }

    (*(*(a1 + 32) + 16))();
    if (++v3 >= *(*(a1 + 40) + 32))
    {
      return 0;
    }
  }

  printf("TB_ASSERT: (aonnetworking_alpnstring__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.ALPNString, \b\b (%s:%d)\n", "aon_networking.c", 1705);
  result = _os_crash("TB_ASSERT: (aonnetworking_alpnstring__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.ALPNString");
  __break(1u);
  return result;
}

void __aonnetworking_alpnstring__v_sizeof_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = __ncalpn8__v_sizeof_block_invoke;
  v5[3] = &unk_29EDEE1E8;
  v5[4] = &v6;
  ncalpn8__v_visit(a3, v5);
  v4 = v7[3];
  _Block_object_dispose(&v6, 8);
  *(*(*(a1 + 32) + 8) + 24) += v4 + 8;
}

unsigned __int8 *__aonnetworking_alpnstring__v_raw_encode_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 40);
  ncalpn8__v_count(a3);
  tb_message_raw_encode_u64();
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = __ncalpn8__v_raw_encode_block_invoke;
  v7[3] = &__block_descriptor_tmp_118;
  v7[4] = v5;
  result = ncalpn8__v_visit(a3, v7);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

unsigned __int8 *ncbundle8__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v5, *(*(v3 + 1) + v5));
            ++v5;
          }

          while (v5 < *(v3 + 2));
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 3566);
      _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v7);
      __break(1u);
LABEL_16:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "aon_networking.c", 3544);
      result = _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
      __break(1u);
      return result;
    }

    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "aon_networking.c", 3563);
    _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
    __break(1u);
  }

  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_16;
  }

  result = tb_message_configure_received();
  if (*(v3 + 3))
  {
    v6 = 0;
    do
    {
      tb_message_decode_u8();
      result = (*(a2 + 16))(a2, v6++, 0);
    }

    while (v6 < *(v3 + 3));
  }

  return result;
}

uint64_t __ncbundle8__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_u8();
      (*(*(a1 + 32) + 16))();
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t aonnetworking_networkingservice_connectflow(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, unsigned __int8 *a6, unsigned int a7, unsigned __int8 *a8, uint64_t a9)
{
  v9 = a8;
  v69 = *MEMORY[0x29EDCA608];
  if (*a6 == 0xAF85315B9F89E6C1 && *(a6 + 8) == 0xE3DEF943A893CC74)
  {
    *&v46 = 0;
    *(&v46 + 1) = &v46;
    v47 = 0x2000000000uLL;
    *&v62 = MEMORY[0x29EDCA5F8];
    *(&v62 + 1) = 0x40000000;
    *&v63 = __ncpsk8__v_sizeof_block_invoke;
    *(&v63 + 1) = &unk_29EDEE118;
    *&v64 = &v46;
    ncpsk8__v_visit(a6 + 80, &v62);
    _Block_object_dispose(&v46, 8);
    *&v46 = 0;
    *(&v46 + 1) = &v46;
    v47 = 0x2000000000uLL;
    *&v62 = MEMORY[0x29EDCA5F8];
    *(&v62 + 1) = 0x40000000;
    *&v63 = __ncpskid8__v_sizeof_block_invoke;
    *(&v63 + 1) = &unk_29EDEE140;
    *&v64 = &v46;
    ncpskid8__v_visit(a6 + 120, &v62);
    _Block_object_dispose(&v46, 8);
    *&v46 = 0;
    *(&v46 + 1) = &v46;
    v47 = 0x2000000000uLL;
    *&v62 = MEMORY[0x29EDCA5F8];
    *(&v62 + 1) = 0x40000000;
    v9 = a8;
    *&v63 = __aonnetworking_alpnstring__v_sizeof_block_invoke;
    *(&v63 + 1) = &unk_29EDEE250;
    *&v64 = &v46;
    aonnetworking_alpnstring__v_visit(a6 + 176, &v62);
    _Block_object_dispose(&v46, 8);
  }

  *&v46 = 0;
  *(&v46 + 1) = &v46;
  v47 = 0x2000000000uLL;
  *&v62 = MEMORY[0x29EDCA5F8];
  *(&v62 + 1) = 0x40000000;
  *&v63 = __ncbundle8__v_sizeof_block_invoke;
  *(&v63 + 1) = &unk_29EDEE2A0;
  *&v64 = &v46;
  ncbundle8__v_visit(v9, &v62);
  _Block_object_dispose(&v46, 8);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0uLL;
  v48 = 0uLL;
  v46 = 0uLL;
  v68 = 0;
  v66 = 0uLL;
  v67 = 0uLL;
  v64 = 0uLL;
  v65 = 0uLL;
  v62 = 0uLL;
  v63 = 0uLL;
  v12 = tb_client_connection_message_construct();
  if (v12)
  {
    return v12;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  for (i = 0; i != 16; ++i)
  {
    tb_message_raw_encode_u8();
  }

  tb_message_raw_encode_u64();
  tb_message_raw_encode_u32();
  tb_message_raw_encode_u64();
  v14 = *a5;
  if (*a5 == 0x620030750AF50153)
  {
    for (j = 0; j != 16; ++j)
    {
      tb_message_raw_encode_u8();
    }

    tb_message_raw_encode_u16();
    for (k = 0; k != 6; ++k)
    {
      tb_message_raw_encode_u8();
    }

    for (m = 0; m != 6; ++m)
    {
      tb_message_raw_encode_u8();
    }

LABEL_26:
    tb_message_raw_encode_u64();
    if (*a6 == 0xAF85315B9F89E6C1)
    {
      tb_message_raw_encode_u16();
      tb_message_raw_encode_u16();
      tb_message_raw_encode_u64();
      v22 = *(a6 + 2);
      if (v22 == 0x50ADE84BD2E7F7ADLL)
      {
        tb_message_raw_encode_u16();
        for (n = 0; n != 16; ++n)
        {
          tb_message_raw_encode_u8();
        }

        for (ii = 0; ii != 16; ++ii)
        {
          tb_message_raw_encode_u8();
        }
      }

      else
      {
        if (v22 != 0x50CA50002955C7E4)
        {
LABEL_60:
          printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v22, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 2326);
          _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v43);
          __break(1u);
          goto LABEL_61;
        }

        tb_message_raw_encode_u16();
        for (jj = 0; jj != 4; ++jj)
        {
          tb_message_raw_encode_u8();
        }

        for (kk = 0; kk != 4; ++kk)
        {
          tb_message_raw_encode_u8();
        }
      }

      tb_message_raw_encode_u64();
      v27 = *(a6 + 8);
      if (v27 == 0xE3DEF943A893CC74)
      {
        v28 = *(a6 + 36);
        if ((v28 - 4865) < 2u)
        {
          tb_message_raw_encode_u16();
          ncpsk8__v_count(a6 + 80);
          tb_message_raw_encode_u64();
          v52 = MEMORY[0x29EDCA5F8];
          v53 = 0x40000000;
          v54 = __ncpsk8__v_raw_encode_block_invoke;
          v55 = &__block_descriptor_tmp_113;
          v56 = &v46;
          ncpsk8__v_visit(a6 + 80, &v52);
          ncpskid8__v_count(a6 + 120);
          tb_message_raw_encode_u64();
          v52 = MEMORY[0x29EDCA5F8];
          v53 = 0x40000000;
          v54 = __ncpskid8__v_raw_encode_block_invoke;
          v55 = &__block_descriptor_tmp_114;
          v56 = &v46;
          ncpskid8__v_visit(a6 + 120, &v52);
          tb_message_raw_encode_u32();
          tb_message_raw_encode_u32();
          v29 = a6[168];
          if (v29 < 2)
          {
            tb_message_raw_encode_u8();
            tb_message_raw_encode_u32();
            v32 = a6[176];
            v31 = a6 + 176;
            v30 = v32;
            v58 = 0;
            v59 = &v58;
            v60 = 0x2000000000;
            v61 = 0;
            if ((v32 - 1) < 3)
            {
              tb_message_raw_encode_u64();
              v52 = MEMORY[0x29EDCA5F8];
              v53 = 0x40000000;
              v54 = __aonnetworking_alpnstring__v_raw_encode_block_invoke;
              v55 = &unk_29EDEE278;
              v56 = &v58;
              v57 = &v46;
              aonnetworking_alpnstring__v_visit(v31, &v52);
              v33 = *(v59 + 6);
              _Block_object_dispose(&v58, 8);
              if (!v33)
              {
                tb_message_raw_encode_u16();
                v34 = *v9;
                if ((v34 - 1) < 3)
                {
                  tb_message_raw_encode_u64();
                  v52 = MEMORY[0x29EDCA5F8];
                  v53 = 0x40000000;
                  v54 = __ncbundle8__v_raw_encode_block_invoke;
                  v55 = &__block_descriptor_tmp_125;
                  v56 = &v46;
                  ncbundle8__v_visit(v9, &v52);
                  tb_message_complete();
                  v52 = 0;
                  v12 = tb_connection_send_query();
                  if ((v12 & 0xFFFFFFF7) == 0)
                  {
                    if (v52)
                    {
                      LODWORD(v58) = 0;
                      tb_message_decode_s32();
                      if ((v58 + 23) >= 0x15)
                      {
                        if (v58)
                        {
                          printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v58, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 3408);
                          _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v36);
                          __break(1u);
                        }
                      }

                      (*(a9 + 16))(a9);
                      v12 = 0;
                    }

                    else
                    {
                      v12 = 4;
                    }
                  }

                  tb_client_connection_message_destruct();
                  return v12;
                }

                goto LABEL_59;
              }

LABEL_58:
              printf("TB_ASSERT: (aonnetworking_flowconfig__raw_encode(&msg, flowConfig) == TB_ERROR_SUCCESS) && failed to encode type: AONNetworking.FlowConfig, \b\b (%s:%d)\n", "aon_networking.c", 3866);
              _os_crash("TB_ASSERT: (aonnetworking_flowconfig__raw_encode(&msg, flowConfig) == TB_ERROR_SUCCESS) && failed to encode type: AONNetworking.FlowConfig");
              __break(1u);
LABEL_59:
              printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v34, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 3526);
              _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v42);
              __break(1u);
              goto LABEL_60;
            }

LABEL_57:
            printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v30, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 1673);
            _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v41);
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v29, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 738);
          _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v40);
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v28, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 663);
        _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v39);
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", *a6, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 2672);
      _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v37);
      __break(1u);
    }

    printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v27, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 1992);
    _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v38);
    __break(1u);
    goto LABEL_55;
  }

  if (v14 == 0x3FD57684A69D2A6ELL)
  {
    for (mm = 0; mm != 16; ++mm)
    {
      tb_message_raw_encode_u8();
    }

    tb_message_raw_encode_u16();
    for (nn = 0; nn != 6; ++nn)
    {
      tb_message_raw_encode_u8();
    }

    for (i1 = 0; i1 != 6; ++i1)
    {
      tb_message_raw_encode_u8();
    }

    goto LABEL_26;
  }

  if (v14 == 0x3535710A48A0B21FLL)
  {
    for (i2 = 0; i2 != 16; ++i2)
    {
      tb_message_raw_encode_u8();
    }

    tb_message_raw_encode_u16();
    goto LABEL_26;
  }

LABEL_61:
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v14, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 310);
  result = _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v44);
  __break(1u);
  return result;
}

uint64_t aonnetworking_networkingservice_disconnectflow(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = tb_client_connection_message_construct();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u8();
    tb_message_complete();
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) == 0)
    {
      v4 = 4;
    }

    tb_client_connection_message_destruct();
  }

  return v4;
}

uint64_t aonnetworking_networkingservice__init(uint64_t *a1, uint64_t a2)
{
  tb_endpoint_set_interface_identifier();
  v3 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t aonnetworking_networkingservicecallback__server_start_owned(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  tb_endpoint_set_interface_identifier();
  *a2 = tb_service_connection_create_with_endpoint();
  return tb_service_connection_activate();
}

CFAbsoluteTime __aonnetworking_networkingservicecallback__server_start_owned_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  tb_message_decode_u64();
  printf("TB_FATAL: unrecognized selector: %llu (%s:%d)\n", 0, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 4422);
  _os_crash("TB_FATAL: unrecognized selector: %llu", v6);
  __break(1u);
  printf("TB_ASSERT: (server->completebuffers != ((void*)0)) && implementation for CompleteBuffers is not present, \b\b (%s:%d)\n", "aon_networking.c", 4408);
  _os_crash("TB_ASSERT: (server->completebuffers != ((void*)0)) && implementation for CompleteBuffers is not present");
  __break(1u);
  printf("TB_ASSERT: (server->submitbuffers != ((void*)0)) && implementation for SubmitBuffers is not present, \b\b (%s:%d)\n", "aon_networking.c", 4395);
  _os_crash("TB_ASSERT: (server->submitbuffers != ((void*)0)) && implementation for SubmitBuffers is not present");
  __break(1u);
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 684);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v7);
  __break(1u);
  printf("TB_ASSERT: (server->disconnected != ((void*)0)) && implementation for Disconnected is not present, \b\b (%s:%d)\n", "aon_networking.c", 4378);
  _os_crash("TB_ASSERT: (server->disconnected != ((void*)0)) && implementation for Disconnected is not present");
  __break(1u);
  BYTE8(v9) = 0;
  printf("TB_ASSERT: (aonnetworking_pskconfig__decode(msg, &pskConfig) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.PSKConfig, \b\b (%s:%d)\n", "aon_networking.c", 4416);
  _os_crash("TB_ASSERT: (aonnetworking_pskconfig__decode(msg, &pskConfig) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.PSKConfig");
  __break(1u);
  printf("TB_ASSERT: (server->connected != ((void*)0)) && implementation for Connected is not present, \b\b (%s:%d)\n", "aon_networking.c", 4368);
  _os_crash("TB_ASSERT: (server->connected != ((void*)0)) && implementation for Connected is not present");
  __break(1u);
  BYTE8(v10) = 0;
  printf("TB_ASSERT: (aonnetworking_flowmetadata__decode(msg, &flowMetadata) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.FlowMetadata, \b\b (%s:%d)\n", "aon_networking.c", 4366);
  _os_crash("TB_ASSERT: (aonnetworking_flowmetadata__decode(msg, &flowMetadata) == TB_ERROR_SUCCESS) && failed to decode type: AONNetworking.FlowMetadata");
  __break(1u);
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v3, "/Library/Caches/com.apple.xbs/Binaries/RTKitNet_AP_Libraries/install/TempContent/Objects/RtKitNet.build/libAONConnection.build/DerivedSources/aon_networking.c", 3408);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v8);
  __break(1u);
  return CFAbsoluteTimeGetCurrent();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}